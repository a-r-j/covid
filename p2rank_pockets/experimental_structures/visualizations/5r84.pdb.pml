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

load data/5r84.pdb, protein
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

load data/5r84.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [179,183,191,307,308,309,310,311,312,333,365,367,369,370,371,393,1098,1099,1104,1105,1108,1110,1112,1113,1121,1127,1269,1273,1281,1284,1286,1288,1291,1292,1295,1446,1447,1448,1449,1453,1454,1455,1456,1464,1472] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [845,846,852,853,854,855,857,858,859,867,868,869,1026,1029,1030,1543,1557,1565,1896,1897,1898,1899,1900,1922,1936,1939,1947,1948,1949,1971,1972,2290,2300,2301] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [820,821,839,866,869,873,875,1164,1165,1166,1167,1176,1180,1221,1222,2282,2283,2295,2296,2298,2300,2308,2331,2332] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [102,111,121,225,227,545,546,547,548,549,570,758,759,943] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [41,1022,1070,1072,1074,1522,1535,1536,2230,2231,2235,2241,2247,2249,2254,2255,2256,2262,2263,2264,2265] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [45,46,48,53,61,63,994,2272,2274,2303,2305,2306,2307,2308,2329,2330,2332,2339,2343] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [232,244,257,259,275,276,277,652,689,691,792,793,811,813] 
set surface_color,  pcol7, surf_pocket7 


deselect

orient
