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

load data/wNsp15-2h85A.pdb, protein
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

load data/wNsp15-2h85A.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [537,538,539,542,545,548,549,558,681,686,690,692,694,702,703,704,706,707,708,1237,1238,1260,1268,1270,1271,1510,1524,1525,1526,1527,1528,1529,1538,1539,1541,1543,1544,1545,1548,1550,1981,1982,2094,2097,2099,2111,2114,2153,2154,2155,2156,2164,2171,2182,2185,2202,2204,2316,2319,2328,2330] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1849,1851,1932,1934,1942,1944,1947,1950,1964,1966,2282,2284,2285,2297,2300,2307,2309,2310,2603,2604,2622,2623,2625,2686,2687,2705,2706,2707,2708,2709,2726,2734] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [334,336,341,343,349,362,364,457,458,460,485,674,675,677,695,697,724,726] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1701,1703,1705,1871,1873,1880,1884,1898,1900,2013,2014,2015,2016,2018,2020,2024,2025] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1197,1204,1212,1214,1217,1227,1483,1485,1489,1496,1498,1501,1503,1506,1519,1520,2348,2349,2365,2371,2372,2373] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2119,2120,2121,2122,2123,2213,2290,2291,2298] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1224,1274,1276,1277,1283,1285,1286,1290,1532,1533,1587,1590,1591,1593,1605,1606,1607] 
set surface_color,  pcol7, surf_pocket7 


deselect

orient
