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

load data/envelope_membrane.pdb, protein
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

load data/envelope_membrane.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [375,376,377,379,380,443,444,445,446,529,530,531,538,540,570,571,572,578,579,581,582,583,626,628,643,644,645,1682,1684,1685,1708,1709,1726,1727,1730,1731,1732,1733,1734,1765,1766,1767,1785,1788,1789,1839,1841,1843] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [1321,1324,1325,1388,1389,1390,1391,1429,1430,1433,1435,1436,1452,1471,1473,1474,1475,1476,1482,1515,1516,1517,1523,1524,1527,1528,1571,1573,1588,1589,1590,2575,2627,2629,2630,2653,2654,2671,2672,2674,2675,2676,2677,2678,2679,2733,2734] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [149,152,227,292,294,295,1097,1116,1117,1172,1187,1235,1236,1237,1239,1240,2002,2042,2061,2062,2117,2182,2184,2987,3006,3007,3062,3073,3075,3077,3124,3125,3126,3127,3129,3130] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [2201,2266,2267,2268,2269,2270,2317,2334,2335,2336,2420,2421,2469,2471,2472,2473,2516,2517,2518,2535,3572,3573,3574,3575,3617,3619,3620,3621,3622,3678,3679,3690,3691,3693] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1271,1272,1273,1289,1291,1292,1293,1294,1339,1340,1341,1352,1400,1402,1403,1416,2126,2129,2201,2202,2252,2253,2254,2255,2268,2270,2298,2311,2312,2315,2318,2403,2404,2439,2440,2458,2459,2462,2499,2500,2518] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [327,344,346,348,349,395,396,403,407,458,1256,1257,1307,1309,1310,1325,1370,1373,1458,1494,1495,1496,1513,1517,1552,1554,1555,1573] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [3212,3213,3214,3215,3278,3280,3281,3364,3365,3366,3405,3406,3407,3413,3414,3416,3417,3418,3461,3462,3463] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1338,1340,1341,1387,1389,1390,1399,2201,2495,2496,2499,2500,2512,2513,2518,2575,2576] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [327,375,376,377,392,393,395,396,443,444,445,446,454,455,458,1551,1554,1555,1616,1630,1631,1684,1685,1686] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [2419,2469,2471,2472,2473,2516,2517,2518,2535,3678,3679] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [2126,2200,2201,2202,2268,2270,2495,2496,2499,2512,2513,2515,2517,2518,3692,3693,3752,3753,3754] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1255,1256,1257,1309,1551,1554,1568,1571,1572,1573,2747,2748,2806,2807,2809,2823] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [310,311,312,605,606,609,623,625,627,628,657,658,686,1802,1803,1861,1862,1863,1864] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [443,445,484,485,486,487,488,490,491,507,508,526,530,537,541] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [2333,2335,2374,2375,2376,2377,2378,2380,2397,2398,2416,2420,2427,2431] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [2642,2643,2644,2645,2651,2652,2658,2660,2661,2698,2717,2718] 
set surface_color,  pcol16, surf_pocket16 


deselect

orient
