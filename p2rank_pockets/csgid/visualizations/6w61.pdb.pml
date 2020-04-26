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

load data/6w61.pdb, protein
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

load data/6w61.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [357,358,360,366,367,368,389,593,594,596,600,604,605,606,607,608,610,612,786,788,789,792,793,794,795,799,802,810,903,910,911,912,916,922,1038,1042,1044,1047,1048,1049,1051,1053,1054,1055,1058,1060,1061,1064,1067,1068,1069,1070,1196,1197,1198,1199,1200,1203,1206,1367,1382,1603,1604,1605,1621,1622,1636] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [2896,2911,2913,2973,2979,2981,2982,2990,3014,3023,3028,3032,3034,3041,3042,3043,3181,3182,3184,3187,3189,3191,3193] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [817,822,832,842,872,877,880,881,882,2918,2920,2922,2941,2942,2947,2950,2953,2972,2974,3010,3022,3025,3026,3050,3051,3052] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [74,76,80,82,83,84,85,86,90,447,449,451,472,474,483,1526,1527,1529,1551] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2508,2511,2528,2529,2530,2531,2532,2537,2539,2564,2565,2566,2567,2568,2569,2570,2602,2620,2622,2939] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [321,327,1994,2000,2006,2008,2657,2659,2663,2669,2675,2676,2679,2694,2695,2696,2697,2698,2813,2846,2847,2848] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [274,276,1061,1093,1380,1381,1382,1390,1396,1398,1618,1621,1622,1623,1627,1628] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [315,340,346,347,349,350,351,353,354,357,358,361,365,366,368,627,628,650] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [107,108,109,133,134,136,138,144,1516,1519,1524,1526,1535,1538,1540,1744,1756,1757,1758] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [218,219,223,227,228,231,232,234,273,274,275,276,277,1119,1390,1627,1628] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [334,336,2618,2638,2641,2642,2658,2659,2864,2865,3131,3132,3133,3134,3135,3137] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [568,569,571,590,592,770,771,776,785,890,935,955,959,994,2410] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [365,366,368,398,400,580,581,596,600,604,605,610,651,652,1042] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [472,477,483,484,489,490,1522,1523,1524,1525,1526,1527,1528,1529,1686,2272] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3120,3121,3127,3128,3174,3198,3200,3202,3210,3305,3306,3307] 
set surface_color,  pcol15, surf_pocket15 


deselect

orient
