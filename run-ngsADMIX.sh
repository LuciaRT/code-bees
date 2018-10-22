#get your own ngsadmix version
ngsAdmix=/data/hqw876/bin/NGSadmix

#the beagle is a gzipped file
beagle=$1

#this is the prefix for the output name
name=$2

#the value of k
k=$3

#minimum number of individuals
minInd=70

dir=${name}_K${k}
mkdir $dir

#run for a few seed numbers and check for convergence
for seed in $(seq 100 1000)

do

$ngsAdmix  -minInd $minInd -likes ${beagle} -K $k -outfiles $dir/${name}.ngsAdmix.n${minInd}.k${k}.seed${seed} -P 10 -seed $seed >& $dir/${name}.ngsAdmix.n${minInd}.k${k}.${seed}.err
rm $dir/*fopt.gz

done

