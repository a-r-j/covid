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

load data/5r81.pdb, protein
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

load data/5r81.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [174,178,179,180,183,306,309,310,311,312,331,342,346,369,370,371,1088,1089,1098,1099,1105,1108,1109,1110,1112,1113,1127,1269,1273,1281,1284,1286,1288,1291,1292,1294,1295,1446,1449,1455,1456,1464,1465,1468,1469,1470,1471] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [845,846,848,852,853,854,855,857,858,859,867,868,869,1026,1029,1030,1543,1557,1565,1893,1894,1895,1896,1919,1944,1945,1946,1968,1969,2287,2295,2297,2298] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [819,820,821,839,866,869,873,1164,1165,1166,1167,1171,1180,1183,1221,1222,2292,2305,2329] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [45,46,48,52,53,55,56,61,63,65,994,2300,2302,2303,2304,2305,2326,2327,2329,2336,2340] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [41,1022,1070,1072,1074,1518,1522,1526,1535,2227,2232,2238,2244,2246,2251,2252,2253,2259,2260,2261,2262] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [232,241,244,257,259,275,276,277,652,689,691,791,793,811,813] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [102,110,111,121,225,227,545,547,548,549,742,756,758,759,943] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [869,2289,2291,2292,2293,2294,2295,2296,2297,2298,2328,2329] 
set surface_color,  pcol8, surf_pocket8 


deselect

orient
