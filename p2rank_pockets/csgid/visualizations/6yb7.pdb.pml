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

load data/6yb7.pdb, protein
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

load data/6yb7.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [897,898,900,906,908,910,912,916,917,918,919,920,922,928,934,1130,1131,1658,1659,1661,1668,1673,1674,1681,2037,2038,2040,2045,2062,2063,2077,2080,2088,2089,2090,2111,2112,2113,2459,2461,2468,2476,2478,2479] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [177,182,186,187,188,191,199,202,314,317,319,339,344,345,349,350,353,376,377,378,379,1189,1199,1200,1206,1209,1210,1211,1212,1213,1214,1222,1228,1370,1374,1383,1389,1395,1397,1400,1401,1403,1404,1574,1577,1578,1580] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [868,870,872,891,930,932,934,936,1265,1266,1267,1268,1271,1272,1281,1322,1323,2473,2474,2486,2510] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [48,52,54,61,69,71,73,80,1088,2450,2452,2483,2484,2485,2486,2487,2504,2505,2507,2508,2510,2513,2514,2517,2521,2541,2559,2561] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [240,249,252,265,267,283,284,285,670,707,709,828,829,856,858] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [307,308,399,415,418,673,674,675,676,678,685,1501,1502,1505,1506,1508,1528,1539,1548,1551,1552,1560] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2072,2094,2096,2149,2151,2187,2190,2191,2195,2197,2198,2202,2203,2204] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [110,119,129,235,562,563,564,565,566,769,790,1017] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [167,170,171,174,179,180,331,348,476,492,523,524] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [41,2404,2421,2423,2425,2427,2433,2435,2439,2440,2441,2442,2443] 
set surface_color,  pcol10, surf_pocket10 


deselect

orient
