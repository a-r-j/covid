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

load data/nsp6.pdb, protein
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

load data/nsp6.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1155,1157,1221,1227,1261,1265,1332,1334,2847,2849,2898,2902,2907,2942,2954,2959,3464,3469,3511,3513,3517,3575,3578,3581,3636,3638,3962,3964,4426,4494,4496,4500,4505,4512,4528,4531,4534,4535,4542,4547,4550,4553,4556,4559,4566,4574] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1322,1325,1332,1337,1346,1389,1405,1408,1410,1413,1424,1466,1468,1492,1552,3012,3016,3017,3018,3020,3072,3074,3078,3096,3100,3257,3259,3329,3387,3391,3394,3442,3462,3464] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [26,28,30,39,90,92,94,106,110,113,118,152,156,162,164,166,169,172,233,252,304,827,880,882,887,942,945,1001,1004,3770,3772,3793,3798,4226,4290,4293,4294,4295,4300,4304,4311,4315,4317,4321,4338,4339,4385,4388] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [3701,3750,3751,3752,3756,3759,3761,3764,3767,3772,3969,3974,3984,3988,4256,4263,4302,4304,4307,4346,4422,4637,4641,4656,4699] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [2114,2117,2119,2123,2128,2162,2170,2173,2174,2175,2187,2217,2220,2222,2797,2812,2816,2819,2822,2823,2825,2827,2830,2832,3873,3878,3881,3892,3896,3897,3898,3900,3905,3915,3920,4677,4681] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [2579,2584,2602,2646,3108,3120,3123,3125,3128,3130,3166,3169,3170,3172,3174,3177,3179,3193,3231,3246,3361,3364,3365,3370,3371,3373,3375,3421,3426,3430] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [1034,1040,1043,1090,1092,1105,1174,2708,3477,3480,3482,3483,3498,3500,3534,3537,3538,3540,3542,3545,3547,3567,3664] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1910,1946,1948,1952,2433,2451,2453,2455,2458,2460,2506,2509,2510,2514,2517,2519,2533,2535,2540] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [1863,1872,1875,1880,1889,1925,1928,2690,2698,2988,3022,3028,3040,3041,3042,3044,3092,3094,3096] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [964,968,2708,2713,2775,3542,3547,3565,3567,3611,3615,3617,3664] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [281,285,290,335,343,345,347,350,808,815,820,854,861,865,866,867,869,871,874,912,918,925,928] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [995,1001,1009,1060,1062,1068,1070,1119,1122,1133,1135,1139,4382,4385,4388] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [2287,2289,2303,2354,2708,2712,2713,2718,2723,2727,2775,2778,2780,2781,2792] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1848,1850,1853,1855,1856,1910,1915,1952,2509,2510,2512,2514] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1359,1363,1417,3285,3298,3299,3300,3302,3305,3306,3327] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [1209,1215,1216,1219,1261,1263,4462,4511,4512,4515,4523] 
set surface_color,  pcol16, surf_pocket16 


deselect

orient
