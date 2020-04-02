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

load data/wS_monomer-IGHG1:IGLL5-2DD8.pdb, protein
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

load data/wS_monomer-IGHG1:IGLL5-2DD8.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1022,1208,1209,1216,1219,1220,1221,1223,1242,1347,1360,1361,2470,2471,2472,2474,2481,2484,2485,2486,2645,2646,2653,2654,2865,2866,2867,2879,2881] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [3245,3246,3247,3248,3249,3250,3251,3252,3253,3255,3256,3277,3278,3279,3281,3285,3289,3290,3291,3463,3468,3470,3472,3484,3485,3488,3489,3490,3491,3494,3529,3530,3531,3533,3540,3542,3703,3993,4019,4020,4022,4023,4024,4026,4038,4646,4647,4663] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [223,334,337,354,355,356,415,736,2287,2325,2336,2337,3781,4557,4567,4568,4575,4577] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [752,754,756,758,760,1816,1818,1820,1823,1824,1826,1827,1828,1831,1979,2281,2283,2289,2291,2294,3547,3548,3550,4033,4034,4035,4036,4038,4562,4563,4588,4607] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [3389,3390,3391,3709,3710,3711,3712,3713,3714,3715,3950,3965,3966,3970,3973,3980,3983,4257,4258,4259,4260,4261,4262,4263,4653,4654,4667,4670,4671,4672,4674] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [2747,2765,2774,2776,2778,2779,2782,2791,2793,2795,2951,2960,2963,2996,2997,2998,3035,3037,3064,3065] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [390,392,395,402,403,404,405,3768,3770,3793,3871,3872,3873,4162,4163,4486,4497,4499,4502,4510,4513] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [1595,1596,1597,1598,1610,2511,2521,2530,2531,2557,2559,2560,3007,3010,3018,3020,3183,3187,3189,3190,3207,3212] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [1793,1794,1795,1796,1813,3503,3505,3508,3544,3550,3558,3560,3561,3562,3568,3617] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [205,384,385,4100,4102,4104,4121,4123,4531] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [951,958,959,960,961,962,965,974,976,977,1024,1594,1596,2485,2496,2501,2503,2510,2512,3171,3175,3204,3211,3212,3213] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1906,2218,2219,2386,2387,2399,2401,2690,2845,2855,2907,2908,2909] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [403,405,412,417,3781,3786,3791,3792,3793,3807,3809,3818,3819,3864,3872,3873] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [740,741,743,746,750,757,780,781,782,1966,1967,1968,1969,1970,1971,2019] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [2218,2219,2399,2401,2410,2429,2675,2676,2683,2687,2690,2907,2909] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [1816,1820,1823,2289,2291,2294,2296,2298,2300,2303,2305,3547,3548,3550,3554,3778,3800,4606,4607] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [848,1094,1095,1101,1105,1107,1108,1312,1313] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [278,281,290,291,681,682,705,818,834,1117,1910,1911,1912] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [1880,1881,1899,2037,2038,2043,2045,2074,2209] 
set surface_color,  pcol19, surf_pocket19 


deselect

orient
