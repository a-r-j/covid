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

load data/nsp2.pdb, protein
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

load data/nsp2.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [2147,2148,2151,2166,2170,2173,2176,2200,2203,2380,2383,2384,2386,2388,2389,2390,2394,2423,2743,2745,2747,2765,2774,2778,2780,2782,2790,2811,2819,3915,3917,3954,4106,4110,4156,4163,4238] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [2774,2777,2778,2780,2785,2787,2809,2810,2811,2814,2819,2824,2831,2834,2836,3896,3900,3901,4258,4268,4270,4274,4304,4307,4483,4536,4540,4544,4547,4586,4589,4592,4603,4605,4607,4609,4611,4612,4623,4624,4626,4628,4990,4993,4996,4998,5001,5004,5007,5021,5033,5034,5036,5038,5040,5042,5228] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.459,0.902]
select surf_pocket3, protein and id [1050,1121,1143,1145,1147,1171,1174,1175,1177,1179,1181,1183,1199,1663,1682,1690,1834,1902,1905,1908,1911,1921,1969,1972,1975,1982,1986,3409,3417,3419,3423,3447,3575,3578,3581,3602,3613,3760,3762,3771,3785,3788,3790,3793,3796,3799,3801] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.310,0.702]
select surf_pocket4, protein and id [1616,1619,1622,1625,1644,1647,1651,1655,1658,1664,1680,1705,1708,1710,1991,2004,2007,2009,2014,2795,2800,2804,2823,2826,2828,2835,2836,2841,2849,2859,3778,3824] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.380,0.361,0.902]
select surf_pocket5, protein and id [200,205,209,212,230,1162,1475,1476,1477,1479,1481,1487,3294,3300,3306,3311,3339,3454,3456,3460,3461,3462,3464,3480,3481,3485,3490,3541,3545] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.341,0.278,0.702]
select surf_pocket6, protein and id [1577,1589,1608,1613,1616,1619,1622,1625,1631,1644,3850,3880,3883,3888,3892,3900] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.498,0.361,0.902]
select surf_pocket7, protein and id [2139,2142,2144,2165,2168,2173,2425,2430,2433,2437,2446,2447,2502,2524,2621,2918,2938,2942] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.431,0.278,0.702]
select surf_pocket8, protein and id [2831,4611,4612,4615,4620,4624,4628,4674,4737,4931,4932,4933,4935,4939,4943,4946,4987,4990,5001] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.616,0.361,0.902]
select surf_pocket9, protein and id [488,510,553,559,562,568,570,572,576,631,639,807,809,836,851,854,858,871,925,929] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.525,0.278,0.702]
select surf_pocket10, protein and id [2073,2086,2087,2907,2910,2913,2946,2948,3644,3647,3653,3658,3661,3662,3663,3667,3697,3723] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.733,0.361,0.902]
select surf_pocket11, protein and id [107,159,594,601,657,660,663,677,689,692,758,978,982,1053,1057,1113,1115,1128,1132] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.616,0.278,0.702]
select surf_pocket12, protein and id [125,130,134,143,159,575,580,650,894] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.851,0.361,0.902]
select surf_pocket13, protein and id [928,1402,1405,1410,1413,1415,1418,1422,1425,1428,1442,1445,1536,3982,3985,3998,4000,4005,4009,4020,4027] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.694]
select surf_pocket14, protein and id [2225,2228,2234,2239,2270,2273,2359,2394,2697,2700,2704,2729,2731,2733,3950,3975,3978,3983,3987,3994,3997,4047,4051] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.831]
select surf_pocket15, protein and id [1447,1452,1475,1476,1477,1479,2695,2697,2700,2707,2724,2733,3490,3505,3966,3970,3974,3975,3976,3978] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.600]
select surf_pocket16, protein and id [242,247,250,254,272,273,274,276,278,281,328,331,334,1102,3392,3395,3398,3401,3404] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.714]
select surf_pocket17, protein and id [2476,2480,2496,2651,2953,2958,2971,2976,2979,3252,3255,3257,3260,3264,3278,3284] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.510]
select surf_pocket18, protein and id [208,210,212,218,269,286,289,462,908,910,912,956,958,960] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.596]
select surf_pocket19, protein and id [2147,2148,2170,2173,2203,2423,2425,2778] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.416]
select surf_pocket20, protein and id [3151,3155,3415,3416,3417,3419,3422,3424,3434,3437,3439,3447,3586,3597,3602] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.478]
select surf_pocket21, protein and id [1252,1256,1276,1282,1285,1288,1307,1344,1345,1540,1550,1553,1554,1555,4028] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.325]
select surf_pocket22, protein and id [1868,1870,1881,1884,1885,2060,2065,2073,2087,3647,3649,3650] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.361]
select surf_pocket23, protein and id [1476,1479,1492,2724,3485,3489,3490,3493,3511,3518,3966,3970] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.325,0.278]
select surf_pocket24, protein and id [3881,3883,3885,3888,4187,4188,4190,4195,4982,5011,5014,5016,5020,5024,5025,5045,5053,5059] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.478,0.361]
select surf_pocket25, protein and id [4263,4280,4284,4287,4288,4289,5050,5053,5056,5059,5062,5092,5172,5175,5209] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.416,0.278]
select surf_pocket26, protein and id [3146,3149,3160,3201,3318,3320,3428,3590,3592,3750] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.596,0.361]
select surf_pocket27, protein and id [130,134,143,516,522,535,580,968,984,1007,1030] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.510,0.278]
select surf_pocket28, protein and id [3412,3415,3417,3419,3422,3423,3424,3447,3575,3582,3602] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.714,0.361]
select surf_pocket29, protein and id [1554,1555,1559,1581,1584,3857,3868,3874,4079,4129] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.600,0.278]
select surf_pocket30, protein and id [291,298,344,349,356,361,415,726,735,767,770,772,775,778,785,791,793] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.831,0.361]
select surf_pocket31, protein and id [1323,1493,1495,1516,2369,2395,3058,3061,3062,3081,3094,3098] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.694,0.278]
select surf_pocket32, protein and id [4633,4636,4638,4641,4643,4645,4647,4649,4651,4653,4657,4659,4663,4666] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.851,0.902,0.361]
select surf_pocket33, protein and id [76,91,92,93,95,107,108,193,918,1435,1456] 
set surface_color,  pcol33, surf_pocket33 


deselect

orient
