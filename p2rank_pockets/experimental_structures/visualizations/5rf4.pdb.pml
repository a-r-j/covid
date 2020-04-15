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

load data/5rf4.pdb, protein
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

load data/5rf4.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [169,174,178,179,180,183,191,194,306,310,311,312,331,336,341,342,345,368,369,371,1102,1103,1112,1113,1118,1119,1122,1123,1124,1126,1127,1135,1141,1283,1287,1298,1318,1322,1326,1329,1330,1503,1506,1507,1508,1509] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [859,860,866,867,868,869,870,871,872,873,874,881,882,883,1044,1580,1581,1595,1603,1963,1964,1966,1971,1988,1989,2003,2006,2014,2015,2016,2038,2039,2357,2367] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [833,834,835,853,879,880,883,887,1178,1179,1180,1181,1185,1190,1194,1235,1236,2362,2363,2365,2375,2399] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [42,45,46,47,48,53,56,61,63,65,1008,2339,2341,2370,2372,2373,2374,2375,2376,2394,2396,2397,2399,2406,2410,2430] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [41,1036,1083,1084,1086,1088,1556,1573,1574,2297,2302,2308,2314,2315,2316,2321,2322,2323,2328,2329,2330,2331,2332] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [232,244,257,259,275,276,277,666,667,703,704,705,805,807,825,827,1415,1416,1418] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [299,300,391,407,410,658,669,670,671,674,681,1430,1431,1435,1437,1468,1477,1480,1481,1489] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [102,111,121,227,545,546,547,548,549,580,763,764,772,773] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1573,1574,1955,1957,2200,2295,2299,2302,2303,2304,2305,2321,2322,2323] 
set surface_color,  pcol9, surf_pocket9 


deselect

orient
