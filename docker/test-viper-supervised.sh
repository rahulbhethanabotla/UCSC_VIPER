

mkdir -p output
docker run --rm \
	-v `pwd`/data:/data \
	-v `pwd`/output:/output \
	ucsc-viper \
	-e /data/test.data.tab \
	-p /data/phenotypes.tab \
	-n /data/multinet.adj \
	-t Tumor -r Normal \
	--permutations 100 \
	--output /output
