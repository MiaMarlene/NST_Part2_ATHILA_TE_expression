if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <acc> <project>"
    exit 1
fi
acc=$1
project=$2
raw="/home/mb2453/rds/hpc-work/fastq/${project}_fastq"
out='/rds/user/mb2453/hpc-work/lr_mapRNA'
ref='/home/mb2453/genome/HiFi_Col0/Col-0.ragtag_scaffolds.fa'
winnowmap -W $out/lr_mygenome/repetitive_k15.txt -ax map-ont $ref $raw/${acc}.fastq.gz > me_${acc}.sam
