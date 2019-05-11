sed 's#\([0-9][0-9]\)/\([0-9][0-9]\)/\([0-9][0-9]\)#20\3-\2-\1#g' data.csv > out.1

sed  's#;[a-z,N]#;\\N#' out.1 > out.2

sed -e 's/,/./g' out.2 > out.3

sed -e 's/;/,/g' out.3 > out.4

grep -v \N  out.4 > out.5

cat out.5

rm out.*
