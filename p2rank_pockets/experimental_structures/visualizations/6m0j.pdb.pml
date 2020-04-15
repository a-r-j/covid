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

load data/6m0j.pdb, protein
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

load data/6m0j.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [2089,2090,2101,2102,2103,2224,2229,2233,2234,2235,2236,2239,2240,2241,2243,2833,2834,2841,2866,2867,2868,2871,2875,2896,2897,2898,2900,2901,3126,3146,3149,3150,3151,3171,3172,3173,3175,3177,3181,3195,3196,3197,3198,3199,3210,3211,3311,3359,3360,3361,3362,3369,3385,3389,3390,3393,3394,3395,3396,3397,3398,3399,3421,3422,3423,3432,3433,3450,3451,3452,3453,3455,3459,3460,3461,3479,3969,3970,4052,4054,4056,4058,4086,4087,4095,4125,4263,4267,4275] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [116,181,182,183,184,417,418,420,448,449,450,451,452,660,661,662,669,683,685,687,2682,2684,2685,2688,2689,2704,2707,2708,2709,2710,2711,2720,2721,2909,2927,2928,2930,2931,2932,2968,2969,2993,3024,3028,3029,3030,3031,3033,3035,3039,3051,3052,3054,3056,3065,3066,3112,3115,3116,3117,3125] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [95,121,124,126,128,132,133,134,153,154,157,162,2731,2732,2998,3001,3002,3003,3008,3015,3018,3021,3056,5441,5443,5454,5457,5463,5466,5493,5538,5543,5834,5836,6172,6179,6181,6183,6187,6199,6251,6255,6256,6257,6258] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [156,2481,2501,2504,2505,2506,2507,2511,2512,2513,2514,2516,2517,2518,2520,2553,2710,2724,2733,2734,2736,2738,2743,2745,2754,2973,2977,2998,2999,3001,3054,3056,5456,5457,6214,6219,6221,6228,6234,6237,6241,6243,6244,6245,6254,6256,6258,6268] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [878,879,885,1005,1010,1013,1037,1039,1040,1041,2052,2055,2075,2076,2088,2089,2090,2097,2100,2102,2103,2123,2132,3948,3954,3955,3956,3957,3958,3959,3960,3969,3970] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [4917,4919,4926,4927,4949,4950,4951,4952,4953,4963,4964,5156,5158,5161,5165,5166,5192,5193,5202,5203,5204,5211,5213,5215,5693,5694,5696,5697,5699,5738,6294] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [182,184,210,211,212,213,216,217,235,236,276,277,278,362,366,389,415,417,2682,2684,2688,2691,2697,2698,2699,2700,2701,2702,2704,2707] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [76,78,102,103,104,105,139,140,143,442,467,470,477,478,479,499,500,6085,6088,6089,6090,6091,6092,6102,6113,6122,6124] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [688,1373,1398,1494,1499,1501,1504,1506,1509,1511,1536,1538,3091,3995,3999,4006,4012,4017,4045] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [1175,1177,1219,1220,2016,2017,2059,2065,2066,2067,2068,2070,3504,3505,3539,3738,3752,3779,3780] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [627,630,631,657,658,659,662,686,687,688,1531,1533,1535,1538,1539,1555,3070,3074,3077,4433,4434,4437,4438,4448,4467] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [652,654,655,656,657,681,684,686,688,697,1423,1424,1426,1446,1447,1448,1494,1500,1530,1531,1556,1558,1559,1560,1645] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [68,69,96,5544,5545,5546,5567,5576,5577,5578,5863,5871,5900,6012,6013] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [698,701,705,706,793,800,823,1373,1398,1499,1501,3995,3999] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [5064,5385,5387,5646,5651,5656,5930,5931,5933,5935,6332,6333,6337,6346,6349,6352] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [3710,3712,3713,3714,3745,3760,3763,3787,3788,3789,3841,3858,3861,3864,3867,4814,4819,4821,4845,4861,4863,4869] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [1675,1676,1709,3555,3558,3588,3594,3603,3631,3632,3644,3645] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [1348,1356,1381,1412,3609,3611,3616,3634,3649,3655,3666,3667,3695,3698] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [1069,1070,1083,1087,1089,1093,1137,1138,1139,1900,1931,1932,2031,2035,2045,2128,2140,2165] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [5141,5239,5288,6326] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [2669,2670,2674,2684,2685,2876,2900,2901,2909,2910,3124,3125,3126,3151] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [1629,1667,4564,4566,4567] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [2432,2433,2462,2463,2464,3166,4300,4343,4371] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [2394,2417,2419,2420,2423,2424,2456,2457,3229,3251,3253,3260,4304,4305,4306,4313,4314] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [1776,1777,1813,1814,1815,3795,4788,4794,4797,4798,4799,4800,4801,4802,4803] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [1757,1794,4612,4613,4615,4616,4654,4655,4656,4676,4679,4681,4720] 
set surface_color,  pcol26, surf_pocket26 


deselect

orient
