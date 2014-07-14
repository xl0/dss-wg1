clear all
close all

%cd 'DATASET_SUMMERSCHOOL'

aPAR = importdata('DATASET_SUMMERSCHOOL/aPAR.txt');
pPAR = importdata('DATASET_SUMMERSCHOOL/pPAR.txt');

time = importdata('DATASET_SUMMERSCHOOL/T-sec.txt');
xpos = importdata('DATASET_SUMMERSCHOOL/X-um.txt');


display_dynamic(aPAR, pPAR, time, xpos)
display_static(aPAR, pPAR, time, xpos)

