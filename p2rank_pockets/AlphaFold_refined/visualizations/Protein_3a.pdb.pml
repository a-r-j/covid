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

load data/Protein_3a.pdb, protein
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

load data/Protein_3a.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [303,306,307,308,338,341,358,361,658,660,711,723,780,1334,1337,1338,1339,1343,1384,1390,1395,1417,1474,1760,1763,1765,1767,1786,2720,2722] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [1452,1453,1512,1514,1515,1518,1520,1584,1587,1590,1593,1596,1856,1861,1862,1891,1971,1972,1973,2615,2616,2617,2651,2653,2657,2686,2689,2692,2694,2709,2796,2798,2800,2830,2834,2840,2841,2842] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [338,341,344,347,349,352,365,366,404,426,428,432,599,604,605,655,658,659,1734,1750,1763,1764,1765,2065,2068,2069,2070,2414] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [492,497,560,622,1651,1677,1678,1725,1745,1747,2382,2436,2440,2468,2470,2483,2488] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1802,1804,1809,2057,2079,2082,2676,2755,2757,2759,2813,2816,2817,2819,2821,2824,2826,2846,2860,3130,3162,3163,3164] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [2529,2531,2551,2554,2556,2563,2565,2570,2585,2599,2924,2928,2965,2967,2972,3012] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [192,201,238,244,248,250,252,254,306,307,308,780,1268,1271,1273,1277,1295,1334,1337,1339] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [115,117,124,127,134,169,179,181,221,757,819,821,831,835] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [1939,1942,1947,1950,1951,1953,1955,1958,1988,1993,2480,2483,2486,2512,2544,2547,2548,2549] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [2161,2163,2167,2172,2198,2291,2294,2295,2296,2298,2302,2309,2362,2369,2395,3041,3044,3046,3047,3049,3050,3078] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [2161,2163,2172,2198,2200,2223,2251,2275,2278,2309,2378,2380,2395,2461,2464,2466,2470,2475,3044] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [2213,2217,2219,2232,2236,2238,2241,2242,2551,3016,3024,3029] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [1127,1129,1132,1134,1147,1151,1192,1197,1201] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [489,492,514,516,518,519,520,522,524] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1235,1240,1304,1307,1309,1310,1311,1313,1321,1358,1374] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [2619,2631,2641,2889,2891,2912,2914,2927,2936,2938,3092,3094] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [2048,2061,2108,2403,2412,2426] 
set surface_color,  pcol17, surf_pocket17 


deselect

orient
