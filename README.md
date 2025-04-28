# Massively Parallel What-If Analyses for In-Vitro Experimental Design of Precision Oncology on the Frontier Supercomputer

We provide the following attachments 
(1) gmsim_cloner executable
(2) efficiency.tgz
(3) treatments.txt and rateData.txt files along with other relevant input files in folders Treatments and RateData.
(4) An example slurm script 


Additional Notes:
=================

efficiency.tgz files contain several output files. Every output file corresponds to a single parallel run. 
All the parallel ranks write to a single file in a single run.
The runtimes measured b MPI_Wtime by each rank is written as a line that starts with a "# " in the output file. 
Each values separated by " " and they can be identified by the following column names

(# Rank branches levels init create exec num_rebase rebase spawn simadv total mem num_clones)


[1] gmsim_cloner executable requires rocm-5.4.3 module to be loaded for execution

[2] efficiency_ofiles.tgz: cotains the Frontier outputs, which were used to plot the efficiency plots in Fig 9 and is the source for Table 1 

  * z90-k6-l6-n55987-N6999-e1080-a3.o3303991
  * z90-k6-l6-n55987-N6999-e1260-a3.o3303994
  * z90-k6-l6-n55987-N6999-e1440-a3.o3303997
  * z90-k6-l6-n55987-N6999-e1800-a3.o3304000
