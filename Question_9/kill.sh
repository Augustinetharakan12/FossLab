while [ true ]
do
top -n 1 > temp.txt
kill_process=$(sed '8q;d' temp.txt)
#echo $kill_process
#echo ${kill_process[@]:1}
echo $kill_process
kill_id=$( echo $kill_process | awk '{print $2}')
echo $kill_id
kill_process=$( echo $kill_process | awk '{print $10}')
echo $kill_process
if [ $kill_process > 80 ]
then
  kill -9 $kill_id
fi
sleep 2
done