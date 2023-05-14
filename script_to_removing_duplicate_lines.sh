#! /bin/sh

echo -n "Enter Filename-> "
read filename
if [ -f "$filename" ]; then
sort $filename | uniq | tee sorted.txt > $filename
else
echo "No $filename in $pwd...try again"
fi
exit 0
