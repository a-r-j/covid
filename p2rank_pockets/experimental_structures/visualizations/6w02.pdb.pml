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

load data/6w02.pdb, protein
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

load data/6w02.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1435,1436,1437,1443,1554,1555,1556,1559,1562,1566,1567,1569,1600,1617,1618,1620,1623,1624,1625,1626,1627,1628,1629,1632,1634,1639,1648,1979,1997,2204,2207,2210,2211,2213,2223,2224,2229,2231,2232,2233,2234,2235,2236,2238,2242,2243,2244,2245,2246,2251,2252,2253,2254,2255,2256,2433,2436,2440,2442,2446,2447,2448,2449,2450,2463,2465,2467,2493] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [160,162,168,279,280,281,283,285,287,288,291,292,293,294,295,300,301,325,337,341,342,345,346,347,348,349,350,351,352,353,354,359,360,364,373,701,718,721,742,745,757,758,928,931,934,935,937,947,948,953,955,956,957,958,959,960,962,966,967,968,969,970,975,976,977,978,979,980,1157,1160,1164,1166,1170,1173,1181,1184,1209] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1566,1569,1570,1575,1576,1997,2033,2034,2254,2256] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [70,72,95,96,1288,1289,1367,1395,1397,2176,2177,2178,2399,2400,2401,2402,2418,2420] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1522,1529,1857,1859,1861,1866,1870,1871,1872,1930,1938,1939,1940,2148,2149,2159,2161,2162] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [245,247,254,595,596,661,662,663,664,871,878,881,883,885] 
set surface_color,  pcol6, surf_pocket6 


deselect

orient
