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

load data/Protein_3a.pdb, protein
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

load data/Protein_3a.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [383,407,409,432,435,436,437,463,601,631,634,635,655,658,659,925,930,932,933,934,958,959,960,963,969,971,994,995,998,1109,1112,1117,1139,1140] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [330,332,358,360,363,364,366,381,382,383,384,385,409,659,684,692,715,840,867,870,871,872,899,902,909,911,933] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [453,454,460,462,476,487,490,491,492,493,551,552,553,554,573,579,600,603,1117,1122,1127,1129,1133,1135,1136,1137,1141,1142,1144,1285,1286,1287,1291,1293,1304,1307,1476,1477,1481,1483,1488,1490,1491,1492,1494,1497] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [1203,1204,1280,1281,1286,1328,1339,1340,1346,1347,1348,1349,1352,1353,1354,1355,1357,1362,1364,1368,1369,1370,1414,1416,1418,1420,1433,1456,1457,1459,1467,1469,1473,1474,1478,1480,1482,1485,1486,1487,1488,1493,1494,1495,1496,1498,1502,1511,1515,1516,1517,1521,1820] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [1194,1376,1547,1548,1561,1563,1567,1569,1570,1572,1587,1588,1596,1604,1744,1761,1762,1774,1826,1827,1843,1845] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1054,1055,1056,1057,1063,1187,1188,1189,1205,1208,1210,1212,1253,1254,1255,1597,1610,1611,1628,1629] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [1601,1693,1698,1708,1714,1718,1720,1721,1724,1725,1739,1740,1744,1746,1838,1841,1846,1849,1850,1863,1865,1868,1869,1870,1872] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [1068,1076,1078,1080,1081,1084,1086,1087,1096,1097,1119,1203,1204,1259,1262,1264,1268,1280,1504,1506,1507,1509,1523,1524,1525] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [1162,1163,1165,1297,1300,1312,1313,1665,1678,1700,1701,1703,1861,1863,1867] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [1067,1068,1070,1220,1225,1228,1241,1242,1243,1244,1245,1247,1264,1265,1267,1522,1523,1525,1530,1541] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [1367,1368,1370,1373,1375,1377,1378,1379,1380,1381,1388,1389,1390,1404,1406,1515,1521,1527,1531,1809,1819] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [582,1084,1097,1119,1504,1506,1507,1509,1510,1514,1525] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1020,1028,1054,1055,1056,1057,1063,1188,1253,1254,1626,1627,1628,1629] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [688,689,690,691,693,694,699,721,724,727,882,884,906,907,908,912,913,914,916,918,938,940,941,942,943,944,945] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [300,325,327,328,329,330,331,332,739,743,767,807,808,809,810,811,812,840,849,850,852] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [611,613,630,631,632,634,636,637,643,663,969,970,994,995,1006,1109,1112] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [341,352,375,376,377,378,393,396,403,404,405,650,651,685] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [725,726,747,751,780,817,844,853,854,856,876,878,879,880,881,884] 
set surface_color,  pcol18, surf_pocket18 


deselect

orient
