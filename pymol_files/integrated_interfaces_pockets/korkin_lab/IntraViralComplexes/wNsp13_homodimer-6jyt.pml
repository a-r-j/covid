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

load data/wNsp13_homodimer-6jyt.pdb, protein
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

load data/wNsp13_homodimer-6jyt.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [8298,8299,8301,8310,8314,8328,8330,8331,8333,8334,8492,8503,8506,8510,8511,8527,8536,8537,8538,8539,8540,8541,8542,8546,8548,8549,8550,8552,8575,8576,8593,8595,8597,8598,8600,8604,8615,8627,8641,8643,8725,8726,8728,8749,8751,8759,8761,8767,8768,8769,8898,8899,8900,8901,8918,9114,9115,9116,9117,9130,9258,9275,9298,9299,9300,9313,9314,9315] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [113,115,116,118,130,272,274,275,277,283,284,285,288,290,297,299,302,819,821,822,823,824,826,832,836,837,838,840,846,847,858,859,1053,1055,1056,1058,1080,1088,1090,1091,1092,1114,1115,1117,1124,1126,1307,1308,1309,1332,3183,3185,3187,3191,3193,3205,3206,3213,3214,3215,4771,4773,4774,4776,4783,4786,4787,4788,4920,4922,4924,4925,4927,4930,4932,4933,4935,4941,4942,4946,4948,4955,4957,4959,5080,5422,5426,5427,5428,5429,5432,5437,5454,5457,5459,5460,5461,5462,5464,5477,5480,5481,5482,5484,5487,5490,5492,5493,5498,5536,5541,5567,5568,5570,5684,5713,5714] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.482,0.902]
select surf_pocket3, protein and id [1013,1035,1038,1039,1040,1041,1043,1044,1060,1061,1062,1063,1064,1065,1066,1067,1072,1073,1074,1100,1101,1366,1369,1371,1386,1387,1388,1390,1405,1513,1514,1515,1767,1770,1780,1781,1782,1783,1784,1793,1795,1801,1803,1804,1805,1806,1815,1820,1824,1826,2390,2391,2392,2393,2394,2395,2396,2397,2406,2619,2793,2797,2798,2799,2800,2801,2802,2803,2805,2928,2931,2933,2941,2942,2943,2956,2959,2961,2962,2970,2971,2991,2992,3012,3021,3158,3163,3165,3167,3171,3172,3174,3182] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.341,0.702]
select surf_pocket4, protein and id [262,264,266,267,269,769,771,772,774,796,799,802,803,804,823,824,877,878,879,880,883,911,912,5493,5496,5498,5516,5517,5714,5739,5744,5746,5748,5749,5750,5772,5773,5966,5967,7841,7843,7845,7846,7847,7849,7851,7862,7863,7864,7871,7872,7873] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.392,0.902]
select surf_pocket5, protein and id [3646,3647,3648,3650,3658,3660,3661,3670,3678,3681,3683,3845,3878,3879,3881,3883,3884,3891,4453,4456,4458,4467,4472,4597,4598,4599,4600,4611,4629,4636,4637,4638,4639,4641,4643] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.290,0.278,0.702]
select surf_pocket6, protein and id [5671,5691,5693,5696,5697,5698,5699,5700,5701,5702,5719,5720,5721,5722,5723,5730,5731,5732,5758,5759,6024,6029,6042,6044,6046,6048,6428,6441,7048,7049,7050,7051,7052,7053,7054,7459,7460,7461,7589,7591,7599,7600,7601,7614,7617,7628,7629,7816,7821,7825,7829,7831,7839,7840] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.424,0.361,0.902]
select surf_pocket7, protein and id [2203,2214,2215,2224,2227,2228,2232,2233,2234,2412,2413,2414,2415,2416,2417,2437,2439,2466,2899,2900,2906,2909,3138,3442,3443,4172,4173,4178,4179,4180,4181,4183,4196,4416] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.365,0.278,0.702]
select surf_pocket8, protein and id [3501,3505,3506,3507,3530,3532,3533,3534,3535,3667,4327,4329,4341,4342,4366,4367,4369,4371,4376,4377,4379,4397,4399,4514,4518,4521,4541,4547,4548,4554,4555,4556,4559,4578,4579] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.514,0.361,0.902]
select surf_pocket9, protein and id [867,870,872,875,876,904,3211,3212,3213,3216,3217,3218,3219,3222,3228,5522,5525,5528,5530,5533,5534,5562,7869,7870,7871,7874,7875,7876,7877,7880,7883,7886] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.435,0.278,0.702]
select surf_pocket10, protein and id [2022,2026,2028,2048,2049,2051,2056,2057,2077,2209,2211,2213,2214,2218,2219,2221,2233,2234,2237,2239,2240,2241,2242,2243,2244,2466,2467,2468,2469,2502,3402,3403,3406,3409,3415,3416,3417,3428,3429,3431,3432,4196] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.608,0.361,0.902]
select surf_pocket11, protein and id [6850,6882,6884,6885,6886,6889,6891,6892,7074,7075,7077,7095,7102,7556,7557,7558,7562,7563,7564,7565,7566,7567,7762,7767,7794,7795,7796,8832,8834,8837,8838,8839,8840,8841] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.510,0.278,0.702]
select surf_pocket12, protein and id [4739,4740,4980,4981,4984,4986,4987,4996,5012,5014,5138,5151,5152,5156,5157,5170,5171,5172,5328,5329,5333,5339,5340,5341] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.698,0.361,0.902]
select surf_pocket13, protein and id [7801,7802,7803,7804,7809,7811,7813,7818,7820,7822,7823,7826,7857,7879,7881,7882,7884,7887,7894,7938,8812,8813,8967,8968,8971,8973,8990,8991,8992,8993,9007,9013,9014,9015,9017] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.580,0.278,0.702]
select surf_pocket14, protein and id [6680,6686,6706,6707,6709,6714,6715,6735,6871,6874,6875,6876,6877,6897,6902,7126,7127,8062,8063,8064,8067,8068,8071,8074,8077,8086,8087,8089,8090] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.792,0.361,0.902]
select surf_pocket15, protein and id [322,323,328,329,333,337,340,354,356,480,481,491,497,499,513,514,670,671,682,683] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.651,0.278,0.702]
select surf_pocket16, protein and id [7002,7017,7018,7019,7207,7218,7226,7349,7358,7367,7373,7374,7376,7378,7380,7421,7422,7468,7474,7479,7481,7496,7497,7689] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.886,0.361,0.902]
select surf_pocket17, protein and id [5509,5549,5575,5583,5666,5668,5671,5693,7600,7606,7609,7831,7942] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.675]
select surf_pocket18, protein and id [335,336,337,338,343,345,347,362,363,364,372,376,377,378,380,385,387,389,390,4993,4994,4995,4996,5001,5002,5003,5005,5020,5022,5030,5032,5033,5034,5035,5036,5038,5169,5171] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.824]
select surf_pocket19, protein and id [889,891,917,919,920,984,1010,1011,1013,1035,1038,1039,1040,1064,1065,2941,2942,2943,2946,2948,2949,2951,2954,2956,3171,3172,3174,3273,3284] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.604]
select surf_pocket20, protein and id [3151,3153,3155,3160,3168,3170,3171,3178,3199,3201,3221,3223,3224,3226,3229,3233,3236,3280,4333,4334,4335,4347,4350,4356,4357,4359] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.729]
select surf_pocket21, protein and id [273,275,291,293,294,428,430,443,452,4784,4785,4787,4790,4795,5706,5707,5708,5709,5710,5711,5728,5735,5736,5737,5738,5739,5766,6432,6444] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.533]
select surf_pocket22, protein and id [4675,4679,4687,4688,4690,4793,4796,4797,4801,4814,4820,4825,4827,5621,5651,5652,5677,5678,6470,6471,6481] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.639]
select surf_pocket23, protein and id [21,29,30,32,135,143,156,158,162,167,169,962,987,993,994,997,999,1019,1020,1812,1813,1818,1823] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.459]
select surf_pocket24, protein and id [6844,7906,7908,7996,7998,8000,8001,8002,8003,8005,8190,8195,8200,8208,8211,8212,8213,9000,9008] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.545]
select surf_pocket25, protein and id [8160,8184,8185,8186,8193,9027,9034,9058,9179] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.388]
select surf_pocket26, protein and id [3151,3153,3199,3201,3221,3223,3224,3226,4309,4310,4315,4317,4332,4335,4357,4358,4359] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.451]
select surf_pocket27, protein and id [6531,6532,6533,6535,6552,6554,6809,6811,6813,6826,7983,7985,8017,8018,8037] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.318]
select surf_pocket28, protein and id [126,128,129,132,1049,1050,1051,1052,1053,1055,1056,1078,1080,1081,1108,1773,4931,4932,4935,4949,4951,4952,5085,5088,5101] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.361]
select surf_pocket29, protein and id [1111,1129,1282,1291,1294,1295,1299,1301,1302,4853,4859,4879,4880,4887,4888,4889,4912,5300,5301,5302,5304] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.318,0.278]
select surf_pocket30, protein and id [2196,2202,2206,3418,3419,3421,3422,3423,3450,3451,3480,3507,3508,3580,4379,4404,4406,4407] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.451,0.361]
select surf_pocket31, protein and id [3672,3673,3674,3675,3688,3689,4527,4528,4529,4530,4532,4558,4561,4581,4589,4591,4592] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.388,0.278]
select surf_pocket32, protein and id [3832,3833,3834,3835,3837,3851,3853,3983,3985,3986,3987,4063,4067,4068,4090,4096,4098,4110,4240,4241,4242,4243] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.545,0.361]
select surf_pocket33, protein and id [6854,6860,6864,8081,8108,8109,8145,8203,9037,9065] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.459,0.278]
select surf_pocket34, protein and id [8324,8325,8339,8341,8344,9185,9186,9187,9188,9189,9190,9191,9194,9249,9250,9267] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.639,0.361]
select surf_pocket35, protein and id [1344,1346,1347,1550,1551,1552,1553,1555,1558,1566,4025,4028,4030,4048,4052,4054,4125,4137,4140,4141,4153,4156] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.533,0.278]
select surf_pocket36, protein and id [6008,8668,8680,8681,8682,8683,8684,8685,8686,8797,8798,8799,8812,8813,8814] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.729,0.361]
select surf_pocket37, protein and id [3775,3777,3779,3782,3784,4015,4017,4018,4019,4276,4277,4282,4283,4298,4299,4300] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.604,0.278]
select surf_pocket38, protein and id [8183,8185,8985,8987,8999,9169,9175,9176,9177,9179,9206,9208] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.824,0.361]
select surf_pocket39, protein and id [1873,1874,1877,2135,2153,2155,3327,3358,3359,3360,3378,3379] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.675,0.278]
select surf_pocket40, protein and id [2196,2202,2206,3117,3508,3509,3549,3552,3553,3554,3580,4380,4407] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.886,0.902,0.361]
select surf_pocket41, protein and id [2185,2186,3338,3369,3371,3373,3392,3393,3394,3395,3396,3397,3398,3549,3557,3560,3562] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.651,0.702,0.278]
select surf_pocket42, protein and id [8892,8893,8906,9050,9052] 
set surface_color,  pcol42, surf_pocket42 


deselect

orient
split_chains
select interface_A, protein_A and resi 1+15+17+18+20+22+32+35+36+37+38+40+41+43+44+45+46+47+49+50+52+53+54+55+56+57+58+59+62+101+103+104+107+108+111+112+113+115+116+118+119+121+141+144+145+147+148+170+171+172+414
select interface_B, protein_B and resi 611+613+614+616+618+628+631+632+633+634+636+637+639+640+641+642+643+645+646+648+649+650+651+652+653+654+658+697+699+700+703+704+707+708+709+711+712+714+715+717+737+740+741+743+744+766+767+768+1010
delete points_1
deselect
orient
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp13_homodimer-6jyt_out/pockets/pocket9_vert.pqr, fpocket_pocket9_vert partial=1
show_as spheres, (fpocket_pocket9_vert)
color red, (fpocket_pocket9_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp13_homodimer-6jyt_out/pockets/pocket74_vert.pqr, fpocket_pocket74_vert partial=1
show_as spheres, (fpocket_pocket74_vert)
color red, (fpocket_pocket74_vert)
