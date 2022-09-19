sed 's/o/O/' <infile >outfile
sed 's/o/O/g' <infile >outfile
sed -i 's/find/replace/g' filename  #in-place
sed -i 's/ *$//' file #remove spaces at line end
sed '/^$/d'   # remove empty lines
sed 's/[a-z]/\U&/g' #change to uppercase
sed 's/[A-Z]/\L&/g' #change to lowercase
