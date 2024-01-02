if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <acc> <project>"
    exit 1
fi

acc=$1
project=$2

raw="/home/mb2453/rds/hpc-work/fastq/${project}_fastq" #The directory containing the fasta files
out="/rds/user/mb2453/hpc-work/mapRNA_mm"

STAR --runThreadN 16 \
	--genomeDir /rds/user/mb2453/hpc-work/mygenome \
	--readFilesIn $raw/${acc}_1.fastq.gz $raw/${acc}_2.fastq.gz \
	--readFilesCommand zcat \
        --outSAMtype BAM SortedByCoordinate \
        --outFileNamePrefix ${acc}_STARPaired1hitSorted \
	--outReadsUnmapped Fastx \
	--outSAMorder Paired \
	--outFilterMultimapNmax 100 \
	--winAnchorMultimapNmax 100 \
	--outMultimapperOrder Random \
	--outFilterMismatchNmax 2 \
	--outSAMattributes All \
	--twopassMode Basic \
 	--twopass1readsN -1 \
	--quantMode GeneCounts
#        --limitBAMsortRAM 66804733228	



