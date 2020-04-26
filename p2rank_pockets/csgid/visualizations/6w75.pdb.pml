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

load data/6w75.pdb, protein
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

load data/6w75.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [3767,3768,3775,3777,3778,3798,3799,3808,3810,4006,4010,4014,4015,4016,4017,4018,4020,4022,4032,4034,4069,4070,4223,4225,4229,4230,4231,4232,4240,4246,4255,4341,4347,4348,4349,4350,4351,4354,4469,4473,4475,4479,4480,4482,4485,4486,4489,4491,4492,4498,4499,4501,4577,4578,4580,4584,4587,4763,4776,4778,5006,5007,5008,5024,5025,5031,5039] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [346,347,349,354,356,357,378,387,389,583,585,589,594,595,596,597,599,601,606,607,608,616,640,641,819,820,844,1072,1076,1078,1085,1088,1089,1092,1094,1095,1134,1135,1136,1413,1428,1656,1657,1658,1674,1675,1689] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [5914,6278,6279,6295,6297,6298,6364,6372,6373,6381,6405,6418,6419,6423,6424,6425,6426,6433,6580,6581,6586,6590,6598,6612,6618,6630,6681] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [857,864,873,877,878,918,921,922,923,924,2926,2936,2938,2939,2940,2959,2964,2966,2971,2990,2992,3028,3040,3044,3068,3069,3070] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [4262,4267,4276,4281,4282,4286,4304,4310,4315,4318,4319,4320,6301,6303,6305,6324,6325,6329,6331,6339,6350,6363,6365,6401,6413,6417,6441,6442,6443] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [583,814,815,818,819,820,821,823,829,833,835,944,950,951,952,953,963,1078,1081,1082,1083,1085,1087,1088,1097,1098,1101,1104,1111,1234,1235,1236,1237,1238,1239,1242,1245] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [2774,2914,2930,2932,2991,2999,3000,3008,3032,3052,3053,3059,3060,3061,3199,3200,3201,3202,3204,3205,3206,3207,3211,3224,3236,3240,3242,3293] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [4128,4131,5452,5453,5460,5488,5489,6082,6085,6087,6091,6092,6093,6104,6109,6111,6112,6167,6168,6172,6183,6188] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [216,220,262,264,1127,1133,1135,1136,1427,1428,1433,1436,1442,1445,1671,1674,1675,1676,1680,1681] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [51,71,72,74,75,78,79,84,85,91,96,97,98,436,438,440,461,462,463,472,1569,1570,1571,1572,1573,1575] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [3731,3734,3737,3738,3739,3740,3742,5425,5431,5433,5437,5439,6063,6064,6068,6080,6081,6084,6090,6098,6099,6100,6101,6102,6103,6201,6204,6205,6229,6230,6231,6510,6512] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [310,316,2050,2052,2056,2058,2690,2691,2695,2701,2707,2708,2711,2726,2727,2728,2729,2730,2865,2866] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [3630,3631,3635,3639,3644,3646,3649,3651,3652,3675,3676,3677,3678,3679,3680,3681,4786,5017,5021,5026,5030,5031] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [94,95,96,98,130,131,133,135,141,1535,1562,1570,1584,1586,1789,1797,1800,1815,1817,1868] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [215,216,220,231,261,262,264,265,266,1134,1135,1136,1436] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [702,2071,2095,2107,2709,2712,2714,2719,2720,2738,2739,2794,2795,2799,2812,2815] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [323,325,339,341,2650,2662,2663,2670,2673,2689,2690,2691,2882,2883,3149,3150,3151,3152,3153,3155,3156] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [4411,4412,4413,4676,4685,4718,4719,4720,5100,5112,5566,5577,5578,5580,5585,5587,5724] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [3485,3505,3508,3509,3513,3531,3857,3859,3882,3884,3893,4923,4925] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [982,983,984,985,986,987,2435,2454,4379,4380,4382,4384,4393,4396,5794,5816,5829] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [3744,3746,3760,3762,6023,6035,6036,6046,6064,6247,6248,6529,6530,6531,6532,6533,6535,6536] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [472,473,478,479,1563,1564,1568,1569,1570,1571,1572,1573,1574,1732,1739,2302] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [1101,1126,1220,1221,1222,1234,1235,1236,1238,1247,1256,1453] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [6525,6526,6543,6547,6564,6566,6567,6573,6606,6615,6616,6705,6706] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [3476,5409,5410,5411,5412,5413,5414] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [2953,2955,2956,2957,5877,5886,5889,5890,5893,5894,6341,6349,6352,6353,6356] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [4497,4498,4512,4562,4563,4564,4565,4576,4577,4580,4587,4589,4600,4802,4803] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [2504,2513,2516,2517,2520,2521,2983,6309,6318,6320,6322] 
set surface_color,  pcol28, surf_pocket28 


deselect

orient
