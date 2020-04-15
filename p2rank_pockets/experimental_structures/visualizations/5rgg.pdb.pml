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

load data/5rgg.pdb, protein
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

load data/5rgg.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [174,178,179,180,183,191,306,310,312,331,341,342,345,369,370,371,1088,1089,1098,1099,1104,1105,1108,1109,1110,1112,1113,1121,1127,1269,1273,1286,1287,1288,1291,1292,1465,1468,1469,1471] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [845,846,852,853,854,855,856,857,858,859,868,1029,1030,1543,1545,1552,1557,1565,1893,1894,1895,1896,1901,1919,1933,1936,1944,1945,1946,1968,1969,2278,2287,2297] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [819,820,821,825,839,868,869,1164,1165,1166,1167,1171,1176,1180,1221,1222,2279,2292,2293,2294,2295,2297,2298,2305,2329] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [41,1022,1070,1072,1073,1074,1518,1535,2227,2232,2238,2244,2245,2246,2251,2252,2259,2260,2261,2262] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [45,46,47,48,53,56,61,63,65,72,994,2302,2303,2304,2305,2306,2326,2327,2329,2336,2340] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [232,244,257,259,275,276,277,652,689,690,691,791,793,804,811,813] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [102,111,121,225,227,545,546,547,548,757,758,759] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [300,410,655,660,667,1399,1430,1442,1443,1451] 
set surface_color,  pcol8, surf_pocket8 


deselect

orient
