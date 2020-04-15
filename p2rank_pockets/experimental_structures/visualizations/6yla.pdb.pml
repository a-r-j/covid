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

load data/6yla.pdb, protein
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

load data/6yla.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [8,9,26,27,297,299,316,317,343,351,352,459,484,485,486,487,1584,1585,1594,1595,1617,1621,5375,5378,5386,6477,6479,6480,8583,8587,8588,8591,8597,8598,8604,8605,8608,8609,8610,8611,8612,8614,8617,8634,8635] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [3684,3688,3689,3694,3695,3701,3702,3703,3705,3707,3714,3731,3732,5183,5200,5201,5236,5343,5368,5369,5370,5371,5379,6461,6469,6470,6471,6514,6517] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.463,0.902]
select surf_pocket3, protein and id [437,442,443,446,447,465,466,467,469,476,501,502,503,507,519,520,1519,2407,2415,3482,3644,3646,3647,3658,3660,3661] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.314,0.702]
select surf_pocket4, protein and id [2740,2741,2742,2746,2751,2754,2755,2756,2785,2787,2796,2802,2807,2823,2824,6648,6652,6653,6666,6667,7063,7064,7068,7077,7100,7128,7129,7130,7131] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.373,0.361,0.902]
select surf_pocket5, protein and id [2804,2809,2814,2815,2818,2821,2826,2831,2832,2833,2834,2835,2970,4324,4325,4326,4534,4540,4556,4560,4561,4562,4567,4569,4574,4575,4576,4585,7091,7092] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.333,0.278,0.702]
select surf_pocket6, protein and id [9,5321,5326,5327,5330,5332,5349,5350,5351,5353,5360,5378,5379,5386,5387,7305,7312,8547,8549,8550,8560,8561,8563,8583] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.486,0.361,0.902]
select surf_pocket7, protein and id [229,550,552,787,811,1095,1096,1098,1100,1101,1491,1492,1496,1508,1511,3457] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.424,0.278,0.702]
select surf_pocket8, protein and id [459,461,468,471,1606,1607,1610,1611,1613,1617,1618,1625,2427,2430,3699,3700,3705,3706,6471,6503,6504,6507,6508] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.600,0.361,0.902]
select surf_pocket9, protein and id [1673,1676,1677,1678,1679,1695,2460,2465,2469,2477,2482,2483,2716,2727,2728,3102,3104,3105,3106,3107,3108,3112,3113,6554,6561,6562,6564,6566,6567,6570,6573,6574,6575,6667] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.514,0.278,0.702]
select surf_pocket10, protein and id [84,91,92,114,115,116,127,128,129,321,323,331,357,358,367,368,369,378,380,859,861,862,903] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.718,0.361,0.902]
select surf_pocket11, protein and id [1606,1607,1610,5343,5345,5352,5355,6508,6510,6514,6519,6522,6749,7324,7327,7335,8602,8603,8608,8609] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.600,0.278,0.702]
select surf_pocket12, protein and id [5418,5434,5436,5670,5671,5687,5688,5700,5705,5971,5972,5974,5976,6368,6372,6384,6386,6388,8357,8360] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.831,0.361,0.902]
select surf_pocket13, protein and id [3569,3879,3881,3882,3883,5240,5244,5246,5247,5257,6713,6717,6720,6724,6725,6728,6729,6730,6731,7081,7082,7083,7084,7090,7106,7107,7108] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.690,0.278,0.702]
select surf_pocket14, protein and id [5268,5269,5275,5276,5496,5497,5498,5520,5521,5522,5523,5527,6278,6280,6318,6320,6321,6931,6936] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.855]
select surf_pocket15, protein and id [1657,1665,1666,1669,1670,1671,1673,1678,2465,2469,2477,2482,6554,6562,6566,6567,6570,6575,7362,7366,7374,7379] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.620]
select surf_pocket16, protein and id [424,427,429,432,674,675,676,677,792,808,2056,2073,2400,2401,3445,3974,3984,3987,3989,3994,3995] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.741]
select surf_pocket17, protein and id [4966,4967,4968,4975,4976,4999,5000,5001,5012,5013,5205,5207,5215,5241,5242,5251,5253,5264] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.533]
select surf_pocket18, protein and id [1919,2331,2333,2334,2357,2460,2483,2727,3577,3578,3579,3580,3581,3584,6550] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.627]
select surf_pocket19, protein and id [5308,5311,5313,5555,5559,5560,5561,5676,5692,6952,6953,6954,6970,7291,7297,7298,8348,8877,8890,8892,8897,8898] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.443]
select surf_pocket20, protein and id [384,385,386,391,392,612,613,614,636,637,638,639,1397,1398,1400,1401,1402,1403,1404,1442,1443,1444,1445,2034,2039,2042,2189] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.514]
select surf_pocket21, protein and id [5490,5491,5492,5515,5592,5875,5876,5877,6207,6211,6216,6218,6222,6223,6225,6232,6234,6267,6286,6287,6290,6292] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.353]
select surf_pocket22, protein and id [3550,3567,3568,3569,3576,3588,3589,3876,3878,3879,3895,4568,6681,6682,6686,6692,6693,6696,7090,7094,7095,7096,7105,7106,7107,7108] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.400]
select surf_pocket23, protein and id [7711,7712,7715,7730,7731,7867,9227,9228,9229,9463,9464,9465,9478,9486,9488] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.294,0.278]
select surf_pocket24, protein and id [6829,6830,6831,6832,7196,7197,7215,7216,7217,7218,7398,7406,7601,7602,7607,7610,7614,7615,7776,7818,7819,7820] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.435,0.361]
select surf_pocket25, protein and id [6806,7001,7011,7013,7014,7032,7033,7035,7158,7190,7192,7203,7210,7211] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.384,0.278]
select surf_pocket26, protein and id [1933,1934,1935,2299,2319,2321,2704,2705,2710,2717,2879,2922,2923] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.549,0.361]
select surf_pocket27, protein and id [2,6413,6414,8373,8377,8386,8387,8394,8555,8570,8576,8677] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.475,0.278]
select surf_pocket28, protein and id [356,360,362,363,1812,1813,1816,1820,1823,1827,1831,2184,2209,2210,2211,8782,8783,8784,8785,8786] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.667,0.361]
select surf_pocket29, protein and id [461,468,1611,1613,1617,1618,1622,1625,1626,1852,2430,2436] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.561,0.278]
select surf_pocket30, protein and id [5188,5190,5216,5288,5337,5363,5716,6361,6379] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.780,0.361]
select surf_pocket31, protein and id [306,402,404,453,832,1503] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.651,0.278]
select surf_pocket32, protein and id [9337,9338,9376,9377,9395,9566,9568,9597,9635,9637] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.894,0.361]
select surf_pocket33, protein and id [6754,6900,7265,7302,8914] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.659,0.702,0.278]
select surf_pocket34, protein and id [7753,7768,7825,7827,7836,7841,9405,9424,9533,9544,9545] 
set surface_color,  pcol34, surf_pocket34 


deselect

orient
