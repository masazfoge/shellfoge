counter=0
target="Default"
while [ ${#target} -gt 0 -a $target != "No" -a $target != "NO" -a $target != "no" ]
do
  echo "Please enter target file name, or enter 'No' for finish the process."
  read target
  if [ ${#target} -gt 0 -a $target != "No" -a $target != "NO" -a $target != "no" ]
  then
    ((counter+=`cat $target | wc -l`))
    echo $counter
  fi    
done
read -p "Process finish. Press enter any key."