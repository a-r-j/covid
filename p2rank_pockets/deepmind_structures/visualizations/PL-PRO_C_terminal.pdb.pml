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

load data/PL-PRO_C_terminal.pdb, protein
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

load data/PL-PRO_C_terminal.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [855,856,857,858,859,860,861,862,869,870,871,872,873,876,877,878,879,880,886,1032,1042,1513,1569,1570,1571,1573,1575,1581,1583,1606,1640,2105,2108,2111,2112,2115,2118,2136] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [873,879,880,886,1012,1013,1014,1015,1018,1026,1027,1029,1032,1034,1057,1058,1187,1191,1196,1583,2108,2115,2117,2118,2119,2120,2121,2122,2135,2611] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.435,0.902]
select surf_pocket3, protein and id [1565,1572,1599,1600,1601,1602,1625,1632,1633,1634,1711,1712,1740,1742,1743,1744,1768,1769,1773,1793,1794,1795] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.286,0.702]
select surf_pocket4, protein and id [65,67,68,69,70,71,72,73,77,95,100,102,103,104,105,132,138,150,152,167,171,185,186,187] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.424,0.361,0.902]
select surf_pocket5, protein and id [316,317,325,334,337,355,356,359,1132,1137,1153,1155,1157,1158,1159,1161,1165,1166,1167,1168,1357,1360,1369,1372,1395] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.380,0.278,0.702]
select surf_pocket6, protein and id [2227,2277,2278,2302,2341,2342,2343,2344,2357,2358,2365,2367,2392,2410,2413] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.561,0.361,0.902]
select surf_pocket7, protein and id [1607,1630,1636,1638,1639,1640,1661,1662,1663,1664,1666,1671,2100,2101,2102,2103,2105,2108,2111,2112,2130,2131,2136,2137,2139,2141,2146,2148,2150,2151,2152,2154,2157,2158,2160,2166] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.490,0.278,0.702]
select surf_pocket8, protein and id [1669,1673,1674,1676,1678,1680,1682,1968,1980,1982,1987,1988,1989,2010,2163,2165,2169,2171,2777,2780,2784,2786] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.698,0.361,0.902]
select surf_pocket9, protein and id [2181,2183,2186,2190,2191,2196,2205,2206,2372,2377,2378,2380,2381,2385,2386,2387,2538,2539,2553,2562,2563,2785,2786,2787] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.596,0.278,0.702]
select surf_pocket10, protein and id [419,433,438,439,440,442,444,446,453,454,456,458,471,475,520,523,529,530,536,542,549,550] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.839,0.361,0.902]
select surf_pocket11, protein and id [625,627,628,638,778,780,783,784,785,786,791,795,796,797,815,817,1319,1321,1322,1323,1324] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.694]
select surf_pocket12, protein and id [319,320,321,322,323,327,1138,1139,1140,1265,1278,1280,1286,1304,1310] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.824]
select surf_pocket13, protein and id [111,112,217,218,219,220,221,225,229,232,241,244,428,449,451,514,515,727,731] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.584]
select surf_pocket14, protein and id [561,565,567,935,952,985,1005,1006,1007,1204,1413,1418,1424,1425] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.682]
select surf_pocket15, protein and id [367,369,377,379,380,381,384,405,407,576,577,578,579,580,581,1383,1389,1392,1394] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.478]
select surf_pocket16, protein and id [364,365,367,369,377,380,381,384,386,404,405,407,1360,1394] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.545]
select surf_pocket17, protein and id [1018,2118,2135,2643,2644,2645,2646,2668,2670,2673,2676,2677,2678,2680,2681,2699,2701] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.369]
select surf_pocket18, protein and id [2246,2247,2248,2249,2256,2262,2263,2294,2652,2653,2654,2655,2656,2657,2682,2684,2686,2708,2710] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.408]
select surf_pocket19, protein and id [287,294,298,299,300,303,304,309,311,632,633,634,665,667,668,669,1347] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.298,0.278]
select surf_pocket20, protein and id [813,816,817,822,832,1237,1238,1248,1249,1250,1296,1297,1298,1461,1464,1486] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.451,0.361]
select surf_pocket21, protein and id [157,160,161,163,164,177,179,197,199,200,201,202,203,205,248,261,269,275,278,279,282,699] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.408,0.278]
select surf_pocket22, protein and id [2095,2097,2122,2128,2572,2574,2581,2608,2609,2611,2632,2635,2639,2640,2645,2647] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.592,0.361]
select surf_pocket23, protein and id [1046,1047,1048,1619,1860,1867,1868,2085,2086,2087,2089,2119,2121] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.514,0.278]
select surf_pocket24, protein and id [868,902,903,919,921,924,993,995,998] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.729,0.361]
select surf_pocket25, protein and id [1,2,18,21,23,24,25,26,29,37,38,39,41] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.624,0.278]
select surf_pocket26, protein and id [1759,1762,1777,1778,1779,1781,1782,1783,1785,1804,1806,1878,1882,1883,1900,1901,1902,1904,1905,1906,1933] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.871,0.361]
select surf_pocket27, protein and id [140,142,143,144,145,146,255,256,417,435,436,437] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.671,0.702,0.278]
select surf_pocket28, protein and id [9,10,12,13,15,18,19,25,27,52,54,55,56,57,58,59] 
set surface_color,  pcol28, surf_pocket28 


deselect

orient
