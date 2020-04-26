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

load data/6m3m.pdb, protein
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

load data/6m3m.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1,2,3,4,6,7,10,33,497,498,696,704,714,720,723,726,728,729,745,1533,1540,1543,1544,1545,1546,1547,1549,2888,2890,2892,2893,2894,2895,3058,3069,3070,3071,3076,3077,3081,3082,3084,3085,3618,3622,3623,3624,3647,3651,3671,3672,3673,3681,3682,3683,3686,3687,3694,3698,3699,3700,3701,3704,3707,3723] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [8,9,12,15,16,19,39,48,51,53,54,58,306,307,309,324,327,328,331,340,341,410,412,414,435,436,437,438,439,440,441,462,463,464,505,506,507,738,786,1042,1043,1044,1067,1068,1069,1082,1085,1086,1087,1834,1835,1849,2741] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [71,72,73,90,91,92,341,343,356,357,358,391,392,393,397,398,412,413,414,441,915,1085,1821,1833,1835,1956,1958,1959,1962,1963,1977,1978,1995,1996,1997,2250,2252,2329,2331,2338,2352,2353,2354,2381,2828,2837,2842,2844,2846] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [1931,1932,1933,1934,1935,1936,1938,1939,2113,2114,2126,2129,2415,2652,2654,2656,2657,2716,2734] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [957,959,961,962,963,964,1144,1145,1156,1157,1160,1683,1691,1693,1696,1754,1755,1759,1771,1773] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [1102,1104,1108,1112,1116,1119,1131,1135,1136,1201,1202,1204,1614,1615,1616,1810,1811,1812,2779,2780,2786,2791,2794,2796,2803] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [48,51,52,53,54,57,58,412,413,414,439,441,786,800,801,914,915,1958,2718,2721,2722,2725,2726,2741] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [937,942,945,946,1249,1267,1413,1414,1415,1416,1417,1418,1440,1441,1483,1717] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [1911,1912,1913,1914,1917,1920,1921,1924,1944,2216,2218,2236,2377,2378,2379,2380,2381,2402,2404,2446,2447,2678] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2867,2868,2873,2876,2877,2880,3174,3192,3342,3343,3344,3345,3346,3347,3370,3412,3413,3644] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2852,2870,2871,3395,3397,3402,3403,3406,3427,3600,3602,3603,3605,3626,3629,3634] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [29,31,32,33,34,205,216,219,704,714,716,717,794] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [921,934,935,936,937,938,939,1466,1468,1471,1473,1474,1475,1476,1477,1478,1479,1484,1498,1673,1675,1676,1679,1699,1702,1705,1707] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [1927,1931,1933,2386,2395,2400,2413,2435,2662,2664,2669] 
set surface_color,  pcol14, surf_pocket14 


deselect

orient
