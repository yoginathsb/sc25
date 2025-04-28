#!/bin/sh
#SBATCH -A xxxxxx
#SBATCH -J specsims-z90-k6-l6-n55987-N6999-e1800-a3
#SBATCH -p batch
#SBATCH -C nvme
#SBATCH -N 6999 
#SBATCH -t 0:30:00
#SBATCH -o z90-k6-l6-n55987-N6999-e1800-a3.o%J 

module load rocm/5.4.3
cd $MEMBERWORK/

cp $PWD/build/bin/gmsim_cloner $MEMBERWORK/
cp -R $PWD/data/gmsim_data $MEMBERWORK/
cp $PWD/data/gmsim_data/treatments.txt $MEMBERWORK/
cp $PWD/data/gmsim_data/rateData.txt $MEMBERWORK/

export OMP_NUM_THREADS=4
srun -N 6999 -n 55987 --gpus-per-task=1 --gpu-bind=closest -t 0:30:00 -A xxxxxx -c 7 -S 8 $MEMBERWORK/gmsim_cloner -z 90 -l 6 -k 6 -e 1800 -a 3 
