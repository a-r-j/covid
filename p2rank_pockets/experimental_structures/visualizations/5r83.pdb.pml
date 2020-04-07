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

load data/5r83.pdb, protein
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

load data/5r83.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [178,179,183,310,312,331,342,345,346,368,369,371,1102,1103,1108,1109,1112,1113,1114,1116,1117,1125,1130,1131,1273,1277,1285,1289,1290,1292,1295,1296,1298,1299,1459,1460,1469,1473,1475] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [849,850,856,857,858,859,861,862,873,1034,1546,1547,1561,1562,1569,1889,1890,1892,1914,1915,1929,1940,1941,1942,1963,1964,1965,2280,2289,2297,2299,2300] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [65,843,872,877,879,1168,1169,1170,1171,1174,1175,1180,1184,1225,1226,2281,2282,2294,2297,2307,2331] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [45,46,47,48,52,53,56,61,63,65,72,998,2271,2302,2304,2305,2306,2307,2308,2327,2328,2329,2331,2335,2338,2342,2362] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [823,824,825,838,843,872,1168,1169,1170,1171,1184,1225,1226] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [102,110,111,121,225,227,556,557,558,559,560,746,753,754,761,762,763] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [232,244,259,276,277,656,693,695,790,795,796,797,815,817,1371] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1026,1076,1078,1522,1524,1526,1529,1530,1534,1535,1538,1539,1540,2229,2234,2240,2246,2253,2254,2255,2262,2263,2264] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1538,1539,1540,1856,1859,1861,1881,1883,2122,2126,2224,2227,2231,2234,2235,2236,2237] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [300,391,410,412,659,660,661,662,664,671,1434,1443,1446,1447,1455] 
set surface_color,  pcol10, surf_pocket10 


deselect

orient
