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

load data/6lzg.pdb, protein
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

load data/6lzg.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [2094,2096,2217,2222,2226,2227,2229,2232,2233,2234,2236,2662,2663,2667,2668,2672,2677,2678,2826,2827,2834,2859,2860,2861,2864,2868,2869,2889,2890,2891,2892,2893,2894,2902,2903,2923,2924,2925,3116,3117,3118,3119,3139,3142,3143,3144,3163,3164,3165,3166,3167,3168,3170,3174,3189,3190,3203,3204,3305,3320,3321,3353,3354,3355,3356,3357,3358,3361,3362,3376,3378,3382,3383,3386,3387,3388,3389,3390,3391,3392,3414,3416,3425,3426,3443,3444,3445,3446,3448,3452,3453,3454,3472,4047,4049,4080,4088,4117,4118,4260,4262,4267,4268,4270] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [156,157,181,182,183,184,415,417,418,420,450,451,452,660,661,662,664,669,2474,2475,2494,2497,2498,2499,2500,2504,2509,2510,2511,2513,2546,2554,2700,2703,2704,2713,2714,2717,2726,2727,2729,2738,2746,2748,2966,2967,2969,2989,2990,2991,2992,2993,2994,3017,3020,3022,3023,3024,3026,3028,3032,3044,3045,3047,3048,3049,3059,5441,5442,6193,6200,6207,6213,6216,6220,6222,6223,6224,6233,6235,6237,6247] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [94,95,96,120,121,124,126,128,129,130,131,133,134,153,154,157,162,2725,2991,3008,3049,5426,5427,5428,5439,5441,5448,5451,5478,5527,5528,5529,5530,5531,5819,5820,5821,6147,6151,6161,6230,6234,6235,6236,6237] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [875,877,885,1005,1010,1013,1035,1037,1038,1039,1040,1041,1063,2042,2045,2047,2049,2068,2069,2081,2083,2093,2095,3941,3947,3948,3949,3950,3952,3953,3962,3963] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [184,2672,2678,2681,2682,2697,2700,2701,2702,2703,2903,2920,2921,2922,2923,2924,2925,2961,2962,3044,3058,3059,3105,3106,3107,3108,3110,3111,3118,3119] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [684,685,686,687,688,698,701,705,800,823,1373,1397,1447,1448,1475,1494,1499,1500,1501,1504,1505,1506,1509,1511,1530,1531,1536,1539,1560,3084,3988,3991,3999,4005,4010,4038] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [182,184,211,213,217,235,236,277,278,366,389,415,417,2675,2676,2677,2681,2690,2691,2692,2693,2694,2695,2697,2699,2700,2705,2706,2710] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [77,79,102,104,105,139,140,143,442,466,468,469,478,479,499,500,6067,6068,6069,6071,6073,6074,6075,6077,6087,6098,6108,6110] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [1175,1177,1178,1180,1219,1220,2009,2010,2052,2058,2060,2061,2063,3497,3498,3532,3731,3745,3746,3772,3773,3912] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [627,631,656,657,658,659,661,662,685,688,1530,1531,1532,1533,1535,1539,1555,3067,4426,4429,4430,4431] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [5123,5124,5125,5126,5127,5223,5224,5261,5262,5266,5270,5272,5294,5295,5300,5339,5652,6321,6322,6323] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [4934,4935,4948,4949,5152,5178,5187,5188,5189,5197,5199,5200,5678,5679,5681,5682,5684,5723] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [5049,5371,5607,5620,5623,5631,5636,5639,5642,5915,5917,5919,6311,6312,6316,6325,6328,6329,6330,6331] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [3703,3705,3706,3707,3738,3748,3753,3780,3781,3782,3835,3851,3854,3860,4807,4812,4814,4837,4838,4854,4856] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [68,95,5529,5530,5531,5551,5561,5562,5563,5848,5850,5856,5885,5997,5998] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1316,1347,1348,1351,1353,1356,1378,1381,1412,3602,3604,3609,3627,3642,3659,3660,3688,3691] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [2425,2426,2434,2455,2456,2457,2468,3159,4293,4364] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [1070,1083,1087,1089,1093,1137,1138,1139,1893,1923,1925,2022,2023,2024,2025,2028,2037,2038,2121,2133,2158] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [1629,1667,4108,4465,4466,4557,4559,4560] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [1675,1676,1709,3551,3581,3587,3596,3623,3625,3637] 
set surface_color,  pcol20, surf_pocket20 


deselect

orient
