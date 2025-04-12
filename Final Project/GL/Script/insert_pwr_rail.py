import re

problem_cell = ["FAx1_ASAP7_75t_R","HAxp5_ASAP7_75t_R"] #need CON pin before output

#SUBCKT FAx1_ASAP7_75t_R VSS VDD A B CI CON SN
#FA needs 5 inputs and 1 output
#HA needs 3 inputs and 1 output

# ASYNC_DFFHx1_ASAP7_75t_R CLK D QN RESET SET VDD VSS


file = input("Input file name (don't include file format)")
#file = "MUL"

fin =  open(file+".sp", "r")
fout = open(file+"_new.sp","w")
content_new = fin.readlines()
flag=1
index = 0
append_index = 0
counter = 0
for line in content_new:
	append_string = "CIN_"+ str(append_index)
	temp = line.split()
	if(len(temp)>1):
		if((temp[len(temp)-1]=="FAx1_ASAP7_75t_R")):
			if(len(temp) == 6):
				print("modify FA 4 pin \n")
				temp.insert(len(temp)-2, append_string)
				temp.insert(len(temp)-1, ' VPRW VGND ')
				append_index = append_index + 1
			else: 
				print("modify FA 5 pin \n")
				temp.insert(len(temp)-1, ' VPRW VGND ')
		elif (temp[len(temp)-1]=="ASYNC_DFFHx1_ASAP7_75t_R"):
			temp.insert(len(temp)-1 ,'VPRW VGND ')

		elif (temp[len(temp)-1]=="Adder_Tree_DW01_add_*"):
			temp.insert(len(temp)-1 ,'VPRW VGND ')

		else:
			if(counter != 0):
				temp.insert(len(temp)-2 ,'VPRW VGND ')
			else:
				temp.insert(2,'VPRW VGND ')
		newLine = ' '.join(temp)
		#print(newLine)
		fout.write(newLine)
		fout.write('\n')
	else:
		fout.write(line)
	counter = counter + 1

fout.close()
fin.close()
         

         

