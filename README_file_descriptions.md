## File descriptions
A brief description of what each files in the repository is. 
See a more detailed description on how I used all these files in 
The Run_ files contain the SLURM script to run the matching bash script.
- file_download and Run_file
    - To download the fastq files directly from ncbi per project
    - Requires a list of run accessions per project
- index_genome and Run_index
    - To index the reference genome which creates files for the STAR alignment.
    - Requires a fasta file of the reference genome
- lr_index_genome and lr_Run_index
    - To index the reference genome for the long read alignment
    - Requires a fasta file of the reference genome
- map_RNA and Run_mapRNA
    - To align the reads of a specific project to the reference genome, single-read mapping.
    - Requires the indexing files and the fastq files of the RNAseq reads of a project
- map_RNAmm and Run_mapRNAmm
    - To do the same thing but multimapping
- lr_map_RNA and lr_Run_mapRNA
    - To map the long-read RNAseq data to the reference genome
    - Requires the indexing file and fastq files of the RNAseq reads of a project
