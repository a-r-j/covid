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

load data/6w4h.pdb, protein
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

load data/6w4h.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [230,232,241,246,247,288,289,291,292,293,380,381,383,388,389,390,391,412,421,423,611,616,617,619,623,628,629,630,631,632,633,635,640,641,642,650,673,674,675,825,826,827,828,830,834,835,836,837,841,842,843,844,852,970,972,974,976,980,981,986,1102,1106,1108,1111,1112,1113,1115,1118,1119,1122,1124,1125,1131,1139,1173,1177,1179,1181,1289,1290,1291,1292,1293,1296,1299,1325,1468,1481,1482,1483,1484,1488,1491,1493,1497,1500,1719,1720,1721,1737,1738,1739,1743,1744,1752] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [3056,3072,3074,3075,3133,3141,3142,3150,3174,3183,3188,3192,3193,3195,3201,3202,3203,3342,3343,3348,3352,3360] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [865,871,872,882,888,890,894,933,936,937,938,939,3068,3078,3080,3082,3101,3102,3107,3110,3113,3132,3134,3170,3182,3186,3210,3211,3212] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2659,2670,2672,2673,2691,2692,2694,2697,2699,2701,2726,2727,2728,2730,2731,2732,2770,2783,2784,2788,2790,3063,3098,3099,3116,3117] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [344,347,350,365,367,2153,2159,2161,2165,2167,2826,2827,2831,2837,2843,2844,2847,2862,2863,2864,2865,2866,3006,3007,3008] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [357,358,359,373,375,2786,2792,2795,2798,2799,2804,2806,2809,2810,2811,2825,2827,3024,3025,3291,3292,3293,3294,3295,3297,3316] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [74,82,85,86,90,108,470,472,474,495,497,506,1636,1638,1660] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [736,2179,2180,2181,2188,2204,2207,2216,2217,2848,2855,2856,2940,2942,2944,2949,2952] 
set surface_color,  pcol8, surf_pocket8 


deselect

orient
