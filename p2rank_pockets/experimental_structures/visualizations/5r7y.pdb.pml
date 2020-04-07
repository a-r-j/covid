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

load data/5r7y.pdb, protein
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

load data/5r7y.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [169,174,178,179,180,183,191,194,306,309,310,311,312,331,336,341,342,345,368,369,370,371,1081,1082,1092,1098,1101,1102,1103,1105,1114,1119,1120,1262,1266,1274,1278,1279,1281,1284,1285,1446,1448,1449,1457,1458,1461,1464] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [838,839,845,846,848,849,850,851,852,861,1023,1536,1538,1542,1545,1550,1551,1558,1886,1887,1889,1894,1897,1911,1912,1926,1929,1937,1938,1939,1961,1962,2271,2280,2288,2290] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [794,796,812,813,814,832,859,860,862,866,868,1157,1158,1159,1160,1163,1164,1169,1173,1214,1215,2272,2273,2285,2286,2287,2288,2289,2290,2291,2298,2322] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [41,1015,1062,1063,1065,1066,1067,1511,1528,1529,2220,2221,2225,2231,2237,2238,2239,2244,2245,2246,2251,2252,2253,2254,2255] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [102,109,111,121,227,545,546,547,548,549,735,750,751,752,936,942,949] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [45,46,47,48,53,56,61,63,65,72,987,2262,2264,2295,2296,2297,2298,2299,2317,2318,2319,2320,2322,2329,2333,2353] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [232,244,259,276,277,645,646,682,684,785,786,804,806] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [299,300,391,407,410,648,649,650,653,660,1385,1386,1390,1423,1435,1436,1444] 
set surface_color,  pcol8, surf_pocket8 


deselect

orient
