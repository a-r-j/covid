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

load data/5red.pdb, protein
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

load data/5red.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [190,194,195,196,199,207,210,322,326,327,328,347,357,358,361,362,385,387,1153,1163,1164,1170,1173,1174,1175,1177,1178,1186,1192,1334,1338,1347,1353,1359,1361,1364,1365,1538,1541,1542,1544] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [889,890,896,897,899,901,902,903,911,912,913,1086,1623,1625,1632,1637,1645,1985,1987,1991,1998,2016,2030,2033,2041,2042,2043,2064,2065,2066,2409,2418,2426,2428,2429] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [863,864,865,883,910,912,917,919,1229,1230,1231,1232,1235,1236,1241,1245,1286,1287,2410,2411,2423,2426,2436,2460] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [112,121,131,241,243,572,573,574,575,576,597,617,784,785,802,993] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [55,56,57,58,63,66,71,73,75,1044,2400,2402,2433,2434,2435,2436,2437,2454,2455,2456,2457,2458,2460,2463,2464,2467,2471,2491] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [248,257,260,273,275,291,292,293,687,688,726,836,837,855,857,1453] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [316,407,423,426,690,691,692,693,695,702,1465,1466,1470,1472,1503,1512,1515,1516,1524] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [51,1078,1128,1130,1134,1136,2354,2373,2375,2377,2383,2389,2390,2391,2392,2393] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1078,1134,1136,1591,1595,1615,1616,2349,2354,2377,2382,2383,2384,2390,2391,2393] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1615,1616,1973,1975,2227,2347,2351,2354,2355,2356,2357,2382,2383,2384] 
set surface_color,  pcol10, surf_pocket10 


deselect

orient
