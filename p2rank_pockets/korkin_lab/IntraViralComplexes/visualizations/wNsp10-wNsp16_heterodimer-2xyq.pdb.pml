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

load data/wNsp10-wNsp16_heterodimer-2xyq.pdb, protein
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

load data/wNsp10-wNsp16_heterodimer-2xyq.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [222,225,227,232,234,316,317,319,325,326,327,348,554,555,556,557,566,568,569,571,573,745,746,747,748,749,752,753,754,756,757,758,759,761,769,857,859,862,863,866,868,985,986,987,989,991,992,995,998,1000,1001,1003,1005,1006,1008,1009,1012,1013,1015,1134,1138,1140,1300,1315,1536,1537,1538,1555,1570] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [776,790,792,794,824,831,835,2760,2762,2763,2764,2766,2785,2786,2791,2792,2794,2801,2812,2817,2854,2859,2861,2866,2868,2871,2890,2892,2893,2894] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [281,282,290,291,303,1910,1912,1916,1917,1918,1919,1921,2523,2533,2535,2539,2542,2547,2560,2561,2562,2689,2690] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2738,2756,2757,2822,2824,2831,2832,2872,2874,2877,2883,2885,3027,3029,3035,3037] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2968,2969,2970,2982,2983,2988,2991,3010,3012,3013,3014,3016,3040,3042,3043,3044,3051,3052,3142] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [30,31,1882,1889,1890,1891,1892,1893,1913,1914,1915,1916,1917,1918,1919] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [210,223,224,225,1006,1019,1025,1033,1061,1314,1318,1320,1327,1331,1332,1333] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [295,297,309,311,2488,2490,2496,2504,2506,2509,2519,2522,2706,2975,2976,2977,2979,2985,2996,2998] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [661,1937,1966,1968,2544,2551,2552,2627,2633,2636] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1185,1188,1212,1213,1214,1215,1216,1217,1218,1372,1377,1408,1409,1410,1411,1412,1429,1432,1434,1646] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2586,2678,2681,2949,2950,3103,3112,3146,3147] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [64,408,410,433,436,442,1456,1457,1458,1459,1460,1461,1462,1463] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [84,114,115,1424,1426,1447,1452,1454,1458,1459,1472,1473,1665,1666,1676,1677,1678,1679,1680] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [394,395,396,397,399,401,424,427,1946,1950,1951,1952,1953,1954] 
set surface_color,  pcol14, surf_pocket14 


deselect

orient
