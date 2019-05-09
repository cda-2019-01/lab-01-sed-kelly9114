sed -e 's#\([0-9][0-9]\)/\([0-9][0-9]\)/\([0-9][0-9]\)#20\3-\2-\1#g' data.csv > out.1
sed -e '4 s#N#\\N#' out.1 > out.2
sed -e '6 s#N#\\N#' out.2 > out.3
sed 's/,/./g' out.3 > out.4
sed 's/;/,/g' out.4 > out.5
sed -n '1,3p; 11p' out.5 > out.6

