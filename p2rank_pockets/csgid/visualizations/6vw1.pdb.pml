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

load data/6vw1.pdb, protein
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

load data/6vw1.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [5047,5716,5735,5739,5741,5742,5745,5747,5748,5749,5859,5865,5868,5873,5875,5876,5877,5902,5903,5904,6908,6911,6931,6932,6943,6944,6945,6946,6953,6956,6957,6958,6959,6978,6979,6980,6988,7509,7510,7518,7521,7522,7523,7524,7525,7526,7530,7533,7535,7538,7540,7541,7544,7563,7564,7567,7694,7695,7696,7697,7722,7724,7731,7732,7754,7755,7756,7757,7766,7786,7788,7824,7825,7849,7907,7920,7921,7922,7935,7941,7943,7968,7969,7970,7971,7973,7979,7981,7982,8005,8006,8007,8029,8275,8280,8288,8306,8308,8309,8311,8315,8316,8804,8810,8813,8814,8815,8816,8823,8824,8825,8826,8846,8862,8864,8865,8866,8899,8900,8901,8908,8912,8914,8942,8943,8951] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.420,0.702]
select surf_pocket2, protein and id [184,872,875,877,879,882,885,1003,1005,1010,1013,1038,1039,1040,1041,2045,2046,2048,2069,2081,2083,2093,2094,2095,2096,2116,2117,2227,2232,2233,2235,2236,2658,2659,2660,2661,2662,2663,2667,2672,2677,2678,2681,2697,2700,2701,2704,2826,2827,2834,2835,2857,2858,2859,2861,2863,2864,2869,2890,2891,2892,2893,2894,2902,2903,2922,2924,2960,2961,2962,2986,3044,3058,3059,3072,3078,3080,3105,3106,3107,3108,3109,3110,3116,3117,3118,3119,3142,3143,3144,3165,3166,3173,3189,3190,3203,3230,3383,3388,3390,3412,3413,3414,3415,3416,3417,3418,3423,3424,3425,3426,3443,3444,3445,3446,3448,3452,3471,3472,3941,3947,3948,3949,3950,3951,3952,3953,3961,3962,3963,3999,4001,4002,4003,4037,4038,4045,4046,4047,4049,4051,4080,4088] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.502,0.902]
select surf_pocket3, protein and id [94,95,96,121,124,128,132,133,134,153,154,156,162,2724,2725,2991,2994,2996,3000,3001,3007,3008,3011,3014,3018,3049,10281,10282,10290,10291,10292,10294,10301,10302,10318,10329,10371,10374,10378,10379,10380,10386,10388,10673,10674,10675,11001,11005,11012,11014,11016,11020,11023,11088,11089,11090,11091] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.361,0.702]
select surf_pocket4, protein and id [4958,4982,4983,4984,4987,4988,4989,4991,4992,4993,4994,4995,4996,4997,5016,5017,5019,5021,5025,7587,7588,7854,7857,7858,7859,7860,7864,7871,11832,11833,11842,11845,11852,11853,11869,11880,11925,11929,11930,11931,11937,11939,12224,12225,12226,12556,12565,12571,12574,12583,12635,12639,12640,12641,12642] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.427,0.902]
select surf_pocket5, protein and id [183,2474,2494,2498,2499,2500,2509,2510,2703,2714,2726,2727,2729,2747,2966,2967,2970,2991,2992,3047,3048,3049,10294,11067,11070,11074,11076,11077,11078,11089,11091] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.302,0.702]
select surf_pocket6, protein and id [5013,5015,5020,5043,5044,5045,5046,5047,5074,5076,5079,5080,5099,5252,5278,5280,5283,5313,5314,5315,5523,5524,5525,5533,5550,7558,7563,7564,7567,7576,7577,7880,7884,7885,7886,7887,7889,7891,7892,7893,7895,7907,7908,7911,7922] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.369,0.361,0.902]
select surf_pocket7, protein and id [116,181,182,183,184,415,417,420,449,450,451,452,660,661,662,664,670,683,687,2700,2703,2704,2714,3017,3020,3021,3022,3023,3026,3028,3029,3032,3044,3045,3047,3059] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.314,0.278,0.702]
select surf_pocket8, protein and id [7357,7360,7361,7362,7363,7365,7368,7369,7370,7371,7372,7373,7407,7408,7409,7566,7567,7577,7580,7589,7590,7592,7610,7611,7821,7829,7830,7831,7832,7853,7854,7855,7856,7857,7910,7911,7912,11844,11845,12111,12605,12612,12618,12621,12625,12626,12628,12629,12638,12640,12642,12652] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.443,0.361,0.902]
select surf_pocket9, protein and id [687,688,698,701,705,706,800,823,1373,1397,1475,1477,1494,1499,1501,1504,1506,1509,1511,1536,1538,3988,3992] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.373,0.278,0.702]
select surf_pocket10, protein and id [11525,11526,11528,11530,11631,11633,11681,11705,11706,12053,12067,12710] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.518,0.361,0.902]
select surf_pocket11, protein and id [180,182,184,208,209,211,212,213,217,235,236,277,278,415,417,2675,2676,2677,2681,2684,2688,2689,2690,2691,2692,2693,2694,2695,2697,2700] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.431,0.278,0.702]
select surf_pocket12, protein and id [1177,1180,1219,1220,2010,2060,2061,2062,2063,3498,3728,3731,3745,3746,3772,3773,3912,3913,3920,3934,3939,3942] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.592,0.361,0.902]
select surf_pocket13, protein and id [9975,9977,10000,10003,10080,10082,10130,10154,10502,11159] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.490,0.278,0.702]
select surf_pocket14, protein and id [5045,5047,5076,5079,5080,5098,5099,5140,5141,5228,7538,7539,7540,7544,7547,7553,7554,7555,7556,7557,7558,7560,7563] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.667,0.361,0.902]
select surf_pocket15, protein and id [6040,6082,6083,6873,6921,6923,6924,6926,8361,8591,8594,8608,8635,8636,8774,8775,8776,8781,8783,8802,8805] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.549,0.278,0.702]
select surf_pocket16, protein and id [5550,5561,5564,5568,6236,6340,6357,6362,6364,6372,6374,6395,6396,6399,8851,8855] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.741,0.361,0.902]
select surf_pocket17, protein and id [76,78,102,104,139,140,141,142,442,468,469,470,478,479,499,500,10922,10925,10927,10928,10929,10930,10931,10934,10961,10963] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.608,0.278,0.702]
select surf_pocket18, protein and id [4939,4941,4962,4963,4964,4965,4966,4967,4968,4969,4970,5003,5004,5005,5006,5303,5305,5331,5332,5333,5341,5342,5362,12464,12466,12470,12471,12478,12512,12514,12522] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.816,0.361,0.902]
select surf_pocket19, protein and id [5494,5517,5520,5521,5550,5551,6394,6396,6398,6401,6418,7930,9289,9291,9292,9293,9294] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.663,0.278,0.702]
select surf_pocket20, protein and id [35,37,38,39,58,69,95,96,10380,10401,10410,10411,10412,10691,10702,10710,10739,10852] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.890,0.361,0.902]
select surf_pocket21, protein and id [9902,10225,10227,10228,10455,10456,10469,10473,10480,10485,10772,10774,10775,11165,11169,11170,11179,11182,11183,11185] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.678]
select surf_pocket22, protein and id [631,657,662,687,688,1530,1531,1532,1533,1535,1536,1538,1555,3059,4429,4430,4431] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.835]
select surf_pocket23, protein and id [4869,4897,4898,4932,4959,11931,11962,11963,12242,12253,12255,12258,12261,12401,12402,12403,12408,12415,12417] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.620]
select surf_pocket24, protein and id [11341,11342,11345,11355,11356,11543,11546,11553,11580,11592,11593,11595,11597,11607,11609,12081] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.757]
select surf_pocket25, protein and id [6977,6980,6987,7105,7106,7107,7119,7120,7121,7680,7682,7687,7696,7697,7698,8279,8280] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.561]
select surf_pocket26, protein and id [9791,9803,9804,9805,9992,10002,10028,10029,10041,10044,10046,10047,10057,10058] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.682]
select surf_pocket27, protein and id [3702,3703,3705,3706,3707,3736,3738,3740,3748,3753,3780,3781,3782,3834,3854,3857,3860,4814,4838,4854,4856] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.502]
select surf_pocket28, protein and id [1458,1464,1465,1466,1524,1525,1675,1676,1709,3551,3581,3587,3623,3624,3625,3637,3638] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.608]
select surf_pocket29, protein and id [5547,5548,5549,5550,5551,6287,6288,6310,6311,6357,6362,6363,6364,6393,6394,6395,6396,6399] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.443]
select surf_pocket30, protein and id [1316,1348,1350,1351,1353,1354,1356,1378,1381,1412,3602,3604,3609,3626,3627,3642,3648,3654,3659,3660,3688,3691] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.533]
select surf_pocket31, protein and id [9758,9760,9767,9768,9791,9803,9804,9805,9992,9994,9995,10002,10058] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.388]
select surf_pocket32, protein and id [7275,7276,7279,7280,7312,7313,8084,8086,8107,8108,8109,8117,9148,9161,9162,9169,9170] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.459]
select surf_pocket33, protein and id [6362,6372,6374,6399,6400,6401,7944,7947,8851,8862,8868,8872,8873,8901] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.329]
select surf_pocket34, protein and id [6328,6329,6388,6538,6539,8414,8443,8444,8450,8459,8486,8487,8488,8500,8501] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.384]
select surf_pocket35, protein and id [2498,2500,2502,2504,2507,2509,2510,2545,2546,2729,2731,2736,10560,11047,11061,11067,11070,11074,11076,11101] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.290,0.278]
select surf_pocket36, protein and id [1546,1629,1667,4071,4465,4466,4559] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.412,0.361]
select surf_pocket37, protein and id [5787,5788,5789,5790,5803,5804,5805,5838,5851,5921,5986,5989,5990,5993,6017,6018,6019,6020,6023,6024,6025] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.349,0.278]
select surf_pocket38, protein and id [8568,8601,8611,8612,8616,8643,8644,8645,8697,9717,9719] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.486,0.361]
select surf_pocket39, protein and id [11293,11297,11311,11318,11319,11342,11345,11354,11355,11356,11545,11546,11553] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.408,0.278]
select surf_pocket40, protein and id [11341,11350,11351,11352,11355,11360,11597,11598,12082,12121,12128,12129] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.561,0.361]
select surf_pocket41, protein and id [11452,11453,11776,11778,12007,12020,12031,12036,12039,12040,12320,12323,12325,12716,12718,12720,12721,12730,12733,12734,12736] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.463,0.278]
select surf_pocket42, protein and id [3211,3212,3213,4204,4205,4209,4216,4219,4221,4223,4225,4229,4234,4281,4297] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.635,0.361]
select surf_pocket43, protein and id [9790,9799,9804,9809,10046,10047,10529,10531,10540,10551,10569,10570,10577,10578,11129] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.522,0.278]
select surf_pocket44, protein and id [2387,2412,2413,2416,2417,2449,3220,3222,3245,3246,3254,4285,4298,4299,4306,4307] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.710,0.361]
select surf_pocket45, protein and id [6569,6570,6571,6597,6599,6609,6634,6635,8378,8379,8411,8413,8627,8656,8662,8664] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.580,0.278]
select surf_pocket46, protein and id [6211,6214,6217,6219,6244,8465,8467,8472,8490,8505,8522,8523,8554] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.784,0.361]
select surf_pocket47, protein and id [2457,3160,4293,4336,4364] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.639,0.278]
select surf_pocket48, protein and id [8074,8075,8076,9072,9079,9085,9087,9144,9160] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.859,0.361]
select surf_pocket49, protein and id [11614,11622,11837,11858,11859,11860,11861,12667,12669,12670] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.698,0.278]
select surf_pocket50, protein and id [7320,8023,9156] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.867,0.902,0.361]
select surf_pocket51, protein and id [47,48,10869,10872,10877,10878,10883,10884,10939,10948] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.643,0.702,0.278]
select surf_pocket52, protein and id [2385,2386,2387,2388,2389,2416,2417,2420,2884,3222,3223,3254] 
set surface_color,  pcol52, surf_pocket52 


deselect

orient
