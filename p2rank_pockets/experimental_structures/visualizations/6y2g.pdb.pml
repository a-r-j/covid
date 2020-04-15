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
select surf_pocket1, protein and id [14,28,29,30,33,36,37,39,41,1015,1063,1065,1066,1067,1515,1527,1528,1529,1591,1862,1864,2178,2184,2185,2186,2187,2188,2191,2192,2204,2206,2209,2218,2219,2221,2222,2223,2229,2230,2236,2237,2238,2239,2344,2358,2359,2360,2363,2367,2369,2370,2371,3395,3396,4508,4514,4515,4516,4521,4522,4533,4534,4535,4549,4550,4551,4552,4566,4567,4568,4569,4579,4580] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [2504,2507,2508,2509,2510,2513,2524,2636,2640,2642,2661,2671,2672,2676,2699,2700,3411,3420,3421,3422,3427,3428,3431,3432,3434,3435,3436,3449,3450,3592,3596,3604,3605,3607,3609,3610,3611,3616,3617,3619,3769,3770,3772,3776,3778,3779,3787,3788,3791,3794] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2095,2103,2107,2120,2126,2127,2129,2133,2134,2136,2137,2138,2144,2145,2146,2147,2148,2152,2166,2196,2197,2205,2206,2211,2212,2213,3858,3859,4167,4168,4170,4192,4194,4425,4433,4437,4456,4457,4459,4463,4464,4467,4468,4469,4470,4471,4474,4475,4476,4478,4526,4527,4529,4532,4536,4539,4540,4541,4542,4558,4560] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [174,179,183,191,194,306,309,310,311,312,331,337,342,346,369,370,371,1080,1081,1082,1091,1092,1098,1099,1101,1102,1103,1105,1106,1114,1119,1120,1262,1266,1274,1275,1277,1280,1281,1284,1285,1439,1440,1442,1448,1449,1461,1463,1464] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [838,839,841,846,847,848,849,851,852,853,860,861,1536,1538,1545,1550,1559,1870,1871,1873,1920,1922,1923,1945,1946,2255,2257,2264] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3168,3169,3175,3176,3177,3180,3181,3182,3183,3189,3192,3353,3866,3868,3875,3880,3881,3889,4200,4201,4203,4208,4225,4226,4243,4250,4252,4253,4275,4276,4587,4593,4594,4602,4604] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [63,65,860,861,862,1157,1158,1159,1160,1164,1174,1175,1176,2269,2270,2271,2272,2273,2275,2282] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [2393,2395,3144,3148,3162,3188,3189,3190,3191,3192,3193,3196,3198,3487,3488,3489,3490,3494,3503,3504,3506,3544,3545,4586,4599,4612,4633,4634] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [1063,1064,1067,1071,1308,1313,1315,2335,2336,2337,2338,2341,2344,3972,3973,3976,4506,4507,4508,4512,4513] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [6,7,8,9,11,14,1642,1643,1646,1658,2165,2175,2176,2177,2178,2182,2183,2184,3393,3394,3638,3643,3645] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [232,244,259,276,277,645,646,682,684,784,786,804,806,1360,1373] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2571,2574,2581,2587,2589,2606,2607,2975,3012,3013,3014,3115,3116,3119,3127,3132,3134,3136,3137] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [2439,2440,2441,2451,2461,2555,2557,2874,2875,2877,2878,3065,3066,3080,3081] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [812,813,814,830,832,859,860,861,1158,1160,1214,1215,1231,1232] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [300,648,650,651,660,1384,1386,1390,1393,1423,1435,1436,1440,1441,1444,1451,1452,1453] 
set surface_color,  pcol15, surf_pocket15 


deselect

orient
