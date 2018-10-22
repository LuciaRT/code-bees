infile=$1

awk '{ for (i = 1; i <= NF; i++) f[i] = f[i] " " $i ;
       if (NF > n) n = NF }
 END { for (i = 1; i <= n; i++) sub(/^  */, "", f[i]) ;
       for (i = 1; i <= n; i++) print f[i] }
    ' $infile > ${infile}.col2rows


