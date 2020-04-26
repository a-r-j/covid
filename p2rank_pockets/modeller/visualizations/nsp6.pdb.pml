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

load data/nsp6.pdb, protein
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

load data/nsp6.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [1768,1770,1790,1791,1793,1797,1799,1800,1820,1824,1826,1829,1852,1853,1854,1855,1857,1858,1859,1881,1883,1884,1885,1984,1986,2009,2027,2028,2029,2031,2032,2033,2059,2067,2147,2187,3110,3111,3112,3114,3115,3116,3117,3122,3143,3146,3147,3180,3181,3201,3203,3204,3205,3216,3218,3274,3295,3297,3298,3299,3301,3305,3306,3322,3323,3325,3326,3329,3330,3331,3333,3352,3353,3354,3355,3357] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.384,0.702]
select surf_pocket2, protein and id [2107,2108,2109,2110,2111,2112,2122,2124,2125,2126,2127,2129,2132,2133,2136,2160,2161,2167,2168,2169,2616,2619,2645,2647,2648,2649,2650,2664,2986,2991,2994,2996,3000,3002,3008,3009,3010,3011,3012,3014,3030,3031,3039,3382,3429,3431,3433,3435,3441,3464,3529,3530,3533,3535,3538,3544,3552,3554] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.416,0.902]
select surf_pocket3, protein and id [2101,2102,2110,2111,2112,3399,3400,3429,3441,3461,3462,3463,3464,3465,3471,3472,3473,3474,3501,3524,3529,3549,3550,3552,3554,3560] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.302,0.278,0.702]
select surf_pocket4, protein and id [2647,2661,2682,2684,2694,2695,2696,2699,2700,2701,2728,2729,2730,2734,2735,2993,2996,2997,2998,2999,3000,3001,3002,3003,3005,3006,3011,3012,3013,3014,3021,3022,3023,3024,3025,3026,3032,3044,3045,3522,3533,3544,3744,3921,3922,3923,3927,3928] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.467,0.361,0.902]
select surf_pocket5, protein and id [2730,2734,2735,2757,2760,2768,2788,2789,2790,2825,2826,2890,2908,2911,2912,2918,2936,2939,2945,3045,3064,3066,3077,3078,3079,3097,3099,3101] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.427,0.278,0.702]
select surf_pocket6, protein and id [1668,1670,1671,1672,1673,1674,1676,1697,1698,1699,1700,1701,1702,1703,1739,2117,2119,2121,2128,2129,2130,2131,2155,2616,2619,2620,2639] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.631,0.361,0.902]
select surf_pocket7, protein and id [1785,1805,1810,1814,1815,1833,1834,1835,1836,1837,1843,1845,2216,2268,2269,2271,2301,2304,2305,2307,2314,2491,2505,2507,2516,2517,2537,2538] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.553,0.278,0.702]
select surf_pocket8, protein and id [2028,2051,2053,2056,2059,2079,2080,2081,2082,2083,2084,2085,2086,3357,3367,3368,3369,3370,3388,3389,3390,3394,3404,3405,3406,3408,3410] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.792,0.361,0.902]
select surf_pocket9, protein and id [3031,3049,3051,3054,3060,3086,3087,3343,3364,3376,3423,3424,3434] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.678,0.278,0.702]
select surf_pocket10, protein and id [3508,3621,3797,3822,3827,3828,3833,3835,3836,3837,3838,3839,3846,3847,3848,3850,3852,3853] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.847]
select surf_pocket11, protein and id [1650,1652,1674,1675,1676,1682,1698,1708,1709,1710,1711,1712,1713,1714,2069,2071,2073,2074,2075,2119,2121] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.596]
select surf_pocket12, protein and id [1667,1669,1688,1689,1691,1692,1700,1702,1703,1732,1733,2588,2619,2620] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.682]
select surf_pocket13, protein and id [2684,2685,3002,3724,3725,3736,3737,3738,3744,3919,3921,3922,3923,3927] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.471]
select surf_pocket14, protein and id [1612,1614,1615,1633,1635,1638,1639,1640,1641,1642,1643,1644,1645,1646,1668,1670,1671,1672,1673,1674] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.522]
select surf_pocket15, protein and id [2392,2396,2397,2398,2399,2400,2401] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.341]
select surf_pocket16, protein and id [3469,3480,3491,3505,3506,3507,3508,3621,3797,3798,3801,3822,3827,3828,3833] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.361]
select surf_pocket17, protein and id [3031,3049,3051,3053,3054,3060,3086,3376,3423,3424,3434,3456] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.341,0.278]
select surf_pocket18, protein and id [2804,2807,2812,2814,2837,2838,2839,2840,2841,2842,2854,2855,2856] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.522,0.361]
select surf_pocket19, protein and id [2284,2286,2289,2294,2296,2297,2298,2303,2870,2874] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.471,0.278]
select surf_pocket20, protein and id [1764,1784,2217,2536,2537,2538,2560,2561,2562,2563,2566,2587] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.682,0.361]
select surf_pocket21, protein and id [2812,2814,2815,2816,2853,2854,2855,2856] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.596,0.278]
select surf_pocket22, protein and id [2572,2573,2596,2602,2604,2926,2953,2955,2959,2981,2982] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.847,0.361]
select surf_pocket23, protein and id [2332,2333,2334,2335,2336,2337,2338] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.678,0.702,0.278]
select surf_pocket24, protein and id [3409,3411,3412,3472,3474] 
set surface_color,  pcol24, surf_pocket24 


deselect

orient
