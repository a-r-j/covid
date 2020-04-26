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

load data/7bv1.pdb, protein
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

load data/7bv1.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [8334,8335,8338,8340,8342,8363,8364,8365,8366,8367,8368,8395,8408,8409,8413,8414,8428,8504,8505,8529,8530,8531,8545,8546,8586,8587,8588,8603,8605,8606,8610,8616,8618,8619,8620,8640,8641,8642,8643,8665,8667,8668,8681,8683] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [1937,1942,1971,1972,1973,1992,1999,2000,2009,2147,2148,2149,2154,2162,2172,2177,2178,2179,2180,2190,2519,2524,2528,2529,2533,2536,3010,3045,3058,3062,3063,3064,4394,4676,4677,4678,4681,4693,4754,4755,4756,4757,4761,4768,4770,4771,4772,6935] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [2974,3002,3004,3017,3704,3719,3720,3721,3816,3817,3827,3830,3832,3841,3845,4339,4341,4353,4354,4355,4361,4363,4364,4701,4764,4765,4785,4790,4794,4795,4799,4800] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [132,136,138,394,396,425,426,428,448,449,467,471,4965,4967,4988,4989,4990,4992,4996,5511,5512,5529,5530,5544,5557,5558,5571,5573,5574,5575,5582,5583,5609] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [119,120,418,419,430,431,1271,3121,4959,4963,4981,4983,5185] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [2472,2486,2488,2506,2562,2574,2589,2595,2599,2600,2604,2617,2621,2622,2623,2934,2952,2953,2958,3736,4714,4717,4718,4722,4723,4729,4749,7029] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [4295,4311,4312,4317,5429,5430,5431,5438,5439,5443,5723,5724,5726,5741,5743,5827,5828,5829,5830,5831,5833,5834,5835,5845,5851,5855,5856] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [2121,2125,2126,2134,2235,2248,2258,2260,2263,2266,2267,2338,2342,2345,2366,2367,2375,2377,2379,2398,3622,3624,3664,3669,3673,3682] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [2420,2422,2425,2442,2443,2566,2567,2569,2575,2576,3398,3400,3434,3435,3713,4709,4722,4724,6720,6722,6724,6725,6749,6750,6752,6753,6754,6757,6760] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [4084,4094,4098,4099,4100,4101,4146,4173,5416,5417,5843,5848,5849,5850,5862,5865] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [4268,4270,4286,5474,5475,5487,5488,5511,5512,5513,5515,5518,5554,5557,5558,5559,5563,5564,5565,5754,5755,5771] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [1981,2463,2468,2479,2481,2526,2535,2537,2539,2540,2543,2544,6931,6965,7174,7176,7179] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [1905,1907,1909,1910,1932,1933,1936,1937,1942,2176,2178,2180,3052,3053,3058,3059,3062,3063,3064,3065,3068,4391,4394,4770] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [2610,2611,2613,2632,2927,2930,2931,2932,2935,2940,2941,2942,7276,7277,7430,7431,7656,7665,7675,7676,7677,7678,7679,7703] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [5818,5822,5824,5870,5871,5872,5873,5874,5875,5995,5996,5997,6310,6311,6354,6355] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [1372,1373,1376,1401,1409,1415,1474,1495,1496,1579,1581,1582,1583,1586,1610,1612,1620,1621,1650,1949,1958] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [138,139,140,369,392,399,402,425,433,438,443,467,471,473,476,491,492] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [3270,3271,3272,3273,3274,3277,3288,3580,3583,3605,3607,3609,3610,3613,3641,4524,4525] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [3337,3340,3345,3372,3373,3374,3884,3886,3887,3888,3918,3920,3921,4804,4814,4817] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [3953,4419,4446,4448,4608,4609,4612,4633,4634,4636,4822,4824] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [5799,5801,5870,5872,5876,5879,5884,5887,5891,5894,5904,5996,5997,6296,6311,6317,6318] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [4015,4075,4077,4078,4832,4836,4845,4847,5416,5417,5422,5423] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [3340,3341,3907,3908,3913,3914,3918,3920,3948,3959,3962,3982,3983,3984,3986,3988,4816,4817,4823,4845,4847] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [7945,7972,7997,7998,8029,8030,8031,8032,8033,8034,8035,8145,8148,8169,8170,8172,8175] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [2661,2664,2666,2668,2670,2671,6129,6130,7563,7566,7592,7593,7992,8015,8016] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [3767,3770,5848,5855,5856,5865,6003,6032,6033,6034,6035,6045,6062,6253] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [5047,5061,5062,5063,5064,5065,5066,5067,5285,5316,5317,5318,5319,5320,5323,5354,5355,5367] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [3166,3170,3193,3201,3202,3231,3232,3233,4483,5246,5247,5272] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [6177,6179,6180,6490,6492,6517,6518,6519,6520,6521,6526,6532] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [5920,5977,5978,5979,6268,6269,6300,6301,6575,6599,6600,6617] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [6217,6218,6237,6454,6518,6521,6564,6571] 
set surface_color,  pcol31, surf_pocket31 


deselect

orient
