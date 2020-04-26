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

load data/6m2q.pdb, protein
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

load data/6m2q.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [169,174,179,180,183,191,194,306,310,312,331,336,337,341,342,345,346,364,365,367,1078,1088,1089,1094,1095,1099,1100,1102,1103,1111,1117,1252,1256,1265,1275,1277,1279,1282,1283,1285,1286,1287,1459,1460,1461,1462] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [835,836,838,842,843,844,845,846,848,849,850,856,857,859,1020,1534,1548,1556,1859,1860,1863,1910,1911,1912,1934,1935,2253,2254,2255,2262,2263,2267,2268,2270,2272] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [65,809,810,811,829,858,859,860,863,865,1154,1155,1156,1157,1160,1161,1170,1173,1204,1205,2254,2267,2268,2270,2280,2302,2303] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [231,232,241,244,257,259,275,276,277,638,639,679,681,782,783,801,803] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [101,102,109,110,111,121,225,227,541,542,543,544,732,747,748,749] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1029,1046,1064,1307,1308,1309,1319,1320,1490,1494,1495,1496,1497,1498,1500,1506,1510] 
set surface_color,  pcol6, surf_pocket6 


deselect

orient
