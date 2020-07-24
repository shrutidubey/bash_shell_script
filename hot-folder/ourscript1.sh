mkdir ./hot-folder

for myfile in *;
do

  if [ -f "$myfile" ]; then
       echo "$myfile"

   grep -ni "sports" "$myfile"

   check=$(grep -ni "sports" "$myfile")

   if [ -z "$check" ]; then
      echo "EMPTY"

   else
      echo "HOT file FOUND"
      cp "$myfile" ./hot-folder

     echo "*****" >> ./hot-folder/$myfile
          
    echo $check >> ./hot-folder/$myfile

   fi

   else
     echo "$myfile is not a file.."
     echo " "
fi
done

 
--------
9:   grep -ni "sports" "$myfile"
11:   check=$(grep -ni "sports" "$myfile")
