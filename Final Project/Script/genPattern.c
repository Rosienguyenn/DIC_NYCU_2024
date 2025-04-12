#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void decimalToBinary(int decimal, short binary[]) {
    int i = 0;

    while (decimal > 0) {
        binary[i] = decimal % 2; 
        decimal /= 2;            
        i++;
    }
}

void clearFile(const char *filename) {
    FILE *fptr = fopen(filename, "w");
    if (fptr != NULL) {
        fclose(fptr);
    } else {
        perror("Error opening file");
    }
}

void main(){
    srand(time(NULL));

	int i,j,k;
	short input[20][32];
    short weight[32][4];
    int output[20][4];
    short binary[4];
    short binary_out[16];
    const char *filename = "c:\\Users\\Admin\\Downloads\\backup\\NYCU\\NYCU_course\\digital_integrated_circuits\\Exercise\\final_project\\pattern.txt";
    const char *filename2 = "c:\\Users\\Admin\\Downloads\\backup\\NYCU\\NYCU_course\\digital_integrated_circuits\\Exercise\\final_project\\pattern_dicimal.txt";
    const char *filename3 = "c:\\Users\\Admin\\Downloads\\backup\\NYCU\\NYCU_course\\digital_integrated_circuits\\Exercise\\final_project\\pattern_nodeset.txt";
    const char *filename4 = "c:\\Users\\Admin\\Downloads\\backup\\NYCU\\NYCU_course\\digital_integrated_circuits\\Exercise\\final_project\\final_output.txt";

    clearFile(filename);
    clearFile(filename2);
    clearFile(filename3);
    clearFile(filename4);

    FILE *fptr, *fptr2, *fptr3, *fptr4;
    fptr = fopen(filename,"w");
    fptr2 = fopen(filename2,"w");
    fptr3 = fopen(filename3,"w");
    fptr4 = fopen(filename4,"w");

    fprintf(fptr,"RADIX 1111 1111 1111 1111 1111 1111 1111 1111\n");
    fprintf(fptr,"VNAME PATN[[0:31]]\n");
    fprintf(fptr,"IO IIII IIII IIII IIII IIII IIII IIII IIII\n");
    fprintf(fptr,"tunit ns\n");
    fprintf(fptr,"period 1\n");
    fprintf(fptr,"vih 0.7\n");
    fprintf(fptr,"vil 0.0\n");
    fprintf(fptr,"vth 0.4\n");
    fprintf(fptr,"slope 0.1\n");
    for(i = 0; i < 5; i++)
    {
        fprintf(fptr,"0000 0000 0000 0000 0000 0000 0000 0000\n");
    }
    // random input
    for(i = 0; i < 20; i++)
    {
        for(j = 0; j < 32; j++)
        {
            input[i][j] = rand()%(16);
        }
    }
    short countline = 0, countMSB = 0;
    // write input to file pattern_dicimal.txt
    for(i = 0; i < 20; i++)
    {
        for (j = 0; j < 32; j++)
        {
            fprintf(fptr2,"%d  ",input[i][j]);
        }
        fprintf(fptr2,"\n");
    }
    // convert input to binary and write to file pattern.txt
    countline = 0;
    for(i = 0; i < 20; i++)
    {
        for(countMSB = 3; countMSB >= 0; countMSB--)
        {
            for (j = 0; j < 32; j++)
            {
                for(int k = 0; k < 4; k++)
                {
                    binary[k] = 0;
                }
                decimalToBinary(input[i][j], binary);
                fprintf(fptr,"%d",binary[countMSB]);
                countline++;
                if (countline%4 == 0)
                {
                    fprintf(fptr," ");
                }
                if (countline == 32)
                {
                    fprintf(fptr,"\n");
                    countline = 0;
                }
            }
        }
    }
    fprintf(fptr,"\n");
    // random weight and write to file pattern_dicimal.txt
    fprintf(fptr2,"\n");
    for(i = 0; i < 32; i++)
    {
        for(j = 0; j < 4; j++)
        {
            weight[i][j] = rand()%(16);
            fprintf(fptr2,"%d  ",weight[i][j]);
        }
        fprintf(fptr2,"\n");
    }
    // testing
    int countshift = 0;
    printf("-----------------------\n");
    for(i = 0; i < 32; i++)
    {
        printf("%d %d %d %d\n",weight[i][0]*((input[0][i]>>3)&0x01),weight[i][0]*((input[0][i]>>2)&0x01),weight[i][0]*((input[0][i]>>1)&0x01),weight[i][0]*((input[0][i]>>0)&0x01));
        printf("-\n");
    }
    printf("-----------------------\n");
    // convert weight to binary and write to file pattern_nodeset.txt in "nodeset" format
    short count_binary = 0;
    fprintf(fptr3,"\n");

    fprintf(fptr3,".param vl = 0\n");
    fprintf(fptr3,".param vh = 0.7\n");
    for(j = 0; j < 4; j++)
    {
        for(k = 0; k < 32; k++)
        {
            for(i = 0; i < 4; i++)
                binary[i] = 0;
            decimalToBinary(weight[k][j], binary);
            for(count_binary = 0; count_binary < 4; count_binary++)
            {
                if(binary[count_binary] == 0)
                    fprintf(fptr3,".nodeset  v(X_CIM_arr.X_Wcol%d.X_W%d.W[%d])=\"vl\"\n",j,k,count_binary);
                else
                    fprintf(fptr3,".nodeset  v(X_CIM_arr.X_Wcol%d.X_W%d.W[%d])=\"vh\"\n",j,k,count_binary);
            }
        }
    }
    // calculate output
    for(i = 0; i < 20; i++)
    {
        for(j = 0; j < 4; j++)
        {
            output[i][j] = 0;
            for(k = 0; k < 32; k++)
            {
                output[i][j] += input[i][k] * weight[k][j];
            }
        }
    }
    printf("\n");
    for(i = 0; i < 20; i++)
    {
        for(j = 0; j < 4; j++)
        {
            printf("%d ",output[i][j]);
        }
        printf("\n");
    }
    // convert output to binary and write to file
    fprintf(fptr4,"\n(OUTPUT):\n");
    for(i = 0; i < 20; i++)
    {
        for(j = 0; j < 4; j++)
        {
            for(k = 0; k < 16; k++)
            {
                binary_out[k] = 0;
            }
            decimalToBinary(output[i][j], binary_out);
            fprintf(fptr4,"\n");
            countline = 0;
            fprintf(fptr4,"(%d) ",output[i][j]);
            for(k = 0; k < 16; k++)
            {
                fprintf(fptr4,"%d", binary_out[15-k]);
                countline++;
                if(countline == 4)
                {
                    fprintf(fptr4," ");
                    countline = 0;
                }
            }
        }
    }

    fclose(fptr);
    fclose(fptr2);
    fclose(fptr3);
    fclose(fptr4);
}