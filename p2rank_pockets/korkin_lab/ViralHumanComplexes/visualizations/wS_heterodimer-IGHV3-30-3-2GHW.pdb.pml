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

load data/wS_heterodimer-IGHV3-30-3-2GHW.pdb, protein
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

load data/wS_heterodimer-IGHV3-30-3-2GHW.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [569,570,571,582,583,584,585,594,673,674,962,963,964,983,1298,1311,1368,1369,1377,1378,1379,1380,1740,1743,1749,1750,1751,1752,2283,2298,2301,2302,2310,2330,2332,2347,2350,2824,2827,2829,2830,2839,2855,2856,2857,2870,2876,2879] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [3894,3895,3906,3908,3909,3915,3918,3945,3996,3997,3998,4006,4288,4308,4614,4685,4687,4688,4689,4692,4693,4701,4702,4703,4704,5040,5041,5043,5051,5052,5583,5599,5601,5602,5610,5650,5660,6119,6121,6131,6147,6148,6149,6162,6164,6445] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [431,432,433,458,472,3578,3580,3595,3597,3728,3729,3733,3734,3735,3754,3755,3757,3760,3795,3796,3814,4108,4109,4111,4784,4785,4786,4787,4789,4792,4806,4807] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [706,992,994,995,1008,1139,1141,1156,1235,1236,1237,1253,1254,2852,2854,2866,2909,2933,2935] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [45,47,56,57,58,78,79,86,91,92,286,294,295,320,321,331,332,341,342,343,822,823,824,825,827,866,1416] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3516,3835,3837,3839,4075,4091,4098,4100,4109,4382,4383,4384,4385,4386,4387,4388,4778,4779,4792] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [192,511,512,513,514,515,516,751,765,766,767,769,774,776,781,785,1058,1059,1060,1061,1062,1063,1064,1454,1455,1468] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [252,253,254,256,271,404,430,431,432,433,434,459,460,469,471,472,474,489,1460,1461,1463,1465,1468,1481,1483] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3380,3381,3401,3402,3403,3404,3405,3409,3410,3411,3412,3414,3415,3610,3618,3619,3645,3654,3655,3656,3658,3665,3667,4145,4147,4148] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [4316,4318,4319,4464,4480,4559,4560,4576,4577,4578,6144,6152,6155,6156,6157,6158,6201,6223,6225,6226] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [1,2,3,4,6,9,12,13,28,465,3557,3560,3802,3803,3804,3805,3806,3807,4814] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [86,88,91,93,99,824,825,827,841,842,865,866,1416,1417,1418] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1840,1841,1842,1856,1859,2454,2455,2458,2463,2466,2473,2475,2476,2478,2481,3202,3207,3217,3226,3227,3228] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1130,1197,1198,1200,1258,1260,1262,1264,2948,2954,2957] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [4221,4225,6455,6464,6466,6467,6468,6469,6470,6471,6472,6473] 
set surface_color,  pcol15, surf_pocket15 


deselect

orient
