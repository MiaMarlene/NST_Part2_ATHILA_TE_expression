out='/rds/user/mb2453/hpc-work/lr_mapRNA'
ref='/home/mb2453/genome/HiFi_Col0/Col-0.ragtag_scaffolds.fa'
mkdir -p $out/lr_mygenome
cd $out/lr_mygenome 
conda activate forRNA
source activate forRNA
meryl count k=15 output merylDB ${ref} 
meryl print greater-than distinct=0.9998 merylDB > repetitive_k15.txt
