#1/bin/bash

i=1
while [ $i -lt 101 ]
do
  echo "Creating file $i"
  touch file-$i /tmp
  date >> file-$i
  i=`expr $i + 1`
done
