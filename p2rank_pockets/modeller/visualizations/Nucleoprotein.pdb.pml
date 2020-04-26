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

load data/Nucleoprotein.pdb, protein
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

load data/Nucleoprotein.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [5556,5558,5576,5590,5608,5610,5611,5623,5626,5677,5872,5873,5874,5875,5887,5928,5942,5943,6130,6131,6141,6152,6153,6154,6171,6172,6223,6226,6232,6235,6237,6293,6803,6805,6808,6827,6849,6852,6858,6861,6863,7121,7166,7167,7168,7169,7170,7171,7212,7313,7429,7430,7447,7457,7470,7757,7790,7791,7840,7843,7849,7852,7853] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [67,81,99,102,116,117,168,363,364,365,366,397,416,417,419,433,434,617,622,632,633,638,643,644,645,662,663,702,714,717,723,728,761,779,784,792,1296,1299,1318,1340,1343,1349,1352,1354,1371,1657,1659,1660,1703,2248,2282,2334,2340,2343,2344] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [6318,7897,7900,7914,7930,7933,7934,7935,7936,7980,7990,7992,8020,8021,8080,8103,8105,8107,8118,8122,8145,8146,8150,8151,8155,8161,8165,8166,8167,8185,8186,8187,8188,8192,8193,8194,8195,8199,8204,8229,8231,8237,8238,8242,8511,8542,8548,8549,8552,8553] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [2405,2421,2424,2425,2427,2455,2481,2483,2506,2510,2511,2512,2571,2589,2592,2594,2609,2613,2642,2645,2646,2676,2683,2684,2685,2686,2694,2695,2733,3039,3040,3044,3053,3070] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [1,2,5,6,7,20,23,48,50,179,217,218,234,265,275,297,298,307,317,320,321,453,454,455,472,631,632,633,634,638,639,641,642,7804,7812,7814,7817] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [393,405,407,641,660,672,673,674,678,685,692,6247,6253,6619,6620,6632,6648,7829,7832,7839,7842,7859,7863,7864,7866] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [5510,5511,5514,5515,5529,5532,5557,5558,5559,5688,5726,5727,5743,5784,5806,5807,5815,5816,5825,5826,5829,5962,5963,5964,5981,6140,6141,6142,6143,6147,6148,6150,6151] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [744,745,746,1110,1111,1134,1135,1136,1139,1146,1151,2190,2201,2203,2205,2206,2323,2333,2354,2356,2357] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [3881,3882,4639,4651,4654,4661,4662,4665,4671,4676,9435,9932,9934,10020,10022,10091,10092,10148,10160,10170] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [4740,4742,5018,5024,5027,5057,5058,5059,5060,9349,9350,9594,9705,9720,9722,9724,9725,9740,10407,10445,10446] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [3924,3926,4423,4425,4511,4513,4581,4583,4589,4590,4639,9391,10148,10160,10163,10170,10171,10174] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [6455,6456,6457,6458,6459,6460,6461,6478,6496,8379,8382,8389,8393,8394,8442,8453,8454,8489,8490,8491,8495,8496,8500,8525] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [5008,5017,5018,5019,5020,5024,5028,9705,9706,9707,9720,9722,9724,10350,10380,10444,10445,10446,10483] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [6495,6496,6497,6499,6500,6501,6509,6533,6534,6545,6548,8344,8345,8382,8496,8499,8500] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [5188,5190,5256,5257,5330,5331,10330,10364,10425,10426] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [5057,5058,5059,5060,5061,9347,9348,9349,9350,10446] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [1162,1189,1200,1201,2094,2126,2138,2157,2188,2189,2190,2191,2192] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [2308,2309,6200,6201,6213,7266,7271,7275,7284,7287,7324,7681,7683,7684,7685,7686,7741] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [4672,4674,4675,4676,4716,4732,9443,9447,9540,9600,9847,9849,10025,10026] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [4821,4855,4916,4917,10697,10699,10766,10840] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [4031,4338,4340,10223,10225,10241,10242] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [4636,4639,4642,4696,4698,4700,10139,10145,10148,10150,10151,10205,10207] 
set surface_color,  pcol22, surf_pocket22 


deselect

orient
