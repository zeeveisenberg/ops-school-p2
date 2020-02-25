#!/bin/bash
#add fix to exercise6-fix here

if [ $# -lt 2 ]; then
  echo "You must supply at least one file to copy and the destination path"
  exit
fi

dest='server2'
if [ $(hostname) == 'server2' ]; then
  dest='server1'
fi

arglist=($@)   # get all the arguments
# echo "\$arglist is ${arglist[@]}"
# take last argument as dest path, take it out of the list
destpath=("${arglist[@]: -1}")
unset arglist[${#arglist[@]}-1]

echo "destpath = $destpath"
echo "files to copy to $dest:"
echo ${arglist[@]}
echo ""

totalBytes=0
for file in "${arglist[@]}"; do
  if [ -f $file ]; then   # check that that file is real
  # increment the byte counter
	filesize=$(ls -l $file | awk '{ print $5 }')
	totalBytes=$(($totalBytes+$filesize))
  # copy it to the remote host
	scp $file $dest:$destpath
  else
	echo "$file does not exist, moving to the next file in the list"
  fi
done

echo $totalBytes

