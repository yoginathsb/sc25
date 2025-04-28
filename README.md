# Massively Parallel What-If Analyses for In-Vitro Experimental Design of Precision Oncology on the Frontier Supercomputer

We provide the following attachments

(1) gmsim_cloner executable

(2) efficiency.tgz file which contains the raw output logs used for generating plots and tables

(3) treatments.txt and rateData.txt files along with other relevant input files in folders Treatments and RateData.

(4) An example slurm script

(5) Raw output data files used to visually verify $k^l$-tree evaluation


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

[3] The Treatment folder contains six files, each of which correspond to a unique type of tumor intervention.

[4] The RateData folder contains phase0.csv and phase1.csv files, which contain precalculated DNA damage and repair parameters derived using the [MEDRAS software](https://github.com/sjmcmahon/MEDRAS). These parameters include rates for double-strand break (DSB) formation, DNA repair, and misrepair, and they depend on several factors: the radiation type, Linear Energy Transfer (LET), the nuclear volume of the cell, and the cell cycle phase. The parameters are essential for modeling the initial induction of DSBs and their subsequent repair dynamics according to the [MEDRAS model](https://www.frontiersin.org/journals/oncology/articles/10.3389/fonc.2021.689112/full).


