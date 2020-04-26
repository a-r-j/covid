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

load data/7btf.pdb, protein
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

load data/7btf.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [211,212,213,214,221,227,228,229,231,233,236,237,243,246,247,249,351,353,354,355,370,391,531,532,546,547,548,567,569,601,641,909,911,940,945,952,975,976,997,1649,1650,1662,1666,1673,1674,1742,1744,1751,1752,1753,1766,1767,1768,1773,1774,1775] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [323,325,326,327,993,996,1022,1023,1025,1026,1028,1029,1052,1053,1055,1074,1077,1094,1097,1098,1100,1103,1109,1113,1117,1118,1119,5621,5641,5642,5643,5644,5645,5646,5649,5650,6171,6176,6177,6183,6184,6186,6226,6227,6228,6229,6236,6237,6263] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [4719,4731,4738,4743,4748,4752,4753,4754,4755,4756,4800,4826,4827,6070,6071,6497,6502,6503,6504,6516,6517,6518,6519,7373,7374,7384,7385] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [6445,6450,6451,6453,6455,6456,6458,6461,6470,6475,6477,6524,6526,6528,6529,6533,6538,6541,6545,6548,6549,6652,6653,6654,6669,6966,6967,6968,6974,6975,7011,7012] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [3671,4357,4375,4462,4478,4481,4484,4487,4499,5007,5008,5009,5015,5017,5018,5420,5439,5444,5449,5453,5454] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [3142,3160,3253,3254,3258,3267,3275,3278,3588,3590,3606,3607,3611,3614,5368,5371,5372,5383,5384] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [27,29,31,145,148,150,151,152,154,374,381,536,557,814,816,834,835,836,888] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [2590,2619,2620,2639,2640,2826,2827,2828,3173,3178,3183,3187,3188,3664,3699,3702,3717,3718,5048,5408,5410,5422,5424,5425,5426,5427] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [2629,3116,3117,3118,3119,3120,3121,3122,3127,3128,3133,3138,3180,3184,3189,3191,3193,3194,3197,3199,3201,3203,8402,8430,8434,8436,8437,8645,8647] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [2767,2769,2772,2773,2775,2882,2896,2902,2907,2908,2911,2912,2915,2939,2990,2995,2996,2997,2999,3020,3021,3031,3032,3033,3052,4276,4278,4318,4323,4336] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [4922,6127,6129,6141,6165,6168,6169,6212,6217,6219,6408,6409] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [307,309,1045,1046,1057,1058,1919,3774,5613,5616,5635,5637,5639,5839,5840] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [4024,4025,4026,4027,4028,4031,4032,4036,4121,4162,4524,4538,4540,4541,4542,4543,4563,4572,4574,4575,4615,5458,5467,5468,5471,5472,5478] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [137,167,170,172,193,194,215,389,390,391,412,512,954,957] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [3947,3950,3969,3986,4010,4156,4157,4159,4161,4172,4182,4188,4201,4202,4203,4229,4230,8016,8019,8058,8062] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [2619,2639,2640,2647,2648,2795,2796,2797,2802,2810,2820,2825,2826,2827,2828,2839,5330,5331,5332,5335,5336,5347,5349,5410,5411,5424] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [3313,3315,3318,3320,3322,3325,3326,6786,6787,7520,7521,7543,8995,8996,8997,8999,9002,9003,9005,9028,9029] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [3339,3340,3354,3355,3356,3357,6775,6782,6785,6798,6804,6826,6827,6829,7102,7135,7139,7165] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [3074,3076,3079,3098,3218,3219,3220,3221,3224,4054,4089,8185,8213,8219,8220,8249] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [5701,5716,5717,5718,5719,5720,5721,5970,5971,5973,5974,5977,5979,6008,6009,6021,6022,6160,6161] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [6577,6924,6926,6949,6957,6958,7043,7235,7238,7245,7267,7313] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [3263,3264,3265,3285,3286,3585,3586,3589,3593,3594,3596,7606,7625,7628,7629,8747,8894,8911] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [227,228,229,231,246,247,249,269,292,332,333,334,336,342,348,351,5670,5671] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [1287,1313,1321,1322,1346,1347,1349,4984,6338,6342,6344,6358,6359,6382] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [7869,7887,7889,7890,7891,7893,7894,7895,7896,7899,7923,7924,7935,7943,7945,9013,9046,9048] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [2555,2557,2558,2824,2826,2839,3702,3707,3713,3716,3717,3719,3722,5041,5045,5048,5424] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [2030,2031,2107,2108,2109,2110,2111,2112,2113,2131,2622] 
set surface_color,  pcol27, surf_pocket27 


deselect

orient
