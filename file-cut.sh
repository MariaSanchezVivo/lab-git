#!/bin/bash

# Lista de ficheros FASTQ
files=("Sample1.fastq" "Sample2.fastq" "Sample3.fastq" "Sample4.fastq")

# Para mi (alumno23)
fraction=23

echo "Cortando ficheros para $USER (1/$fraction)"

for f in "${files[@]}"; do
    [[ -f "$f" ]] || { echo "Archivo $f no encontrado"; continue; }
    head -n $(( $(wc -l < "$f") / fraction )) "$f" > "$f.cut"
done

