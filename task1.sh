
#!/bin/bash 
samtools view -h miniMNM00065.bam 1 > miniMNM00065.ch1.bam  ##Extract reads aligned to chromosome1
samtools fasta miniMNM00065.ch1.bam -F 4 > miniMNM00065.ch1.fasta ##Convert aligned reads into fasta reads
bwa index Homo_sapiens.GRCh38.dna.chromosome.1.fa    ##index reference genome
bwa mem Homo_sapiens.GRCh38.dna.chromosome.1.fa miniMNM00065.ch1.fasta | samtools view -Sb - > miniMNM00065aln-ch1.bam   ###alignreads to chromsome1 
