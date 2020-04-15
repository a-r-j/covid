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

load data/6y2e.pdb, protein
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

load data/6y2e.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [796,812,813,814,832,838,839,841,845,846,847,848,850,851,852,853,859,860,861,862,863,866,868,1023,1157,1158,1159,1160,1164,1173,1174,1176,1214,1215,1541,1555,1556,1564,1875,1876,1878,1915,1925,1927,1928,1949,1950,1951,2260,2261,2262,2269,2274,2275,2276,2277,2278,2279,2280] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [178,179,180,181,182,183,186,187,191,194,306,310,312,331,336,337,341,342,344,345,368,369,371,1081,1092,1098,1102,1103,1104,1105,1106,1114,1119,1120,1262,1266,1274,1282,1284,1286,1289,1290,1292,1293,1463,1466,1467,1469] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [232,241,244,257,259,275,276,277,645,682,684,785,786,804,806] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [45,46,47,48,52,53,61,63,71,72,2282,2284,2285,2305,2306,2307,2311,2314,2315,2319,2322,2342,2362,2363] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [300,391,403,407,410,422,423,648,649,650,651,652,653,660,1384,1390,1391,1395,1398,1428,1437,1440,1441,1449] 
set surface_color,  pcol5, surf_pocket5 


deselect

orient
