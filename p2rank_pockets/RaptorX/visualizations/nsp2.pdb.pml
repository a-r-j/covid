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

load data/nsp2.pdb, protein
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

load data/nsp2.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [2572,2843,2846,2848,2851,2852,2853,2856,2857,2867,2874,2878,2996,3007,3010,3015,3419,3434,3437,3440,3442,3596,3598,3601,3603,3622,3623,3625,3628,3630,3634,3639,3640,3648,3650,3652,3654,3719,3722,3723,3725,3727,3730,3735,3766,3770,3931,3935,3941,3943,3946,3947,3948,3963,3970,3974,3994,4288,4291,4293,4297,4321,4324,4325,4326,4349,4352,4356,4377,4380,4381,4382,5130,5133,5141,5147,5153,5157,5162,5187,5189,5192,5198,5201,5205,5206,5207,5209] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [99,120,123,125,135,139,142,143,144,148,159,161,163,165,288,291,293,296,345,350,362,366,411,754,773,776,779,790,793,795,832,855,858,860,862,882,1586,1591,1596,1598,1605,1641,1653,2192,2213,2215,2217,2241,2246,2249,2252,2253,2259,2263,2266,2269,2280,2299,2300,2359,2361,2406,2409,2435,2439,2448,2478,2482,2644,2649,2658] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [3987,3997,3998,3999,4022,4027,4034,4065,4068,4069,4070,4074,4082,4083,4105,4110,4127,4129,4133,4302,4304,4311,4344,4395,4397,4401,4440,4513,4566,4570,4575,4615,4616,4617,4619,4621,4624,4627,4655,4657,4698,4700,5082,5470,5473,5478,5480,5482,5485,5524,5526,5570,5576] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [2462,2464,2492,2498,2501,2508,2509,2510,2512,2514,2520,2528,2610,2613,2624,2625,2633,2634,2635,2680,2683,2721,2890,2921,2926,2928,2941,2949,2951,3109,3112,3113,3114,3154,3193,3196,3197,3199,3201,3206,3209,3223,3260,3263,3752,3754] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [1937,2128,2129,2133,2150,2155,2161,2162,2745,2747,2754,2757,2759,2762,2766,2768,2771,2772,2773,2775,2777,2781,2783,2794,2839,3273,3283,3293,3297,3300,3303,3306,3506,3510,3516,3519,3520,3521,3523,3818,3822,3824,3833,3834,3837,3839,3845,3847,3849,3852,3853,3895,3922,3923] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [4196,4199,4202,4203,4208,4259,4262,4489,4523,4525,4548,4588,4590,4593,4609,4613,4943,4960,4994,4997,5000,5002,5005,5009,5042] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [4368,4371,4372,4407,4415,4418,4445,4454,4455,5109,5115,5118,5131,5138,5283,5288,5292,5349] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [1001,1089,1105,1123,1126,1135,1136,1140,1676,1677,1678,1817,1835,1836,1848,1849,1851,1856,1858,1860,1863,1864,1876,1880,1883,1886,2161,2781,2783] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [879,926,928,930,1188,1214,1217,1222,1263,1268,1499,1503,1505,1507,1529,1531,1566,1569,1572,1610,1618,1621] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [1131,1134,1135,1136,1149,1883,1886,2366,2369,2378,2386,2388,2390,2391,2392,2394,2396,2781,2783,2785,2817,2819,2822,2825,2827,2837,2839] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [371,429,452,458,566,567,607,610,617,621,622,636,705,765,780,782,784,787,802,803,817,846,848] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [3567,3569,3571,3800,3805,3900,3905,3926,3954,3958,4049,4051,4060,4091,4099,4101,4108,4114,4167] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [2974,2982,2986,2989,2997,2999,3004,3033,3116,3138,3141,3168,3185,3371,3374,3377,3422,3426,3457] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [61,63,108,111,117,121,129,134,179,185,186,187,191,193,889,906,1404,1407,1412,1415,1417,1427] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [2345,2348,2349,2350,2366,2369,2374,2378,2382,2386,2538,2544,2564,2817,2819,2825,2827,2844,2848,2856,2857,2858,2860,2862,2868] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [3357,3361,3407,3498,3501,3508,3565,3567,3872,4016,4024,4032,4035,4037,4040,4041,4042,4095] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [7332,7336,7346,7350,7353,7391,7437,7441,7484,7487,7491,7540,7553,7599,7600,7601] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [6989,7051,7054,7055,7057,7884,7923,7929,7973,7976,8079,8217,8219,8221,8245,8247,8249,8546] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [30,34,40,84,89,1710,1712,1736,1739,1846,1902,1907,1910,1913,1915,1971,1974,1988] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [7363,7369,7399,7404,7407,7409,7412,7503,7510,7515,7559,7561,7610,7617] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [2852,3931,3933,3935,3941,4267,4288,4293,5054,5060,5066,5071] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [1149,1181,1183,1185,1577,1579,1586,1591,1624,1627,2236,2357,2359,2361,2366,2386,2388] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [2128,2138,2146,2715,2716,2717,2725,2726,2729,2733,2735,2741,2747,2749,2759,2762,3266] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [2246,2249,2253,2280,2409,2412,2556,2603,2605,2649,2653] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [2468,2514,2519,2533,2541,2894,3748,3752,3754,3782] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [8026,8029,8032,8033,8034,8036,8042,8043,8044,8126,8199,8351,8736,8771,9704,9706] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [3648,3649,3650,3652,3654,5130,5133,5141,5144,5147] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [7219,7223,7269,7276,7662,7664,7667,7670,7708,7710,7712,7718,7789] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [6802,6804,6930,6934,6939,6989,7976,8249,8267,8268] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [6102,6104,6109,6176,6180] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [713,720,875,878,879,880,1306,1444,1478,1494] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [8909,8935,8937,9248,9250,9259,9274,9277,9279,9633,9756] 
set surface_color,  pcol32, surf_pocket32 


deselect

orient
