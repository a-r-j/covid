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

load data/5rgo.pdb, protein
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

load data/5rgo.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [174,178,179,180,183,194,306,310,311,312,331,341,342,345,372,374,378,1096,1105,1106,1107,1112,1113,1117,1118,1119,1120,1121,1129,1135,1277,1281,1298,1304,1307,1308,1310,1311,1485,1486,1487] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [853,854,860,861,863,864,865,866,867,868,875,876,1038,1559,1573,1574,1581,1909,1910,1912,1917,1935,1949,1952,1960,1961,1962,1984,1985,2294,2303,2311,2313] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [827,828,829,847,873,874,877,878,881,883,1172,1173,1174,1175,1179,1184,1188,1191,1229,1230,2295,2296,2308,2311,2321,2345] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [41,997,1030,1077,1078,1080,1082,1534,1551,1552,2243,2248,2254,2260,2261,2262,2267,2268,2269,2275,2276,2277,2278] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [102,111,121,225,227,552,553,554,555,556,557,578,757,758,765,766,767,951] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [299,300,399,415,418,663,664,665,668,675,1408,1409,1412,1413,1415,1446,1455,1458,1459,1467] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [232,244,257,259,275,277,660,661,698,699,799,801,812,817,819,821,1393,1394,1396] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [45,46,47,48,52,53,55,56,61,63,65,72,1002,2285,2287,2318,2319,2320,2321,2322,2340,2341,2342,2343,2345,2352,2356,2376] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1551,1552,1876,1879,1901,1903,2134,2140,2142,2146,2165,2168,2173,2174,2235,2241,2243,2245,2248,2249,2250,2251,2267,2268] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1966,1968,1995,1997,2017,2018,2053,2056,2057,2061,2063,2069] 
set surface_color,  pcol10, surf_pocket10 


deselect

orient
