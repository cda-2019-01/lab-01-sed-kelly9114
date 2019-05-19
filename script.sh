
sed -e ' s#\([0-9][0-9]\)/\([0-9][0-9]\)/\([0-9][0-9]\)#20\3-\2-\1#g' data.csv > out.1

sed -e ' s#\([0-9]\)/\([0-9]\)/\([0-9][0-9][0-9][0-9]\)#\3-0\2-0\1#g'  out.1 > out.2

sed -e ' s#;N#;\\N#g' -e ' s#;n#;\\N#g' -e ' s#;\\n#;\\N#g' -e ' s#;;#;\\N;#g' -e 's#;""#;\\N#g'   out.2 > out.3

sed -e 's/,/./g' -e 's/;/,/g' out.3 > out.4

sed -e 's#,\\N,\\N,#,\\N,\\N,\\N#g' -e 's#,C,\\N,#,C,\\N,\\N#g' out.4 > out.5

sed 's/[a-c,n]/\U&/g' out.5 > out.6

sed 's/,200.0/,200,0/' out.6 > out.7

sed 's/2013-08-02/2014-08-02/' out.7 > final.csv

cat final.csv

rm  out*

