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

load data/5rfz.pdb, protein
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

load data/5rfz.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [168,169,174,178,179,180,183,191,194,339,343,344,345,364,369,374,375,378,402,403,404,1135,1145,1146,1152,1155,1156,1157,1158,1159,1168,1173,1174,1316,1320,1331,1351,1355,1359,1362,1363,1365,1366,1367,1536,1539,1540,1542] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [892,899,900,902,903,904,905,906,907,915,1077,1613,1614,1628,1629,1636,1996,1997,1999,2022,2036,2039,2047,2048,2049,2071,2072,2390,2400] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [866,867,868,886,913,916,920,1211,1212,1213,1214,1218,1227,1230,1268,1269,2382,2395,2398,2408,2432] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [45,47,48,52,53,55,56,61,63,65,72,1041,2372,2403,2405,2406,2407,2408,2409,2427,2428,2429,2430,2432,2439,2443,2463] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [320,324,424,440,443,702,703,704,707,714,1463,1464,1467,1468,1470,1490,1501,1510,1513,1514,1522] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [102,111,121,227,578,580,581,582,613,637,777,789,796,797,804,805,806,990] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [232,241,244,257,259,275,277,699,738,838,840,858,860] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1069,1117,1119,1121,1589,1606,1607,2330,2335,2347,2349,2354,2355,2356,2363,2365] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1606,1607,1966,1988,1990,2221,2227,2229,2233,2328,2332,2335,2337,2338,2354,2355,2356] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2031,2053,2055,2082,2084,2104,2105,2140,2143,2144,2148,2150,2151,2155,2156,2157] 
set surface_color,  pcol10, surf_pocket10 


deselect

orient
