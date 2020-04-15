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

load data/5r8t.pdb, protein
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

load data/5r8t.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [169,174,178,179,180,183,191,194,306,310,311,312,331,336,337,341,342,345,368,369,371,1088,1099,1105,1108,1110,1112,1121,1127,1269,1273,1286,1287,1288,1291,1292,1294,1295,1296,1465,1468,1469,1470,1471] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [845,846,852,853,854,855,857,858,859,867,868,869,1030,1542,1543,1545,1552,1557,1558,1565,1890,1891,1893,1915,1916,1930,1933,1941,1942,1943,1965,1966,2284,2294] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [819,820,821,839,865,866,869,870,873,875,1164,1165,1166,1167,1171,1176,1180,1221,1222,2276,2289,2290,2292,2302,2326] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [232,241,244,257,259,275,276,277,652,689,690,691,786,789,791,792,793,796,811,813] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [299,300,391,403,407,410,644,655,656,657,658,660,667,1392,1393,1396,1397,1399,1419,1430,1439,1442,1443,1451] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [102,111,121,227,545,547,548,549,570,590,730,749,750,757,758,759,943] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [45,46,47,48,52,53,55,56,61,63,64,65,72,994,2266,2299,2300,2301,2302,2303,2323,2324,2326,2333,2337] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1535,1536,1857,1860,1882,1884,2115,2121,2123,2127,2146,2154,2155,2222,2224,2226,2229,2230,2231,2232,2248,2249,2250] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1022,1070,1072,1074,1518,1535,1536,2224,2229,2241,2243,2248,2249,2250,2255,2256,2257,2258,2259] 
set surface_color,  pcol9, surf_pocket9 


deselect

orient
