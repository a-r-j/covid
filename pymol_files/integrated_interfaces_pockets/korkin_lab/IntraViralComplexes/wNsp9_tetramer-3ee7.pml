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

load data/wNsp9_tetramer-3ee7.pdb, protein
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

load data/wNsp9_tetramer-3ee7.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [66,237,238,246,249,251,259,264,266,268,271,273,275,277,397,398,399,412,416,417,419,460,461,462,463,481,681,1920,1921,1922,1931,1932,1934,1944,2101,2103,2104,2107,2109,2117,2148] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.365,0.702]
select surf_pocket2, protein and id [417,419,433,444,1920,1922,1923,1931,1932,1934,1936,1939,1940,1944,1949,1951,1959,1960,2082,2083,2084,2097,2147,2148,2166,2367] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.361,0.902]
select surf_pocket3, protein and id [1691,1696,1697,2411,2412,3059,3060,3073,3076,3077,3078,3079,3183,3203,3205,3206,3272,3274,3275,3302,3303,3305,3320,3322,3346] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.365,0.278,0.702]
select surf_pocket4, protein and id [19,726,727,1365,1366,1379,1382,1384,1385,1387,1489,1511,1512,1580,1609,1611,1626,1627,1629,1630,1632,1633] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.576,0.361,0.902]
select surf_pocket5, protein and id [430,431,433,442,443,1710,1900,1913,1914,1922,1923,1948,1949,1950,1951,1952,1953,2366,2367,2379,2380,2381,2382,2383,2384,2387,2391,2394,2396,2418,2419,2420] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.533,0.278,0.702]
select surf_pocket6, protein and id [1719,1726,2462,2463,2464,2465,2466,2467,2468,2486,2488,2498,2500,2502,2563,2566,2568,2569,2572,2573,3288,3292,3309,3310,3311,3312,3313,3314,3315,3317,3333,3339] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.792,0.361,0.902]
select surf_pocket7, protein and id [30,31,34,36,37,41,760,777,778,779,780,781,782,783,785,801,872,877,878,879,1598,1615,1616,1617,1618,1619,1620,1621,1639,1641,1652,1653,1655,1672] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.702]
select surf_pocket8, protein and id [2458,2533,2534,2539,2540,2541,2545,2546,2547,2549,2744,2745,2747,2767,2768,2769,2770,2794,2795,2796,2797,2798,2799,2800,3229,3231,3234,3243,3259,3266,3267] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.792]
select surf_pocket9, protein and id [2587,2588,2589,2591,2707,2708,2710,2725,2726,2833,2834,2835,3095,3096,3106,3161,3162,3323,3339,3340] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.533]
select surf_pocket10, protein and id [527,528,541,544,545,547,651,772,773,788,789,790,843,849,850] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.576]
select surf_pocket11, protein and id [2212,2213,2226,2229,2230,2231,2232,2233,2234,2358,2359,2456,2457,2458,2460,2476,2549,2550,2551,2553,3259] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.365]
select surf_pocket12, protein and id [56,57,175,178,193,194,303,304,562,563,564,579,629,630,791,806,807,808] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.361]
select surf_pocket13, protein and id [1,2,3,4,6,238,263,264,265,266,267,268,697,706,711,735,2116,2117,2118] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.365,0.278]
select surf_pocket14, protein and id [1089,1097,1109,1113,1115,1235,1236,1237,1239,1250,1298,1300,1301,1319,1320] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.576,0.361]
select surf_pocket15, protein and id [1053,1066,1067,1101,1102,1103,1104,1105,1106,1520,1537,1540,1544,1546,1571,1572,1573] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.533,0.278]
select surf_pocket16, protein and id [772,863,1053,1067,1562,1565,1571,1572,1573,1595] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.792,0.361]
select surf_pocket17, protein and id [91,93,96,99,130,148,165,323,326,327,328,345] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.702,0.278]
select surf_pocket18, protein and id [2791,2796,2798,2800,2803,2806,2809,2992,2994,2995,3014,3213,3214,3225] 
set surface_color,  pcol18, surf_pocket18 


deselect

orient
split_chains
select interface_C, protein_C and resi 220+221+222+223+224+225+312+313+315+316+317+319+320+321+323+324+326+327+328+329+236+237+252+256+269+274+278+279+280+281+282+283+284+307+308+309
select interface_D, protein_D and resi 332+333+334+335+400+401+402+422+423+425+426+427+429+430+433+434+436+437+438+439
select interface_A, protein_A and resi 3+4+5+6+71+72+73+74+93+94+96+97+98+100+101+103+104+105+106+107+108+109+17+18+37+50+55+57+58+59+60+61+62+63+64+65+88+89+90
select interface_B, protein_B and resi 110+111+112+113+114+115+201+202+203+205+206+207+209+210+213+214+216+217+218+219
delete points_1
deselect
orient
