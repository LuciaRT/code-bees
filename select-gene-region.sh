# Selecte the rows for the cytochrome b (in the first case) or 
# the sequence spanning from the beginning of the CO-I to the end of CO-II (second case). 
# Do it according to the ncbi sequence KM458618.1
cat hap-mito-tab | awk 'NR >= 11157 && NR <= 12308' > hap-mito-cytb