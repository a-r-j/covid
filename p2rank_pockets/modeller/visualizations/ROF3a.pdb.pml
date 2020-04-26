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

load data/ROF3a.pdb, protein
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

load data/ROF3a.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1220,1360,1362,1363,1371,1464,1466,1467,1468,1470,1489,1520,1539,1541,1542,1543,1545,1547,1548,1563,1564,1568,1571,1574,1736,1738,1746,1748,1760,1761,1762,1810,1824,1826,1827,1843,1844,1845] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [405,436,575,578,579,580,581,596,597,599,600,601,602,604,605,607,610,631,632,633,634,635,655,657,659,930,932,933,934,958,959,960,963,969,971,994,998,1108,1109,1112,1117,1123,1125,1133,1136,1138,1139,1140] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [380,382,383,385,386,405,406,407,408,409,410,435,436,437,443,635,655,657,658,659,900,903,922,925,930,932,933,934,959,963] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [1068,1080,1081,1086,1093,1096,1119,1129,1132,1252,1263,1265,1268,1272,1491,1493,1506,1507,1509] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [1053,1054,1056,1057,1069,1070,1071,1074,1211,1213,1214,1610,1611,1628,1629,1669,1671,1689,1691] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1210,1211,1212,1213,1214,1581,1583,1595,1596,1597,1611,1687,1689] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [1286,1304,1307,1325,1327,1328,1339,1340,1349,1350,1352,1354,1355,1833,1834] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1374,1375,1376,1377,1378,1389,1390,1397,1411,1414,1416,1420,1423,1424,1457,1470,1472,1548,1794,1796,1800,1801,1802,1807,1808,1809,1810] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [437,443,461,462,463,602,925,959,960,963,1151,1152,1153,1644] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [459,1141,1142,1144,1146,1149,1152,1160,1162,1285,1286,1287,1291,1293,1301,1302,1304,1306,1307,1308,1309,1314] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [453,454,459,493,553,573,579,581,603,1133,1136,1138,1139] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [1150,1161,1162,1163,1165,1298,1312,1619,1633,1635,1665,1678] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1130,1132,1287,1288,1477,1481,1490,1491,1492,1493,1494,1495] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [1087,1088,1089,1239,1241,1242,1243,1244,1245,1247,1265,1267,1501,1503,1505,1506,1507,1509,1514] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [1710,1711,1712,1727,1728,1729,1730,1732,1744,1870,1871,1872,1873,1874,1876] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [817,848,850,853,854,856,876,878,880,882] 
set surface_color,  pcol16, surf_pocket16 


deselect

orient
