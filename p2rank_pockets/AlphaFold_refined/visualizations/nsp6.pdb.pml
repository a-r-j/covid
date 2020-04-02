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
select surf_pocket1, protein and id [2187,2201,2209,2211,2275,2278,2279,2281,2283,2284,2285,2287,2289,2332,2353,2354,2400,2402,2639,2654,2659,2662,2696,2706,2708,2713,2773,2775,2822,2825,2832,2835,2836,2839,2858,2862,2865,2869,2871,2874,2875,2886,2914,2916,2963,3857,3861,4295,4296,4297,4302,4306,4309,4311,4312,4319,4323,4326,4358] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [337,386,398,402,518,520,568,857,860,861,869,871,912,1088,3055,3062,3115,3128,3201,3204,3232,3236,3247,3274,3379,3426,3428,3432,3436,3437,3438,3440,3444,3448,3479,3482,3485,3486,3488,3490,3493,3494,3496,3500,3502,3536,3539,3547,3549] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [382,425,426,427,429,431,433,437,442,475,477,479,484,492,495,496,497,1235,1237,1246,1277,1287,1291,1340,1345,1346,1347,1351,1400,1402,1424,1427,1429,1432,1437,1451,1750,1781,1784,1787,1822,1842,1843,1877,1880,1883,1884,3316,3317,3366,3367] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [995,1001,1021,1023,3619,3621,3626,3629,3695,3698,3703,3706,3752,3753,3754,3763,3766,3769,3927,3935,3938,3940,3955,3986,3990] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [1058,1060,1062,1119,1135,1139,2075,2121,2128,2139,2811,2814,2816,2845,2847,3902,3917] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [2579,2588,2602,2643,2646,2962,2963,3025,3028,3031,3033,3330,3338,3340,3343,3345,3389,3396,3413] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [143,146,147,148,150,154,192,200,203,204,206,208,209,210,214,945,946,1037,1040,1043] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [902,904,956,959,960,962,964,966,3498,3502,3544,3547,3549,3555,3557,3561,3563,3602,3605] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [1384,1393,1761,1763,2501,2546,2550,2569,2617,2618] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [1307,1309,1363,1375,1384,1763,1767,2492,2496,2501,2617,2618] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1001,1009,1012,1021,1023,1025,1027,1049,1053,1066,1070,3906,3913,3922,3935,3938,3940] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [1900,1902,1907,1946,1948,1952,2673,2674,2721,2727,2731,2732,2733,2735,2743,2786,2788,2792] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [3782,3785,3787,3798,3802,3803,3818,3820,3837,3839,4423,4424,4502] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1351,1424,1432,1508,1509,1569,1667,1671,1677,1681,1688,1744,1746,1750,1773,1775,1781,1843] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [186,188,189,191,192,1053,1056,1057,1058,2061] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1465,1466,1468,1470,1471,1476] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [3147,3188,3191,3215] 
set surface_color,  pcol17, surf_pocket17 


deselect

orient
