max=1617
for i in `seq 1 $max`
do
	echo "$i/$max"
	curl https://wiki.ahaonline.cz/index,$i,alp.html -H "Cookie: isMob=1" | grep "1\.html\>.*\<a\>" | sed '1d' | sed 's/^.*>\(.*\)<.*$/\1/' | sed 's/\sor\s/_/g' >> aha.txt
done

max=1048
for i in `seq 1 $max`
do
	echo "$i/$max"
	curl https://wiki.blesk.cz/index,$i,alp.html -H "Cookie: isMob=1" | grep "1\.html\>.*\<a\>" | sed '1,2d' | sed 's/^.*>\(.*\)<.*$/\1/' | sed 's/\sor\s/_/g' >> blesk.txt
done

max=300
for i in `seq 1 $max`
do
	echo "$i/$max"
	curl https://wiki.e15.cz/index,$i,alp.html -H "Cookie: isMob=1" | grep "\<strong\>" | sed '1,36d' | sed 's/^.*>\(.*\)<.*$/\1/' | sed 's/\sor\s/_/g' >> e15.txt
done
