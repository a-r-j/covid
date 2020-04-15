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

load data/5re9.pdb, protein
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

load data/5re9.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [186,190,191,192,195,203,206,318,319,320,321,322,323,324,343,344,345,379,380,382,383,1159,1160,1166,1170,1171,1173,1174,1187,1188,1330,1334,1342,1345,1347,1349,1352,1353,1508,1509,1514,1515,1516,1517,1525,1529,1533] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [885,886,892,893,894,895,896,897,898,899,909,1081,1082,1611,1613,1620,1625,1633,1973,1975,1977,1979,2003,2004,2018,2021,2029,2030,2031,2053,2054,2406,2416] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [51,52,53,54,58,59,61,62,67,69,71,78,1037,1040,2388,2390,2421,2422,2423,2424,2425,2445,2446,2448,2455,2459,2479] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [71,861,879,908,913,915,1225,1226,1227,1228,1229,1231,1237,1241,1282,1283,2398,2399,2411,2412,2414,2424,2448] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [244,253,256,269,271,287,288,289,683,684,721,722,832,833,851,853] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [312,403,415,419,422,686,687,688,689,691,698,1453,1454,1457,1458,1460,1480,1491,1500,1503,1504,1512] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [108,117,127,237,239,568,569,570,571,773,798] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1603,1604,1928,1931,1933,1961,1963,2211,2215,2335,2339,2342,2343,2344,2345] 
set surface_color,  pcol8, surf_pocket8 


deselect

orient
