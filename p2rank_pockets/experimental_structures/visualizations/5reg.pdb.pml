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

load data/5reg.pdb, protein
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

load data/5reg.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [885,886,888,892,893,894,895,897,898,899,900,907,908,909,1082,1619,1621,1628,1633,1641,1981,1983,1987,1994,1997,2012,2026,2029,2037,2038,2039,2060,2061,2062,2414,2420,2421,2422,2423,2424,2425] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [181,186,187,189,190,191,192,195,203,206,318,322,324,343,348,349,353,354,357,358,380,381,382,383,1149,1159,1160,1166,1169,1170,1171,1173,1187,1188,1330,1334,1343,1349,1355,1357,1360,1361,1534,1537,1538,1539,1540] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [841,859,860,861,879,906,908,913,1225,1226,1227,1228,1231,1232,1237,1241,1242,1244,1282,1283,2406,2419,2422,2424,2432,2455,2456] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [311,312,403,415,419,422,672,686,687,688,691,698,1461,1462,1465,1466,1468,1488,1499,1508,1511,1512,1520] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [244,253,256,269,271,287,288,289,683,684,720,722,832,833,851,853,1446] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [108,115,117,127,239,568,569,570,571,572,593,773,780,781,798,989] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [47,1073,1074,1124,1126,1128,1130,1132,1587,1591,1611,1612,2345,2346,2350,2357,2369,2371,2373,2378,2379,2380,2386,2387,2388,2389] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [51,52,53,54,58,59,61,62,67,69,71,78,1040,2396,2398,2429,2430,2431,2432,2451,2453,2454,2456,2463,2467,2487] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2021,2043,2045,2072,2074,2094,2095,2130,2133,2134,2138,2140,2141,2145,2146,2147] 
set surface_color,  pcol9, surf_pocket9 


deselect

orient
