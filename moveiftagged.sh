# Used as an exec in a find to look for files with certain tags and copy them to 
# a fixed location
#
# Should be made more generic

echo "Checking "$1
if (exiftool $1 | grep -i keywords | grep h18) then
echo "Tag found in : "$1
cp $1 /home/alex/h18
fi


