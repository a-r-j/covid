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

load data/5r7z.pdb, protein
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

load data/5r7z.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [178,179,183,310,312,331,341,342,346,368,369,370,371,1088,1099,1104,1105,1110,1112,1113,1121,1127,1269,1273,1281,1284,1287,1288,1291,1292,1294,1295,1453,1455,1456,1465,1468,1469,1471] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [845,846,852,853,854,855,857,858,868,869,1030,1542,1543,1545,1549,1552,1557,1558,1565,1893,1894,1896,1901,1918,1919,1933,1944,1945,1946,1967,1968,1969,2284,2293,2301,2303,2304] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [65,819,820,821,839,866,867,868,873,875,1164,1165,1166,1167,1171,1180,1181,1221,1222,2285,2298,2301,2311,2335] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [45,46,47,48,52,53,55,56,61,63,64,65,994,2275,2309,2310,2311,2312,2332,2333,2338,2339,2342,2346,2366] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [1021,1022,1070,1072,1074,1518,1520,1521,1522,1535,1536,2238,2257,2258,2259,2266,2267,2268] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [232,241,244,259,276,277,652,689,690,691,792,793,811,813,1367,1377] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [102,109,110,111,121,225,227,545,546,547,548,549,570,742,758,759] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1535,1860,1862,1863,1865,1885,1887,2118,2126,2130,2234,2235,2238,2239,2240,2241] 
set surface_color,  pcol8, surf_pocket8 


deselect

orient
