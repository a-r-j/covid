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

load data/6m2n.pdb, protein
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

load data/6m2n.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [2353,2362,2365,2366,2367,2368,2369,2372,2375,2376,2377,2378,2379,2380,3347,3395,3397,3398,3399,3832,3834,3837,3838,3842,3843,3847,3907,4497,4503,4504,4505,4507,4510,4511,4512,4522,4523,4528,4534,4538,4539,4540,4541,4542,4547,4548,4549,4555,4556,4557,4558,4568,4569,7003,7012,7017,7018,7019,7022,7025,7026,7028,7029,7030,7988,8036,8038,8039,8040,8468,8471,8472,8476,8477,8480,8481,8482,8541,9112,9120,9122,9125,9126,9127,9136,9138,9143,9149,9154,9155,9156,9157,9162,9163,9164,9170,9171,9172,9173,9183] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [13,14,23,26,27,28,29,30,33,36,37,38,39,40,41,1003,1053,1054,1055,1483,1484,1486,1489,1490,1499,1500,2149,2155,2157,2159,2162,2163,2175,2180,2190,2191,2192,2193,2199,2200,2201,2207,2208,2209,2210,2219,2221,4701,4710,4715,4717,4720,4724,4725,4726,4728,5647,5678,5679,5680,5728,5730,5731,6166,6167,6168,6169,6170,6179,6808,6814,6816,6818,6821,6822,6823,6832,6834,6839,6845,6850,6851,6852,6853,6858,6859,6860,6866,6867,6868,6869,6878,6880] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [177,178,179,180,182,183,191,194,306,307,308,309,311,312,331,332,333,366,367,1069,1079,1080,1086,1091,1092,1093,1094,1097,1102,1108,1236,1241,1249,1252,1255,1256,1259,1260,1263,1415,1416,1423,1424,1436] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [2517,2518,2519,2522,2530,2533,2645,2646,2647,2648,2649,2650,2651,2670,2671,2672,2675,2676,2702,2704,2705,3413,3414,3423,3424,3429,3430,3435,3436,3437,3438,3446,3447,3451,3452,3581,3585,3593,3594,3596,3599,3600,3604,3607,3760,3776,3781,3782,3783,3784] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [7164,7166,7168,7169,7171,7172,7181,7183,7295,7296,7297,7298,7299,7300,7301,7303,7321,7322,7325,7326,7350,7351,8064,8065,8074,8075,8076,8077,8078,8087,8092,8093,8225,8229,8237,8240,8242,8244,8248,8251,8402,8403,8404,8409,8410,8411,8412,8414,8418] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [4866,4870,4878,4881,4993,4994,4995,4996,4997,4998,5018,5019,5020,5024,5048,5050,5051,5746,5757,5762,5763,5768,5769,5770,5771,5779,5784,5785,5917,5921,5929,5932,5934,5935,5936,5939,5940,5943,6094,6095,6096,6102,6103,6104,6112,6113,6116] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [5503,5504,5507,5511,5512,5516,5517,5518,5519,5524,5525,5527,5688,6187,6201,6209,6510,6511,6514,6518,6535,6536,6550,6553,6561,6562,6563,6585,6586,6894,6904,6905] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [826,827,828,833,834,835,839,840,842,847,1011,1507,1509,1516,1521,1522,1529,1842,1843,1845,1866,1881,1892,1893,1894,1914,1915,1916,1917,2226,2228,2233,2235,2236] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [6,7,8,9,11,13,14,1613,1614,1617,1629,2134,2136,2146,2147,2148,2149,2153,2154,2155,5725,5726,5728,5729,5730,5731,5732,5736,5963,5970,5976] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [7813,7814,7818,7819,7820,7823,7824,7825,7826,7827,7832,7835,7995,7996,8489,8491,8503,8511,8811,8812,8862,8863,8864,8885,8886,8887,9189,9190,9191,9198,9199,9203] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [3170,3171,3174,3178,3179,3180,3181,3184,3185,3186,3191,3193,3869,3877,4191,4193,4197,4214,4215,4229,4240,4241,4242,4263,4264,4575,4576,4583] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [2341,2344,2345,2346,2347,2350,2353,3961,3962,3963,3965,3977,4494,4495,4496,4497,4501,4502,4503,8033,8034,8035,8036,8037,8038,8044,8252,8271,8276,8277,8278,8279,8284] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [7786,7787,7805,7831,7832,7833,7834,7835,7836,7839,7841,8130,8131,8132,8133,8137,8146,8177,8178,9190,9191,9203,9204,9205,9206,9207,9208,9209,9216] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [63,65,800,802,820,846,847,850,851,854,856,1145,1146,1147,1148,1152,1161,1189,1190,2227,2240,2242,2244,2246,2253] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [3127,3128,3145,3146,3150,3164,3190,3191,3194,3195,3198,3200,3489,3490,3491,3492,3496,3505,3533,3534,4576,4588,4589,4590,4591,4592,4593,4594,4601] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [4752,5526,5822,5823,5824,5825,5829,5840,5841,6886,6899,6902,6912,6934,6935,6987] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [2583,2596,2597,2598,2615,2616,2977,2978,3016,3117,3118,3136,3138,3689] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [2340,2341,2344,2345,3953,3959,3961,3963,3964,4647,4648,4656,4671,4672,4673,4674,8054,8063,8069,8070,8075,8076,8077,8251,8252,8276] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [7230,7231,7232,7233,7248,7265,7266,7618,7656,7657,7752,7757,7758,7759,7770,7775,7777,7779] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [7091,7098,7099,7100,7110,7120,7214,7216,7517,7518,7519,7520,7521,7522,7539,7708,7716,7723,7725,7909] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [232,233,241,244,251,259,275,276,277,641,679,680,776,778,792,794] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [4931,4946,4963,4964,5310,5347,5348,5349,5450,5451,5469,5471] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [2265,2270,2271,2272,2292,2301,2302,5597,7467,7468,7470,7496,7544,7547,7548,7557,7558,7561,7564,7565] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [5478,5479,5497,5524,5525,5526,5822,5823,5825,5840,5841,5869,5870] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [1165,1166,7148,7150,7152,7311,7312,7313,7320,7412,7415,7448,7478,7479,7480] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [2157,2159,2162,2163,2164,2193,6816,6818,6821,6822,6823,6828,6833,6834,6851,6852] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [2441,2450,2460,2564,2566,2880,2881,2882,2883,2884,2898,3067,3082,3083,3084] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [4798,4808,4912,4914,5213,5214,5215,5216,5217,5417,5601] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [1498,1499,1500,1808,1809,1811,1833,1835,2072,2078,2173,2176,2177,2180,2181,2182,2183] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [300,387,403,406,644,646,647,649,656,1398,1410,1411,1419] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [6731,6733,6734,6765,6769,6802,6804,6820,6826,6829,6831,6835,6841,6842,6843] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [5527,6900,6901,6902,6903,6904,6905] 
set surface_color,  pcol32, surf_pocket32 


deselect

orient
