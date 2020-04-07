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
select surf_pocket1, protein and id [1083,1089,1096,1097,1099,1100,1101,1113,1115,1207,1208,1209,1210,1211,1212,1213,1214,1217,1230,1232,1233,1399,1400,1408,1409,1411,1414,1415,1416,1417,1437,1996,1999,2068,2088,2098,2099,2100,2124,2125,2133,2159,2160] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [3493,3495,3497,3499,3500,3508,3532,3533,3534,3535,3545,3546,3563,3578,3583,3585,3586,3589,3592,3593,3594,3595,3597,3618,3621,3623,3624,3625,3626,3653,3656,3657,3664,3835,3837,3838,3840,3841,3842,3844,3845,3866,3868,3869,3877,3879,3880] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [1414,1416,1417,1418,1419,1422,1432,1434,1438,1998,1999,2159,2327,2328,2329,2331,2332,2333,2334,2336,2338,2346,2408,2409,2506,2507,2529,2530,2532,2534,2535,2536,2544,2546,2547,2548,2558,2559] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [130,544,594,606,607,608,609,610,612,622,838,842,844,860,862,863,922,964,965,966,967,994,996,1003,1717,1729,1735,1736,1737,1738,1739,1740,1741,1758,1759,1819,1821,1826,1840,1933,1935,1936,1939] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [107,108,110,745,746,747,748,752,754,761,762,1248,1250,1258,1357,1359,1364,1371,1373,1378,1379,1382,1386,1681,1682,1685,1686,1687,1688,1703,1705,1765,1767,1768,1771,1772,1774,1780,1782,2020,2021,2022,2024,2025,2026] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [3738,3739,3748,3749,3750,3752,3753,3754,3755,3760,3761,3762,3946,3948,3950,3951,3952,3953,3955,3974,3980,4047,4049,4050,4051,4052,4054,4055,4058,4061,4064,4065,4116,4117,4118,4119,4122,4124,4128,4134,4135,4136] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [1053,1054,1055,1084,1085,1086,1087,1474,1477,1478,1480,1482,1855,1857,1864,1865,1867,1883,1900] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [934,935,938,939,941,967,971,1579,1581,1583,1584,1586,1587,1589,1591,1597,1598,1600,1603,1606,1610,1826,1828,1830,1842,1845,1849] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [3392,3393,3394,3395,3396,3399,3401,3402,3403,3406,3409,3410,3411,3413] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [4215,4216,4217,4248,4254,4255,4256,4257,4258,4278,4349,4366,4368,4483,4719,4836,4852,4853] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [17,26,28,30,31,32,35,97,105,106,110,112,113,114,123,135,139,141,145,146,149,151,155,415,425,426,1724] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [66,67,69,87,88,89,293,294,295,296,297,298,299,332,333,334,381,384,460,462] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [827,829,830,832,837,841,845,846,847,1012,1427,1428,1430,1435,1439,1443,1447,1950,1957,1959,1985,1987,1988,1989,1994] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [1038,1040,1046,1047,1053,1054,1055,1859,1860,1867,1868] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [87,158,159,168,192,193,217,323,325,345,346,368,370,371,373,374,379,381,385,387,389,390,391,392,396,397,402,439] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [87,89,376,378,379,380,381,384,385,390,432,439,440,460,462] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [3763,3768,3773,3775,3777,3778,3779,3783,3784,3785,3822,3858,3859,3860,3861,3883,3884,3892,3897,3899,3922] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [1968,1973,1976,1979,1981,1998,1999,2108,2128,2129,2130,2133,2134,2135,2139,2154,2156,2159,2161,2162,2166,2167,2168,2540,2542,2546,2547,2548] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [3406,3408,3409,3446,3939,3941,3943,3961,3966,3968,3969,3970,4065,4069,4070,4071,4072,4075,4076,4081,4082] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [3645,3648,3672,3673,3674,3675,3677,3681,3702,3703,3704,3705,3707,3711,3712,3795,3808,3809,3810,3816,3823,3826,3828,3853] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [670,719,721,725,729,732,733,734,739,743,750,792,2028,2030,2034,2038,2039,2041,2047,2051,2053,2055,2057] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [2180,2182,2183,2184,2567,2568,2581,2582,2613,2616,2617,2618,2623,2630,2631,2635] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [69,78,265,267,268,269,271,272,298,498,502,506,510,514,535] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [1243,1244,1245,1260,1262,1263,1270,1271,1272,1490,1494,1495,1497,1499,1512,1514,1659,1668] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [3785,3858,3859,3860,3861,3862,3884,3892,3897,3899,3900] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [3689,3691,3695,3697,3706,3708,3710,3717,3720,3721,3722,3770,3771,3889] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [815,832,1962,1966,1968,1972,1973,1976,1977,1981,1982,1989] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [830,832,1976,1977,1978,1982,1987,1988,1989,2529] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [3633,3634,3635,3636,3637,3639,3640,3671] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [3997,4011,4013,4109,4125,4167,4193,4376] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [4043,4123,4130,4137,4140,4142,4547,4555,4560,4562,4563,4564,4897] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [108,110,111,128,601,767,1705,1759,1768,1771,1803] 
set surface_color,  pcol32, surf_pocket32 


deselect

orient
