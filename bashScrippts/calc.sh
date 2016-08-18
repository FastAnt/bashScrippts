#echo "enter first value:"
read value1 symb value2
res=0

if [ "$value1" == "exit" ]
then
echo  "bye"
exit
fi
 
case $symb in
"+") let "$res=$value1+$value2"
     echo   $res;;
"-") echo   $(expr $value1 - $value2);;
"/") if [ $value2 -eq 0 ]; then
       echo "error";
     elif [ $value2 -ge $value1 ]; then
        echo "error";
     else 
       echo $(expr  $value1 / $value2);
     fi;;
"*") echo  $(expr  $value1 \* $value2);;
*) echo "error"
esac