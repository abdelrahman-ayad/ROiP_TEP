function mpc = case6Garver
%CASE6WW  Power flow data for 6 bus, 3 gen case from Wood & Wollenberg.
%   Please see CASEFORMAT for details on the case file format.
%
%   This is the 6 bus example from pp. 104, 112, 119, 123-124, 549 of
%   "Power Generation, Operation, and Control, 2nd Edition",
%   by Allen. J. Wood and Bruce F. Wollenberg, John Wiley & Sons, NY, Jan 1996.

%   MATPOWER

%% MATPOWER Case Format : Version 2
mpc.version = '2';

%%-----  Power Flow Data  -----%%
%% system MVA base
mpc.baseMVA = 100;

%% bus data
%	bus_i	type	Pd	Qd	Gs	Bs	area	Vm	Va	baseKV	zone	Vmax	Vmin
mpc.bus = [
	1	3	0	0	0	0	1	1.05	0	230	1	1.05	1.05;
	2	1	0	0	0	0	1	1.05	0	230	1	1.05	1.05;
	3	2	0	0	0	0	1	1.07	0	230	1	1.07	1.07;
	4	1	70	70	0	0	1	1	    0	230	1	1.05	0.95;
	5	1	70	70	0	0	1	1	    0	230	1	1.05	0.95;
	6	2	70	70	0	0	1	1	    0	230	1	1.05	0.95;
];

%% generator data
%	bus	Pg	Qg	Qmax	Qmin	Vg	mBase	status	Pmax	Pmin	Pc1	Pc2	Qc1min	Qc1max	Qc2min	Qc2max	ramp_agc	ramp_10	ramp_30	ramp_q	apf
mpc.gen = [
	1	0	0	100	-100	1.05	100	1	        600      40	    0	0	0	0	0	0	0	0	0	0	0;
	2	50	0	100	-100	1.05	100	1	        500	    30	    0	0	0	0	0	0	0	0	0	0	0;
	3	60	0	100	-100	1.07	100	1	        200	     20	    0	0	0	0	0	0	0	0	0	0	0;
];

%% branch data
%	fbus	tbus	r	x	b	rateA	rateB	rateC	ratio	angle	status	angmin	angmax
mpc.branch = [
	1	2	0.1	    0.4	    0.04	60	40	40	0	0	1	-360	360;
	1	4	0.05	0.6	    0.04	80	60	60	0	0	1	-360	360;
	1	5	0.08	0.2	    0.06	0	40	40	0	0	1	-360	360;
	2	3	0.05	0.2 	0.06	70	40	40	0	0	1	-360	360;
	2	4	0.05	0.4	    0.02	0	60	60	0	0	1	-360	360;
	%2	5	0.1	    0.3	    0.04	30	30	30	0	0	1	-360	360;
	2	6	0.07	0.3	    0.05	160	90	90	0	0	1	-360	360;
	3	5	0.12	0.2	    0.05	200	70	70	0	0	1	-360	360;
	%3	6	0.02	0.3	    0.02	80	80	80	0	0	1	-360	360;
	4	5	0.2	    0.3	    0.08	160	20	20	0	0	1	-360	360;
	5	6	0.1	    0.8	    0.06    0	40	40	0	0	1	-360	360;
];

%%-----  OPF Data  -----%%
%% generator cost data
%	1	startup	shutdown	n	x1	y1	...	xn	yn
%	2	startup	shutdown	n	c(n-1)	...	c0
mpc.gencost = [
	2	0	0	3	0.0045  13.5	177;
	2	0	0	3	0.001   40	    130;
	2	0	0	3	0.005   17.7	137;
];
