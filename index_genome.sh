out='/rds/user/mb2453/hpc-work'
ann='/home/mb2453/genome/HiFi_Col0/ann_transposons.gtf'
ref='/home/mb2453/genome/HiFi_Col0/Col-0.ragtag_scaffolds.fa'

mkdir -p $out/mygenome
cd $out/mygenome
STAR --runThreadN 16 \
  --runMode genomeGenerate \
  --genomeDir $out \
  --genomeFastaFiles $ref \
  --sjdbGTFfile $ann \
  --sjdbOverhang 100 \
  --genomeSAindexNbases 12
