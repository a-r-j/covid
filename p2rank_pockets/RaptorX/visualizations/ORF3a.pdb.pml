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

load data/ORF3a.pdb, protein
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

load data/ORF3a.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [267,270,947,2195,2197,2202,2205,2208,2213,2220,2221,2224,2226,2233,2237,2240,2246,2249,2259,2264,2311,2315,2413,2415,2560,2561,2562,2583,2587,2592,2786,2801,2803,2805,3031,3034,3039,3042,3044,3061,3066,3069,3072,3073,3074,3115,3117,3176,3185,3194,3196,3198,3201,3202,3203,3206,3216,3227,3237,3243,3248,3268,3272,3284,4325,4344,4345,4349,4359] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [229,258,261,264,267,270,275,276,278,292,300,304,311,312,360,363,364,365,464,469,478,480,488,489,498,894,927,933,935,938,941,944,947,1014,1018,1083,1102,1110,2140,2141,2142,2144,2155,2156,2158,2165,2200,2202,2205,2208,2220,2221,2232,2235,2240,2243,2253,2254,3201,3203,3227,3505,3508,3509,3510,3619] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [938,944,952,955,959,963,971,1009,1023,1028,1031,1034,1106,1123,1171,1175,2173,2176,2179,2182,2213,2477,2480,2482,2483,2485,2528,2544,2546,2558,2559] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [2951,2952,2953,2989,3054,3056,3081,3087,3093,3275,3277,3279,3336,3355,3358,3420,3427,3428,3456,3459,3467,3739,3741,3744,3746,3768,3774,3777,3780,3785] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [3382,3384,3386,3403,3405,3407,3412,3723,3758,3759,3799,3809,3811,3815,3845,3892,3903,3905,4187,4200,4202,4204,4208,4210,4221,4225,4230,4247,4252,4262,4266,4268,4275] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [3123,3135,3137,3148,3151,3464,3469,3492,3519,3524,3528,3660,3662,3664,3700,3702,3948,3982,3984,3986] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [2301,2320,2358,2372,2373,2655,2682,2984,2987,2988,2993,3013,3015,3018,3019,3020,3022,3304,3327,3329] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [2287,2292,2300,2301,2320,3015,3018,3019,3022,3037,3039,3303,3304,3306,3308,3313,3327,3329,3333,4376,4377,4378] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [118,125,153,159,211,286,287,288,499,503,505,512,529,4280,4282] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [1447,1451,1496,1498,1499,1501,1502,1753,1755,1760,1766,1813,1821,1824,1826] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [358,360,363,364,365,368,372,384,1140,1146,1154,1156,1161,1202,1208,2156,2158] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [1328,1333,1376,1381,1451,1824,1826,1829,1890,1893,1938,1940] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [966,2508,2513,2522,2525,2537,2539,2541,2818,2821,3583,3584,3585,3587] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [1519,1713,1715,1718,1720,1733,1737,1783,1787] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [1156,1161,1196,1213,1216,1268,2015,2022,2073,2078,2086,2087,2088,2090,2092,2146] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [736,790,792,3553,3570,3577,3598,3602,3635,4029,4039,4040,4051] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [959,966,2508,2522,2525] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [3686,3716,3723,3974,4204,4232,4247,4248,4252,4257,4262] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [1499,1573,1691,1693,1697] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [2753,2849,3103,3113,3121,3123,3149,3154,3155,3156,3171] 
set surface_color,  pcol20, surf_pocket20 


deselect

orient
