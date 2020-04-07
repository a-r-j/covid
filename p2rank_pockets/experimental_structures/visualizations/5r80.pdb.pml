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

load data/5r80.pdb, protein
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

load data/5r80.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [179,180,183,306,308,309,310,311,312,331,341,342,369,370,371,1094,1105,1110,1111,1116,1117,1118,1119,1127,1133,1275,1279,1287,1290,1293,1294,1297,1298,1300,1301,1461,1462,1470,1471,1474,1475,1477] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [845,846,852,853,854,855,857,858,859,868,869,1036,1548,1549,1563,1564,1899,1900,1901,1902,1924,1925,1939,1950,1951,1952,1974,1975,2290,2299,2307,2309,2310] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [45,46,47,48,52,53,55,56,61,63,64,65,72,994,2281,2312,2314,2315,2316,2317,2318,2337,2338,2339,2341,2344,2345,2348,2352,2372] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [38,39,40,41,1028,1076,1077,1078,1080,1524,1528,1541,2244,2250,2255,2256,2263,2264,2265,2270,2271,2272,2273,2274] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [244,259,276,277,652,653,689,691,792,793,811,813,1373,1383,1386] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [102,109,110,111,121,131,225,227,546,547,548,549,742,749,750,758,759] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [819,820,821,839,868,1170,1171,1173,1186,1187,1188,1189,1227,1228] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [65,868,873,875,1171,1172,1173,2291,2307,2317,2341] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1541,1542,1865,1866,1867,1869,1871,1891,1893,2132,2136,2240,2241,2244,2245,2246,2247] 
set surface_color,  pcol9, surf_pocket9 


deselect

orient
