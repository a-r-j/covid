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
select surf_pocket1, protein and id [876,878,885,1005,1010,1013,1035,1037,1039,1040,1041,1063,2049,2052,2055,2056,2075,2076,2088,2089,2090,2097,2099,2100,2101,2102,2103,2123,2132,2224,2229,2233,2234,2235,2236,2239,2240,2241,2243,2833,2834,2841,2866,2867,2868,2871,2875,2896,2897,2899,3126,3149,3150,3151,3170,3171,3172,3173,3175,3177,3181,3195,3196,3197,3198,3199,3210,3211,3312,3313,3327,3359,3360,3361,3362,3364,3369,3372,3390,3393,3394,3395,3396,3397,3398,3399,3421,3422,3423,3424,3432,3433,3450,3452,3453,3455,3459,3460,3461,3479,3948,3954,3955,3956,3957,3958,3959,3960,3969,3970,4054,4056,4058,4087,4095,4125,4263,4634] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.388,0.702]
select surf_pocket2, protein and id [156,181,182,183,184,417,418,420,450,451,452,660,661,662,670,688,2679,2682,2684,2685,2688,2707,2708,2709,2710,2711,2720,2721,2909,2927,2928,2930,2931,2932,2968,2969,2993,3024,3028,3029,3030,3031,3033,3035,3039,3051,3052,3054,3056,3065,3066,3112,3114,3115,3116,3117,3123,3125] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.427,0.902]
select surf_pocket3, protein and id [95,121,124,126,128,132,133,134,153,154,157,162,639,2731,2732,2998,3001,3002,3003,3008,3015,3018,3021,3056,5441,5443,5454,5457,5463,5466,5493,5538,5543,5834,5836,6172,6179,6181,6187,6199,6251,6255,6256,6257,6258] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.286,0.278,0.702]
select surf_pocket4, protein and id [156,2481,2482,2501,2504,2505,2506,2507,2511,2514,2516,2517,2518,2520,2553,2561,2710,2724,2733,2734,2736,2738,2743,2745,2754,2973,2977,2998,2999,3054,3056,5456,5457,6214,6219,6220,6221,6228,6234,6237,6241,6243,6244,6245,6254,6256,6258,6268] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.443,0.361,0.902]
select surf_pocket5, protein and id [652,654,655,656,681,684,685,687,689,698,701,705,706,793,800,801,823,1373,1397,1423,1424,1426,1446,1448,1475,1494,1499,1500,1501,1509,1511,1530,1531,1556,1559,3995,3999,4012] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.404,0.278,0.702]
select surf_pocket6, protein and id [4917,4918,4919,4926,4927,4949,4950,4951,4952,4953,4963,4964,5156,5158,5159,5161,5165,5166,5192,5193,5202,5203,5204,5213,5215,5693,5694,5696,5697,5699,5705,5738] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.592,0.361,0.902]
select surf_pocket7, protein and id [182,184,211,213,216,217,235,236,277,278,362,366,389,391,415,417,428,2682,2684,2688,2691,2698,2699,2700,2701,2702,2706,2707,2712,2713,2717] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.518,0.278,0.702]
select surf_pocket8, protein and id [76,78,102,105,139,140,141,143,440,442,467,470,478,479,499,500,6082,6085,6087,6088,6089,6090,6092,6102,6113,6122,6124] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.741,0.361,0.902]
select surf_pocket9, protein and id [1177,1219,1220,2017,2059,2065,2067,2068,2070,3504,3505,3738,3752,3779,3780] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.635,0.278,0.702]
select surf_pocket10, protein and id [627,630,631,657,658,659,661,662,1531,1532,1533,1535,1538,1555,3074,4433,4434,4437,4438,4448,4467] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.890,0.361,0.902]
select surf_pocket11, protein and id [5268,5271,5274,5275,5311,5314,5338,5354,5355,5654,5655,5657,6341,6343] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.647]
select surf_pocket12, protein and id [64,68,69,96,5544,5545,5546,5567,5577,5578,5863,5871,5900,6012,6013] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.757]
select surf_pocket13, protein and id [5064,5385,5387,5646,5656,5930,5931,5933,5935,6332,6333,6337,6349,6352] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.533]
select surf_pocket14, protein and id [3710,3712,3713,3714,3745,3760,3763,3787,3788,3789,3841,3858,3861,3864,3867,4814,4819,4821,4861,4863,4869] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.608]
select surf_pocket15, protein and id [2669,2670,2674,2675,2679,2685,2876,2900,2909,2910,2930,2931,2932,3124,3125,3126,3151] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.416]
select surf_pocket16, protein and id [1675,1676,1709,3558,3588,3594,3603,3632,3644,3645] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.459]
select surf_pocket17, protein and id [1316,1347,1348,1356,1381,1412,3609,3611,3634,3636,3649,3655,3666,3695,3698] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.298]
select surf_pocket18, protein and id [1062,1069,1070,1072,1083,1087,1089,1093,1137,1138,1139,1900,1931,1932,2031,2035,2128,2140,2164,2165] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.412,0.361]
select surf_pocket19, protein and id [1499,1504,1506,1509,1511,1536,1538,3091,3995,4006,4012,4016,4017,4045] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.376,0.278]
select surf_pocket20, protein and id [19,21,47,48,518,519,520,521,530,541,6096,6098,6100,6101] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.561,0.361]
select surf_pocket21, protein and id [5385,5622,5646,5648,5656,5935,6332,6333,6337,6349] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.494,0.278]
select surf_pocket22, protein and id [5142,5237,5239,5288,6326] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.710,0.361]
select surf_pocket23, protein and id [2432,2433,2462,2463,2464,3166,4300,4343,4371] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.608,0.278]
select surf_pocket24, protein and id [1629,1667,4558,4566,4567] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.859,0.361]
select surf_pocket25, protein and id [1757,1794,4612,4613,4615,4616,4652,4653,4654,4655,4676,4679,4681,4720] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.675,0.702,0.278]
select surf_pocket26, protein and id [1505,1506,1507,3092,3549,3592,3595,4016,4017,4035] 
set surface_color,  pcol26, surf_pocket26 


deselect

orient
