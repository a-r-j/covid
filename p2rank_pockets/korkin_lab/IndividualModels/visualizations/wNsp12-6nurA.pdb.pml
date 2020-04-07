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

load data/wNsp12-6nurA.pdb, protein
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

load data/wNsp12-6nurA.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1398,1401,1432,1435,1437,1440,1442,1451,1458,1459,1460,1461,1464,1466,1467,1468,1470,1479,1481,1483,1621,1633,1636,1637,1638,1639,1649,1650,1869,1870,1871,1873,1874,1877,1898,1899,1900,1901,1902,1903,1989,1990,1991,1992,1993,1994,1996,1998,2001,2003,2004,2014,2015,2016,2019,2022,2485,2487,2527,2529,3859,4142,4143,4145,4160,4221,4222,4233,4235,4237,4238,4240] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.400,0.702]
select surf_pocket2, protein and id [11,12,18,50,52,63,65,111,112,118,119,121,123,191,216,226,228,249,755,759,760,781,783,784,5065,5066,5072,5073,5074,5094,5095,5096,5097,5098,5099,5100,5103,5106,5107,5109,5111,5115,5138,5154] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.455,0.902]
select surf_pocket3, protein and id [724,726,727,728,729,730,731,732,752,753,759,761,2555,2556,2558,2585,4424,4425,4426,4427,4428,4446,4448,4450,4451,4455,4612,4614,4616,4650,4651,5073,5074,5106,5107,5108,5109,5110,5111,5112] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.306,0.702]
select surf_pocket4, protein and id [2438,2439,2480,2481,2482,3183,3185,3273,3282,3284,3294,3297,3300,3306,3308,3310,3817,3819,3820,3822,3829,4166,4167,4231,4255,4259,4262,4265] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.388,0.361,0.902]
select surf_pocket5, protein and id [358,359,360,361,363,365,384,385,386,387,388,389,416,425,426,427,428,535,546,569,570,572,574,575,592,593,595,600] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.349,0.278,0.702]
select surf_pocket6, protein and id [1936,1937,1951,1953,1969,1971,2027,2041,2044,2064,2065,2072,2074,2078,2084,2087,2088,2089,2401,2403,2417,2420,2421,2422,2425,4180,4182,4183,4184,4185,4188,4189,4195,4212,4214] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.510,0.361,0.902]
select surf_pocket7, protein and id [3731,3732,3736,3750,4939,4940,4953,4956,4978,4979,4980,4981,4982,4984,5023,5026,5028,5030,5031,5179,5214,5215,5218,5219,5220,5236] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.443,0.278,0.702]
select surf_pocket8, protein and id [445,446,461,692,729,730,4449,4451,4576,4578,4584,4610,4611,4612,4613,4614,4615,4616,4660,4661] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.631,0.361,0.902]
select surf_pocket9, protein and id [1509,1578,1580,1588,1694,1708,1713,1715,1717,1718,1721,1726,1728,1805,1807,1810,1831,1832,1833,1842,1844,1863,3085,3087,3089] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.537,0.278,0.702]
select surf_pocket10, protein and id [3759,3771,3772,3776,3777,4898,4901,4902,4903,4904,5195,5207,5208,5296,5297,5298,5300,5318,5321] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.753,0.361,0.902]
select surf_pocket11, protein and id [2138,2139,2140,2141,2142,2143,2160,2186,2187,2188,2189,2190,2259,2318,2320,2348,2350,2351,5549,5551] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.631,0.278,0.702]
select surf_pocket12, protein and id [3535,3544,3545,3546,3548,3554,3561,3563,3565,3567,3611,3638,4881,4882,5314,5315,5330] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.875,0.361,0.902]
select surf_pocket13, protein and id [1817,1818,1847,1849,1850,1852,1880,1881,1882,1885,1887,1891,1892,1893,1895,1909,2031,2032,2033,2034,2035,2037,2871,2872,2900,2912] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.675]
select surf_pocket14, protein and id [5265,5266,5267,5349,5351,5352,5354,5358,5365,5463,5465,5777,5779,5784,5786] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.804]
select surf_pocket15, protein and id [5283,5284,5289,5291,5335,5336,5337,5338,5339,5340,5349,5463,5464,5465,5777,5779,5822,5823] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.580]
select surf_pocket16, protein and id [2119,2123,2126,2345,2346,2347,2348,2349,2350,2351,2364,2370,2372,2373,5549,5551] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.682]
select surf_pocket17, protein and id [835,838,854,861,870,872,933,954,1044,1045,1069,1070,1073,1079,1081,1109] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.486]
select surf_pocket18, protein and id [226,249,250,270,280,281,469,738,759,760,761,784] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.561]
select surf_pocket19, protein and id [2836,2837,2842,2844,2845,2888,2891,2927,3177,3194,3303,3305,3312,3314] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.392]
select surf_pocket20, protein and id [1790,1792,1816,1817,2905,2906,2907,2909,2910,2911,2912,2913,2951,2960,2962] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.439]
select surf_pocket21, protein and id [1186,1189,1191,1195,1215,1286,1289,1293,1294,1295,1296,1297,1319,1320,1321,2601,4676,4678] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.294]
select surf_pocket22, protein and id [4512,4527,4528,4529,4530,4531,4532,4752,4757,4783,4784,4786,4787,4790,4792,4821,4831] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.400,0.361]
select surf_pocket23, protein and id [1528,1565,1566,1770,1772,1773,1774,1818,1838,1847,1848,1849,1880,1881,1882] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.357,0.278]
select surf_pocket24, protein and id [2797,2809,2811,2814,2816,2837,2838,2839,3383,3386,3426,4271,4279,4281,4282] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.522,0.361]
select surf_pocket25, protein and id [2465,2466,2468,2469,2470,3269,3271,3272,3273,3800,3803,3804,3806] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.455,0.278]
select surf_pocket26, protein and id [3554,3565,3566,3567,3577,3611,5314,5315,5317,5327,5328,5329,5330,5503,5719,5720,5721] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.643,0.361]
select surf_pocket27, protein and id [97,99,131,133,149,150,157,160,3796,3806,5153,5158,5169,5192,5193] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.549,0.278]
select surf_pocket28, protein and id [5647,5652,5654,5684,5685,5686,6040,6058,6065,6073,6078,6107,6109,6110,6132,6145] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.765,0.361]
select surf_pocket29, protein and id [2151,5532,5536,5553,5555,5556,5558,5588,5638,5663,5664,5678] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.643,0.278]
select surf_pocket30, protein and id [753,2536,2546,2549,2553,2555,2560,2582,2584,2586,2591,5108,5110,5117,5119,5120,5122] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.886,0.361]
select surf_pocket31, protein and id [2797,2811,2816,2838,2839,2932,3353,3386] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.663,0.702,0.278]
select surf_pocket32, protein and id [3608,3609,3610,3611,3635,3638,4865,4866] 
set surface_color,  pcol32, surf_pocket32 


deselect

orient
