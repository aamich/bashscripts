awk options 'selection _criteria {action }' input-file > output-file
Options:
-f program-file : Reads the AWK program source from the file program-file, instead of from the first command line argument.
-F fs           : Use fs for the input field separator

$cat > employee.txt 
ajay manager account 45000
sunil clerk account 25000
varun manager sales 50000
amit manager account 47000
tarun peon sales 15000
deepak clerk sales 23000
sunil peon sales 13000
satvik director purchase 80000 

awk '{print}' employee.txt
awk '/manager/ {print}' employee.txt 
awk '{print $1,$4}' employee.txt 
awk '{print NR,$0}' employee.txt 
awk '{print $1,$NF}' employee.txt 
awk 'NR==3, NR==6 {print NR,$0}' employee.txt 

$cat > geeksforgeeks.txt
A    B    C
Tarun    A12    1
Man    B6    2
Praveen    M42    3

awk '{print NR "- " $1 }' geeksforgeeks.txt
awk '{print $2}' geeksforgeeks.txt
awk 'NF > 0' geeksforgeeks.txt
awk '{ if (length($0) > max) max = length($0) } END { print max }' geeksforgeeks.txt
awk 'END { print NR }' geeksforgeeks.txt
awk 'length($0) > 10' geeksforgeeks.txt
awk '{ if($3 == "B6") print $0;}' geeksforgeeks.txt
awk 'BEGIN { for(i=1;i<=6;i++) print "square of", i, "is",i*i; }'

Built In Variables In Awk

Awk’s built-in variables include the field variables—$1, $2, $3, and so on ($0 is the entire line)
NR: current count of the number of input records
NF: count of the number of fields within the current input record.
FS: field separator character used to divide fields on the input line. default “white space”, meaning space/tab characters. can be reassigned to another character (typically in BEGIN) to change the field separator.
RS: current record separator character. Since, by default, an input line is the input record, the default record separator character is a newline.
OFS: output field separator, to separate fields when Awk prints them. default blank space. Whenever print has several parameters separated with commas, it will print the value of OFS in between each parameter.
ORS: output record separator, to separate output lines when Awk prints them. default newline character. print automatically outputs the contents of ORS at the end of whatever it is given to print.
RSTART: This stores the starting location of the search string/pattern. RSTART is set by invoking the match() function
RLENGTH: This stores the length of the search string/pattern
awk 'match($0, /o/) {print $0 "has \"o\" at " RSTART}' text.txt
df | awk 'NR==7, NR==11 {print NR, $0}' 
awk -F':' '{print $1,$7}' /etc/passwd
awk -F':' 'match($0, /wayne/) {print $1,$7}' /etc/passwd
