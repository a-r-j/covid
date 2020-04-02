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

load data/nsp6.pdb, protein
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

load data/nsp6.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [156,166,169,170,171,178,224,227,229,233,239,248,285,291,293,295,297,301,304,309,347,350,361,367,412,415,417,421,1601,1605,1607,2014,2018,2022,2071,2073,2075,2085,2135,2139,2170,2173,2174,2175,2211,2217,2238,2244,2285,2287,2289,2301,2303,2352,2353,2354,2357,2358,2359,2361,2369,2412,2417,2421] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.369,0.702]
select surf_pocket2, protein and id [1053,1056,1057,1058,1060,1062,1109,1122,1125,1188,1193,1197,2639,2643,2646,2708,2773,2775,2778,2781,2816,2831,3542,3544,3592,3597,3598,3600,3602,3605,3608,3652,3655,3656,3657,3664,3666,3670,3716,4306,4311,4312,4323,4358,4361,4366,4368,4370,4700] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.373,0.902]
select surf_pocket3, protein and id [564,566,568,572,620,625,634,639,694,697,699,752,756,1983,1987,2044,2049,2052,2057,2060,2066,2095,2104,2106,2977,2979,2981,3031,3033] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.349,0.278,0.702]
select surf_pocket4, protein and id [123,129,140,143,147,181,183,186,187,188,190,192,267,1697,1723,1727,1773,1775,1778,1781,1784,1787,1792,1838,1843,1853,1900,2417] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.553,0.361,0.902]
select surf_pocket5, protein and id [831,834,871,874,929,2898,2942,2951,2959,2962,3012,3519,3575,3580,3613,3624,3626] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.510,0.278,0.702]
select surf_pocket6, protein and id [1356,1359,1363,1488,1545,1565,1568,1620,1622,1626,2458,2460,2610,2616,2617,2618,2623,2627,2673,2674] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.757,0.361,0.902]
select surf_pocket7, protein and id [925,929,2875,2898,2902,3583,3621,3624,3626,3630,3632,3688,3690,3692,3913,3933,3935] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.671,0.278,0.702]
select surf_pocket8, protein and id [564,566,568,572,639,642,643,645,647,650,652,655,702,709,2916,2979,2981] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.839]
select surf_pocket9, protein and id [1806,1814,1819,1825,1867,2514,2519,2727,2775,2778,2792,2827,2832] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.573]
select surf_pocket10, protein and id [797,800,802,815,860,861,3074,3092,3094,3096,3136,3138,3142,3155,3160,3385,3393,3442,3444,3448] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.631]
select surf_pocket11, protein and id [4002,4077,4079,4138,4141,4145,4218,4236,4237,4238,4242,4244,4247,4253,4590,4591,4594,4598,4602,4611,4615,4679] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.412]
select surf_pocket12, protein and id [1251,1256,1259,1261,1263,1265,1301,1304,1305,1307,1309,1312,1314,1328,2601,2602,2603] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.427]
select surf_pocket13, protein and id [2506,2517,2522,2560,2584,2588,2659,2662,2708,2721,2727,2775,2778,3544] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.306,0.278]
select surf_pocket14, protein and id [2313,2318,2698,3108,3115,3120,3188,3191] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.498,0.361]
select surf_pocket15, protein and id [1934,1936,1941,1987,2000,2002,2006,2060,2849,2854,2928,2930,2977,2979] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.467,0.278]
select surf_pocket16, protein and id [1289,1347,2690,2692,2698,3428,3432] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.702,0.361]
select surf_pocket17, protein and id [1155,1157,1219,1221,1227,1261,1265,1277,3366,3413] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.624,0.278]
select surf_pocket18, protein and id [1702,1732,1802,2485,2501,2504,2517,2521,2522,2543,2546,2549,2550,2551,2555,2560] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.894,0.902,0.361]
select surf_pocket19, protein and id [1549,1597,2279,2281,2343,2344,2345,2347,2349,2353,2400] 
set surface_color,  pcol19, surf_pocket19 


deselect

orient
