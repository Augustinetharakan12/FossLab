clear
echo calculating...
echo ``````````````
pdftotext result_MDL.pdf temp.txt #to convert from pdf to txt
tr -d "\n\r" < temp.txt > temp1.txt #to remove all \n
sed 's/MDL16CS/\n&/g' temp1.txt > temp2.txt #to create a new line before MDL16CS
sed 's/ELECTRONICS/\n&/g' temp2.txt > temp3.txt #to create a new line before ELECTRONICS 
grep 'MDL16CS' temp3.txt > temp4.txt #to copy all the lines starting with MDL16CS
sed 's/MA101/  &/g' temp4.txt > temp5.txt #to give a space between the first subject

#to delete all the subject names
sed 's/MA101//g' temp5.txt >temp6.txt
sed 's/PH100//g' temp6.txt >temp5.txt
sed 's/BE110//g' temp5.txt >temp6.txt
sed 's/BE10105//g' temp6.txt >temp5.txt
sed 's/BE103//g' temp5.txt >temp6.txt
sed 's/EE100//g' temp6.txt >temp5.txt
sed 's/PH110//g' temp5.txt >temp6.txt
sed 's/EE110//g' temp6.txt >temp5.txt
sed 's/CS110(/(/g' temp5.txt >temp6.txt

#to remove all the spaces
tr -d " \r" < temp6.txt > temp7.txt

#to remove all the commas
tr -d ",\r" < temp7.txt > temp8.txt

#to enter a space before the mark
sed 's/(/ &/g' temp8.txt > temp9.txt

sed 's/(O)/10/g' temp9.txt > temp10.txt
sed 's/(A+)/9/g' temp10.txt > temp9.txt
sed 's/(A)/8.5/g' temp9.txt > temp10.txt
sed 's/(B+)/8/g' temp10.txt > temp9.txt
sed 's/(B)/7/g' temp9.txt > temp10.txt
sed 's/(C)/6/g' temp10.txt > temp9.txt
sed 's/(P)/5/g' temp9.txt > temp10.txt
sed 's/(F)/10/g' temp10.txt > temp9.txt
sed 's/(F)/10/g' temp9.txt > temp10.txt

#to remove all the non ascii characters
tr -cd '\11\12\15\40-\176' < temp10.txt > temp11.txt


echo 'S1 FINAL RESULTS' > temps1.txt
while read -r line
do
    name="$line"
	arr=($name)
	maths=${arr[1]} #4
	physics=${arr[2]} #4
	graphics=${arr[3]} #4
	computer=${arr[4]} #3
	sustainable=${arr[5]} #3
	electrical=${arr[6]} #3
	physics_lab=${arr[7]} #1
	electrical_lab=${arr[8]} #1
	computer_lab=${arr[9]} #1
	#name10=$(($maths*4 + $physics*4 + $graphics*3 + $computer*3 + $sustainable*3 + $electrical*3 + $physics_lab*1 + $electrical_lab*1 + $computer_lab*1))
	maths=$(bc <<< "scale=2; ($maths)*4")	
	physics=$(bc <<< "scale=2; ($physics)*4")
	graphics=$(bc <<< "scale=2; ($graphics)*3")
	computer=$(bc <<< "scale=2; ($computer)*3")
	sustainable=$(bc <<< "scale=2; ($sustainable)*3")
	electrical=$(bc <<< "scale=2; ($electrical)*3")
	physics_lab=$(bc <<< "scale=2; ($physics_lab)*1")
	electrical_lab=$(bc <<< "scale=2; ($electrical_lab)*1")
	computer_lab=$(bc <<< "scale=2; ($computer_lab)*1")

	name10=$(bc <<< "scale=2; ($maths)+($physics)+($graphics)+($computer)+($sustainable)+($electrical)+($physics_lab)+($electrical_lab)+($computer_lab)")

	mark=${name10}
	var1=$(bc <<< "scale=2; ($name10)/23")
	#name10=$(($name10/24))
	#echo "Name read from file - $name10"
	echo ${arr[0]}   ${var1}  ${mark}>> temps1.txt
done < "temp11.txt"

#second sem
clear
echo calculating...
echo ``````````````
pdftotext result_MDL2.pdf temp.txt #to convert from pdf to txt
tr -d "\n\r" < temp.txt > temp1.txt #to remove all \n
sed 's/MDL16CS/\n&/g' temp1.txt > temp2.txt #to create a new line before MDL16CS
sed 's/ELECTRONICS/\n&/g' temp2.txt > temp3.txt #to create a new line before ELECTRONICS
sed 's/TCE16CS/\n&/g' temp3.txt > temp4.txt #to create a new line before ELECTRONICS
grep 'MDL16CS' temp4.txt > temp5.txt #to copy all the lines starting with MDL16CS
sed 's/CY100/  &/g' temp5.txt > temp6.txt #to give a space between the first subject

#to delete all the subject names
sed 's/CY100(/(/g' temp6.txt >temp7.txt
sed 's/BE100(/(/g' temp7.txt >temp6.txt
sed 's/EC100(/(/g' temp6.txt >temp7.txt
sed 's/CY110(/(/g' temp7.txt >temp6.txt
sed 's/EC110(/(/g' temp6.txt >temp7.txt
sed 's/MA102(/(/g' temp7.txt >temp6.txt
sed 's/BE102(/(/g' temp6.txt >temp7.txt
sed 's/CS100(/(/g' temp7.txt >temp6.txt
sed 's/CS120(/(/g' temp6.txt >temp7.txt

#to remove all the spaces
tr -d " \r" < temp7.txt > temp8.txt

#to remove all the commas
tr -d ",\r" < temp8.txt > temp9.txt

#to enter a space before the mark
sed 's/(/ &/g' temp9.txt > temp10.txt

sed 's/(O)/10/g' temp10.txt > temp11.txt
sed 's/(A+)/9/g' temp11.txt > temp10.txt
sed 's/(A)/8.5/g' temp10.txt > temp11.txt
sed 's/(B+)/8/g' temp11.txt > temp10.txt
sed 's/(B)/7/g' temp10.txt > temp11.txt
sed 's/(C)/6/g' temp11.txt > temp10.txt
sed 's/(P)/5/g' temp10.txt > temp11.txt
sed 's/(F)/0/g' temp11.txt > temp10.txt
sed 's/(F)/0/g' temp10.txt > temp11.txt

#to delete all the non ascii characters
tr -cd '\11\12\15\40-\176' < temp11.txt > temp12.txt


echo 'S2 FINAL RESULTS' > temps2.txt
while read -r line
do
    name="$line"
	arr=($name)
	differential=${arr[1]} #4
	chemistry=${arr[2]} #4
	mechanics=${arr[3]} #3
	design=${arr[4]} #3
	chemistry_lab=${arr[5]} #1
	electronics2=${arr[6]} #3
	electronics_lab=${arr[7]} #1
	computer_lab2=${arr[8]} #1
	computer2=${arr[9]} #3
	#name20=$(($differential*4 + $chemistry*4 + $mechanics*3 + $design*1 + $chemistry_lab*1 + $electronics2*4 + $electronics_lab*3 + $computer_lab2*3 + $computer2*1 ))	
	differential=$(bc <<< "scale=2; ($differential)*4")
	mechanics=$(bc <<< "scale=2; ($mechanics)*3")
	chemistry=$(bc <<< "scale=2; ($chemistry)*4")
	design=$(bc <<< "scale=2; ($design)*1")
	chemistry_lab=$(bc <<< "scale=2; ($chemistry_lab)*1")
	electronics2=$(bc <<< "scale=2; ($electronics2)*4")
	electronics_lab=$(bc <<< "scale=2; ($electronics_lab)*3")
	computer_lab2=$(bc <<< "scale=2; ($computer_lab2)*3")
	computer2=$(bc <<< "scale=2; ($computer2)*1")
	name20=$(bc <<< "scale=2; ($differential)+($mechanics)+($chemistry)+($design)+($chemistry_lab)+($electronics2)+($electronics_lab)+($computer_lab2)+($computer2)")
	mark=${name20}
	name20=$(bc <<< "scale=2; ($name20)/24")
	echo ${name20} ${mark}>> temps2.txt
done < "temp12.txt"
paste temps1.txt temps2.txt > tempc1.txt
grep MDL16CS tempc1.txt > temp.txt
grep MDL16CS temp.txt > tempc1.txt
echo Final Results > tempc2.txt
while read -r line
do
    name="$line"
	arr=($name)
	roll=${arr[0]}
	s1=${arr[2]} #4
	s2=${arr[4]} #4
	#s12=$(($s1*1 + $s2*1 ))
	s12=$(bc <<< "scale=2; ($s1)+($s2)")
	cgpa=$(bc <<< "scale=2; ($s12)/47")
	echo ${arr[0]} '|' ${arr[1]} '|' ${arr[3]}  '|' ${cgpa} >> tempc2.txt
done < "tempc1.txt"	
echo 'test' >cs4b1.txt
while read -r line
do
    name="$line"
	arr=($name)
	roll=${arr[0]}
	s1=${arr[2]}
	s2=${arr[4]}
	echo  ${arr[5]} '|' ${arr[6]} ${arr[7]} ${arr[8]} ${arr[9]} ${arr[10]}>> cs4b1.txt
done < "c4b.txt"	
grep MDL16CS cs4b1.txt > cs4b2.txt
join <(sort tempc2.txt) <(sort cs4b2.txt)> final_result.txt 
rm temp*
clear
cat final_result.txt
rm cs4b1.txt
rm cs4b2.txt