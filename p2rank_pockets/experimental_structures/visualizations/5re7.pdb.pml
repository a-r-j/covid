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

load data/5re7.pdb, protein
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

load data/5re7.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [186,190,191,192,195,203,206,318,322,323,324,343,353,354,357,358,380,381,383,1159,1160,1166,1169,1170,1171,1173,1174,1187,1188,1330,1334,1343,1349,1355,1357,1360,1361,1537,1538,1540] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [885,886,892,893,895,897,898,899,907,908,909,1082,1619,1621,1628,1633,1641,1981,1983,1987,2011,2012,2026,2029,2037,2038,2039,2060,2061,2062,2414,2422,2424] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [859,860,861,879,906,908,913,915,1225,1226,1227,1228,1232,1237,1241,1244,1282,1283,2406,2407,2419,2420,2422,2424,2432,2456] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [244,253,256,269,271,287,288,289,683,684,720,722,832,833,851,853,1446,1447,1449] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [51,52,53,54,58,59,61,62,67,69,71,1040,2396,2429,2430,2431,2432,2433,2452,2453,2454,2456,2463,2467] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [311,312,403,419,422,686,687,688,691,698,1461,1462,1466,1499,1508,1511,1512,1520] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [108,115,116,117,127,239,568,569,570,571,572,773,798] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [47,1074,1124,1126,1130,1132,2350,2369,2373,2379,2385,2386,2387,2388,2389] 
set surface_color,  pcol8, surf_pocket8 


deselect

orient
