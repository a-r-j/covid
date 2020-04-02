from pymol import cmd,stored

set depth_cue, 1
set fog_start, 0.4

set_color b_col, [36,36,85]
set_color t_col, [10,10,10]
set bg_rgb_bottom, b_col
set bg_rgb_top, t_col      
set bg_gradient

set  spec_power  =  200
set  spec_refl   =  0

load data/PL-PRO_C_terminal.pdb, protein
create ligands, protein and organic
select xlig, protein and organic
delete xlig

hide everything, all

color white, elem c
color bluewhite, protein
#show_as cartoon, protein
show surface, protein
#set transparency, 0.15

show sticks, ligands
set stick_color, magenta

load data/PL-PRO_C_terminal.pdb_points.pdb.gz, points
hide nonbonded, points
show nb_spheres, points
set sphere_scale, 0.2, points
cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)


stored.list=[]
cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
lastSTP=stored.list[-1] # get the index of the last residue
hide lines, resn STP

cmd.select("rest", "resn STP and resi 0")

for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))



set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [1704,1706,1711,1714,1715,1730,1985,3160,3162,3167,3209,3219,3221,3225,3227,3268,3271,3274,3281,4160,4163,4166,4168,4172,4173,4175,4177,4180,4208,4211,4219,4220,4242,4244,4247,4252,4255,4270] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [4308,4319,4322,4324,4325,4328,4338,4339,4344,4349,4685,4695,4696,4701,4704,4707,4725,5004,5007,5008,5040,5060,5061,5524,5528,5529,5530] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [3077,3140,3148,3150,3153,3154,3155,3157,3195,3199,3213,3355,3357,3364,3369,3411,3428,3487,3491,3541,3542,3543] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [65,129,132,140,145,148,190,196,198,199,261,279,283,286,307,314,317,319,322,342,349,353] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [3303,3305,3308,3794,3912,3916,3933,3938,3941,3967,4042,4046,4287,4291,5502,5510,5524] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [234,411,435,440,445,449,457,463,465,834,837,838,872,876,878,880,1004,1367,1382,1415,1418,1420] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [513,725,727,743,747,751,753,763,790,792,797,1104,1116,1118,1120,2722,2725,2732,2741,2744,2757,2758,2782] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [2051,2093,2095,2104,2105,2107,2109,2112,2114,3065,3630,3635,3651,3652,3654,3656,3659,3663,3689,3690,3691] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [1093,1095,1097,1822,1858,1962,1965,1966,1967,2360,2788,2793,2796,2800] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [1640,1747,2073,2083,2088,2128,2132,2871,2933,2934,2935,2937,2941,2945,2950,2978,2980,2984,2996,3055] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [2190,2193,2196,2198,2225,2226,2240,2531,2532,2899,2900,2901] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [596,598,609,610,611,613,627,629,631,634,635,639,641,2520,2555,2558,2561,2562,2564,2566,2569,2593,2599,2609,2612] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [2045,2048,2051,2054,2059,2068,2093,2095,2105,2107,2109,2112,2113,2118,2154,2159,2324,2327,3691,4128] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [1684,1690,1696,1760,1763,1765,1944,1946,1980,1985] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [820,861,863,866,867,887,890,892,895,1016,1018,1035,1037,1049,1053,1058] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [4143,4188,4197,4202,4234,5076,5080,5149,5154,5197,5203,5208,5217,5219,5221,5282] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [1043,1044,1075,1077,1079,1109,1112,5161,5164,5233] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [1993,1996,1998,2005,2007,2009,2011,2064,2331,2334,2338,4183,4185,4196,4197] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [1966,2005,2007,2331,2334,2338,2351,2358,2359,2753,2781,2782] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [1582,1589,2428,2450,2453,2454,2547,2885,2886] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [545,550,552,555,557,564,572,577,1289,1292,1293,1294,1356,1357,1358] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [950,1059,1061,1067,1071,1084,1099,1101,1157,1166,1494,1503,1508] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [4386,4488,4492,4617,4648,4653,4654,4655,4657,4665,4668,4717,4754,4755] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [18,33,34,36,38,41,42,44,96,99,100,102,104,105,110] 
set surface_color,  pcol24, surf_pocket24 


deselect

orient
