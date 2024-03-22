if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <acc> <project>"
    exit 1
fi
acc=$1
project=$2
out="/rds/user/mb2453/hpc-work/lr_mapRNA/${project}"
ann='/home/mb2453/genome/HiFi_Col0/test.gtf'
htseq-count -f sam -t CDS -s no -m intersection-nonempty -a 1 $out/me_${acc}.sam $ann > $out/${acc}.txt
