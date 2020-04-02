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

load data/wS-5xlr_C-6acj_C.pdb, protein
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

load data/wS-5xlr_C-6acj_C.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [620,621,622,667,781,782,797,830,831,832,847,1203,1205,1206,1219,1220,1228,1242,1243,1244,1245,1246,1247,1262,1266,1270,1364,1366,1367,1387,1389,1481,1482,1501,1502,1513,1652,1666,1667,1674,1689] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.404,0.702]
select surf_pocket2, protein and id [5578,5579,5580,5581,5582,6347,6348,6349,6350,6355,6357,6358,6359,6362,6392,6401,6402,6403,6404,6405,6406,6407,6420,6572,6573,6593,6595,6625,6626,7258,7259,7261,7281,7284,7285,7286,7287,7288,7289,7310,7311,8059,8061,8062,8065,8070,8071,8072] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.467,0.902]
select surf_pocket3, protein and id [2574,2759,2761,2784,2855,2857,2872,2907,2932,3284,3285,3297,3298,3300,3937] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.318,0.702]
select surf_pocket4, protein and id [5047,5049,5051,5057,5059,5060,5072,5073,5074,5075,5077,5134,5136,5137,5138,5145,5146,5147,5148,5149,5156,5182,5184,5196,5230,5243,5249,5251,5252,5253,5257,5261,5274] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.365,0.361,0.902]
select surf_pocket5, protein and id [2536,2537,2538,2540,2544,2545,2546,2547,2567,2568,2569,2571,2575,2577,2581,2582,2751,2775,2776,2777,2785,2811,2821,2822,2831,2833,3311,3312,3313,3314,3315,3316,3317,3318] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.329,0.278,0.702]
select surf_pocket6, protein and id [348,477,479,549,550,567,569,571,1761,1762,1776,1778,1953,1955,1957,1958,1977,1978] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.478,0.361,0.902]
select surf_pocket7, protein and id [77,78,293,295,304,306,307,1622,1624,2142,2143,2150,2152,2154,2155,2158,2179,2181,2187,2190,2205,2211] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.416,0.278,0.702]
select surf_pocket8, protein and id [362,364,367,373,434,435,436,458,460,463,465,470,599,600,630,631,637,638,639,990,1794,1797,1801,1806,1817,1925,1927,1928,1929,1931,1944,1948,1949,1954,1956] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.588,0.361,0.902]
select surf_pocket9, protein and id [1,2,3,28,29,39,40,41,43,334,351,353,354,365,368,370,382,383,454,590,1572,1573,1579,1584,1585,1945,1947,1968,1970] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.502,0.278,0.702]
select surf_pocket10, protein and id [5627,5629,5630,5632,5634,5660,5711,5712,5714,5733,5735,5736,5737,5738,5744,5771,5780,5783,5789,5791,5792] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.698,0.361,0.902]
select surf_pocket11, protein and id [2143,2150,2152,2154,2155,2181,2190,2205,2211,2233,2236,2280,4607,4634] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.588,0.278,0.702]
select surf_pocket12, protein and id [2540,2542,2573,2712,3938] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.812,0.361,0.902]
select surf_pocket13, protein and id [203,213,2266,6355,6365,6366,6367,6369,6370,6393,6396,7266,7289,7297,7317,7319] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.675,0.278,0.702]
select surf_pocket14, protein and id [227,2027,2034,2035,2036,2168,2169,2172,2217,2218,2220,2241,2244,2245,2246,2247,2248,2360,2361,4826,4829] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.878]
select surf_pocket15, protein and id [675,676,900,906,912,914,915,916,917,933,935,937,941,1113,1114,1117,1119,1784,1786] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.639]
select surf_pocket16, protein and id [6755,6756,6757,6758,6759,6760,6763,6765,6830,6831,6832,6890,6891,6892,6894,6895,6896] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.769]
select surf_pocket17, protein and id [5561,5567,5928,5929,5964,6594,6595,6606,6608,6613,6625,6651,8057,8059,8065,8066,8070,8072,8078] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.553]
select surf_pocket18, protein and id [681,682,762,763,764,766,861,863,1461,1462,1463,1464,1465,1466,1467,1703,1704,1717,1733] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.655]
select surf_pocket19, protein and id [6727,6754,6756,6760,6768,6868,6870,6871,6872,6903,6904,6905,6906,7872,7879,7887,7891,8007,8008,8014] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.467]
select surf_pocket20, protein and id [5654,5663,5669,5670,6534,6535,6536,6537,6538,6539,7367,7432,7433,7437,7439,7441,7444,7447] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.545]
select surf_pocket21, protein and id [117,140,153,154,155,1430,1431,1432,1474,1475,1476,1493,1495,1658,1675,1676,1677,1678,1679,1682] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.380]
select surf_pocket22, protein and id [5461,8189,8191,8208,8210,8415,8416,8489,8491,8492] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.435]
select surf_pocket23, protein and id [21,22,31,323,325,331,335,337,344,345,347,504,1980,1990,1992,1993] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.294]
select surf_pocket24, protein and id [8263,8264,8273,8296,8299,8301,8545,8546,8548,8570,8589,8687,8689,8694] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.396,0.361]
select surf_pocket25, protein and id [99,100,101,103,106,107,296,1618,1621,1623,1627,1631,1632,1633,1634,1635,2127,2130,2137,2144,2146,2148] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.353,0.278]
select surf_pocket26, protein and id [5683,5684,5696,5698,5699,5705,7442,7445,7463,7469,7471,7473,7568,7570] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.510,0.361]
select surf_pocket27, protein and id [5463,5467,5468,7009,7015,7018,7043,8480,8481,8502] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.439,0.278]
select surf_pocket28, protein and id [4263,4266,4282,4284,4306,4307,4309,4343,4345,4358,4401,4404,4412] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.620,0.361]
select surf_pocket29, protein and id [4771,4772,4773,4831,4833,4845,4847,4876] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.525,0.278]
select surf_pocket30, protein and id [6703,6705,6722,6724,6726,6727,6754,6768,6778,6779,6780,6781,6783,6784,7876,7881,7887] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.729,0.361]
select surf_pocket31, protein and id [2888,2890,2893,2895,2956,2972,3277,3950,3953,3958,3971,3972] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.612,0.278]
select surf_pocket32, protein and id [2682,3005,3262,3263,3265,3270,3551,3553,3944,3945,3958,3961,3964] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.843,0.361]
select surf_pocket33, protein and id [8235,8306,8307,8308,8309,8310,8311,8312,8322,8323] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.698,0.278]
select surf_pocket34, protein and id [979,1078,1079,1082,1083,1084,1833,1834,1837,1839,1848,1859,1860,1861,1882,1892] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.847,0.902,0.361]
select surf_pocket35, protein and id [6092,6094,6107,6109,6853,6855,7024,7027,7029,7049,7051] 
set surface_color,  pcol35, surf_pocket35 


deselect

orient
