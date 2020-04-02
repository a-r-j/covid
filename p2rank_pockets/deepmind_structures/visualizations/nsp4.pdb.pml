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

load data/nsp4.pdb, protein
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

load data/nsp4.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [386,387,424,427,428,429,430,448,771,772,773,801,802,825,829,830,832,836,837,839,955,984,985,986,987,988,989,990,991,1001,1002,1011,1012,1013,1021,1111,1113,1118,1128,1129,1132,1135,1137,1183,1187,1188,1189,1192,1214,1215,1220,1223,1500,1501,1502,1504,1505,1506,1507,1509,1510,1511,1513,1515,1516,1525,1527,1736,1738,1739,1740,1741,1742,1743,1744] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [251,253,255,256,257,258,259,397,399,409,410,411,412,413,414,511,528,529,682,683,709,712,820,826,827,828,854,899,907,911,912,913,914,915,916,917,935,936] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [1790,1793,1794,1795,1800,1894,1911,1938,1939,1940,1941,1942,1943,1946,1947,1948,1950,1951,1957,1962,1968,1976,1987,1997,2000,2001,2003,2005,2006,2032,2033,2034,2061,2062,2063,2064,2065,2088,2090,2091,2095,2121,2122,2123] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [2766,2767,2768,2779,2796,2797,2798,2799,2800,2801,2802,2803,2820,2832,2863,2864,2865,2999,3021,3024,3028,3047,3048,3049,3050,3051,3052,3053,3054,3061,3062,3063,3064,3065,3087,3090,3091,3095,3097,3099,3101,3137] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [1135,1137,1141,1142,1143,1144,1150,1729,1730,1733,1751,1753,1754,1767,1768,1769,1863,1865,1918,1920,1923,1932,1935,1959,1960] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [1057,1058,1059,1060,1061,1062,1065,1067,1412,1413,1427,1442,1443,1445,1447,1448,1556,1568,1578,1579,1582,1583,1585,1588,1590,1614] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [3587,3599,3619,3620,3622,3636,3645,3647,3648,3685,3687,3713,3715,3716,3738,3739,3740,3741,3880,3882] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [1834,1836,1837,1962,1964,1965,1968,1969,1987,1988,1989,2095,2096,2123,2910,2918,2921,2922,2924,2928,2931,2933,2934,2945] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [3563,3565,3600,3733,3735,3736,3737,3739,3740,3760,3764,3765,3767,3788,3791,3847,3848,3853,3858,3864,3869,3872,3873,3875,3877] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [2728,2729,2730,2732,2753,2770,2771,3040,3041,3043,3069,3071,3072,3074,3078,3079,3081,3084,3119] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [357,358,359,361,364,365,367,371,386,387,449,450,453,589,591,629,735,737,738,970,997,1004,1008,1009] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [2257,2274,2275,2280,2281,2283,2312,2314,2315,2316,2317,2318,2319,2356,2357,2360,2406,2407,2409,2410,2412,2434,2775,2777,2799,2809,2810,2811] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [2706,2707,2708,2710,2718,2729,2731,2732,2733,2740,2742,2743,2744,2745,2746,2748] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [1239,1245,1247,1252,1305,1306,1308,1389,1390,1420,1421,1422,1436,1481,1483,1486] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [2669,2696,2698,2735,2977,2979,2980,3007,3014,3034,3035] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [3579,3581,3582,3591,3623,3625,3626,3657,3667,3668,3670,3672,3673,3675,3677,3708] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [1074,1081,1090,1091,1092,1097,1608,1610,1615,1616,1617,1618,1619,1620,1622,1842,1845,1847] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [1521,1523,1525,1528,1531,1532,1533,1535,1703,1745,1747,1760] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [970,973,1200,1201,1202,1333,1355,1356] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [484,490,494,496,662,691,692,694,704,705] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [2662,2665,2669,2670,2698,2958,2959,2979,2981,3014] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [512,521,524,526,528,529,712,718,912,920,926,927,936] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [3030,3033,3058,3060,3066,3067,3073,3075,3104,3105,3106,3108,3109,3110,3112,3114] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [2458,2489,2516,2686,2688,2714,2717,2724,2755] 
set surface_color,  pcol24, surf_pocket24 


deselect

orient
