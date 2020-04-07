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

load data/wNsp10-wNsp14_heterodimer-5c8u.pdb, protein
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

load data/wNsp10-wNsp14_heterodimer-5c8u.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [3632,3635,3647,3648,3649,3671,3677,3700,3704,3706,3707,3710,3712,3723,3725,3726,3727,3729,3730,3733,3740,3824,3826,3827,3830,3832,3833,3834,3835,3836,3837,3839,8555,8557,8576,8578,8579,8580,8581,8593,8602,8603,8604,8605,8606,8607,8609,8630,8631,8632,8637,8638,8639,8643,8660,8661,8662,8664,8667,8850,9688,9690,9699,9705,9707,9708,9709,9712,9713,9714,9715,9717,9718,9720,9721,9722,9723,9803,9806,9809,9810,9987,9989,10018,10020,10023,10049,10051,10053,10054,10055,10056,10077,10083,10084,10085,10113] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [3782,3817,3818,3819,3820,3821,3847,3854,3857,3859,3861,3862,3863,8404,8411,8421,8422,8425,8426,8427,8431,8435,8436,8452,8453,8456,8457,8480,8481,8482,8561,8562,8567,8568,8569,8570,8571,8573,8586,8587,8590,8592,8595,8596,8600,8621,8622,8623,8763,8770,8775,8776,8777,8779,8780,8781,8782,8783,8788,8790,8797,8798,8799,8810,8812,8814,8822,8824,8825,8826,8927,8932,8933,8936,8938,8941,8943,9045,9047,9050,9052,9057,9196,9198,9199,9200,9202,9204,9207,9210,9211,9212,9213,9214,9215,9217,9218,9219,9222,9224,9225,9227,9229,9328,9468,9470,9484,9485,9486,9487,9492,9494,9496,9501,9504,9506,9514,9516,9517,9518,9519,9520,9521,9522,9524,9525,9534,9538,10155] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.478,0.902]
select surf_pocket3, protein and id [2,3,4,5,6,9,12,1007,1011,1012,1014,1039,1040,1414,1416,1417,1420,1421,1423,1435,1436,1437,1438,1439,1441,1687,1688,1689,1698,1700,1702,1705,1708,1709,1711,1725,1786,1787,1788,2060,2061,2098,2100,2429,2430,2440,2445,2447,2450,2453,2454,2455,2457,2459,2460,2461,2462,2463,2473,2911,2969,2974,2976,2980,2982,2986,3081,3095,3096,3097,3127,3128,3129] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.333,0.702]
select surf_pocket4, protein and id [3251,3252,3253,3254,3255,3262,3263,3264,3281,3284,3395,3396,3398,3400,3401,3414,3415,3421,3422,3423,3424,3450,3451,3598,3602,3603,3604,3605,3610,3616,3618,3760,3761,3764,3766,3873,3875,3877,3879,3880,3881,3882,3885,3887,4027,4035,4038,4041,4043,4045,4047,4050,4055,4057,4061,4298,4314,4315,4326,4331,4333,4336,4344,4345,4346,4347,4348,4350,4362,4372,4983] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.380,0.902]
select surf_pocket5, protein and id [5310,5321,5326,5333,5764,5765,5767,5768,5771,5773,5774,5775,5776,5778,7100,7102,7103,7169,7170,7171,7172,7173,7174,7177,7390,7391,7392,7414,7415,7684,7686,7688,7698,7716,7723,7865,7866,7867,7987,7997,7998] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.302,0.278,0.702]
select surf_pocket6, protein and id [5173,5176,5178,6183,6184,6185,6186,6210,6211,6586,6587,6588,6589,6590,6592,6593,6596,6607,6608,6609,6870,6872,6874,6877,6878,6880,6881,6882,6883,6895,6897,6960,7232,7233,7270,7271,7272,7620,7621,7625,7626,7627,7628,7629,7630,7631,7632,7633,7634,7635] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.435,0.361,0.902]
select surf_pocket7, protein and id [6860,6861,6870,6872,6874,6877,6878,6880,6881,7258,7260,7270,7272,7598,7601,7602,7610,7612,7631,7632,7634,7646,8138,8141,8144,8146,8148,8149,8152,8153,8154,8155,8156,8157,8158,8254,8269,8300,8301] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.376,0.278,0.702]
select surf_pocket8, protein and id [3430,3431,3432,3433,3435,3437,3456,3457,3458,3459,3460,3461,3466,3469,3490,3491,3492,4516,4533,4535,4536,4537,4540,4547,4844,4845,4846,4847,4848,4849,4851,4877,4879,4880,4885,4888,4890,9781,9782] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.533,0.361,0.902]
select surf_pocket9, protein and id [138,140,149,161,593,595,599,601,602,604,1928,1930,1931,1995,1997,1998,1999,2000,2002,2215,2217,2241,2243,2509,2510,2511,2514,2526,2544,2549,2550,2551,2680,2692,2693,2694,2695,2815,2824,2825,2826] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.451,0.278,0.702]
select surf_pocket10, protein and id [5707,5723,5725,5781,5783,5791,5792,5793,5796,5798,5834,5838,5841,5843,5846,5852,5854,5996,5998,6000,6004,6006] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.631,0.361,0.902]
select surf_pocket11, protein and id [6608,6616,6618,6622,6623,6625,6627,6628,6629,6630,6632,6636,6638,6643,6692,6693,6694,6695,6699,6701,6709,6710,6711,6712,6713,6714,7620,7621,8065,8090,8091,8093] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.529,0.278,0.702]
select surf_pocket12, protein and id [400,401,402,403,671,675,676,677,678,681,682,723,821,822,826,851,859,861,862,863,865,913,914] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.725,0.361,0.902]
select surf_pocket13, protein and id [1851,3058,3059,3061,3062,3064,3065,3066,3068,3070,3141,3142,3144,3162,3166,3171,3172,3173,4247,4248,4249,4251,4252,4253,4254,4276] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.604,0.278,0.702]
select surf_pocket14, protein and id [3563,3564,3583,3706,3707,3728,3729,3730,3750,3752,3952,3953,3954,3959,3966,3968,3980,3981,3982,3983,8543,8544,8546,8552,8554,8555,10113] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.824,0.361,0.902]
select surf_pocket15, protein and id [533,535,550,552,610,611,619,620,621,624,626,662,664,665,669,671,674,682,822,823,826,828,832,834] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.678,0.278,0.702]
select surf_pocket16, protein and id [9317,9320,9325,9335,9336,9337,9338,9339,9340,9341,9342,9555,9556,9557,9558,9559,9560,9561,9562,9579,9639,9642,10160,10161,10171,10178] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.878]
select surf_pocket17, protein and id [3422,3424,3450,3451,3605,3609,3610,3611,3616,3639,3642,3655,4024,4027,4035,4038,4043] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.647]
select surf_pocket18, protein and id [5570,5573,5574,5575,5843,5846,5852,5854,5996,5998,6031,6034,6035,6085] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.780]
select surf_pocket19, protein and id [7021,7023,7029,7031,7032,8232,8237,8239,8242,8245,8248,8259,8287,8292,8293,8295,8311,8312,8313,8314,9419,9420,9426,9440] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.569]
select surf_pocket20, protein and id [5931,5933,5936,5937,5938,5939,5941,5957,5962,5981,5985,5987,6011,6013,6021,6109,6110,6111] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.682]
select surf_pocket21, protein and id [3277,3278,3279,3280,3281,3282,3283,3284,3285,3617,3626,3627,3771,3777,3784,3786,3787,3788] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.494]
select surf_pocket22, protein and id [766,767,769,814,816,837,838,839,840,841,848,849,937,938,939] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.588]
select surf_pocket23, protein and id [6828,8059,8105,8106,8359,8361,8391] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.420]
select surf_pocket24, protein and id [7021,7023,8237,8242,8313,8316,8334,8337,8338,8341,8342,8343,8344,8345,9419,9420,9421,9422,9423,9424,9425,9426,9440] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.490]
select surf_pocket25, protein and id [8527,8528,8529,8531,8560,8562,8563,9380,9381,9389,9395,9397,9471,10111,10137,10139,10140,10142] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.341]
select surf_pocket26, protein and id [5457,5464,5476,5478,5486,5487,5488,5491,5492,5674,5944,5946,5948,5954] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.392]
select surf_pocket27, protein and id [4167,4170,4194,4388,4389,4390,4405,4466,4470,4974,4985,4988,4989,4999,5007,5009] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.294,0.278]
select surf_pocket28, protein and id [4762,5079,5081,5083,5107,5108,5109,5110,5111,5112,5113,5114] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.424,0.361]
select surf_pocket29, protein and id [5552,5553,5554,5555,5556,5622,5623,5624,5625,5650,6072,6073,6114,6115,6116,6118] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.369,0.278]
select surf_pocket30, protein and id [287,288,290,293,294,304,306,318,320,502,504,774,776,779,782,793] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.522,0.361]
select surf_pocket31, protein and id [1444,1451,1454,1537,1538,1539,1540,2445,2450,2888,2918,2919,2920,2921] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.443,0.278]
select surf_pocket32, protein and id [3033,3035,3040,3202,3203,3204,3235,3236,3237,3255,4260,4265,4355,4360] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.620,0.361]
select surf_pocket33, protein and id [5840,5865,5867,5868,5869,5875,5876,6493,6494,7132,7134,7135,7137,7141] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.518,0.278]
select surf_pocket34, protein and id [3441,3444,3474,3476,4478,4505,4506,4507,4509,4889,4891,4920,4922,4995] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.718,0.361]
select surf_pocket35, protein and id [1397,1404,1407,1779,1780,1790,1795,1920,2521,2523] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.596,0.278]
select surf_pocket36, protein and id [1860,1862,1874,3064,3073,3076,3085,3087,3102,3103,3104,3114,3115,3118,3119,3120,3121,3142] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.812,0.361]
select surf_pocket37, protein and id [8443,8449,8450,8452,8461,8464,8789,8947,8949,8956,8958,8960,8963,8965,8968] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.671,0.278]
select surf_pocket38, protein and id [3871,3884,3922,3923,3924,3932,8480,8482,8496,8498,8500,8507,8509] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.890,0.902,0.361]
select surf_pocket39, protein and id [5728,5729,5731,5733,5735,5754,5755,5770,5784,5861,5863,7117,7118,7119,7145,7150,7152,7154,7156] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.655,0.702,0.278]
select surf_pocket40, protein and id [6569,6576,6578,6579,6962,6967,7693,7695] 
set surface_color,  pcol40, surf_pocket40 


deselect

orient
