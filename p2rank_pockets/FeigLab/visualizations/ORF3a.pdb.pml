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

load data/ORF3a.pdb, protein
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

load data/ORF3a.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1216,1220,1236,1239,1241,1244,1246,1247,1249,1250,1253,1268,1270,1290,1292,1294,1297,1309,1310,1347,1842,1907,1910,1956,1966,1968,1973,1979,1981,1989,2032,2038,2039,2121,2412,2416,2477,2482,2483,2485,2486,2489,2503,2558,3193,3196,3204,3206,3210,3213,3239,3243,3275,3277,3278,3280,3281,3306,3355,3358,3361,3378,3382,3384,3386,3391,3427,3428,3460,3462,3464,3702,3706,3736,3737,3739,3741,3744,3746,3998,4005,4085] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2389,2391,2396,2636,2638,2643,2660,2737,2929,2931,2934,2936,2938,2940,2943,2946,2948,2951,2952,2953,2956,2960,2964,2966,2968,2976,2988,2989,3081,3099,3115,3122,3262,3289,3343,3371,3399,3402,3403,3405,3407,3410,3412,3437,3440,3442,3446,3473,3475,3477,3480,3484,3522,3524,3528,3612,3615,3618,3619,3620,3622,3644,3646,3650,3677,3680,3682,3684,3686,3804,3807,3811,3821,3825,3832,3847,3862,3866,3873,3896,3903,3905,3919] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [2187,2465,2467,2494,2496,2498,2504,2508,2536,2537,2539,2541,2544,2546,2572,2574,2579,2796,2799,2803,2805,2809,2810,2817,2818,2819,2835,2837,3000,3012,3013,3015,3018,3020,3027,3031,3035,3037,3039,3056,3123,3127,3137,3148,3160,3166,3171,3202,3203] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [963,966,1012,1023,1026,1028,1031,1034,1037,1045,1096,1099,1100,1102,1123,1171,1343,1399,1401,1403,1405,1407,1465,1467,1469,1472,1474,1819,1821,1888,1890,1893,1896,1944,1946,2015] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [13,14,20,24,32,36,41,59,61,63,1366,1433,1688,1691,1697,1703,1705,1707,1711,1713,1715,1768,1774,1776,1783,1834] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [5,7,10,13,14,55,69,70,71,73,81,82,138,141,143,145,147,893,894,1435,1447,1451,1493,1496,1497,1498,1500,1502,1515,1691,1697] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [3464,3469,3486,3492,3510,3598,3633,3635,3636,3935,3936,3937,3971,3973,3974,4079,4081,4085,4090,4103,4104,4105,4109,4111] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1403,1465,1467,1469,1472,1474,1532,1534,1538,1593,1615,1753,1755,1817,1819,1821,1880] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [2138,2222,2225,2230,2234,2238,2241,2256,2316,2334,2613,2621,2749,2753,2784,2786,2824,2827,2828,2849,2851] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [2260,2265,2312,2316,2334,2339,2720,2749,2753] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1920,1923,1924,1929,1976,2000,2003,2359,2364,2373,3300,3303,3311,3313,3315,3316,3317,3319,3321,3325] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [36,39,41,45,63,67,640,647,697,703,705,1309,1310,1362] 
set surface_color,  pcol12, surf_pocket12 


deselect

orient
