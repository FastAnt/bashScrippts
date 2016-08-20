echo "enter first value:"
read value1 symb value2
res=0

if [ "$value1" == "exit" ]
then
echo  "bye"
exit
fi

case $symb in
"+") let  " res = value1 + value2 "
     echo   $res;;
"-") let " res = value1 - value2 "
        echo   $res;;
"/") if [ $value2 -eq 0 ]; then
       echo "error";
     elif [ $value2 -ge $value1 ]; then
        echo "error";
     else
        let " res = value1 / value2 "
       echo $res;
     fi;;
"*") let " res = value1 * value2 "
echo  $res;;
"**") counter=1
 ((res = value1))
 while (( counter <= value2 ))
do

  ((counter+= 1))   
  let " res*= value1 "
done
   echo $res ;;
*) echo "error"
esac


#test
