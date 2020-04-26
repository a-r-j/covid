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
select surf_pocket1, protein and id [399,409,410,411,412,413,414,415,416,814,818,820,826,828,1214,1216,1219,1220,1497,1500,1501,1502,1505,1507,1510,1513,1515,1516,1517,1525,1527,1737,1738,1739,1740,1741,1742,1743] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [768,770,771,772,773,784,802,836,837,845,961,979,980,989,990,991,1026,1029,1045,1047,1083,1188,1197,1200,1201,1202,1322,1330,1333,1355,1356] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [255,256,257,258,259,396,397,399,400,413,414,511,528,529,680,682,683,709,712,713,808,827,828,835,853,854,911,912,913,914,915,916,917,918,935,936] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [1141,1143,1144,1146,1149,1150,1709,1723,1726,1727,1730,1733,1751,1752,1753,1754,1764,1766,1767,1768,1769,1855,1858,1863,1865,1869,1886,1921,1923,1933,1935] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [2796,2798,2799,2801,2803,2820,2827,2832,2863,2865,2994,2997,2999,3018,3021,3028,3048,3050,3051,3052,3053,3054,3091] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [1794,1795,1911,1939,1940,1942,1943,1946,1962,1968,1976,1980,1986,1988,1990,1994,2000,2006,2033,2034,2061,2062,2063,2064,2065,2090,2092,2097,2098,2122] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [2730,2738,2739,2741,2751,2753,2757,2758,2764,2766,2767,2768,2769,2770,2771,2772,2773,2779,2796,2798,2799,3040,3041,3043,3044,3052,3053,3073,3075,3078,3079,3081,3083,3084,3085,3088,3091] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [2253,2256,2257,2258,2275,2280,2281,2314,2315,2316,2317,2318,2319,2408,2410,2412,2434,2775,2777,2778,2779,2800,2802,2809,2810,2811] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [1049,1051,1053,1058,1060,1061,1065,1067,1162,1175,1427,1448,1559,1561,1568,1578,1579,1582,1583,1585,1587,1590,1613,1642,1872] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [2670,2698,2734,2736,2977,2979,2980,3007,3008,3010,3012,3014] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [3587,3599,3620,3648,3649,3684,3686,3713,3715,3716,3738,3739,3740,3741,3880,3882] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [359,364,371,386,387,447,448,449,591,738,993,995,996,1000,1002,1010,1011,1013] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [3562,3565,3733,3734,3735,3736,3739,3740,3760,3764,3765,3767,3788,3791,3847,3848,3853,3863,3865,3869,3872,3873,3880,3882] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [3382,3385,3416,3418,3421,3472,3499,3501,3773,3778,3784,3807,3809] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [2705,2707,2708,2710,2729,2731,2732,2733,2734,2745,2746,2748] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [1245,1247,1286,1288,1289,1305,1306,1308,1389,1390,1421,1436,1437,1438,1462,1482,1484,1486] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [2103,2108,2111,2113,2606,2607,2608,2610,2613,2631,2635,2636,2910,2926,2927,2949,2951,2960] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [2235,2236,2238,2242,2262,2264,2265,2468,2472,2473,2497,2499] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [2144,2147,2167,2170,2171,2177,2195,2196,2531,2557,2559,2560,2561,2582] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [2268,2269,2270,2272,2292,2294,2300,2302,2303,2305,2334,2338] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [1091,1097,1103,1105,1114,1149,1153,1155,1158,1617,1618,1842,1845,1847,1848,1849] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [3579,3580,3581,3582,3592,3594,3622,3624,3626,3643,3645,3675,3677] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [3149,3151,3153,3154,3155,3157,3159,3160,3161,3173,3174,3175,3178,3243,3244,3245] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [294,315,326,331,354,533,537,540,925] 
set surface_color,  pcol24, surf_pocket24 


deselect

orient
