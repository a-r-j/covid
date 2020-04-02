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

load data/nsp6.pdb, protein
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

load data/nsp6.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1071,1074,1081,1082,1083,1084,1085,1086,1088,1121,1123,1127,1389,1390,1391,1392,1395,1400,1402,1405,1411,1412,1413,1414,1415,1416,1419,1422,1443,1891,1893,1894,1896,1900,1902,1908,1909,1912,1913,1914,1915,1923,1927,1929,1933,1934,1935,1939,1951,1956,1958,1962,1964,1966,1967,1971,2012,2109,2110,2116,2122,2123,2124,2125,2129,2130,2132,2133,2134,2154,2159,2190,2191,2215] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [488,494,496,498,500,501,512,515,517,518,519,522,523,525,549,557,558,559,1037,1038,1039,1040,1381,1383,1386,1400,1401,1403,1822,1824,1825,1920,1925,1928,1931,1932,1934,1943] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [160,189,190,275,399,417,418,419,421,422,423,428,448,457,537,1686,1688,1712,1713,1715,1716,1718,1722,1724,1741,1743,1744,1745,1746,1749] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [56,58,59,60,61,62,63,64,81,82,85,87,88,89,90,91,92,93,506,509,512,513,515,517,518,521,545,1004,1007,1010,1026,1029,1033] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [1122,1123,1126,1127,1146,1152,1155,1158,1177,1179,1180,1215,1277,1280,1299,1301,1304,1306,1307,1308,1330,1334,1435,1456,1465,1466,1467,1468,1469] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [249,250,1504,1505,1507,1512,1535,1537,1590,1591,1592,1599,1605,1616,1663,1664,1665,1687,1689,1691,1695,1696,1718,1720,1721] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [639,641,643,665,666,667,672,677,861,862,863,868,869,870,871,872,873,903,906,909,911,912,913,932,934,935,937,940,944,1187,1188,1223,1315] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [446,469,471,472,473,474,475,476,1723,1724,1725,1744,1746,1749,1757,1759,1760,1777,1779,1780,1793,1794,1795,1796,1799] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [153,154,175,205,586,602,604,605,607,608,609,630,670,923,924,925,928,929,930,951,953,955,977,1009] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [185,188,189,190,209,214,218,244,245,249,272,273,274,275,373,375,392,394,399,421,422,1688,1689] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [491,492,500,501,1830,1831,1850,1851,1852,1854,1856,1857,1859,1861,1862,1914,1940,1941,1942,1943,1946] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [234,235,236,652,654,682,684,686,687,689,701,1255,1260,1263,1265,1268,1627,1629,1631,1633,1634,1635,1636] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [641,643,676,872,873,1221,1222,1223,1288,1289] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [783,784,785,786,787,788,789,791,792] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [1450,1477,1733,1756,1758,1766,1813,1814] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [32,40,43,63,64,65,66,67,72,97,99,101,509,511] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [1197,1203,1205,1207,1241,1242,1244,1245,1247] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [1190,1194,1195,1220,1222,1232,1233,1235] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [224,226,227,235,656,658,659,660,661,662,682,703,704] 
set surface_color,  pcol19, surf_pocket19 


deselect

orient
