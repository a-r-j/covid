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
select surf_pocket1, protein and id [747,752,755,760,780,791,794,797,857,864,874,878,880,882,887,890,912,916,919,920,921,1175,1183,1465,1467,1471,1598,1602,1640,1643,1644,1663,1664,1665,1668,1670,1678,1680,1683,1911,1938,1941,1975,1978,1985,1990,1993,1998,2002,2006,2011,2014,2018,2022,2026,2027,2028,2030,2035,2043,2217,2220,2225,2228,2230,2232,2247,2264,2267,2268,2270,2274,2276,2278,2279,2282,2350,2364,2370,2374,2380,2384,2417,2421,2423,2429,2433,2439,2442,2447,2977,2982,2996,3013,3016,3017,3018,3032,3035,3444,3446,3449,3450,3451,3453,3455,3457,3458,3461] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [4597,4599,4601,4603,4662,4664,4678,5506,5507,5511,5519,5520,5521,5555,5558,5559,5561,5563,5565,5567,5604,5612,5613,5627,5687,6006,6013,6018,6051,6066,6068,6070,6073,6074,6075,6136,6137,6138,6140,6142] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.420,0.902]
select surf_pocket3, protein and id [3544,3547,3748,3749,3756,3766,3776,3826,3829,3832,3835,3837,3845,3848,3855,3856,3875,3912,3915,3933,3942,3945,3950,3960,4011,4013,4074,4077,4078,4079,4083,4127,4141,4144,4199] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.294,0.278,0.702]
select surf_pocket4, protein and id [2148,2151,2178,2181,2185,2198,2202,2212,2238,2240,2242,2296,2298,2311,3213,3216,3217,3220,3222,3228,3638,3641,3643,3646,3650,3652,3655,3656,3672] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.455,0.361,0.902]
select surf_pocket5, protein and id [576,819,826,831,851,853,1074,1368,1410,1412,1416,1654,1658,1665,1826,1829,1830,1832,1834,1836,1838,1868,1870,1872] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.416,0.278,0.702]
select surf_pocket6, protein and id [7090,7092,7094,7099,7159,7162,7167,7181,7423,7425,7428,7430,7431,7433,7434,7437,7471,7474,7477,7480,7483,7489,7491,7493,7541,7636,7664,7667,7673,7686,7688,7690,7693,7702,7715,7716] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.612,0.361,0.902]
select surf_pocket7, protein and id [2282,2284,2288,2289,2292,3425,3428,3433,3470,3472,3502,3670,3689,3704,3792,3797,3813,3818,3866] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.537,0.278,0.702]
select surf_pocket8, protein and id [3631,3880,3882,3890,3892,3925,3929,4141,4148,4149,4194,4199,4220,4224,4231,4282,5760,5765,5773,5774,5792,5794,5809,5814,5836,5840] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.765,0.361,0.902]
select surf_pocket9, protein and id [515,531,534,539,564,567,575,576,582,586,592,624,626,1065,1068,1071,1074,1802,1805,1810,1814,1821,1830] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.655,0.278,0.702]
select surf_pocket10, protein and id [6460,6468,6470,6472,6475,6488,6495,6498,6499,6500,6870,6880,6891,6944,6948,7004,7023,7025,7371,7376] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.878]
select surf_pocket11, protein and id [5358,5364,5369,5372,5428,5431,5432,5434,5438,5924,5929,5976,5983,5991,5993,5996,6034,6036,6038] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.624]
select surf_pocket12, protein and id [7159,7181,7222,7240,7262,7327,7329,7431,7433,7716] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.722]
select surf_pocket13, protein and id [4499,4547,4549,4552,4553,4555,4557,4560,4562,4618,4734,4736,4787,4788,4789,4791,4793,4837,4839,4843] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.502]
select surf_pocket14, protein and id [2452,2489,2492,2497,2498,2499,2500,2502,2572,2606,2608,2613,2766,2828,2948,2951,2953] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.569]
select surf_pocket15, protein and id [4248,4253,4291,4304,4306,4308,4311,4314,4342,4349,4365,5022,5024,5083,5085,5088,5090,5091,5134] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.380]
select surf_pocket16, protein and id [1544,1545,1546,1570,1571,1574,1586,1592,1602,1981,2442,2558,2565,2583,2591,2713,2717,2737,3003] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.412]
select surf_pocket17, protein and id [2119,2122,2131,2134,2817,2847,2873,2881,3110,3137,3142,3155,3208] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.302,0.278]
select surf_pocket18, protein and id [6720,6725,6793,6802,6804,6917,6966,6969,6971,7526,7568,7571] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.463,0.361]
select surf_pocket19, protein and id [5101,5105,5145,5149,5163,5165,5167,5216,5220] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.420,0.278]
select surf_pocket20, protein and id [2360,2833,2838,2944,2946,3064,3098] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.620,0.361]
select surf_pocket21, protein and id [425,437,439,539,540,541,543,545,1360,1363] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.541,0.278]
select surf_pocket22, protein and id [7137,7138,7151,7154,7156,7211,7213,7215,7219,7312,7315] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.776,0.361]
select surf_pocket23, protein and id [4867,4869,4871,4935,4939,4995,5334,5338,5395,5400,5404] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.663,0.278]
select surf_pocket24, protein and id [6791,6793,6884,6917,6958,6961,6962,6964,6966,6969,7508] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.871,0.902,0.361]
select surf_pocket25, protein and id [4933,4935,4939,5008,5340,5640,5653,5655,5657,5721] 
set surface_color,  pcol25, surf_pocket25 


deselect

orient
