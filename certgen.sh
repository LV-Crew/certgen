cat hosts.txt | while read line ; do
nline=`echo $line | cut -c 1-1`;
nline1=`echo $line | sed "s/[-_a-zA-Z0-9.]//g"`
nline2=`echo $line | grep "\w"`
if [ "$nline" != '#' ] 
then
	if [ "$nline1" = '' ]
        then
        if [ "$nline2" = $line ]
        then
	 line=`echo $line | sed 's/\://g'`
	./gencert.sh $line
	./genvhosts.sh $line
        fi
        fi
fi
done

