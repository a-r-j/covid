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

load data/6wji.pdb, protein
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

load data/6wji.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [945,946,947,949,950,951,952,953,956,975,976,988,990,996,998,1160,1161,1192,1193,1194,1774,1775,1776,1777,1778,1779,1796,1797,2051,2052,2053,2099,2101,2134,2135,2159,2163,2164,2168,2169,2172,2173,2174,2178,2179,2183,2644,2646,2662,2663,2664,2676,2918,2919,2920,2927,2968,2975,2977,2978,3002,3003,3031,3035,3036,3037,3039,3041,3045] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [1822,1823,3513,3530,3531,3785,3786,3787,3833,3835,3842,3867,3868,3869,3893,3897,3898,3902,3903,3904,3906,3908,3912,3913,4384,4387,4389,4406,4407,4661,4663,4718,4720,4752,4753,4754,4778,4779,4783,4788,4791,4793,4794,4797] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.447,0.902]
select surf_pocket3, protein and id [45,62,63,317,318,319,365,367,401,425,429,430,434,435,436,438,440,444,445,912,929,930,1184,1186,1232,1234,1268,1297,1301,1302,1305,1307,1311] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.298,0.702]
select surf_pocket4, protein and id [3489,3490,3491,3492,3493,3609,3618,3666,3667,3670,3673,3674,3675,3676,3677,3678,3680,3684,4002,4017,4030,4049,4050,4051,4053,4054,4836,4838,4841,4970,4973,4975,4976,4977,4978,4979,4982,4983,4985,4992,4995,4996,4998] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.404,0.361,0.902]
select surf_pocket5, protein and id [14,15,16,35,36,42,1272,1273,1276,1286,1509,1516,1523,1527,1530,1553,1555,3556,3577,3597,3598,3599,3600] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.365,0.278,0.702]
select surf_pocket6, protein and id [1138,1214,1215,1224,1225,1255,1592,1593,1594,1595,1596,1597,1598,1621,1623,1624,1627,1629,1653,1655,3552,3791] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.533,0.361,0.902]
select surf_pocket7, protein and id [3916,3918,3938,4412,4458,4459,4460,4491,4579,4622,4623,4624,4654,4655,4657,4724] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.467,0.278,0.702]
select surf_pocket8, protein and id [1560,1561,1562,3576,3577,3589,3590,3591,3600,3626,3627,3628,3632,3635,3636,3724,3726,3727,3728,3729,3731,3753,3755,3756,4292,4332,4334] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.663,0.361,0.902]
select surf_pocket9, protein and id [2232,2233,2234,2237,2238,2243,2244,2249,2250,2251,2253,2256,2335,2832,3406,3414,3415] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.565,0.278,0.702]
select surf_pocket10, protein and id [499,500,503,504,509,510,515,516,517,519,522,532,534,601,1070,1098,1672,1680,1681] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.792,0.361,0.902]
select surf_pocket11, protein and id [1943,1944,2267,2268,2269,2281,2282,2283,2295,2296,2312,2313,2314,2315,2316,2317,2318,2319,2320,2336,3231] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.667,0.278,0.702]
select surf_pocket12, protein and id [3967,3971,3972,3977,3978,3983,3984,3985,3987,3988,3989,3990,3991,4069,4088,4089,4524,4526,4527,4546,4547,4575,5158,5166,5167,5192,5193] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.878]
select surf_pocket13, protein and id [713,714,746,747,778,779,1391,1408,1409,1439] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.631]
select surf_pocket14, protein and id [209,210,535,547,548,549,562,578,579,580,581,582,583,584,585,586,602,1497] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.749]
select surf_pocket15, protein and id [1813,1814,1816,3873,3874,3876,3877,3878,3887,4128,4131,4154,4156,4171,4207,4208,4359,4360,4380] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.533]
select surf_pocket16, protein and id [624,625,630,1064,1065,1066,1072,1077,1401,1402,1416,1428,1429,1446,1447,1448,1449,1450,1451,1452,1453,1469] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.620]
select surf_pocket17, protein and id [1965,2547,2548,3100,3101,3103,3104,3105,3110,3111,3116,3117,3120,3202] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.431]
select surf_pocket18, protein and id [2353,2355,2356,2357,2358,2359,2364,2799,2801,2804,2806,2809,2811,3135,3136,3201,3202,3203,3207,3220] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.490]
select surf_pocket19, protein and id [3722,3739,3806,3815,3816,3823,3824,3825,3826,4195,4220,4222,4224,4225,4230,4254,4255,4256] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.329]
select surf_pocket20, protein and id [115,116,238,280,371,1315,1336,1337,1338,1345,1346] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.361]
select surf_pocket21, protein and id [1849,1850,1973,2014,2105,3049,3070,3071,3072,3079,3080] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.329,0.278]
select surf_pocket22, protein and id [2445,2447,2448,2480,2481,2513,3126,3142,3143,3173] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.490,0.361]
select surf_pocket23, protein and id [202,231,813,814,1366,1367,1369,1370,1371,1376,1377,1382,1383,1386,1389,1468,1487] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.431,0.278]
select surf_pocket24, protein and id [2956,2957,2958,2959,2986,3328,3329,3330,3331,3355,3357,3358,3361,3363,3364,3389] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.620,0.361]
select surf_pocket25, protein and id [526,541,542,572,1580,1581,1613,1614] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.533,0.278]
select surf_pocket26, protein and id [4181,4182,4188,4214,4215,4879,4894,4895,4925] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.749,0.361]
select surf_pocket27, protein and id [4551,4552,4553,4554,4900,4901,4902,4915,4935,4936,4938,4939] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.631,0.278]
select surf_pocket28, protein and id [3583,3584,3748,3839,4801,4823] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.878,0.361]
select surf_pocket29, protein and id [448,983,1102,1146,1147,1238] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.667,0.702,0.278]
select surf_pocket30, protein and id [2182,2205,2717,2836,2881,2972] 
set surface_color,  pcol30, surf_pocket30 


deselect

orient
