clear all
close all

%cd 'updated_DATASET_16July14'

P = struct()
P.delta_t = 10


aPAR = importdata('updated_DATASET_16July14/aPAR.txt');
pPAR = importdata('updated_DATASET_16July14/pPAR.txt');
flow = importdata('updated_DATASET_16July14/flow-myosin-um-per-min.txt');


time = importdata('updated_DATASET_16July14/T-sec.txt');
xpos = importdata('updated_DATASET_16July14/X-um.txt');



display_dynamic(aPAR, pPAR, flow, time, xpos, P)
display_static(aPAR, pPAR, flow, time, xpos, P)

