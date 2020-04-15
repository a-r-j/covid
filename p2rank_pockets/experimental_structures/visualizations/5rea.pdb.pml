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

load data/5rea.pdb, protein
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

load data/5rea.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [190,194,195,196,199,207,210,322,326,327,328,347,352,353,357,358,361,362,384,385,387,1153,1154,1164,1170,1174,1175,1177,1186,1191,1192,1334,1338,1347,1353,1359,1361,1364,1365,1538,1541,1542,1543,1544] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [889,890,896,897,898,899,901,902,903,911,912,913,1085,1086,1623,1625,1632,1637,1645,1985,1987,1989,1991,1998,2015,2016,2030,2033,2041,2042,2043,2064,2065,2066,2398,2407,2415,2417,2418] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [863,864,865,883,910,911,912,917,919,1229,1230,1231,1232,1235,1236,1241,1245,1286,1287,2399,2400,2412,2415,2425,2448,2449] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [112,119,120,121,131,241,243,572,573,574,575,576,597,777,784,802] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [248,257,260,273,275,291,292,293,687,724,726,830,834,835,836,837,840,855,857] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [55,56,57,58,62,63,65,66,71,73,75,1044,2389,2391,2420,2422,2423,2424,2425,2445,2446,2447,2449,2456,2460] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [315,316,407,423,426,676,690,691,692,695,702,1503,1512,1515,1516,1524] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1615,1616,1940,1943,1973,1975,2215,2227,2246,2247,2249,2259,2330,2333,2336,2340,2343,2344,2345,2346] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [51,1039,1078,1128,1130,1132,1134,1136,2343,2362,2366,2372,2379,2380,2381,2382] 
set surface_color,  pcol9, surf_pocket9 


deselect

orient
