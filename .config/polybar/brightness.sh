val=$(light -G)
ival=${val%.*}

if [ "$ival" -le "20" ];then
  echo " $ival"
elif [ "$ival" -le "40" ];then
  echo " $ival"
elif [ "$ival" -le "60" ];then
  echo " $ival"
elif [ "$ival" -le "80" ];then
  echo " $ival"
else
  echo " $ival"
fi
