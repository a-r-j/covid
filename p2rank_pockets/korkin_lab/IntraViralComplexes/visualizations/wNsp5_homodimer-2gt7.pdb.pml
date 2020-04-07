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

load data/wNsp5_homodimer-2gt7.pdb, protein
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

load data/wNsp5_homodimer-2gt7.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [174,176,177,180,184,185,186,188,189,190,192,306,307,308,309,312,330,331,333,367,368,377,392,1098,1099,1101,1105,1106,1117,1118,1258,1272,1275,1278,1281,1289,1442,1445,1447,1455,1456,1457,1462] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [16,21,23,33,35,36,37,38,39,987,1061,1586,1589,2177,2183,2188,2189,2190,2200,2219,2220,2225,2234,2235,2236,2237,2246,2248,2384,2389,2391,2396,2398,2400,2401,2404,4549] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [2539,2540,2549,2552,2555,2671,2672,2675,2693,2696,2703,2729,2730,2731,2732,3459,3461,3462,3464,3468,3469,3472,3475,3481,3635,3637,3638,3639,3640,3644,3646,3652,3821,3822] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [836,845,846,849,851,852,853,854,855,858,860,1534,1538,1545,1547,1548,1549,1556,1868,1870,1871,1872,1881,1909,1910,1916,1919,1920,1921,1944,2255,2272,2273] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [3199,3211,3212,3215,3216,3222,3385,3897,3903,3908,3911,3912,3919,4231,4232,4235,4244,4271,4279,4282,4283,4284,4305,4306,4307,4616,4617,4618,4623,4624,4625,4628,4630] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [28,35,37,38,39,2389,2396,2398,2400,2401,2402,4552,4553,4581,4582,4583,4590,4600,4609,4611] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [63,839,859,860,869,1155,1156,1157,1158,1167,1168,1171,1213,2254,2267,2268,2269,2270,2271,2272,2273,2275,2280,2295,2300,2304] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [1061,1063,1065,1071,1287,1311,1313,1314,1315,2370,2371,2374,2384,4004,4007,4009,4016,4019,4538,4539,4543,4544,4545,4546,4547] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [2,3,7,8,9,11,21,1641,1642,1643,1646,1656,2176,2179,2181,2182,2183,2184,3423,3424,3426,3429,3431,3434,3674,3678,3682] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [2599,2603,2605,2612,2618,2620,2636,2637,2638,3044,3045,3145,3147,3165,3167] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [80,81,82,83,84,87,91,101,104,106,107,108,109,746,747,752,2443,2444,2445,2446,2447,2464,2466,2467,3112,3113] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [2425,2426,3223,3229,3232,3518,3519,3520,3536,3537,4617,4630,4631,4633,4635,4641] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [2426,3175,3193,3220,3221,3223,3232,3518,3519,3520,3521,3535,3536,3537,3575,3576,3578] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [1012,1013,1061,1062,1064,1065,1513,2213,2220,2223,2225,2226,2228,2234,2235,2237,2391,4547,4549] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [231,236,239,242,257,273,274,275,643,644,681,682,782,784,802,804,1364,1370,1371] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [1078,1087,1088,1090,1094,1286,1287,1311,1313,2370,2373,4003,4006,4009,4687,4689] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [107,111,125,223,225,545,546,547,548,549,749,750] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [42,44,47,49,59,61,982,2245,2247,2278,2279,2283,2303,2304,2309,2310,2311,2315,3318] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [793,794,810,811,812,825,827,828,840,859,1155,1158,1213] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [3888,3889,4199,4202,4204,4208,4223,4225,4468,4566,4569,4571,4572,4573,4576] 
set surface_color,  pcol20, surf_pocket20 


deselect

orient
