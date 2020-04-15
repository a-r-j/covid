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

load data/5rfe.pdb, protein
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

load data/5rfe.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [174,178,179,180,183,191,194,306,309,310,311,312,331,336,337,341,342,345,368,369,370,371,1102,1103,1113,1119,1123,1124,1125,1126,1127,1135,1141,1283,1287,1295,1298,1299,1300,1302,1305,1306,1308,1309,1460,1463,1467,1469,1470,1478,1479,1482,1483,1485] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [859,862,866,867,868,869,870,871,872,873,882,1043,1044,1556,1557,1571,1572,1579,1939,1940,1942,1947,1950,1964,1965,1979,1982,1990,1991,1992,2014,2015,2333,2341,2343] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [833,834,835,848,851,853,879,880,881,883,887,1178,1179,1180,1181,1185,1190,1194,1197,1235,1236,2338,2341,2351,2375] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [232,241,244,257,259,275,276,277,666,667,705,800,805,806,807,825,827] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [45,46,47,48,52,53,55,56,61,63,65,72,1008,2315,2317,2348,2349,2350,2351,2352,2370,2371,2372,2373,2375,2382,2386,2406] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [299,300,391,407,410,658,669,670,671,674,681,1406,1407,1410,1411,1413,1444,1453,1456,1457,1465] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [102,111,121,227,545,546,547,548,549,580,771,772,773,957] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1036,1084,1086,1088,1532,1549,1550,2273,2278,2290,2292,2297,2298,2299,2304,2305,2306,2307,2308] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1549,1550,1906,1909,1911,1931,1933,2164,2172,2176,2195,2203,2204,2271,2273,2275,2278,2279,2280,2281,2297,2298,2299] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1974,1996,1998,2047,2048,2083,2086,2087,2091,2093,2094,2098,2099,2100] 
set surface_color,  pcol10, surf_pocket10 


deselect

orient
