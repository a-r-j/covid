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
select surf_pocket1, protein and id [17,20,21,23,25,28,30,33,47,52,58,61,63,92,99,268,285,313,357,362,366,371,385,405,424,427,429,434,776,808,815,816,830,832,861,863,1915,2227,2232,2240,2241,2242,2259,2263,2269,2357,2359,2361,2680,2683,2686,2689,3582,3606,3609,3613,3621,3622,3623,3625,3630,3634,3640,3648,3649,3650,3652,3654,3719,3722,3727,3730,3732,3766,3770,3789,3803,3805] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.412,0.702]
select surf_pocket2, protein and id [130,1467,1469,1471,1475,1494,1509,1516,1521,1524,2150,2167,2170,2172,2175,2197,2425,2439,2442,2448,2452,2456,2735,2739,2740,2741,2743,2745,2747,2753,2762,3839,3865,3869,3872,3922,4626,4627,4632,4637,4640,4642,4645,4649,4653,4663,4670,4674,4676,4678] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.478,0.902]
select surf_pocket3, protein and id [1542,1547,1552,1557,1561,3865,3878,3880,3883,3885,3900,3903,3904,3905,4436,4513,4655,4657,4696,4698,4700,4714,5437,5447,5450,5452,5484,5485,5486,5488,5490,5495,5526,7418,7420,7423,7430,7437,7444,7449] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.333,0.702]
select surf_pocket4, protein and id [40,700,705,731,878,879,880,1354,1356,1364,1368,1376,1378,1380,1383,1384,1386,1388,1392,1393,1396,1397,1419,1422,1432,1440,2320,2323,2325,2328,2330,2342,2348,2349,2350,2351,2352,2366,2369,2371,2386,2388,2390,2396,2564,2568,2570,2572,2576,2584,2587] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.380,0.902]
select surf_pocket5, protein and id [6011,6020,6025,6051,6062,6063,6064,6066,6071,6117,6120,6123,6171,6196,6199,6751,6786,6809,6854,6859,6868,6925,6930,6934,7870,7904,7909,7913,7918,7956,7959,7962,7995,8057,8060] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.302,0.278,0.702]
select surf_pocket6, protein and id [144,148,168,179,180,182,188,224,235,273,276,278,281,286,287,289,291,293,345,350,366,405,411,416,999,1001,1079,1081,1086,1136,1639,1641,1653,1665,1684,1692,3766,3789] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.435,0.361,0.902]
select surf_pocket7, protein and id [433,434,435,437,441,816,1849,1851,1854,1855,1856,1860,1870,1883,1887,1913,1915,2991,3004,3043,3046,3075,3079,3081,3083,3114,3645,3657,3662,3676,3679,3694,3698,3701,3727,3730,3732] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.376,0.278,0.702]
select surf_pocket8, protein and id [89,117,125,926,928,930,1440,1444,1458,1461,1463,1467,2175,2394,2414,2418,2423,2425,2427] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.533,0.361,0.902]
select surf_pocket9, protein and id [3952,3954,3958,3986,4002,4004,4007,4008,4009,4013,4055,4556,4593,4597,4599,4605,4607,4939,4943,4991,4994,4997,5005] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.451,0.278,0.702]
select surf_pocket10, protein and id [8909,8917,8929,8935,8943,8956,8957,8972,8979,8983,9198,9200,9202,9238,9402,9409,9419,9424,9445,9449,9665,9689,9713,9718,9723,9727,9738] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.631,0.361,0.902]
select surf_pocket11, protein and id [4326,4354,4356,4360,4415,4421,5205,5206,5209,5214,5218,5385,5403,5406,5408,5460,5519,5572,5576] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.529,0.278,0.702]
select surf_pocket12, protein and id [1556,1557,1586,1624,1627,2093,2108,2783,2785,3853,3854,3876,3878,3880,3885,3889,3892,3903,3904,3905,4222,4225,7415,7418,7423,7430] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.725,0.361,0.902]
select surf_pocket13, protein and id [3880,3885,3895,3903,3904,3905,4225,4233,4242,4243,4246,4250,4253,4256,4259,4262,4471,4472,5398,5429,5447,7328,7330,7332,7378,7418,7420,7423,7427,7428,7430] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.604,0.278,0.702]
select surf_pocket14, protein and id [2004,2006,2009,2011,2014,2019,2054,2057,2062,2066,2067,2072,2075,2088,2838,3217,3258,3260,3263,3266,3283] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.824,0.361,0.902]
select surf_pocket15, protein and id [5390,5398,5403,5411,5420,5425,5592,5637,5639,5643,5646,7334,7336,7353,7391] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.678,0.278,0.702]
select surf_pocket16, protein and id [4133,4186,4199,4202,4203,4487,5020,5029,5032,5044,5046,5280,5283,5288,5302,5333,5336] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.878]
select surf_pocket17, protein and id [5720,5759,5761,5763,5768,5769,5771,5773,5800,5808,5810,5814,5817,7161,7217,7219,7223,7267,7269,7276,7292] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.647]
select surf_pocket18, protein and id [7319,7363,7372,7376,7378,7409,7412,7522,7569,7574,7580,7633,7636,7639] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.780]
select surf_pocket19, protein and id [6704,6710,6757,6760,6762,6768,6820,6823,6824,6825,8025,8026,8722,8725,8729,8733,8742,8761,8788,8791,8792,8793] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.569]
select surf_pocket20, protein and id [2677,2683,2694,2953,2977,2979,3034,3434,3440,3442,3603,3630,3634,3637,3640,3671] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.682]
select surf_pocket21, protein and id [1149,1173,1176,1177,1179,1181,1183,1536,1538,1542,1552,1555,1556,1557,7415,7449,7465,7468,7473,7475] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.494]
select surf_pocket22, protein and id [6331,6379,6382,6384,6588,6602,6603,6611,6649,6652,6653,6655,6657,6658,6659,6661,6663] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.588]
select surf_pocket23, protein and id [8392,8565,9538,9570,9573,9575,9584,9591,9611,9628,9805,9808,9810,9814,9820,9826,9834] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.420]
select surf_pocket24, protein and id [7005,7006,7007,7080,7880,7934,7973,7976,8121,8126,8149,8168,8191,8193,8219] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.490]
select surf_pocket25, protein and id [1542,5495,5526,5536,7437,7449,7456,7465] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.341]
select surf_pocket26, protein and id [2953,2977,2979,2986,3019,3032,3033,3034,3442,3637,3671] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.361,0.392]
select surf_pocket27, protein and id [219,250,629,636,716,719,720,887,1325,1328,1330,1332,1334] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.294,0.278]
select surf_pocket28, protein and id [1741,1747,1748,1749,2006,2009,2011,2021,3199,3201,3209,3252] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.424,0.361]
select surf_pocket29, protein and id [1747,1748,1749,1784,1787,1790,1795,1800,1806,1812,1953,1956,1958,3113,3124,3126,3128,3197,3199,3253] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.369,0.278]
select surf_pocket30, protein and id [1886,1892,1930,1950,1956,1958,3121,3124,3125,3126,3144,3196,3197] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.522,0.361]
select surf_pocket31, protein and id [1615,1621,1646,1649,1657,1660,1666,1673,1678,2055,2059,2098,2104,2105,2108,2119,3831] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.443,0.278]
select surf_pocket32, protein and id [224,227,228,230,232,235,237,291,300,306,517,519,523,581,749] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.620,0.361]
select surf_pocket33, protein and id [7117,7191,7750,7754,7822,7823,7824,7884,8154,8159] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.518,0.278]
select surf_pocket34, protein and id [6694,6696,6701,8029,8033,8038,8796,8798,8801,8802,8803,8805,8807] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.718,0.361]
select surf_pocket35, protein and id [2208,2211,2213,2217,2223,2241,2665,2673,2680,2710,2712,2717,2726,3577,3579,3582,3586,3606] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.596,0.278]
select surf_pocket36, protein and id [7183,7188,7204,7228,7231,7232,7237,7238,7240,7698,7699,7745,7748,7750,7754] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.902,0.812,0.361]
select surf_pocket37, protein and id [1,5,7,700,703,705,846,847,848,1374,1376,1380,2337,2345,2350] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.671,0.278]
select surf_pocket38, protein and id [4377,4380,4381,4382,4385,4389,4837,4840,4842,5106,5109,5232,5234] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.890,0.902,0.361]
select surf_pocket39, protein and id [8007,8303,8304,8305,8307,8310,8312,8319,8325,8756,8766,8775,8822,8826,8831] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.655,0.702,0.278]
select surf_pocket40, protein and id [7894,7947,7948,7949,8107,8109,8111,8135,8144,8157,8163] 
set surface_color,  pcol40, surf_pocket40 


deselect

orient
