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

load data/6vxs.pdb, protein
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

load data/6vxs.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [483,484,507,508,509,511,512,513,514,516,1414,1422,1424,1428,1430,1542,1543,1550,1553,1556,1562,1563,1587,1603,1605,1606,1607,1608,1609,1610,1611,1612,1613,1615,1616,1621,1622,1626,1635,1821,1823,1955,1960,1968,1972,1975,1997,1998,1999,2012,2182,2185,2187,2188,2189,2191,2201,2207,2210,2211,2212,2213,2216,2220,2221,2222,2223,2230,2232,2233,2234,2257,2258,2400,2403,2407,2408,2409,2413,2420,2424,2451,2452] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [150,153,157,158,159,160,164,166,278,279,289,290,292,298,299,323,324,339,343,344,345,346,347,348,349,351,357,362,371,559,691,696,708,711,734,735,747,918,921,924,925,927,937,943,946,947,948,949,952,957,958,959,966,968,969,970,992,993,994,1136,1139,1143,1145,1149,1150,1152,1156,1188] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [493,495,520,523,524,532,537,541,544,548,565,568,571,573,575,580,583,584,586,667,834,837,862,863,866,876,1570,1572,1591,1592,1707,1708,1736,1737,1738,1739,1740,1764,1767,1770,1772,1773,1799] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [245,252,583,584,585,588,589,595,650,651,652,653,654,861,873,875,877,1570,1572,1764,1767,1770,1772,1776,1777,1784,1789,1790,1798,1799] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [11,12,13,15,25,29,71,90,116,118,119,120,885,890,891,892,1103,1104,1105,1121,1122,1123] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1275,1276,1277,1279,1289,1293,1334,1335,1353,1354,1380,1382,1383,1384,2154,2155,2156,2367,2368,2369,2385,2386,2387] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1523,1672,1700,1866,1868,1893,1923,1924] 
set surface_color,  pcol7, surf_pocket7 


deselect

orient
