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

load data/6m71.pdb, protein
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

load data/6m71.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [2124,2128,2131,2133,2162,2163,2164,2165,2183,2190,2191,2199,2200,2338,2353,2363,2368,2369,2370,2371,2710,2715,2718,2719,2720,2724,2726,3201,3211,3236,3250,3253,3254,3255,4867,4868,4869,4871,4872,4879,4884,4945,4947,4948,4952,4959,4961,4962,4963,7987] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [4459,4461,4476,4477,5664,5666,5676,5677,5678,5679,5702,5703,5704,5705,5706,5709,5745,5749,5750,5755,5756,5923,5928,5929,5944,5945,5946] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [24,25,26,28,34,44,46,162,163,191,192,204,454,481,488,495,518,519,539,540,1205,1207,1209,1216,1231,1285,1286,1287,1296] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [136,138,140,565,566,595,596,598,617,620,637,5151,5179,5180,5181,5721,5762,5763,5764,5765,5766,5773,5774,5799,5800] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [3164,3193,3195,3208,3894,3910,3912,3999,4005,4014,4015,4018,4021,4023,4032,4036,4542,4543,4544,4545,4546,4553,4555,4878,4893,4955,4957,4976,4981,4986,4990,4991] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [2616,2633,2637,2755,2756,2757,2758,2760,3591,3624,3626,7772,7775,7776,7801,7803,7810,7811] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [2260,2268,2269,2296,2298,2494,2498,2499,2500,2542,2543,2544,7760,7763,7785,7795,7797] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [2857,2858,2859,2862,2863,2878,6320,6911,6932,6933,7386,7387,7389,7390,7393,7394,7396,7418,7419,7420] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [2243,2312,2316,2325,2426,2439,2445,2449,2451,2454,2455,2535,2536,2556,2558,2568,2587,2588,2589,3813,3815,3855,3865,3873] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [2679,2696,2697,2790,2795,2798,2804,2806,2808,2812,2815,3125,3127,3130,3143,3144,3148,3149,3150,3151,4908,4909,4940] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [4256,4268,4272,4275,4277,4285,4289,4290,4291,4337,4364,5607,6034,6039,6040,6041,6056] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [138,139,140,536,538,539,563,565,568,569,570,571,572,595,603,636,637,638,643,646,648,656,660,661,662,663] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [204,240,241,245,248,250,275,276,277,278,279,282,283,306,307,309,394,397,399,402,403,408,409,412,436,439,454,1290,1295,1297,1299,1300,1304,1308,1309] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [3190,3191,3193,3195,3196,3980,3981,3982,3997,3998,3999,4524,4525,4530,4531,4532,4545,4552] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [52,53,118,119,120,122,588,589,600,601,1461,1462,3310,3311,3312,5145,5153,5172,5174,5340,5376,5377] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [2172,2654,2659,2670,2728,2730,2731,2734,2736,2740,7983,8015,8017,8018,8219,8221,8224] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [5987,5990,5991,5992,6063,6070,6075,6078,6080,6082,6186,6187,6188,6501,6502,6508,6509] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [4486,4498,4501,4505,5608,5612,5618,5621,5622,5627,5628,5629,5630,5634,5914,5932,5934,6018,6019,6020,6021,6022,6023,6036,6037,6038,6042] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [42,44,46,50,1192,1193,1205,1207,1208,1209,1216,1217,1294,1295,1296] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [7237,7238,7513,7537,7545,7569,7595,7597,7600,7601,7605,7609,7610,7611,7626,7637,7641,7642,7643,7650,7659,7672] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [6012,6014,6063,6065,6066,6187,6188,6211,6501,6502,6545,6546] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [2980,2981,2982,2983,2985,2993,3000,3005,3006,3007,3008,3032,3035,3037,3038,3039,3040,3043,6845,6846,6853,6854,6878,7151,7156,7157] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [6458,6460,6481,6482,6483,6492,6577,6585,6587,6588,6613,6614,6616,6654,6736,6737,6739] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [4508,4533,4537,4539,4543,4544,4545,4546,4978,4987,4990,5021,5022,5052,5613,5614,5621,5622] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [2875,2876,2877,2891,2894,6338,6340,6362,6363,6369,6371,6636,6664,6672,6673,6696,6697,6707] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [1563,1564,1567,1588,1605,1665,1686,1775,1776,1777,1813,1841,2140,2149] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [3562,3564,3566,3570,3571,3617,3653,3920,4029,4031,4035,4993] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [3484,3506,3523,3524,3693,3694,3696,3698,3708,3719,3725,3728,3730,3736,3737,3738,3739,3740,3766,3767] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [62,82,105,145,147,149,5195,5196,5205,5206,5207,5208] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [2800,2801,2802,2803,2823,3122,3123,3133,6996,7014,7015,7017,7018,7019,7041,7043,8321,8322,8329] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [6408,6409,6615,6645,6711,6712,6713,6717,6728,6755,6762] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [5238,5252,5253,5254,5255,5256,5257,5258,5476,5478,5481,5509,5510,5511,5514,5546,5547,5548,5549,5557,5559] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [5238,5252,5253,5255,5257,5266,5518,5557,5559,5698] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [3361,3384,3390,3391,3422,3423,3424,4676,5423,5438,5463,5464,5471] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [2915,6859,6862,7454,7475,7476,7484] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [4144,4610,4635,4638,4661,4824,4826,4827,4854,4855,5001,5014] 
set surface_color,  pcol36, surf_pocket36 


deselect

orient
