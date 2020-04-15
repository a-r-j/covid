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

load data/wNsp3-domain2_homotetramer-2acf.pdb, protein
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

load data/wNsp3-domain2_homotetramer-2acf.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [160,165,171,172,286,288,295,296,297,299,302,351,353,354,355,356,357,358,359,360,361,364,369,378,698,715,718,740,742,926,930,933,934,937,954,955,956,957,958,961,963,964,965,966,973,975,976,977,1000,1001,1146,1151,1154,1156,1157,1158,1159,1160,1161,1162,1167,1192,1193,1195] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1997,1999,2001,2003,2007,2009,3987,3991,3993,3995,4108,4110,4121,4159,4171,4172,4173,4174,4175,4176,4177,4178,4179,4180,4181,4182,4183,4186,4200,4748,4752,4754,4759,4768,4774,4776,4777,4778,4779,4780,4782,4783,4785,4786,4787,4788,4795,4796,4797,4798,4799,4821,4823,4968,4972,4976,4978,4979,4980,4981,5014,5015,5016,5017] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1434,1443,1445,1447,1560,1562,1566,1568,1611,1623,1624,1625,1626,1627,1628,1629,1630,1631,1632,1634,1635,1636,1637,1638,1641,1643,2200,2204,2206,2211,2228,2229,2230,2231,2232,2233,2234,2235,2237,2239,2240,2249,2251,2273,2275,2420,2422,2424,2425,2428,2430,2439,2441,2468,2469,4546,4547,4548,4549,4551,4555,4557] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [2834,2836,2842,2843,2844,2845,2846,2847,2850,2885,2896,2900,2903,2905,2908,2910,2917,3114,3245,3246,3253,3263,3266,3280,3281,3289,3290,3302,3303,3474,3478,3480,3482,3483,3485,3494,3502,3503,3504,3505,3506,3509,3511,3512,3513,3514,3523,3524,3525,3536,3547,3548,3549,3694,3696,3698,3702,3704,3713,3742,3743] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [1608,1609,1734,1736,1754,1755,1757,1758,1759,1760,1761,1762,1765,1790,2596,2597,2599,2600,2611,2614,2617,2688,2690,2696,2698,3725,3726,3727,3752,3754,3761,3762,3763] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [2722,2834,2905,2906,2907,2908,2909,2910,2912,3474,3485,3502,3503,3504,3505,3506,3694,3702,3704] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [1579,1580,1815,1836,1838,1839,2013,2026,2029,4126,4127,4128,4137,4139,4374,4387,4388,4562,4563,4564,4574,4577] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [252,258,591,592,593,656,657,659,660,661,869,875,881,882,883,5007,5008,5009] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [3846,3858,3863,3876,3885,3947,3948,3949,4720,4934,4950,4951,4952] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2567,2572,2579,2581,2584,2589,2625,2626,2651,3445,3447,3657,3658,3659,3660,3676,3677,3678] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [2551,2553,2554,2564,2574,2575,2576,2579,2589,4592,4595,4596,4597,4598,4599,4603,4604,4621,4623,4625,4839,4841,4860,4863,4872,4873,4894] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2572,2574,2576,2579,2589,2593,4547,4590,4592,4593,4807,4811,4816,4836,4837,4838,4839,4841] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1315,1348,1349,1377,1399,1400,1401,2383,2384,2385,2386,2404] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [2807,3140,3141,3198,3199,3204,3205,3207,3208,3209,3429,3430] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [1866,1867,1924,1925,1930,1931,1933,1934,1935,2155,2156] 
set surface_color,  pcol15, surf_pocket15 


deselect

orient
split_chains
select interface_C, protein_C and resi 337+338+340+342+344+345+346+347+349+496+500+503+504
select interface_D, protein_D and resi 672+513+543+544+545+547+549+550+580+599+600+602+603+604+605+606+607+634+635+608+609+610+641+644+648
select interface_A, protein_A and resi 63+66+67+69+70+71+82
select interface_B, protein_B and resi 207+208+209+211+213+244+263+266+267+268+269+270+271+272+275+298+299+211+222+224+225+226+227+229+230+233
delete points_1
deselect
orient
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp3-domain2_homotetramer-2acf_out/pockets/pocket1_vert.pqr, fpocket_pocket1_vert partial=1
show_as spheres, (fpocket_pocket1_vert)
color red, (fpocket_pocket1_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp3-domain2_homotetramer-2acf_out/pockets/pocket3_vert.pqr, fpocket_pocket3_vert partial=1
show_as spheres, (fpocket_pocket3_vert)
color red, (fpocket_pocket3_vert)
