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

load data/6w01.pdb, protein
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

load data/6w01.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1907,1908,1984,1986,1987,1989,1993,1999,2020,2022,2023,2356,2357,2359,2369,2370,2371,2379,2384,2677,2694,2696,2697,2699,2761,2778,2779,2780,2781,2782,2783,2788,2797,2798] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [607,755,756,757,1579,1581,1582,1583,1587,1596,1599,1600,1601,1603,1607,1608,1609,1616,2046,2047,2168,2170,2188,2218,2229,2234,2240,2255,2256,2257,2258,2259,2276,2277,2278,2390,2394,2400,2404] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3400,3416,3564,3565,3566,4388,4389,4390,4391,4392,4396,4408,4412,4416,4419,4847,4960,4962,4977,4980,5021,5026,5032,5047,5048,5049,5050,5068,5069,5070,5180,5182,5185,5192,5196] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [4716,4717,4793,4795,4798,4802,4808,4811,4831,4832,5149,5151,5161,5488,5489,5491,5541,5551,5553,5570,5571,5572,5573,5574,5575,5599] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [372,378,383,385,387,388,391,405,504,506,507,509,533,534,723,726,744,746,775,777,779,781,1307,1308] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3181,3187,3192,3194,3197,3200,3313,3315,3316,3318,3532,3535,3553,3555,3581,3582,3583,3585] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [540,575,596,598,713,718,735,737,738,739,741,742,743,745,749,754,757,1293,1294,1295,1304,1315,2227,2228,2230] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [1252,1261,1267,1272,1273,1274,1275,1283,1535,1540,1545,1551,1555,1558,1560,1576,1577,2423,2446,2447] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3388,3393,3401,3407,3527,3546,3547,3550,3566,4095,4096,4124,4137] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4972,4985,4986,4987,4988,4989,4990,4991,5079,5081,5155,5156,5157,5164] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1756,1760,1762,1763,1927,1930,1932,1939,1954,1956,2059,2078,2079,2080,2082,2083,2086,2088,2120,2121] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2178,2179,2180,2193,2194,2195,2196,2197,2198,2199,2287,2289,2363,2364,2372] 
set surface_color,  pcol12, surf_pocket12 


deselect

orient
