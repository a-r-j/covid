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
select surf_pocket1, protein and id [1551,1599,1601,1604,1610,1614,1615,1616,1618,1653,1655,1657,1663,1665,1667,1669,1690,1879,1917,1923,1925,1927,1930,1933,1944,1977,1979,1983,2572,2613,2614,2615,2617,2619,2622,2651,2658,2663,2664,2666,2668,2671,2672,2674,2676,2679,2681,2687,2689,2704,2724,2743,3944,3947,3948,3950,3952,3955,3957,3960,3963,3967,3971,4007,4009,4023,4025,4027,4032,4035,4040,4046,4101,4104,4105,4107,4109,4112,4114,4752,4755,4758,4790,4792,4800,4802,4809,4812,4817,4870,4877,4885,4897,4899,4935,4937,4940,4943,4944,4952,5000,5002,5016] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [4228,4229,4287,4913,4915,4952,4954,4956,4960,4972,5012,5024,5026,5029,5030,5032,5034,5035,5036,5038,5040,5045,5083,5087,5089,5091,5159,5440,5445,5481,5648,5651,5654,5657,5659,5667,5669,5671,5675,5679,5683,5685,5687,5695,5706,6109,6129,6131,6133,6136,6156,6159] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [9185,9203,9206,9212,9216,9217,9218,9224,9241,9244,9255,9318,9319,9350,9352,9375,9771,9776,9826,9839,9840,9841,9843,9851,9854,9860,9864,9869,9899,10546,10549,10562,10583,10587] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.322,0.702]
select surf_pocket4, protein and id [2793,2806,2807,2818,2880,2882,2889,2892,2894,2897,2926,2929,2936,2938,2940,2989,3381,3603,3610,3612,3628,3631,3639,3652,3655,3792,3796] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.361,0.902]
select surf_pocket5, protein and id [1651,1653,1712,1714,1718,1722,1723,1742,1745,2739,2743,3045,3054,3059,3409,3412,3414,3419,3423,3427,3428,3457,3459,3470,3500,3503,3505,3518,3519,3539,3541,3555] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.322,0.278,0.702]
select surf_pocket6, protein and id [1499,1501,1555,1563,1565,1568,1570,1623,1685,1688,1690,2526,4993,4995,4997,5038,5053,5056,5059,5062,5070,5072,5078,5106,5123,5126,5128,5129,5143,5202,5204,5267] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.467,0.361,0.902]
select surf_pocket7, protein and id [2111,2116,2146,2149,2153,2155,2157,2160,2161,2167,2212,2215,2221,2425,2488,2490,2507,4212,4265,4332,4334,4590,4605,4613,4659,4661,4665,4683,4850,4851,4853,4855,4860] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.408,0.278,0.702]
select surf_pocket8, protein and id [1688,5072,5077,5078,5081,5094,5099,5137,5139,5143,5191,5875,5883,5884,6102,6106,6128,6131,6147,6148,6149,6396,6398,6409,6414,6417,6428] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.576,0.361,0.902]
select surf_pocket9, protein and id [1243,1286,1288,1291,1293,1297,1311,1347,1361,1364,1367,1376,1428,2085,2086,2094,2399,2406,2411,2454,2458,2460,2468,2541] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.490,0.278,0.702]
select surf_pocket10, protein and id [5458,5460,5464,5489,5492,5495,5509,5516,5518,5659,5663,5674,5695,5700,5702,5706,6080,6084,6116,6120,6123,6129,6133,6171,6173,6238,6242,6305,6307,6459] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.682,0.361,0.902]
select surf_pocket11, protein and id [5038,5040,5106,5123,5126,5174,5202,5204,5260,5263,5266,5267,5272,5313,5316,5318,5335,5415,5437,5440,5443,5445,5729] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.573,0.278,0.702]
select surf_pocket12, protein and id [7921,7924,7928,7939,7941,7950,7951,7952,7997,8521,8562,8563,8567,8583,8584,8586,8588,8591,8595,9156,9160,9173] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.792,0.361,0.902]
select surf_pocket13, protein and id [3149,3164,3166,3171,3211,3214,3232,3234,3296,3298,3301,3304,3335,3348,3349,3352,3354,3357,3398,3438] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.659,0.278,0.702]
select surf_pocket14, protein and id [7531,7969,7976,8009,8026,8032,8085,8086,8087,8089,8127,8137,8292,8295,8296,8365,8419,8474,8475] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.902]
select surf_pocket15, protein and id [1143,1176,1178,1180,1184,1185,1186,1241,1243,2180,2181,2182,2186,2199,2204,2253,2256,2282,2335] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.659]
select surf_pocket16, protein and id [1386,1394,1395,1398,1403,1408,1411,1413,1452,1455,1456,1458,1460,1463,1465,1479,1845,1846,1900,1965] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.792]
select surf_pocket17, protein and id [7470,7472,7475,7478,7480,7481,7482,7509,7517,7519,7522,7525,7531,7565,7789,7809,7857,8026,8029,8040,8082,8092,8094,8146] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.573]
select surf_pocket18, protein and id [6993,6995,6997,7000,7036,7055,7064,7504,7541,7544,7547,7548,7550,7552,7589,7592,7593,7595,7597,7600,7602,7616,7618] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.682]
select surf_pocket19, protein and id [2900,2909,2911,2913,2946,2948,2951,2952,2963,2965,2970,3206,3222,3224,3243,3246,3290] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.490]
select surf_pocket20, protein and id [9229,9234,9258,9261,9273,9287,9289,9297,9299,9302,9304,9308,9312,9324,9362,9365,9366,9368,9383,9388,9467,9471,9537,9538] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.576]
select surf_pocket21, protein and id [240,254,255,567,570,572,575,578,583,590,591,874,876,922,935,937,984,989,1040,1042,1050,1053,1055,1059] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.408]
select surf_pocket22, protein and id [9273,9275,9281,9285,9287,9297,9299,9569,9571,9576,9611,9626,10449,10466,10468,10470,10482] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.467]
select surf_pocket23, protein and id [7167,7175,7176,7190,7215,7227,7673,7684,7695,7698] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.322]
select surf_pocket24, protein and id [7262,7263,7268,7277,7701,7712,7713,7714,7720,7728,8215,8220,8235,8237,8888,8916,8947,8950,8960,8963,8964,8965,9007] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.361]
select surf_pocket25, protein and id [58,101,142,455,461,464,467,712,717,741,743] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.322,0.278]
select surf_pocket26, protein and id [1858,1866,1868,1870,1872,1880,1884,1886,3635,3636,3641,3644,3883] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.467,0.361]
select surf_pocket27, protein and id [7277,7725,7756,7765,8157,9022,9080] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.408,0.278]
select surf_pocket28, protein and id [1321,1327,1340,1386,1389,1391,1406,1408,1413,1900,1965,2015,2018,2077,2079] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.576,0.361]
select surf_pocket29, protein and id [208,210,224,226,228,1036,1092,1095,1111] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.490,0.278]
select surf_pocket30, protein and id [8618,8623,8624,8625,8679,8682,8990,8994,9035,9039,9104,9106,9108,9192,9194,9217] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.682,0.361]
select surf_pocket31, protein and id [6647,6654,6943,6947,6950,7377,7391,7394,7463,7464,7465] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.573,0.278]
select surf_pocket32, protein and id [7386,7389,7397,7478,7479,7480,7818,7842,7861,7903,7987,8029,8032,8035] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.792,0.361]
select surf_pocket33, protein and id [607,610,612,615,617,621,627,629,641,643,647,832,856,858,861,866,870,873,874] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.659,0.278]
select surf_pocket34, protein and id [2948,2951,2952,2965,2968,2970,3015,3194,3196,3198] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.902,0.361]
select surf_pocket35, protein and id [6972,6975,6983,7027,7312,7315,7319,7326,7332,7336,7342,7347] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.659,0.702,0.278]
select surf_pocket36, protein and id [1851,1872,2704,3591,3617,3620,3624] 
set surface_color,  pcol36, surf_pocket36 


deselect

orient
