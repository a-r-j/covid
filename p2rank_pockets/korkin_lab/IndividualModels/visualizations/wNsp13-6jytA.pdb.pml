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

load data/wNsp13-6jytA.pdb, protein
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

load data/wNsp13-6jytA.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [891,917,919,984,1009,1010,1011,1013,1035,1040,1042,1043,1044,1061,1063,1064,1065,1066,1067,1072,1073,1074,1095,1096,1097,1100,1101,1356,1358,1359,1363,1368,1371,1378,1384,1386,1387,1388,1390,1405,1513,1515,1767,1782,1783,1784,2391,2392,2393,2394,2395,2396,2397,2400,2405,2406,2588,2597,2607,2615,2616,2617,2618,2619,2800,2801,2802,2803,2931,2933,2941,2942,2943,2946,2948,2951,2954,2956,2959,2961,2970,2971,3157,3158,3161,3163,3165,3167,3171,3172,3174,3182,3183,3273,3284] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.376,0.702]
select surf_pocket2, protein and id [2022,2028,2048,2049,2051,2055,2056,2057,2077,2209,2210,2211,2212,2213,2214,2218,2219,2220,2221,2234,2239,2240,2241,2242,2243,2244,2468,2469,3400,3402,3403,3405,3406,3409,3413,3414,3415,3416,3417,3418,3419,3428,3429,3430,3432,3440] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.392,0.902]
select surf_pocket3, protein and id [2203,2207,2214,2227,2228,2233,2234,2415,2416,2417,2437,2438,2439,2440,2444,2466,2900,2904,2905,2908,3109,3112,3136,3137,3138,3443,4173,4176,4179,4180,4181,4183,4196,4416] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.329,0.278,0.702]
select surf_pocket4, protein and id [3646,3658,3660,3661,3670,3678,3682,3683,3846,3881,3882,3883,3884,3891,4456,4459,4462,4467,4472,4588,4597,4599,4600,4601,4602,4603,4611,4641,4642] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.514,0.361,0.902]
select surf_pocket5, protein and id [3502,3530,3532,3533,3535,4327,4329,4342,4366,4367,4369,4371,4372,4513,4514,4521,4522,4547,4548,4552,4553,4554,4555,4556,4559] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.471,0.278,0.702]
select surf_pocket6, protein and id [81,82,322,323,326,328,329,330,338,354,356,480,497,499,512,513,514,670,671,675,682,683] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.698,0.361,0.902]
select surf_pocket7, protein and id [17,19,21,27,29,30,31,32,34,135,143,154,156,162,167,169,962,967,973,987,990,993,994,995,997,1018,1019,1020,1812,1813,1816,1818,1822,1823] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.616,0.278,0.702]
select surf_pocket8, protein and id [3832,3834,3835,3851,3852,3853,3982,3983,3985,3986,3987,4065,4066,4067,4090,4093,4096,4098,4110,4111,4240,4241] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.886,0.361,0.902]
select surf_pocket9, protein and id [3145,3146,3151,3153,3155,3160,3162,3165,3168,3178,3196,3198,3199,3224,3229,3236,3243,3282,4333,4334,4335,4350,4359] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.639]
select surf_pocket10, protein and id [1344,1346,1347,1551,1552,1553,1554,1555,1566,4025,4028,4030,4048,4049,4051,4053,4125,4126,4127,4129,4137,4139,4141,4156] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.729]
select surf_pocket11, protein and id [2196,2202,2206,3423,3450,3451,3478,3480,3484,3509,3579,3580,4380,4405,4407,4409] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.494]
select surf_pocket12, protein and id [118,120,125,129,283,819,832,834,840,1001,1027,1056] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.545]
select surf_pocket13, protein and id [1870,1873,1874,1877,1894,1896,2135,2153,2155,2168,3324,3325,3326,3327,3328,3359,3360,3377,3378,3379] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.353]
select surf_pocket14, protein and id [3663,3667,3669,4371,4372,4399,4400,4465,4481,4578,4579] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.361]
select surf_pocket15, protein and id [1803,1804,1815,1817,1820,1824,1827,2818,2831,2962,2991,3012,3018,3019,3020,3021] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.353,0.278]
select surf_pocket16, protein and id [1347,1350,1369,4010,4027,4028,4140,4154,4155,4156,4359] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.545,0.361]
select surf_pocket17, protein and id [481,600,601,602,603,604,605,606,667,669,671,703] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.494,0.278]
select surf_pocket18, protein and id [3732,3733,3734,3735,3775,3777,3779,3782,3784,4015,4017,4018,4019,4276,4277,4283,4284,4298,4299,4300] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.729,0.361]
select surf_pocket19, protein and id [3198,3199,3221,3224,3226,3229,3236,4310,4311,4312,4313,4314,4315,4317,4332,4333,4334,4335,4357,4359] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.639,0.278]
select surf_pocket20, protein and id [2185,2186,3338,3369,3371,3392,3393,3394,3395,3396,3397,3398,3549,3551,3554,3556,3557,3560,3563] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.886,0.902,0.361]
select surf_pocket21, protein and id [1943,1948,1950,1955,2113,2115,2116,2117,2118,2311,2312,2313,2314,2315,2316,2856,2867,3065] 
set surface_color,  pcol21, surf_pocket21 


deselect

orient
