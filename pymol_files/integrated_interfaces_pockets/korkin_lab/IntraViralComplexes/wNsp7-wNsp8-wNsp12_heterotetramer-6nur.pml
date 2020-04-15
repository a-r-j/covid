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

load data/wNsp7-wNsp8-wNsp12_heterotetramer-6nur.pdb, protein
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

load data/wNsp7-wNsp8-wNsp12_heterotetramer-6nur.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [74,76,96,101,102,104,106,129,130,131,141,142,143,719,735,738,742,750,966,1003,1004,2832,2860,4700,4701,4720,4722,4723,4724,4725,4727,4729,4850,4854,4855,4860,4884,4885,4886,4887,4888,4889,4890,4924,4925,4935] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.396,0.702]
select surf_pocket2, protein and id [1706,1709,1725,1732,1733,1734,1735,1740,1882,1895,1907,1910,1911,1912,1913,1923,2261,2263,2265,2266,2267,2270,2272,2759,2761,2790,2801,2803,4416,4417,4419,4432,4495,4496,4507,4509,4510,4511,4512,4514,6788] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.443,0.902]
select surf_pocket3, protein and id [635,637,639,658,661,662,690,700,701,702,820,843,844,846,848,849,851,866,867,869,874,888] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.290,0.702]
select surf_pocket4, protein and id [2210,2211,2225,2227,2245,2333,2334,2335,2336,2338,2339,2346,2352,2358,2360,2675,2677,2691,2694,4456,4457,4458,4459,4462,4463,4464,4466,4469,4486,4488,6867,6868] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.412,0.361,0.902]
select surf_pocket5, protein and id [2756,3442,3459,3571,3574,3584,4094,4103,4440,4503,4505,4529,4533,4536,4538,4539] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.373,0.278,0.702]
select surf_pocket6, protein and id [5538,5539,5540,5557,5558,5563,5565,5609,5610,5611,5612,5613,5614,5617,5623,5625,5626,5628,5632,5639,5737,5738,5739,6051,6053,6058,6060,6096,6097] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.545,0.361,0.902]
select surf_pocket7, protein and id [1245,1707,1714,2202,2213,2218,2222,2229,2269,2271,2274,2276,2278,2281,2283,2286,2293,6790,6816,6818,6819,7027,7028,7029,7033,7034] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.478,0.278,0.702]
select surf_pocket8, protein and id [1783,1784,1852,1854,1862,1965,1968,1982,1986,1987,1989,1990,1991,1993,1995,1996,2000,2002,2079,2081,2084,2105,2106,2107,2116,2118,2137,3359,3361,3363,3408] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.678,0.361,0.902]
select surf_pocket9, protein and id [4005,4006,4010,4025,5213,5214,5227,5230,5252,5253,5254,5255,5256,5296,5297,5302,5303,5304,5314,5493,5494] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.580,0.278,0.702]
select surf_pocket10, protein and id [2161,2162,2169,2182,2183,2185,2306,2309,2311,2315,3137,3139,3172,3173,3174,6565,6567,6568,6571,6593,6594,6595,6601,6602,6629,6630] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.816,0.361,0.902]
select surf_pocket11, protein and id [2349,2352,2354,2357,2371,2672,2673,2680,7130,7132,7288,7291,7521,7527,7535,7536,7537,7539,7573] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.686,0.278,0.702]
select surf_pocket12, protein and id [372,373,406,407,423,424,425,433,434,5427,5432,5444,5466,5467] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.851]
select surf_pocket13, protein and id [3067,3071,3079,3083,3085,3088,3090,3111,3112,3113,3626,3628,3657,3659,3660,3698,3701,3725,4545,4553,4555,4556,4558] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.612]
select surf_pocket14, protein and id [2712,3547,3556,3558,3568,3571,3574,4091,4092,4094,4101,4102,4103,4529,4536,4538,4539] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.718]
select surf_pocket15, protein and id [106,135,138,140,145,4699,4702,4728,4729,5311,5312,5315,5316,5318,5322,5324,5347,5348,5355] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.506]
select surf_pocket16, protein and id [3896,3926,3928,3929,3948,3949,3951,3953,3963,4000,5523,5526,5528,5530,5636,5637,5687,5696,5711,5712] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.584]
select surf_pocket17, protein and id [3985,4786,4800,4801,4802,4803,4804,4805,4806,5026,5029,5031,5061,5062,5064,5094,5096,5105,5107,5246] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.400]
select surf_pocket18, protein and id [2433,2434,2461,2463,2469,2471,2472,2473,2494,2495,2496,7377,7378,7379,7963,7964,7966,7967,7968,7969,7971,7973,7975,7997,7998,8000,8001] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.451]
select surf_pocket19, protein and id [1106,1109,1112,1135,1148,1206,1207,1228,1229,1317,1318,1319,1345,1347,1355,1383,1682] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.298]
select surf_pocket20, protein and id [3110,3112,3116,3118,3119,3165,3200,3451,3465,3468,3577,3579,3588] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.404,0.361]
select surf_pocket21, protein and id [3818,3828,3838,3839,5156,5588,5589,5591,5604] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.369,0.278]
select surf_pocket22, protein and id [8091,8092,8094,8126,8127,8128,8243,8245,8254,8258,8260,8381,8397] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.537,0.361]
select surf_pocket23, protein and id [2950,2952,3783,3787,3789,3790,3792,3936,3938,5081,5082,5086,5090,5120,5122,5124,5127,5134] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.471,0.278]
select surf_pocket24, protein and id [3011,3014,3021,3022,3027,3325,3344,3346,3380,3670,4264,4267] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.675,0.361]
select surf_pocket25, protein and id [4060,4062,4084,4085,4086,4093,4115,4118,4526,4527,4598,4599,4602,4621,4623,4624,5166,5403] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.576,0.278]
select surf_pocket26, protein and id [167,173,177,189,219,221,333,341,381,382,383,385,395,397] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.808,0.361]
select surf_pocket27, protein and id [7530,7551,7552,7553,7554,7788,7790,7812,7813,7817,7819,7820,8152,8159,8161,8164] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.678,0.278]
select surf_pocket28, protein and id [1515,1516,1517,1519,1945,1953,1957,1962,1974,4289,4290,4291,4333,4334] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.859,0.902,0.361]
select surf_pocket29, protein and id [1337,1363,1365,1373,1374,1419,1445,1462,1467,1470,1472,1481] 
set surface_color,  pcol29, surf_pocket29 


deselect

orient
split_chains
select interface_C, protein_C and resi 918+921+922+924+925+928+929+931+932+935+936+944+947+948+951+965+966+967+968+969+970+972+973+974+975+976+977+979+981+982+983+984+985+987+918+920+921+923+924+927+928+930+931+934+939+942+945+946+949+952+953+956+957+940+941+942+943
select interface_D, protein_D and resi 988+991+992+994+995+996+998+999+1000+1001+1002+1004+1006+1007+1010+1011+1014+1015+1019+1020+1021+1022+1023+1024+1026+1054+1094+991+994+997+998+1001
select interface_A, protein_A and resi 293+294+295+296+297+299+304+308+313+315+321+322+324+325+326+327+328+329+330+434+435+436+727+154+155+156+157+158+207+208+209+210+211+212+213+214+215+216+219+222+223+224+225+228+239+250+252+255+256+258+259+262+263+264+265+266+267+268+269+270+271+272+273+274+275+276+280+282+283+284
select interface_A, interface_A or resi 287+288+289+291+331+389+390+392+393+398+399+401+402+403+407+550+559+298+299+301+304+308
select interface_B, protein_B and resi 889+890+905+906+907+908+909+804+806+807+810+811+813+814+815+817+818+819+821+822+824+825+826+830+831+833+834+836+837+838+839+840+841+842+843+844+845+846+847+848+849+851+852+854+855+856+857+858+859+860+864+867+868+874+876+877+881+885+887+889+891+910+912+914
delete points_1
deselect
orient
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp7-wNsp8-wNsp12_heterotetramer-6nur_out/pockets/pocket1_vert.pqr, fpocket_pocket1_vert partial=1
show_as spheres, (fpocket_pocket1_vert)
color red, (fpocket_pocket1_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp7-wNsp8-wNsp12_heterotetramer-6nur_out/pockets/pocket5_vert.pqr, fpocket_pocket5_vert partial=1
show_as spheres, (fpocket_pocket5_vert)
color red, (fpocket_pocket5_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp7-wNsp8-wNsp12_heterotetramer-6nur_out/pockets/pocket16_vert.pqr, fpocket_pocket16_vert partial=1
show_as spheres, (fpocket_pocket16_vert)
color red, (fpocket_pocket16_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp7-wNsp8-wNsp12_heterotetramer-6nur_out/pockets/pocket31_vert.pqr, fpocket_pocket31_vert partial=1
show_as spheres, (fpocket_pocket31_vert)
color red, (fpocket_pocket31_vert)
