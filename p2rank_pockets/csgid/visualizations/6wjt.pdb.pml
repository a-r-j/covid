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

load data/6wjt.pdb, protein
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

load data/6wjt.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [195,196,200,242,244,246,326,327,334,336,337,358,367,585,589,593,594,596,597,599,601,606,607,608,616,640,641,808,809,833,1071,1075,1077,1084,1087,1088,1089,1090,1091,1092,1093,1094,1123,1126,1128,1132,1133,1135,1156,1421,1435,1436,1441,1444,1450,1453,1455,1672,1673,1674,1687,1690,1691,1692,1696,1697,1705] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [3773,3780,3782,3783,3803,3804,3813,3815,4009,4011,4015,4020,4022,4023,4025,4027,4032,4033,4066,4067,4203,4207,4208,4209,4210,4214,4215,4216,4225,4317,4318,4319,4320,4324,4449,4453,4455,4459,4460,4462,4464,4465,4466,4467,4469,4470,4471,4472,4475,4478,4483,4485,4488,4567,4571,4574,4759,4774,5002,5003,5004,5020,5021,5027,5035] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [4232,4237,4246,4250,4251,4274,4285,4289,4290,6268,6270,6272,6291,6292,6296,6298,6300,6303,6322,6324,6360,6372,6376,6400,6401,6402] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [583,594,803,804,807,808,809,810,812,818,824,933,939,940,941,942,1077,1080,1081,1082,1084,1086,1087,1096,1097,1101,1102,1103,1110,1233,1234,1235,1236,1237,1238,1241,1244,1246] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [5888,6245,6246,6262,6264,6265,6323,6329,6331,6340,6364,6377,6378,6382,6383,6384,6385,6392,6538,6539,6540,6545,6549,6557,6571,6589] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [2942,2943,2958,2960,2961,3019,3027,3028,3036,3060,3074,3078,3079,3080,3081,3087,3088,3227,3228,3230,3233,3235,3237,3239,3252] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [846,853,862,866,867,907,910,911,912,913,2954,2964,2965,2966,2968,2987,2992,2996,2999,3005,3012,3018,3020,3056,3068,3072,3096,3097,3098] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [611,612,619,621,2676,2680,2681,2682,2683,2971,2972,2973,2976,2977,2981,2983,2984,2985,2993,2995,3002,5843,5848,5851,5852,5855,5860,5863,5864,5867,5868,6304,6308,6312,6315] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [975,977,979,981,983,985,994,998,2437,2439,2454,2473,2474,4349,4351,4353,4355,4357,4359,4361,4363,5781,5794,5795] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [290,296,297,299,2072,2074,2717,2718,2719,2723,2729,2735,2736,2739,2753,2754,2755,2756,2757,2758,2891,2893] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [4114,4117,5418,5419,5422,5426,5454,5455,6049,6052,6054,6058,6059,6060,6076,6078,6079,6134,6135,6139,6150,6152,6155] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [195,196,200,242,244,245,246,1135,1444,1453,1683,1687,1692,1696,1697] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [3642,3646,3648,3655,3657,3660,3662,3663,3686,3687,3688,3689,3690,3691,3692,4782,5022,5026,5027] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [42,62,65,66,70,89,416,418,420,441,442,443,452,1585,1586,1587,1588,1589,1590,1591,1592] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [85,86,87,89,121,122,124,126,132,1551,1578,1586,1600,1602,1805,1813,1815,1831,1833] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [3736,3739,3742,5391,5397,5398,5399,5403,5405,6030,6031,6035,6047,6048,6051,6066,6067,6068,6069,6070,6197,6198] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [2514,2515,2516,2519,2520,4103,4105,4106,4143,4148,4153,4154,4158,4161,4277,6123,6125,6126,6127,6397,6404,6405,6406,6412,6414,6415] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [3520,3542,3864,3887,3889,3892,3893,3898,3899,3904,3905,4914,4915,4916,4917,4918,4919,4921,5086] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [302,303,304,305,321,2684,2690,2691,2698,2701,2715,2894,2910,3177,3178,3180,3181,3183,3184] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [1100,1103,1125,1219,1221,1233,1234,1235,1237,1244,1246] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [6481,6484,6485,6497,6502,6503,6504,6506,6523,6525,6526,6532,6562,6563,6565,6567,6574,6575,6665] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [452,453,457,458,459,1579,1580,1584,1585,1586,1587,1588,1589,1590,1591,1592,1748,1755,2310] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [3749,3751,5996,5999,6001,6002,6010,6013,6029,6031,6214,6215,6488,6489,6490,6492,6494,6512,6513] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [3174,3215,3220,3243,3244,3246,3255,3256,3344,3346] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [4478,4481,4503,4549,4550,4551,4563,4564,4567,4574,4576] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [3761,3764,3768,3772,3776,3780,3781,3783,4025,4033,4042,4043] 
set surface_color,  pcol26, surf_pocket26 


deselect

orient
