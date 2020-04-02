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

load data/5r82.pdb, protein
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

load data/5r82.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [174,178,179,180,183,191,194,306,309,310,311,312,331,336,337,341,342,345,369,370,371,1088,1098,1099,1104,1105,1108,1109,1110,1112,1113,1126,1127,1269,1273,1281,1284,1286,1288,1291,1292,1294,1295,1446,1449,1453,1455,1456,1464,1465,1468,1471] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [845,846,848,852,853,854,855,856,857,858,859,860,868,1030,1542,1543,1557,1558,1565,1904,1905,1907,1912,1915,1930,1944,1947,1955,1956,1957,1979,1980,2298,2306,2308] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [65,819,820,821,839,865,866,869,870,873,875,1164,1165,1166,1167,1170,1171,1176,1180,1221,1222,2303,2304,2306,2308,2316,2340] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [232,241,244,257,259,275,276,277,652,653,689,690,691,786,791,792,793,811,813] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [102,111,121,227,544,545,546,547,548,549,570,572,590,730,749,750,757,758,759] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [42,45,46,47,48,52,53,55,56,61,63,65,72,991,994,2280,2282,2313,2314,2315,2316,2317,2334,2335,2336,2337,2338,2340,2343,2344,2347,2351,2371] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [299,300,391,403,407,410,644,655,656,657,660,667,1430,1439,1442,1443,1451] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1022,1070,1072,1074,1518,1535,1536,2238,2243,2255,2257,2262,2263,2264,2269,2270,2271,2272,2273] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1535,1536,1871,1874,1896,1898,2141,2236,2238,2239,2240,2243,2244,2245,2246,2262,2263,2264] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1961,1963,1990,1992,2012,2013,2048,2051,2052,2056,2058,2059,2064] 
set surface_color,  pcol10, surf_pocket10 


deselect

orient
