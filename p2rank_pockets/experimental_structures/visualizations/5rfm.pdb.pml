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

load data/5rfm.pdb, protein
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

load data/5rfm.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [174,178,179,180,183,191,194,306,308,309,310,311,312,331,332,345,369,1088,1098,1099,1105,1109,1110,1111,1112,1113,1127,1269,1273,1286,1287,1288,1291,1292,1294,1295,1471] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [845,852,853,855,857,858,859,866,867,868,869,1030,1543,1557,1565,1893,1896,1918,1919,1933,1936,1944,1945,1946,1968,1969,2287,2295,2297] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [819,820,821,825,839,869,873,1164,1165,1166,1167,1171,1176,1180,1221,1222,2292,2293,2295,2305,2329] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [232,244,259,276,277,652,653,689,691,786,791,792,793,804,808,809,811,813,1377,1378,1380] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [45,46,47,48,53,61,63,65,994,2269,2300,2302,2303,2304,2305,2306,2324,2326,2327,2329,2336,2340,2360] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [299,300,391,403,407,410,644,655,656,657,658,660,667,1389,1392,1393,1396,1397,1430,1439,1442,1443,1451] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1070,1072,1074,1518,1522,1535,1536,2227,2228,2232,2244,2246,2251,2252,2253] 
set surface_color,  pcol7, surf_pocket7 


deselect

orient
