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

load data/nsp4.pdb, protein
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

load data/nsp4.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [815,817,819,830,831,839,841,843,846,849,850,853,857,862,864,868,873,874,880,892,898,901,903,923,947,968,970,972,976,977,980,986,996,1342,1344,1368,1378,1386,1390,1398,2039,2044,2048,2218,2234,2275,2277,2283,2285,2290,2304,2307,2316,2318,2320,2325,3311,3313,3318,3343,3345,3349,3563,3568,3571,3574,3576,3580,3582,3586,3955,3970,3971,3972,3974,3980,3981,3984,3986,3988,4037,4056,4101,4624,4629,4645,4678,4681,4687,4689,4697,4698,4700,4702,4708,4711,4713,4754,4758,4770,4813,4816,4818,5307,5311,5316,5327,5364,5370,5376,5378,5380,5383,5384,5386,5388,5391,5393,5424,5429,5432,5434,5440,5442,5446,5449,5458,5460,5462,5470,5484,5494,5496,5498,5503,5504,5508,5511,5512,5513,5516,5517,5520,5525,5526,5527,5561,5564,5565,5567,5571,5573,6054,6060,6066,6070,6071,6079,6081,6113,6117,6119,6130,6132,6134,6137,6138,6140,6142,6143,6146,6148,6201,6204,6209,6212,6213,6269,6275,6654,6667,6670,6673,6676,6684,6686,6689,6693,6695,6696,6707,6731,6734,6737,6739,6744,6748,6753,6775,6823,6826,6914,6919,6923,6975,6977,6985,6988,6989,6990,6993,6994,6995,6997,7053,7061,7063,7068,7113,7118,7130,7136,7504,7554,7564,7568,7569,7570,7572,7574,7612,7615,7617,7620,7624,7626,7631,7632,7633,7636,7651] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [719,721,728,759,788,794,797,882,887,890,892,912,916,921,1460,1463,1467,1471,1477,1487,1658,1665,1673,1712,1767,1812,1814,1817,1818,1819,1830,1832,1834,1836,1838,1841,1863,1868,1870,1872,3928,3930,3962,3966,4014,4018,4019,4023,4084,4085,4419,4450,4452,4459,4467,4475,4505,4515,4518,4558,4563,4566,4568,4584,4589,4637,4640,4643] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.471,0.902]
select surf_pocket3, protein and id [2018,2209,2210,2211,2224,2226,2239,2241,2243,2257,5195,5207,5212,5246,5248,5252,5294,5297,5300,5301,5303,5305,5370,5854,5872,5873,5887,5930,5938] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.325,0.702]
select surf_pocket4, protein and id [6373,6388,6389,6390,6600,6604,7438,7440,7477,7480,7483,7486,7489,7546,7547,7681,7683,7724,7732,7770,7772,7837,7843,7856,7862] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.365,0.902]
select surf_pocket5, protein and id [421,425,439,441,492,496,1722,1727,1760,1763,1769,1849,1851,1855,1890,1894,4203,4204,4205,4223,4242,4245,4248,4249,4367,4371,4376,4396,4399,4401,4411,4414,4459] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.318,0.278,0.702]
select surf_pocket6, protein and id [2089,2091,2094,2096,2404,2794,2796,2806,3212,3259,3264,3299,3432,3437,3599,3623,3654,3685] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.459,0.361,0.902]
select surf_pocket7, protein and id [6244,6258,6331,6335,6339,6345,6360,6369,6371,6482,6484,6617,7540,7542,7545,7549,7558,7560,7595,7599,7602,7605] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.400,0.278,0.702]
select surf_pocket8, protein and id [738,740,747,752,768,770,772,1026,1030,1111,1118,1127,1129,1131,1169,1172,1173,1175,1177,1178,1179,1181,1183,1502,1504,1555,1607,1610,1614,1618,1625,1637] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.565,0.361,0.902]
select surf_pocket9, protein and id [738,747,752,755,760,768,770,780,920,928,930,942,951,952,953,955,957,989,1024,1026,1030,1175,1183,1205,1247,1250,1252,1298,1303] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.478,0.278,0.702]
select surf_pocket10, protein and id [6553,6557,6636,6640,6764,6767,6770,6810,6881,6890,6968,6970,7023,7026,7034,7036,7096,7098,7704] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.671,0.361,0.902]
select surf_pocket11, protein and id [2316,2320,2324,2325,2330,2333,3352,3357,3362,3367,3369,7431,7446,7453,7499,7503,7504,7518,7554,7564,7566,7568,7569,7612,7626,7632,7636,7651,7671,7675] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.561,0.278,0.702]
select surf_pocket12, protein and id [4950,4959,4961,5011,5014,5056,5058,5062,5066,5068,5075,5077,5081,5667,5669,5671,5675,5677,5720,5727,5732,5733,5735,5741,5743,5785,5788,5790,5794,5799,5810] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.773,0.361,0.902]
select surf_pocket13, protein and id [6548,6553,6557,6562,7021,7023,7026,7027,7029,7031,7034,7036,7039,7073,7078,7098,7100,7155,7157,7748,7749] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.643,0.278,0.702]
select surf_pocket14, protein and id [1354,1360,1363,3469,3472,3484,3488,3491,3493,7198,7200,7205,7294,7340] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.878,0.361,0.902]
select surf_pocket15, protein and id [2193,2260,2297,2303,2304,2309,2312,2347,2986,3036,3039,3068,3075,3097,3112,3114,7509,7522,7523,7526,7532,7574,7577] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.675]
select surf_pocket16, protein and id [1087,1089,1090,1325,1330,1360,1363,3469,3472,3476,3484,3753,3754,3759,3761,3763,7294] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.816]
select surf_pocket17, protein and id [2568,2575,2579,2586,2594,2598,2620,2624,2627,2631,2652,2656,2696,2698,2707,2741,2753,2756,7308,7359,7361,7380,7381,7382] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.592]
select surf_pocket18, protein and id [2120,2424,2455,2458,2465,2467,2470,2497,2500,2501,2573,2579,2603,2614,2744,2748,2760,2764,2770,2775,2842,2846] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.710]
select surf_pocket19, protein and id [4117,4119,4180,4187,4348,4360,4392,4393,4394,4396,4400,4440,4456,5046,5091,5105,5111] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.510]
select surf_pocket20, protein and id [2211,2239,2241,2243,2251,2257,2295,2297,2299,5928,5930,5935,5980,5982,5989,6002,6042] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.604]
select surf_pocket21, protein and id [324,328,1885,1892,1915,1916,1917,1921,1923,1926,1931,1933,1938,1990,4140,4145,4147,4153,4154,4178,4216,4219] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.431]
select surf_pocket22, protein and id [4317,4333,4335,4338,4341,5026,5028,5030,5072,5077,5081,5085,5086,5087,5089,5094,5097,5123] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.502]
select surf_pocket23, protein and id [714,717,719,721,725,728,753,755,759,794,797,920,921,1467,1471] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.349]
select surf_pocket24, protein and id [714,717,744,747,752,753,755,760,780,797,920,921,928,930,942,1026] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.396]
select surf_pocket25, protein and id [2001,2004,2006,2053,2059,2062,2170,3188,3190,3194,3229,3239,3248] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.294,0.278]
select surf_pocket26, protein and id [2360,2366,2417,2420,2432,2436,2445,2450,2976,2990,7407,7409,7412,7415,7451,7457,7463] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.431,0.361]
select surf_pocket27, protein and id [3458,3459,3462,3476,3754,3759,3761,3763,3766,3767] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.376,0.278]
select surf_pocket28, protein and id [3362,3367,3369,3387,7173,7397,7399,7431,7434] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.533,0.361]
select surf_pocket29, protein and id [4771,4799,4802,4823,4825,4827,4829,4833,4849,4894,5534,5536] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.459,0.278]
select surf_pocket30, protein and id [6488,6496,6501,6506,6508,6538,6636,6701,6704,6764,6767,6770] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.639,0.361]
select surf_pocket31, protein and id [1036,1038,1043,1087,1090,1141,1146,1147,1148,1197,1306,1321,1325,1330] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.537,0.278]
select surf_pocket32, protein and id [328,333,380,1921,1923,1938,1944,4219] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.745,0.361]
select surf_pocket33, protein and id [6196,6258,6339,6482,6484,6486,7599,7602,7605,7646] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.620,0.278]
select surf_pocket34, protein and id [6553,6881,6886,6890,6950,7031,7034,7036] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.851,0.361]
select surf_pocket35, protein and id [1371,1373,3383,3386,3388,3492,3493,3494,3496,3509,7122,7196,7198] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.698,0.702,0.278]
select surf_pocket36, protein and id [775,777,1068,1131,1135,1428,1637] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.843,0.902,0.361]
select surf_pocket37, protein and id [2335,2336,2352,2374,3318] 
set surface_color,  pcol37, surf_pocket37 


deselect

orient
