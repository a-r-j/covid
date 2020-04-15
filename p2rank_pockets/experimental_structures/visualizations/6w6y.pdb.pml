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

load data/6w6y.pdb, protein
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

load data/6w6y.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1461,1463,1469,1579,1580,1581,1582,1583,1584,1585,1586,1588,1595,1626,1642,1643,1644,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1660,1665,1674,1985,1996,2227,2230,2233,2234,2246,2254,2255,2256,2257,2258,2259,2261,2266,2267,2268,2269,2273,2274,2275,2276,2277,2278,2279,2445,2448,2452,2454,2458,2459,2460,2461,2465,2469,2497] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [158,166,278,279,289,290,291,292,293,298,299,300,304,307,323,324,325,339,341,347,349,353,355,356,357,358,359,365,379,722,725,747,748,749,761,762,948,951,954,955,975,976,977,978,979,980,982,985,986,987,988,989,999,1000,1023,1166,1169,1173,1174,1175,1179,1180,1182,1184,1186,1190,1191,1217,1218] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [42,60,61,62,125,139,145,1199,1201,1202,1225,1227,1229,1234,1236,1237,1238,1260,1261,1263,1264,1292,1345,1362,1364,1434,1438,1440,1442,1445,1446,1448,2480,2481,2506,2508,2515,2516,2540,2571] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [11,12,22,25,47,71,90,118,120,917,921,1132,1133,1134,1135,1151,1152,1153,1369,1370,1371,1372,1373,1374,1396] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [66,67,68,69,70,71,75,92,93,1314,1325,1328,1329,1332,1350,1393,1423,2201,2411,2412,2413,2414,2430,2431,2432] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [707,966,967,998,1000] 
set surface_color,  pcol6, surf_pocket6 


deselect

orient
