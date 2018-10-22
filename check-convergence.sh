dir=$1 #folder name for each k value
tag=.log

grep best $dir/*log | awk '{print $2}' | cut -d'=' -f2- | sort -g  > $dir.log

info=$(grep best $dir/*log | awk '{print $2}' | cut -d'=' -f2- | sort -g | tail -n 1 | sed 's/^.//' | grep -f - $dir/*log | cut -d'/' -f2,3- | sed 's/\:/\t/g' | awk '{print $1}' | head -1)

qopt=${info%$tag}.qopt
in=$dir/${qopt}

cp $in ./

