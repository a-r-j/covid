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
select surf_pocket1, protein and id [1084,1086,1091,1097,1099,1100,1101,1114,1115,1129,1130,1208,1209,1210,1211,1212,1214,1215,1229,1230,1231,1232,1233,1234,1235,1236,1237,1244,1267,1268,1274,1284,1298,1299,1335,1404,1406,1409,1411,1415,1416,1417,1418,1419,1420,1421,1435,1436,1477,1977,1979,1980,1981,1994,1996,1999,2017,2064,2065,2067,2068,2089,2093,2094,2099,2124,2125,2133,2146,2155,2170,2175,2176,2274,2277,2278,2280,2301,2308,2309,2328,2329,2339,2340,2544,2545,2546,2547,2557,2558,2559,2635,2642,2643,2644,2645,2646,2647,2648,2649,2651,2654,2698,2699,2701,2702,2703,2705,2711] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.392,0.702]
select surf_pocket2, protein and id [4009,4012,4015,4016,4017,4042,4043,4126,4130,4138,4141,4142,4180,4182,4375,4376,4530,4531,4533,4548,4549,4550,4554,4712,4886,4889,4890,4891,4892,4896,4909,4910] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.431,0.902]
select surf_pocket3, protein and id [542,544,575,594,595,607,608,609,610,611,612,613,621,622,837,843,854,855,856,861,862,863,867,962,964,965,966,967,995,996,1003,1728,1729,1735,1736,1737,1739,1820,1821,1825,1835,1840,1932,1935,1937] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.278,0.702]
select surf_pocket4, protein and id [102,103,104,105,107,108,110,111,127,129,745,746,747,748,749,752,753,761,762,764,765,1249,1358,1363,1369,1370,1373,1374,1376,1378,1379,1382,1385,1399,1400,1685,1703,1705,1759,1760,1761,1762,1765,1767,1768,1770,1771,1772,1773,1774,1775,1779,1781,1803,2022,2024] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.431,0.361,0.902]
select surf_pocket5, protein and id [935,938,942,945,967,968,969,1525,1526,1572,1574,1575,1579,1580,1587,1590,1593,1595,1596,1598,1603,1604,1607,1829,1831,1832,1837,1842,1845,1848,1849,1852,1858,1859,1861,1862,1868,1869] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.392,0.278,0.702]
select surf_pocket6, protein and id [88,356,357,358,362,363,364,365,368,369,373,385,389,390,391,394,420,428,431,432,433,434,436,439,440,443,462] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.576,0.361,0.902]
select surf_pocket7, protein and id [1129,1189,1194,1199,1202,1204,1208,1210,1214,1297,1298,1299,1308,1309,1310,2268,2269,2270,2271,2272,2277,2278,2280,2302,2647,2648,2674,2693,2698,2699,2702] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.506,0.278,0.702]
select surf_pocket8, protein and id [828,830,832,845,847,872,1000,1011,1013,1014,1021,1022,1426,1427,1429,1430,1433,1434,1438,1439,1442,1443,1444,1445,1447,1454,1455,1925,1950,1954,1962,1989] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.722,0.361,0.902]
select surf_pocket9, protein and id [3738,3739,3748,3749,3750,3751,3752,3754,3946,3947,3950,3951,3975,4046,4047,4048,4050,4063,4064,4065,4131,4132,4133,4134,4135,4172,4173,4174] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.616,0.278,0.702]
select surf_pocket10, protein and id [3498,3508,3529,3530,3531,3532,3533,3534,3535,3543,3544,3545,3546,3564,3584,3591,3593,3595,3619,3621,3622,3623,3624,3657,3834,3835,3836,3840,3841,3842,3844,3845,3867,3868,3869] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.863,0.361,0.902]
select surf_pocket11, protein and id [2881,2883,2889,2890,2900,3159,3160,3162,3184,3189,3248,3251,3252,3255,3276,3278,3282,3316,3317,3318,3319,3320,3321,3322,3325,3326,3354,3355,3356,3357] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.671]
select surf_pocket12, protein and id [2149,2150,2151,2164,2181,2182,2183,2184,2566,2567,2568,2581,2614,2616,2617,2618,2622,2630,2631,2636] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.792]
select surf_pocket13, protein and id [4140,4141,4142,4147,4148,4149,4150,4151,4160,4162,4183,4184,4398,4548,4554,4562,4570,4571,4577,4578,4581,4880,4881,4883,4886,4889,4890,4892,4893,4896] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.561]
select surf_pocket14, protein and id [1044,1045,1055,1087,1478,1480,1481,1482,1854,1857,1865,1867,1883,1899] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.647]
select surf_pocket15, protein and id [3767,3777,3778,3779,3782,3785,3857,3859,3860,3861,3862,3885,3897,3899,3900] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.447]
select surf_pocket16, protein and id [66,69,78,265,267,268,272,273,298,490,492,497,502,506,510,513,514,534] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.506]
select surf_pocket17, protein and id [2926,2933,2965,2966,2967,2968,3046,3049,3052,3079,3080,3384,3402,3407,3408,3409,3437,3439,3446] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.337]
select surf_pocket18, protein and id [3996,3997,4001,4011,4106,4107,4108,4110,4111,4112,4200,4214,4215,4216,4217,4357] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.361]
select surf_pocket19, protein and id [3688,3689,3690,3691,3692,3707,3709,3710,3711,3720,3722,3737,3739,3769,3770,3771,3890] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.337,0.278]
select surf_pocket20, protein and id [1485,1491,1492,1495,1496,1497,1499,1535,1536,1864,1872,1875,1883] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.506,0.361]
select surf_pocket21, protein and id [2327,2337,2339,2532,2534,2535,2536,2545,2547,2557,2559] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.447,0.278]
select surf_pocket22, protein and id [832,1959,1962,1963,1972,1973,1976,1977,1981,1982,1989] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.647,0.361]
select surf_pocket23, protein and id [3649,3678,3680,3682,3703,3704,3705,3716,3789,3793,3796,3797,3809,3816,3823] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.561,0.278]
select surf_pocket24, protein and id [2041,2052,2057,2058,2059,2060,2061,2066,2068,2091,2710,2715,2725,2732,2739] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.792,0.361]
select surf_pocket25, protein and id [729,732,733,738,750,771,780,792,2028,2042,2047,2048,2052] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.671,0.278]
select surf_pocket26, protein and id [153,177,566,568,570,573,579,594,1720,1722,1725] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.863,0.902,0.361]
select surf_pocket27, protein and id [371,372,381,383] 
set surface_color,  pcol27, surf_pocket27 


deselect

orient
