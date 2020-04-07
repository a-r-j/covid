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

load data/wNsp14-5c8uB.pdb, protein
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

load data/wNsp14-5c8uB.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [2276,2277,2278,2284,2288,2289,2290,2307,2310,2311,2415,2417,2418,2419,2421,2423,2424,2425,2427,2440,2441,2448,2449,2450,2477,2622,2624,2625,2628,2629,2630,2631,2636,2642,2644,2666,2772,2783,2786,2787,2790,2792,2899,2901,2903,2905,2906,2907,2908,2911,2913,3053,3061,3064,3067,3069,3071,3073,3076,3078,3081,3083,3088,3324,3341,3352,3355,3357,3362,3370,3371,3372,3373,3374,3375,3376,3379,3388,3398,4007,4009] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [440,441,442,443,444,446,447,450,461,462,463,465,467,715,723,724,726,729,730,731,732,734,735,736,737,751,812,813,814,1086,1087,1112,1115,1124,1125,1126,1452,1455,1456,1466,1471,1472,1473,1474,1475,1476,1479,1480,1481,1482,1483,1484,1485,1486,1487,1488,1500,1505,1514,1992,1995,1998,2000,2003,2006,2008,2012,2107,2108,2121,2122,2123,2155] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [875,877,886,2085,2090,2092,2094,2095,2096,2141,2164,2165,2167,2168,2170,2191,2192,3271,3273,3274,3275,3276,3277,3279,3280,3295,3296,3298,3302] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [454,456,458,472,474,475,494,557,558,1507,1510,1526,1532,1533,1536,1537,1567,1570,1580,1582,1584] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [2482,2483,2484,2487,2493,2514,2515,2516,2518,2703,3552,3554,3559,3561,3562,3563,3566,3568,3573] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [2448,2450,2476,2477,2631,2636,2637,2642,2663,2665,2668,2678,2679,3050,3053,3061] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [956,957,1023,1024,1025,1269,1540,1542,1552,1577,1720,1850,1852] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2457,2458,2459,2460,2493,2494,2495,3542,3544,3559,3561,3562,3563,3577,3872,3873,3874,3875,3877,3903,3905,3910,3911,3913] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [2059,2061,2066,2228,2229,2262,2263,2265,2280,2281,3284,3286,3289,3292,3381,3386,3398,3400] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [1973,1975,2022,2023,2026,2027,2028,2060,2062,2206,2208,2225,2230,2234,2236] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2303,2304,2305,2306,2309,2310,2311,2643,2652,2653,2798,2814] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [2609,2753,2755,2756,2776,2778,2877,2896,2979,2984,2985,2992,2994,3008,3009] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [43,45,48,51,52,53,54,55,56,57,180] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [3737,3788,4100,4107,4109,4136,4137,4140] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [2504,4043,4081,4083] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [2383,2416,3234,3235,3243,3251,3989,3990,3991,3992,3993,3994,3996] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [482,563,566,1471,1476,1945,1946,1947] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [423,432,433,805,816,822,946,1549] 
set surface_color,  pcol18, surf_pocket18 


deselect

orient
