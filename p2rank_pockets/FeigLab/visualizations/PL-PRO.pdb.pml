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

load data/PL-PRO.pdb, protein
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

load data/PL-PRO.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [882,922,1225,1234,1277,1288,1291,1293,1297,1351,1479,1481,1530,1532,1536,1555,1604,1606,1610,1615,1645,1660,1667,1900,1913,1922,1936,1939,2028,2081,2083,2094,2568,2577,2613,2615,2617,2619,2668,2672,2683,2684,2685,2692,3803,3804,3805,3818,3844,3854,3857,3860,3861,3862,3864,3877,3881,3883,3930,3932,3991,4007,4009] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.420,0.702]
select surf_pocket2, protein and id [1579,1618,1620,1623,1625,1626,1627,1629,1633,1635,1640,1674,1703,1706,1709,1712,1714,1718,1723,1732,1742,1745,1748,1777,1791,2484,2486,2490,2545,2555,2558,2561,2593,2598,2658,4210,4254,4267,4269,4271,4273,4277,4322,4324,4327,4328,4330,4332,4335,4337,4339,4340,4351,4353,4357,4972,4974,4991,4993,4995,5036,5051,5054,5057,5060,5073,5076,5104,5116,5118,5121,5123,5125,5127,5167,5172,5189,5191,5204,5205,5215,5216,5217,5219,5254,5256,5259,5262,5268,5307,5309,5312,5314,5317,5325,5331,5334,5373,5377,5411,5418] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.506,0.902]
select surf_pocket3, protein and id [1682,1685,1688,1690,1698,1701,1710,1714,1716,1718,1723,1724,1728,1731,1732,1733,1737,1753,1759,1762,1764,1786,2651,3553,3589,3593,3596,3653,3669,3673,5162,5165,5167,5170,5171,5172,5307,5309,5314,5411,5418,5420,5718,5720,5725,5941,5968,5973,5982,5985,6019,6034,6100,6104] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.369,0.702]
select surf_pocket4, protein and id [2978,2981,2997,3035,3037,3040,3043,3048,3050,3054,3059,3062,3072,3073,3074,3076,3083,3084,3091,3093,3384,3387,3389,3392,3393,3396,3421,3431,3434,3435,3436,3438,3473,3480,3483,3517,3520,3522,3525,3533,3537,3539,3541,3546,3560,3565,3568,3582,5626,5631,5663,5667,5691,6090,6106,6107,6108,6125,6126,6127,6129,6131,6138,6142,6145,6146,6147,6150,6154,6161,6401,6433,6446,6448,6461,6462,6463,6465,6470,6474,6478,6481,6484,6495,6497,6502,6516,6519,6769,6771,6776,6782,6788,6793,6794,6796,6798,6858,6897] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.439,0.902]
select surf_pocket5, protein and id [198,202,214,236,238,240,244,245,248,254,284,287,288,475,489,496,501,504,739,742,751,754,756,760,769,775,779,785,789,3734,3772,3776,3777,3778,3780,3782,3786,3788,3790,3830,3834,3899,4889,4891,4900,4935,4942,4944,4946,4950,4952,5008,5010,5014,5087,5089] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.314,0.702]
select surf_pocket6, protein and id [1772,1779,1786,1792,1799,1812,1813,1814,1816,1818,1822,1824,1828,1834,1865,1868,1870,1872,1874,1880,1882,1884,1886,2002,2005,2630,2635,2639,2643,2644,2645,2700,2702,2704,2709,2734,2747,2749,2751,2926,2987,3309,3313,3318,3321,3323,3328,3352,3355,3358,3359,3361,3365,3370,3375,3379,3401,3404,3412,3417,3629,3667,3669] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.373,0.902]
select surf_pocket7, protein and id [5524,5526,5533,5539,5541,5555,5563,6223,6224,6266,6270,6286,6287,6326,6329,6568,6570,6574,6604,6677,6713,6934,6936,6937,7007,7009,7011,7015,7023,7025,7029,7242,7249,7275,7763,10068] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.298,0.278,0.702]
select surf_pocket8, protein and id [9340,9345,9347,9365,9367,9372,9383,9384,9385,9447,9452,9455,9456,9464,9468,9482,9530,9533,9534,9535,9916,9918,9924,10051,10108,10111,10113,10117,10173,10176,10188,10192,10196,10199,10204,10244,10375] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.416,0.361,0.902]
select surf_pocket9, protein and id [6604,6677,6961,6970,7011,7013,7015,7039,7042,7043,7044,7089,7156,9073,9127,9130,9132,9143,9146,9147,9148,10010,10079,10082,10083,10127,10136,10151,10154,10157,10160,10163,10218,10220] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.349,0.278,0.702]
select surf_pocket10, protein and id [9258,9260,9265,9268,9269,9283,9615,9618,9623,9625,9626,9631,9937,9938,9939,9960,9964,9967,9970,9990,9991,10454,10459,10473,10511,10524,10535] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.486,0.361,0.902]
select surf_pocket11, protein and id [1517,1522,1525,1527,1532,1587,1591,1592,1635,1653,3903,3913,3922,3927,3965,4103,4105,4191,4196,4210,4257,4259,4903,4905,4915,4920,4923,4925,4956,4966,4969,4970,4977] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.404,0.278,0.702]
select surf_pocket12, protein and id [8233,8235,8238,8263,8835,8836,8838,8842,8846,8856,8859,8860,8861,8893,8897,9220,9221,9224,9230,9234,9236,9245,9252,10444,10492,10495,10498,10501,10503] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.553,0.361,0.902]
select surf_pocket13, protein and id [1424,1435,1438,1440,1447,1496,1503,1505,2302,2304,2366,2373,2444,4489,4516,4576,4592] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.455,0.278,0.702]
select surf_pocket14, protein and id [815,818,819,820,1913,1917,1922,2668,2683,2684,2685,2692,2722,2724,2729,2760,2762,3703,3722,3762,3768,3770,3772,3814,3818] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.620,0.361,0.902]
select surf_pocket15, protein and id [9362,9363,9365,9367,9375,9378,9384,9390,9394,9452,9724,9726,9731,9785,10181,10188,10204,10244,10311,10312,10313] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.510,0.278,0.702]
select surf_pocket16, protein and id [2951,2952,2965,2968,2970,3013,3015,3018,3019,3185,3188,3196,3198,3201,3203] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.690,0.361,0.902]
select surf_pocket17, protein and id [5382,5400,5401,5402,5404,5425,5454,5456,5460,5729,5733,5909,5911,5912,5913,5915,5917,7652,7653,7655,7662,7670,7671,7674,7682,7687,7688,7693,7696] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.565,0.278,0.702]
select surf_pocket18, protein and id [5234,5236,5241,5273,5286,5288,5290,5293,5296,5344,5350,5353,5831,5834,5837,5840,5893,5922,5927,5930,5931,5932,5952,5954] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.757,0.361,0.902]
select surf_pocket19, protein and id [2877,2900,2903,2916,2918,2921,2946,2948,2951,2952,2963,2965,2968,2970,3206,3236,3237,3242,3245] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.616,0.278,0.702]
select surf_pocket20, protein and id [1311,1312,1374,2077,2079,2121,2127,2128,2177,2182,2197,2199] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.827,0.361,0.902]
select surf_pocket21, protein and id [1034,1036,1038,1408,1411,1413,1458,1460,1465,4035,4038,4041,4044,4054,4069,4126,4647,4652] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.671,0.278,0.702]
select surf_pocket22, protein and id [7126,7128,7136,7163,7168,7169,7170,7175,7181,7193,8616,8621,8623,8632,8677,8680,8934,8936,8939,8942,8953,8986,8988,9005,9052,9058] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.894,0.361,0.902]
select surf_pocket23, protein and id [8007,8078,8080,8083,8084,8085,8123,8125,8143,8290,8293,8358,8377,8415,8417,8468,8471,8472,8473] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.678]
select surf_pocket24, protein and id [7123,7126,7128,7136,7163,7169,7175,7179,7181,7183,7336,7340,7830,7935,7936,8589,8621,9058] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.839]
select surf_pocket25, protein and id [2399,2414,2418,2422,2478,2481,2482,2486,2488,2490,4279,4281,4345,4348,4355,4360,4391,4403,4408,4411,4412] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.624]
select surf_pocket26, protein and id [636,638,641,643,647,683,961,963,979,1021,4001,4016,4025,4046] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.769]
select surf_pocket27, protein and id [679,688,724,731,734,736,929,934,3879,3881,3938,3940,3942,4011,4013] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.278,0.573]
select surf_pocket28, protein and id [2810,2812,2815,2818,2882,2890,2894,2899,2900,2921,2936,2938,2940,2946,2948,3009,3610,3622,3639,3642] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.361,0.702]
select surf_pocket29, protein and id [4191,4196,4244,4257,4259,4263,4853,4856,4858,4923,4925,4966,4969,4977] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.278,0.518]
select surf_pocket30, protein and id [9736,9739,9744,9749,9751,9753,9755,9759,9801,9804,9818,9820,10663,10670,10680,10686,10688,10699,10705,10709,10712,10715,10718,10721,10726] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.361,0.631]
select surf_pocket31, protein and id [76,79,81,84,88,95,97,106,621,626,641,643,647,4021,4025,4063,4065,4087,4091] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.278,0.467]
select surf_pocket32, protein and id [8139,8147,8148,8151,8153,8155,8157,8198,8201,8204,8213,9092,9093,9096,9101,9138,9169,9172,9177,9185,9200] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.361,0.565]
select surf_pocket33, protein and id [7317,7324,7345,7348,7350,7354,7356,7465,7499,7503,7505,7507,7550,7614,7616,7782] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.278,0.412]
select surf_pocket34, protein and id [3030,3032,3128,3131,3135,3137,3143,3149,3162,3164,3166,3338,3342,3396,6798,6803] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.361,0.498]
select surf_pocket35, protein and id [139,643,3946,3948,4025,4089,4091] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.278,0.361]
select surf_pocket36, protein and id [1105,1107,1111,1264,1312,1319,1324,1327,1330,1332,1372,1374,1376,1390] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.361,0.427]
select surf_pocket37, protein and id [9390,9392,9394,9397,9400,9403,9412,9418,9422,9681,9683,9717,9722,9726] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.306]
select surf_pocket38, protein and id [810,813,819,884,1922,1925,1927,3814,3818,3875] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.361]
select surf_pocket39, protein and id [3010,3069,3566,3570,3577,3578,3608,3610,6014,6033,6034,6046,6048,6050,6458] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.306,0.278]
select surf_pocket40, protein and id [7128,7139,7141,7919,7935,8050,8108,8110,8606,8620,9055] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.427,0.361]
select surf_pocket41, protein and id [6250,6253,6357,6358,6359,6363,6365,6368,6373,6383,6399,6400,6401,6505,6508,6512,6531] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.361,0.278]
select surf_pocket42, protein and id [9209,9226,9238,9241,9862,9900,10395,10401,10560,10574,10577,10581,10585,10591] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.498,0.361]
select surf_pocket43, protein and id [62,81,84,120,360,4059,4062,4063,4074,4085,4141,4719,4722,4761] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.412,0.278]
select surf_pocket44, protein and id [6648,6652,6948,6975,6978,10233,10236,10295,10298] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.565,0.361]
select surf_pocket45, protein and id [9349,9418,9547,9595,9642,9647,9672,9676,9680,9685] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.467,0.278]
select surf_pocket46, protein and id [4181,4227,4245,4611,4663,4681,4740,4777,4778] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.631,0.361]
select surf_pocket47, protein and id [5777,6082,6391,6419,6428,7535,7537,7539,7577,7593] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.518,0.278]
select surf_pocket48, protein and id [4245,4778,4790,4794,4853,4856,4858,4872,4875,4925] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.702,0.361]
select surf_pocket49, protein and id [3690,3693,5137,5146,5149,5196,5199,5200,5201,6027,6031] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.573,0.278]
select surf_pocket50, protein and id [7075,7076,7077,7845,7848,7850,7859,7864,7867,7892,7896,7901,7903,7904,7910] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.769,0.361]
select surf_pocket51, protein and id [8680,8683,8739,8741,8744,8747,8783,8804,8874,8918,8922,8924,8926] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.624,0.278]
select surf_pocket52, protein and id [7103,7222,7225,10083] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.839,0.361]
select surf_pocket53, protein and id [1194,1967,1973,1977,1983,1989,1993,1996,1999,2011,2013,2015,2055] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.678,0.278]
select surf_pocket54, protein and id [4489,4491,4492,4493,4495,4497,4502,4546,4547,4549,4572,4629] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.894,0.902,0.361]
select surf_pocket55, protein and id [949,952,953,954,958,1000,1003,1006] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.671,0.702,0.278]
select surf_pocket56, protein and id [1685,2651,2681,3671,3673,3677,3698,3739,3748,3760] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.827,0.902,0.361]
select surf_pocket57, protein and id [4472,4478,4479,4481,4483,4492,4493,4495,4543,4546,4547,4549,4551,4552,4553] 
set surface_color,  pcol57, surf_pocket57 


deselect

orient
