




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
	let " res = value1 / valusac
