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
select surf_pocket1, protein and id [861,864,870,875,886,938,941,942,944,1603,1605,1609,1646,1649,1653,1655,1657,1660,1661,1667,1966,1968,1975,1980,1990,1994,2202,2205] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [332,337,338,340,342,347,356,394,397,398,399,401,403,465,467,1114,1116,1324,1350,1409,1412,1413,1444,1469] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [2039,2062,2067,2072,2285,2314,2323,2343,2345,2348,2350,2359,3142,3145,3146,3152,3166,3167,3172] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [1887,1890,1914,2511,2523,2528,2554,2834,2836,2916,2919,2954,2956,3223] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1826,1829,1830,2055,2058,2062,2133,2345,2348,2349,2350,2352,2370,2485,2488,2494,2503,2504,2524,2526,2532,2533,2534,2536] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [2824,2829,2844,3399,3403,3428,3430,3503,3514,3565] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [942,944,946,947,948,950,952,957,1010,1012,1021,1029,1528,1530,1536,1605,1607,1609] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [749,751,753,1898,1899,1900,1923,2854,2859,2885,2887,3347,3350,3353,3356] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [1073,1077,1134,1377,1379,1391,1423,1427,1428,1429,1431,1436,1477] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [262,304,314,383,386,1033,1036,1040,1049,1087,1100,1149] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [594,595,638,640,647,1565,1571,1579,1580,1582,1584,1587,1589,1636] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [728,1706,1715,1769,1772,1776,1778,1784,1788,1791,1794,1815,1844,1846] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [462,471,521,541,587,590,1512,1582,1584] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [2475,2577,2579,2582,2584,2588,2592,2594,2596,2599,2600,2624,2629,2726,2729,2770,2777,2781,2784] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1379,1427,1429,1431,1433,1436,1491] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [2413,2418,2449,2453,2454,2456,2458,2567,2569,2571] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [379,426,432,499,981,986,990,1056] 
set surface_color,  pcol17, surf_pocket17 


deselect

orient
