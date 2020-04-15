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
select surf_pocket1, protein and id [413,416,417,421,423,425,428,431,437,439,441,446,449,452,475,492,494,496,502,503,508,511,559,572,575,3168,3170,3172,3194,3239,3243,3279,3283,3311,3313,3584,3588,3611,3615,3640,3930,3932,3988,3990,3995,3998,4002,4016,4021,4028,4030,4035,4039,4052,4082,4087,4091,4103,4144,4152,4489,4498,4501,4541,4542,4543,4545,4547,4552,4609,4611,5386,5388,5446,5448] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [668,680,682,685,688,691,699,733,736,738,740,752,755,760,780,797,916,920,921,937,943,947,1752,1754,1795,1798,1799,1800,1803,1804,1805,6220,6268,6317,6320,6322,6403,6410,6420,6424,6427,6430,6451,6453,6455,7806,7808,7824,7839,7841,7845,7850] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.451,0.902]
select surf_pocket3, protein and id [2414,2627,2639,2641,2643,2646,2651,2654,2664,2672,2780,2790,2794,2798,2803,2818,2842,2915,3080,3097,3102,3106,3108,3395,3406,3412,3416,3419,3422,3454,3457,3459,3671,3674,3677,3679,3692,3711,3735,3737,3741,3820] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.302,0.702]
select surf_pocket4, protein and id [5350,5355,5424,5426,5505,5536,5538,5547,5583,5588,5655,5656,5728,5729,5878,5880,5882,5894,5932,5938,5940,5942,5946,5948,6001,6004,6007,6008,6046,6054,6059,6065,6068,6115,6118,6123,6126,6128] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.396,0.361,0.902]
select surf_pocket5, protein and id [7,10,46,50,54,92,95,96,98,119,125,179,183,4232,4239,4285,4288,4289,4290,4327,4340,5146,5151,5153,5162,5165,5167,5178,5180,5184,5203] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.357,0.278,0.702]
select surf_pocket6, protein and id [482,536,539,540,541,543,545,548,586,589,600,606,609,614,668,670,672,674,682,685,693,696,1525,1527,1535,1823,1828,1831,1832,1834,1836,2877,2882,2885,3190,3200,3204,3210,3211,3212,6166,6231,6233] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.522,0.361,0.902]
select surf_pocket7, protein and id [760,764,767,775,777,780,937,942,945,953,964,972,1202,1271,1276,1285,1286,1289,1295,1297,6396,6403,6414] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.455,0.278,0.702]
select surf_pocket8, protein and id [6206,6260,6271,6277,6283,6306,6322,6458,6461,6466,6468,6470,6488,6500,6503,6508,6511,6513,6515,6522,7290,7296,7342,7344,7794,7821,7841,7874,7885,7886,7887] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.647,0.361,0.902]
select surf_pocket9, protein and id [1946,1948,1956,1992,1995,1997,2000,2024,2046,2386,2391,2424,2426,2455,2458,2756,3006,3007] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.549,0.278,0.702]
select surf_pocket10, protein and id [6375,6377,6379,6382,6392,6408,6414,6443,6569,6575,6619,7701,7704,7706,7724,7738,7741,7749,7750,7751,7756,7764] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.773,0.361,0.902]
select surf_pocket11, protein and id [7113,7119,7120,7124,7438,7485,7488,7491,7675,7677,7688,7692,7693,7710,7726,7734] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.647,0.278,0.702]
select surf_pocket12, protein and id [328,374,4058,4096,4428,5209,5211,5250,5253,5254,5313] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.898,0.361,0.902]
select surf_pocket13, protein and id [6804,6810,6812,6820,6869,6873,6879,6897,6912,6914,6916,6919,6921,6966,6969,6970,6972,6974,6977,6979,7425,7469,7533,7534,7535] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.655]
select surf_pocket14, protein and id [3983,4006,4062,4063,4064,4066,4070,4113,4116,4123,4125,4350,4362,4391,4394,4395,4396,4398,4442,4458] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.776]
select surf_pocket15, protein and id [254,259,262,319,332,333,336,338,341,342,344,384,5299,5915,5922,5927,5965,5980,5984,5988,6034,6044,6107] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.557]
select surf_pocket16, protein and id [1535,1553,1557,1561,1567,1569,1572,1574,1604,1834,1836,1862,1870,1872,1913,2305,2315,2316,2321,2326,2867] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.651]
select surf_pocket17, protein and id [693,696,744,747,1483,1485,1498,1500,1510,1511,1512,1707,1719,1743,1746,1828,1831,1832,1838,1843,1876] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.459]
select surf_pocket18, protein and id [4507,4520,4560,4561,4563,4565,4568,4570,4584,4586] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.525]
select surf_pocket19, protein and id [668,670,680,682,685,688,1793,1799,1803,1805,1807,1812,6220,6322] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.361]
select surf_pocket20, protein and id [569,572,575,576,4605,4607,4686,4689,4820,5448,5451,5460,5462,5472,5498,6188] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.400]
select surf_pocket21, protein and id [721,728,1176,1184,1253,1469,1478,1502,1506,1547,1548,1578,1581,1582,1584,1586,1620,6357] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.298,0.278]
select surf_pocket22, protein and id [1054,1147,1148,1149,1214,1275,1278,1280,1283,1287,1307,1308,1310,1320,1322,1329,1330,1331] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.443,0.361]
select surf_pocket23, protein and id [346,392,394,396,400,403,408,463,6085,6087,6099,6101,6160,6163,6164,6168,6170,6172] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.392,0.278]
select surf_pocket24, protein and id [7036,7038,7080,7157,7159,7270,7318,7320,7323,7326,7391] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.569,0.361]
select surf_pocket25, protein and id [2105,2109,2116,2316,2326,2329,2331,2862,2865,2867,2901,2904,2908,2910] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.490,0.278]
select surf_pocket26, protein and id [849,850,851,853,856,857,868,1686,1691,1693,1695,1700,1724,1733] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.694,0.361]
select surf_pocket27, protein and id [755,760,1200,1251,1253,1469,1473,6353,6399,6402,6403] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.588,0.278]
select surf_pocket28, protein and id [4812,4815,4835,5528,5529,5552,5555,5569,5571,5575,5617,5619] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.820,0.361]
select surf_pocket29, protein and id [6564,7102,7107,7167,7189,7219,7337,7731,7734,7738,7764] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.686,0.278]
select surf_pocket30, protein and id [2438,2445,2986,3068,3072,3075,3380,3386,3387,3388,3492] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.855,0.902,0.361]
select surf_pocket31, protein and id [2012,2013,2028,2029,2030,2032,2219,2222,2223,2225,2227,2230,2232] 
set surface_color,  pcol31, surf_pocket31 


deselect

orient
