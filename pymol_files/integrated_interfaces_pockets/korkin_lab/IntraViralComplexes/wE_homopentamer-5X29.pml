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

load data/wE_homopentamer-5X29.pdb, protein
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

load data/wE_homopentamer-5X29.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [74,76,77,84,108,109,111,133,141,143,144,145,167,168,509,510,512,528,530,534,535,538,563,595,597,598,599,982,986,987,993,1002,1012,1017,1022,1024,1025,1026,1047,1048,1049,1050,1051,1052,1053,1060,1061,1074,1075,1081,1415,1420,1439,1441,1443,1447,1471,1494,1495,1496,1497,1498,1499,1500,1502,1503,1505,1506,1507,1523,1528,1529,1530,1890,1893,1894,1895,1896,1900,1901,1903,1925,1932,1935,1936,1955,1956,1957,1958,1959,1960,1961,1963,1968,1983,1989,1991] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1258,1260,1263,1275,1277,1281,1282,1283,1284,1285,1286,1287,1288,1292,1314,1315,1323,1324,1350,1476,1477,1478,1484,1501,1508,1509,1513,1514,1515,1521,1529,1535,1536,1537,1539,1542,1544,1545,1547,1563,1564,1565,1566,1569,1571,1572,1585,1602,1603,1605,1607,1610,1613,1620,1621,1622,1629,1630,1631,1632,1633,1634,1637,1638,1639,1642,1654,1655,1656,1658,1660,1661,1662,1663,1670,1692,1974,1979,1983,1984,1986,2003,2004,2005,2006,2007,2008,2010,2025,2027,2030,2031,2032,2034,2049] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [114,115,139,141,151,152,153,173,174,175,177,183,201,204,242,243,269,270,271,272,274,293,294,296,298,300,301,303,587,588,590,596,597,598,599,612,615,621,642,2232,2258] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [804,806,809,818,821,823,827,828,829,830,831,832,834,835,860,861,1088,1090,1091,1092,1093,1094,1111,1118,1157,1179,1181,1182,1184,1185,1186,1188,1207,1209,1216] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [158,160,162,163,164,165,167,168,188,190,215,216,218,1777,1778,1801,1802,1804,1812,1933,1935,1936,1967,1968,1969,1989,1990,1991,1993,1998,1999,2016,2017,2018,2020,2039,2058,2059,2061,2075,2088,2108,2109,2110,2114,2116,2117] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [180,182,183,203,210,211,248,249,250,251,271,272,273,274,275,276,277,278,301,2145,2168,2171,2180,2182,2184,2189,2190,2191,2192,2193,2194,2222,2223,2232] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [1712,1714,1717,1735,1736,1737,1738,1739,1740,1746,1768,1769,1778,1996,1998,1999,2019,2026,2027,2064,2065,2067,2087,2089,2090,2091,2092,2093,2094,2117] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [607,629,631,637,655,658,726,746,748,755,1096,1097,1098,1099,1100,1102,1122,1123,1124] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [369,370,375,384,406,407,414,416,605,606,607,634,636,637,664,703,705,725,730,732,753,754,755,762] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [870,896,1060,1061,1083,1091,1111,1201,1206,1208,1209] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [450,522,544,545,546,547,548,549,550] 
set surface_color,  pcol11, surf_pocket11 


deselect

orient
split_chains
select interface_A, protein_A and resi 1+3+4+5+7+8+9+11+12+13+16+19+23+50+53+54+10+11+13+14+15+17+18+19+20+21+22+24+28+37+40+41+42
select interface_D, protein_D and resi 179+180+182+183+186+187+189+190+193+197+201+209+213+224+227+228+230+231+232+175+178+181+184+185+187+188+189+191+192+193+194+195+196+198+214+215+216
select interface_C, protein_C and resi 117+119+120+121+123+124+125+127+128+129+132+135+139+166+169+170+172+173+174+127+129+130+131+133+134+135+136+137+138+140+141+144+145+147+149+156+157+158
select interface_B, protein_B and resi 66+67+70+71+74+77+81+85+93+94+97+105+108+111+112+114+115+116+59+65+66+68+69+70+72+73+75+76+77+78+79+80+98
select interface_E, protein_E and resi 242+243+245+246+247+249+250+251+252+253+254+256+258+261+263+269+272+273+274+240+241+244+248+251+255+279+282+285+286+288+289+290
delete points_1
deselect
orient
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wE_homopentamer-5X29_out/pockets/pocket22_vert.pqr, fpocket_pocket22_vert partial=1
show_as spheres, (fpocket_pocket22_vert)
color red, (fpocket_pocket22_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wE_homopentamer-5X29_out/pockets/pocket26_vert.pqr, fpocket_pocket26_vert partial=1
show_as spheres, (fpocket_pocket26_vert)
color red, (fpocket_pocket26_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wE_homopentamer-5X29_out/pockets/pocket27_vert.pqr, fpocket_pocket27_vert partial=1
show_as spheres, (fpocket_pocket27_vert)
color red, (fpocket_pocket27_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wE_homopentamer-5X29_out/pockets/pocket28_vert.pqr, fpocket_pocket28_vert partial=1
show_as spheres, (fpocket_pocket28_vert)
color red, (fpocket_pocket28_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wE_homopentamer-5X29_out/pockets/pocket29_vert.pqr, fpocket_pocket29_vert partial=1
show_as spheres, (fpocket_pocket29_vert)
color red, (fpocket_pocket29_vert)
