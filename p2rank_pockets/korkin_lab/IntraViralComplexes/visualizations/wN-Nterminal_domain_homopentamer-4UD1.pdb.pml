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

load data/wN-Nterminal_domain_homopentamer-4UD1.pdb, protein
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

load data/wN-Nterminal_domain_homopentamer-4UD1.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [651,652,653,654,656,668,671,1642,1648,1651,1657,1768,1773,1776,2202,2205,2218,2225,2226,2227,2228,2229,2230,2231,2232,2237,2249,2671,2672,2677,2689,2721,2725,2727,2730,2732,2735,2743,2745,2749,2751,2753,2755,3290,3303,3304,3305,3306,3313,3314,3768,3782,3783,3784,3793,3805,3807,3808,3811,3815] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [1183,1184,1185,1187,1190,1200,1208,1209,1210,1219,1231,1652,1653,1654,1659,1672,1683,1685,1692,1703,1705,1706,1708,1712,1714,1717,1724,1725,1726,1727,1733,1735,1737,2690,2692,3652,3658,3774,3775,3776,3777,4289,4752,4766,4767,4772,4774,4776,4788,4789,4790] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [4059,4060,4061,4062,4063,4064,4065,4066,4076,4077,4078,4245,4246,4247,4254,4264,4562,4799,4800,4803,4805,4809,4811,4867,4883,4884,4885] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [152,182,190,641,648,650,685,691,694,696,699,707,1302,1306,1307,1308,1311,1312,1313,1765,1767,1782,1783,1792,1794,1802,1804,1805,1806,1807,1814,2794] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [1184,1185,1187,1208,1210,1213,1214,4273,4289,4295,4296,4297,4752,4766,4776,4783,4788,4789,4790,4791,4798] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [2092,2093,2094,2098,2099,2100,2280,2281,2288,2293,2296,2833,2843,2845,2900,2901,2908,2917,2919] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [2185,2186,2187,2188,2205,2396,2549,2550,2701,2705,2706,2707,2710,2711,2712,2721,2724,2725,2727,3589,3627,3631,3639,3641,3643,3644,3779,3781,3782,3783,3789,3791] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [4087,4096,4097,4162,4181,4182,4219,4333,4508,4518,4519,4532,4534,4536,4713,4900,4917] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [3061,3063,3064,3067,3072,3097,3099,3100,3102,3105,3365,3366,3367,3368,3383,3386,3411,3412,3413,3417,3540,3541,3542,3543,3544,3545,3566,3568,3611,3846,3894] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [149,150,152,162,166,360,513,514,665,667,669,670,671,674,685,691,1630,1640,1642,1643,1778,1782,1788,1790] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [56,57,58,59,61,62,63,64,244,245,257,260,797,798,806,862,863,864,865,872,881,883] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [3075,3077,3081,3082,3083,3095,3263,3264,3276,3279,3281,3816,3817,3819,3820,3822,3826,3882,3883,3884,3891,3900,3902] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [641,643,651,652,654,691,696,699,707,1305,1767,1781,1782,1783,1807,2660,2669,2675,2791,2794] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [2078,2080,2081,2084,2088,2089,2114,2116,2381,2382,2383,2385,2389,2403,2416,2417,2533,2535,2556,2557,2558,2559,2560,2561,2562,2583,2585,2628,2861,2863,2910,2911] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [1074,1080,1082,1094,1261,1262,1263,1278,1812,1817,1825,1880,1882,1890,1899,1900,1901] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [42,44,45,48,53,367,380,381,497,499,521,523,524,525,526,547,549,592,827] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [1059,1060,1061,1062,1063,1066,1071,1096,1364,1365,1367,1385,1540,1541,1542,1543,1544,1565,1567,1610,1845,1862,1893] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [1670,1671,1672,1674,1682,1684,3210,3211,3214,3215,3220,3652,3654,3655,3660,3662,3713,3715,3718,3726,3736,4758,4759,4760,4767] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [119,124,126,129,132,133,134,141,142,144,969,975,977,1025,1030,1040,1043,1057,1605,1624] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [3396,3397,3399,3401,3405,3406,3410,3411,3412,3458,3459,3460,3463,3476,3478,3479,3514,3515,3516,3518,3545] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [1169,1170,1180,1187,1378,1531,1683,1685,1687,1688,1689,1692,1693,1703,1708,4572,4624,4762,4767,4772,4774] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [4044,4046,4047,4050,4055,4082,4360,4361,4362,4522,4523,4524,4525,4526,4527,4528,4551,4829,4877,5015] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [191,192,201,633,635,636,641,696,706,707,709,713,715,717,719,726,2793,2794] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [3670,3672,3673,3675,4193,4194,4203,4637,4638,4643,4698,4708,4709,4710,4711,4715,4717,4719,4721,4728] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [25,35,39,40,576,578,581,584,585,587,606,781,811,817,818] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [2060,2061,2075,2612,2617,2620,2623,2642,2819,2847,2850,2853,2854] 
set surface_color,  pcol26, surf_pocket26 


deselect

orient
