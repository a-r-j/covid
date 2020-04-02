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

load data/M_protein.pdb, protein
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

load data/M_protein.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [730,732,736,744,752,804,807,808,810,812,813,818,823,870,887,892,895,1394,1396,1402,1450,1455,1467,1469,1471,1527,1529,1592,1594,1596,1598,1695,1696,1741,1744,1745,1747,1749,1751,1753] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2124,2125,2126,2151,2152,2189,2209,2211,2214,2215,2216,2218,2224,2225,2232,2351,2370,2390,2392,2398,2399,2400,2402] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [1841,2131,2133,2136,2138,2139,2676,2685,2700,2702,2704,2751,2753,2782,2822,3091,3158] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [453,461,465,1431,1434,1436,1437,1438,1440,1446,1448,1458,1502,1770,1775,1784,1802,1812,1818,1821,1822,1823] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [563,564,579,583,586,592,1712,1718,1720,2037,2048,2051,2053,2063,2414,2416,2440] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [543,545,548,551,554,556,563,564,586,592,594,1796,2104,2108,2406,2414,2416] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [176,198,245,249,314,316,906,910,953,966,1015] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [407,459,460,461,478,482,1369,1371,1374,1377,1378,1431,1434] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1642,1650,1672,1673,1676,1678,1685,1710,1712,1980,1990,1992,2004,2007,2018,2024,2028,2030,2037] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1635,1640,1642,1889,1892,1893,1894,1999,2662,2664,2768,2772,2801,2806] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [124,128,176,198,199,966,1015,1019,1071] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [275,277,331,337,345,349,404,407,476,478,1279] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2321,2323,2324,2431,2434,2436,2437,2462] 
set surface_color,  pcol13, surf_pocket13 


deselect

orient
