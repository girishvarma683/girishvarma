#move files from folder to respective folder
mkdir abc.txt
mkdir def.txt
mkdir ghi.txt
mkdir abc
mkdir def
mkdir ghi
mv abc.txt abc
mv def.txt def
mv ghi.txt ghi
cd abc
ls
abc.txt
cd def
ls
def.txt
cd ghi
ls
ghi.txt
#print last 4 frequently access urls count in sorted order
$ cat access.log | awk '{ print $11 }' | sort | uniq -c | sort -nr | head -4
   1475 "https://fundoopush-dev.bridgelabz.com/login"
   1141 "https://fundoopush-dev.bridgelabz.com/dashboard/article"
    377 "-"
    176 "https://fundoopush-dev.bridgelabz.com/add-post"
#print list of last 4 frequently access unique urls at perticular hours
$ cat access.log | awk '{print $11}' | sort -n | uniq -c | head -4
    377 "-"
      2 "http://fundoopush-dev.bridgelabz.com/.well-known/acme-challenge/4xM-Y1899BrBIJ76P5Er2sj2VhEtyi_DFvfo6xiMXXw"
      4 "http://fundoopush-dev.bridgelabz.com/wp-login.php"
     28 "https://fundoopush-dev.bridgelabz.com/"
#print list of last 10 unique sorted client ip
$  cat access.log | awk '{ print $1 }' | sort | uniq -c | sort -nr | head -10
    383 10.56.2.2
    345 10.56.19.3
    323 10.56.21.2
    285 10.56.6.4
    283 10.56.1.3
    261 10.56.0.3
    251 10.56.22.3
    242 10.56.4.2
    214 10.56.3.4
    213 10.56.10.2
#print list of web response code count
$ cat access.log | awk '{ print $10 }' | sort | uniq -c | sort -nr | head -4
    300 554
    199 79309
    198 1150
    196 1710
#execute hello and ls commands
$ echo "hello"
hello
$ ls
Girish/     abc.log.1  array.sh    def/       for.sh       girivarma.sh    linux.sh  parttime.sh
Girish8096  absent.sh  day3        def.log.1  function.sh  inch.sh         nana.sh   wage.sh
abc/        amma.sh    dayfolder/  demo       ghi/         linux-content/  odd.sh
#find difference between original file and updated file
sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ mkdir original

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ mkdir updated

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ touch original.sh

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ touch updated.sh

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ cp original.sh original

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ cp updated.sh updated

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ cd original

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz/original
$ ls
original.sh
sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz/original
$ cd ..

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ cd updated

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz/updated
$ ls
updated.sh

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz/updated
$ cd ..
sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ mkdir originalbackup
sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ cp -r original originalbackup

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ cd originalbackup/

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz/originalbackup
$ ls
original/

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz/originalbackup
$ cd original/

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz/originalbackup/original
$ ls
original.sh
sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ cd updated
sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz/updated
$ ls
updated.sh
#check if folder exist or not
sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ mkdir abc
mkdir: cannot create directory ‘abc’: File exists

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ mkdir demo

sudheer@LAPTOP-H305H4UC MINGW64 ~/OneDrive/Documents/Bridgelabz
$ cd demo
#print employeename and totalpay who has basepay greater than 10000
$ cat data.csv | awk '{if($4 > 10000) print($2 "         "  $7)}'
EmployeeName         TotalPay
NATHANIEL         567595
GARY         538909
ALBERT         335279
CHRISTOPHER         332343
PATRICK         326373
DAVID         316285
ALSON         315981
DAVID         307899
JOANNE         302377
PATRICIA         297608
EDWARD         294580
#what is the aggregate totalpay of employee whose jobtitle is 'CAPTAIN'
$ cat data.csv | grep CAPTAIN | awk '{print$3}'
CAPTAIN
CAPTAIN
CAPTAIN
$ cat data.csv | grep CAPTAIN | awk '{sum+=$7} END {print sum}'
1171796
#print average basepay
$ cat data.csv | awk '{sum+=$4} END {print sum/NR}'
157972




