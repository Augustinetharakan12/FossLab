clear
echo ______________
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
sed 's/(A)/8/g' temp9.txt > temp10.txt
sed 's/(B+)/7/g' temp10.txt > temp9.txt
sed 's/(B)/6/g' temp9.txt > temp10.txt
sed 's/(C)/5/g' temp10.txt > temp9.txt
sed 's/(P)/4/g' temp9.txt > temp10.txt
sed 's/(F)/0/g' temp10.txt > temp9.txt
sed 's/(F)/0/g' temp9.txt > temp10.txt

tr -cd '\11\12\15\40-\176' < temp10.txt > temp11.txt


echo 'FINAL RESULTS' > result1.txt
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
	name10=$(($maths*4 + $physics*4 + $graphics*4 + $computer*3 + $sustainable*3 + $electrical*3 + $physics_lab*1 + $electrical_lab*1 + $computer_lab*1))
	mark=${name10}
	#maths=$(bc <<< "scale=4; ($maths)*4")
	#physics=$(bc <<< "scale=4; ($physics)*4")
	#graphics=$(bc <<< "scale=4; ($graphics)*4")
	#computer=$(bc <<< "scale=4; ($computer)*3")
	#sustainable=$(bc <<< "scale=4; ($sustainable)*3")
	#electrical=$(bc <<< "scale=4; ($electrical)*3")
	#physics_lab=$(bc <<< "scale=4; ($physics_lab*1")
	#electrical_lab=$(bc <<< "scale=4; ($electrical_lab)*4")
	#computer_lab=$(bc <<< "scale=4; ($computer_lab)*4")

	#echo $($maths+$physics+$graphics+$computer+$sustainable+$electrical+$physics_lab+$electrical_lab+$computer_lab)
	#bc <<< "scale=4; ($maths+$physics+$graphics+$computer+$sustainable+$electrical+$physics_lab+$electrical_lab+$computer_lab)"
	var1=$(bc <<< "scale=4; ($name10)/23")
	#name10=$(($name10/24))
	#echo "Name read from file - $name10"
	echo ${arr[0]}   ${var1}  ${mark}>> result1.txt
done < "temp11.txt"

#rm temp*

clear

echo 

echo "open the result.txt from the current directory to view the result"

echo 

cat result.txt
#cat temp10.txt





clear
echo ______________
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
sed 's/(A)/8/g' temp10.txt > temp11.txt
sed 's/(B+)/7/g' temp11.txt > temp10.txt
sed 's/(B)/6/g' temp10.txt > temp11.txt
sed 's/(C)/5/g' temp11.txt > temp10.txt
sed 's/(P)/4/g' temp10.txt > temp11.txt
sed 's/(F)/0/g' temp11.txt > temp10.txt
sed 's/(F)/0/g' temp10.txt > temp11.txt


tr -cd '\11\12\15\40-\176' < temp11.txt > temp12.txt


echo 'FINAL RESULTS' > result2.txt
while read -r line
do
    name="$line"
	arr=($name)
	differential=${arr[1]} #4
	chemistry=${arr[2]} #4
	mechanics=${arr[3]} #4
	design=${arr[4]} #3
	chemistry_lab=${arr[5]} #1
	electronics2=${arr[6]} #3
	electronics_lab=${arr[7]} #1
	computer_lab2=${arr[8]} #1
	computer2=${arr[9]} #3
	name20=$(($differential*4 + $chemistry*4 + $mechanics*3 + $design*3 + $chemistry_lab*3 + $electronics2*1 + $electronics_lab*1 + $computer_lab2*1 + $computer2*4 ))
	mark=${name20}
	#maths=$(bc <<< "scale=4; ($maths)*4")
	#physics=$(bc <<< "scale=4; ($physics)*4")
	#graphics=$(bc <<< "scale=4; ($graphics)*4")
	#computer=$(bc <<< "scale=4; ($computer)*3")
	#sustainable=$(bc <<< "scale=4; ($sustainable)*3")
	#electrical=$(bc <<< "scale=4; ($electrical)*3")
	#physics_lab=$(bc <<< "scale=4; ($physics_lab*1")
	#electrical_lab=$(bc <<< "scale=4; ($electrical_lab)*4")
	#computer_lab=$(bc <<< "scale=4; ($computer_lab)*4")

	#echo $($maths+$physics+$graphics+$computer+$sustainable+$electrical+$physics_lab+$electrical_lab+$computer_lab)
	#bc <<< "scale=4; ($maths+$physics+$graphics+$computer+$sustainable+$electrical+$physics_lab+$electrical_lab+$computer_lab)"
	var1=$(bc <<< "scale=4; ($name20)/24")
	#name10=$(($name10/24))
	#echo "Name read from file - $name10"
	echo ${var1} ${mark}>> result2.txt
done < "temp12.txt"

paste result1.txt result2.txt > final1.txt

grep MDL16CS final1.txt > temp.txt
grep MDL16CS temp.txt > final1.txt

echo Final Results > final2.txt
while read -r line
do
    name="$line"
	arr=($name)
	roll=${arr[0]}
	s1=${arr[2]} #4
	s2=${arr[4]} #4
	#echo ${s1}
	#echo ${s2}

	#echo $($maths+$physics+$graphics+$computer+$sustainable+$electrical+$physics_lab+$electrical_lab+$computer_lab)
	s12=$(($s1*1 + $s2*1 ))
	#echo ${s12}
	#cgpa=${bc <<< "scale=4; }
	cgpa=$(bc <<< "scale=4; ($s12)/47")
	#name10=$(($name10/24))
	#echo "Name read from file - $name10"
	echo ${arr[0]} ${arr[1]} ${arr[3]} ${cgpa} >> final2.txt
done < "final1.txt"	


echo 'test' >cs4b1.txt
while read -r line
do
    name="$line"
	arr=($name)
	roll=${arr[0]}
	s1=${arr[2]} #4
	s2=${arr[4]} #4
	echo  ${arr[5]} ${arr[6]} ${arr[7]}>> cs4b1.txt
done < "c4b.txt"	

grep MDL16CS cs4b1.txt > cs4b2.txt


join <(sort cs4b2.txt) <(sort final2.txt) > final_result.txt 

rm temp*


