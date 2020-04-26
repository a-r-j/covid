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

load data/6y84.pdb, protein
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

load data/6y84.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [188,193,197,198,199,202,210,213,325,328,330,350,355,356,360,361,364,365,387,388,390,1180,1191,1197,1200,1201,1202,1204,1205,1213,1219,1361,1365,1374,1380,1386,1388,1391,1392,1394,1395,1565,1568,1569,1571] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [893,894,900,901,902,903,904,905,906,923,925,1113,1649,1650,1664,1665,2012,2014,2018,2025,2043,2060,2068,2069,2070,2092,2093,2436,2437,2445,2446,2453,2455,2457,2459,2461,2463] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [867,868,869,887,923,930,1256,1257,1258,1259,1262,1263,1272,1313,1314,2451,2457,2471,2495] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [64,65,66,67,72,75,80,82,83,84,91,1070,2427,2429,2468,2469,2470,2471,2489,2490,2491,2492,2493,2495,2498,2499,2502,2506,2526] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [251,263,278,294,295,296,687,728,730,840,841,859,861] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [318,319,410,422,426,429,676,690,691,692,693,695,702,1492,1493,1496,1497,1499,1519,1530,1539,1542,1543,1551] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [121,130,140,246,564,565,566,567,568,597,781,802,804,806] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [59,1105,1155,1157,1161,1163,2376,2381,2388,2400,2404,2410,2417,2418,2419,2420] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1103,1104,1105,1159,1161,1163,1618,1620,1622,1642,1643,2376,2381,2404,2409,2410,2411,2417,2418,2420] 
set surface_color,  pcol9, surf_pocket9 


deselect

orient
