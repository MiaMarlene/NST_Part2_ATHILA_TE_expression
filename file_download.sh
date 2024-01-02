if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <sample> <project>"
    exit 1
fi

sample=$1
project=$2
mkdir -p /home/mb2453/rds/hpc-work/fastq/${project}_fastq
out=/home/mb2453/rds/hpc-work/fastq/${project}_fastq

#out_dir= "$out/${project_name}"
#mkdir -p out_dir
#Choose the first one for PE and second one for SE
fastq-dump --gzip --split-files --outdir "${out_dir}" "${sample}"
#fastq-dump --gzip --outdir "$out" "${sample}"
