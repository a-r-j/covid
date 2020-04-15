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

load data/6vyo.pdb, protein
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

load data/6vyo.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1961,1966,1969,1970,1973,1993,2002,2003,2005,2006,2007,2008,2011,2012,2026,2277,2279,2282,2300,2321,2323,2437,2439,2460,2461,2462,2463,2464,2465,2466,2488,2489,2531,2783,2813,2814,2830,2984,2986,2988,2989,2990,2991,3180,3181,3192,3193,3196,3198,3201,3729,3733,3737,3739,3741,3742,3773,3790,3791,3792,3793,3799,3800,3801,3802,3805,3819] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1,2,5,6,9,38,41,42,43,44,47,48,57,62,318,336,348,350,351,466,467,468,489,490,491,492,493,494,495,516,518,560,812,858,859,961,998,999,1001,1003,1004,1005,1006,1186,1187,1193,1201,1203,1209,1215,1743,1747,1751,1753,1755,1756,1765,1784,1787,1804,1805,1806,1807,1812,1814,1815,1816,1819,1831,1832,1833] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [17,18,19,21,22,23,24,213,214,225,226,229,762,770,772,774,775,784,822,831,833,834,838,850,852,3008,3011,3014,3015,3029,3030,3319,3410,3412,3414,3417,3418,3419,3432,3433,3435,3941,3942] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1023,1026,1029,1030,1044,1045,1333,1424,1426,1428,1431,1432,1433,1447,1449,1955,1956,1981,1983,1985,1986,1987,1988,2177,2178,2189,2190,2193,2733,2741,2743,2745,2746,2755,2804,2805,2821,2823] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [240,241,253,256,263,716,717,718,733,738,750,751,759,763,764,765,766,767,768,3034,3042,3043,3044,3050,3051,3053,3054,3059,3061,3062,3401,3419,3906,3909,3910,3911,3933,3935] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1049,1057,1058,1059,1065,1066,1068,1076,1077,1415,1433,1947,2204,2205,2217,2220,2227,2689,2703,2704,2709,2721,2722,2726,2730,2734,2735,2736,2738,2739] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1353,1354,1358,1367,1368,1370,1371,1380,1410,1427,1958,1959,1962,1963,1964,2514,2516,2521,2522,2523,2524,2525,2526,2546,2723,2725,2728,2743,2749,2752,2755,2757,2758] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [2039,2040,2041,2044,2400,2401,2405,2411,2417,2418,2423,3220,3223,3230,3685,3699,3700,3705,3708,3715,3717,3730,3732,3734] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [76,77,80,429,430,434,440,446,447,452,1221,1222,1234,1237,1244,1699,1713,1714,1715,1719,1729,1731,1739,1746,1748] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1,2,517,543,545,551,552,553,554,555,561,575,754,755,756,757,758,778,781,784,785,786,787,3336,3337,3339,3344,3352,3353,3356,3357,3365,3366,3367,3393,3394,3395] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [979,984,987,988,991,1011,1020,1299,1317,1449,1471,1472,1473,1474,1475,1476,1498,1499,1541,1777,1825] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [2963,2964,2966,2969,2972,2973,2976,2996,3303,3457,3458,3459,3460,3461,3462,3484,3485,3527,3763,3811] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [2344,2965,2967,3510,3512,3515,3518,3519,3520,3521,3542,3721,3724,3745,3748,3753,3754] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1524,1526,1529,1532,1533,1534,1535,1556,1759,1762,1767,1768] 
set surface_color,  pcol14, surf_pocket14 


deselect

orient
