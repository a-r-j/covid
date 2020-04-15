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

load data/5rfn.pdb, protein
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

load data/5rfn.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [178,179,180,183,191,194,306,310,312,330,331,332,336,337,341,342,345,368,369,371,1088,1099,1105,1109,1110,1111,1112,1113,1121,1126,1127,1269,1273,1282,1286,1287,1288,1291,1292,1294,1295,1468,1469,1470,1471] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [845,846,848,852,853,855,857,858,859,860,866,867,868,1030,1543,1557,1565,1893,1894,1896,1919,1933,1936,1944,1945,1946,1968,1969,2287,2297] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [65,819,820,821,825,834,837,839,866,869,873,1164,1165,1166,1167,1170,1171,1176,1180,1182,1221,1222,2279,2292,2295,2305,2328,2329] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [45,47,48,53,61,63,65,994,2269,2271,2300,2302,2303,2304,2305,2326,2327,2329,2336,2340] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [232,241,244,257,259,275,276,277,652,689,691,791,793,804,809,811,813,1367] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [41,1022,1070,1072,1074,1518,1520,1522,1535,1536,2227,2232,2238,2244,2246,2251,2252,2253,2259,2260,2261,2262] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [102,111,121,227,545,546,547,548,549,757,758,759,943] 
set surface_color,  pcol7, surf_pocket7 


deselect

orient
