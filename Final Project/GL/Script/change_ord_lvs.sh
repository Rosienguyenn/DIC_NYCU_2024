infile=$1".sp"
outfile=$1"_lvs.sp"

echo $infile
echo $outfile
awk '{ if($9 == "ASYNC_DFFHx1_ASAP7_75t_R") { print $1, $3, $2, $6, $4, $5, $7, $8, $9; next; } else { print $0; next; }}' $infile > $outfile
sed -i -e '1s/\[0\] /\[0\]\n+ /g' $outfile
sed -i -e 's/ VSS / GND /g' $outfile
