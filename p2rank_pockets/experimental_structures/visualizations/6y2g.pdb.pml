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

load data/6y2g.pdb, protein
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

load data/6y2g.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [14,28,29,30,33,36,37,39,41,1015,1063,1065,1066,1067,1515,1527,1528,1529,1591,1862,1864,2178,2184,2185,2186,2187,2188,2191,2192,2204,2206,2209,2218,2219,2221,2222,2223,2229,2230,2236,2237,2238,2239,2343,2357,2358,2359,2362,2366,2368,2369,2370,3394,3395,4507,4513,4514,4515,4520,4521,4532,4533,4534,4548,4549,4550,4551,4565,4566,4567,4568,4578,4579] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [2503,2506,2507,2508,2509,2512,2523,2635,2638,2641,2660,2670,2671,2675,2698,2699,3410,3419,3420,3421,3426,3427,3430,3431,3432,3434,3435,3448,3449,3591,3595,3603,3604,3606,3608,3609,3610,3615,3616,3618,3768,3769,3771,3775,3777,3778,3786,3787,3790,3794] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2095,2103,2107,2120,2126,2127,2129,2133,2134,2136,2137,2138,2143,2145,2146,2147,2148,2152,2165,2196,2197,2205,2206,2211,2212,2213,3857,3858,4166,4167,4169,4191,4193,4424,4432,4436,4455,4456,4458,4462,4463,4466,4467,4468,4469,4470,4472,4474,4475,4477,4525,4526,4528,4531,4535,4538,4539,4540,4541,4557,4559] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [174,178,183,191,194,306,309,310,311,312,331,337,342,346,369,370,371,1080,1081,1082,1091,1092,1098,1099,1101,1102,1104,1105,1106,1114,1119,1120,1262,1266,1274,1275,1277,1280,1281,1284,1285,1439,1440,1442,1448,1449,1461,1463,1465] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [838,839,842,846,847,848,849,851,852,853,860,862,1536,1538,1545,1550,1558,1870,1871,1873,1921,1922,1923,1945,1946,2255,2256,2264] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3167,3168,3174,3175,3176,3179,3180,3181,3182,3188,3190,3352,3865,3867,3874,3879,3880,3887,4199,4200,4202,4207,4224,4225,4242,4250,4251,4252,4274,4275,4585,4592,4593,4601,4603] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [63,65,860,861,862,1157,1158,1159,1160,1164,1174,1175,1176,2269,2270,2271,2272,2273,2275,2282] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2392,2394,3143,3147,3161,3187,3188,3189,3190,3191,3192,3195,3198,3486,3487,3488,3489,3493,3502,3503,3505,3543,3544,4586,4598,4611,4632,4633] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1063,1064,1067,1071,1308,1313,1315,2334,2335,2336,2337,2340,2343,3971,3972,3974,4505,4506,4507,4511,4512] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [6,7,8,9,11,14,1642,1643,1645,1658,2166,2175,2176,2177,2178,2182,2183,2184,3392,3393,3637,3642,3644] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [232,244,259,276,277,645,646,682,684,784,786,804,806,1360,1373] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2570,2573,2580,2586,2588,2605,2606,2975,3011,3012,3013,3114,3115,3118,3126,3131,3133,3135,3136] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2438,2439,2440,2450,2460,2553,2556,2873,2874,2876,2877,3064,3065,3079,3080] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [812,813,814,830,832,859,860,862,1158,1159,1214,1215,1231,1232] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [300,648,650,651,660,1385,1386,1390,1393,1423,1435,1436,1440,1441,1444,1451,1452,1453] 
set surface_color,  pcol15, surf_pocket15 


deselect

orient
