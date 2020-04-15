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

load data/6w9c.pdb, protein
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

load data/6w9c.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [697,699,700,701,703,705,724,725,726,728,731,737,842,851,854,857,858,863,864,865,1259,1261,6138,6145,6148,6157,6181,6182,6183,6184,6187,6188,6189,6193,6201,6230,6231] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.380,0.702]
select surf_pocket2, protein and id [2117,3344,3345,3362,3753,3754,3755,3757,3758,3759,3761,3762,3763,3764,3767,3768,3769,3770,3785,4115,4116,4379,4390,4391,4514,4515,4516,4517,4518,4519,4535,4543,4570,4591,4807,4808,5747,5751,5758,5760,5763,5766,5767,5773] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.400,0.902]
select surf_pocket3, protein and id [4987,4996,4997,4998,4999,5005,5185,5190,5315,5316,5318,5338,5339,5340,5464,5465,5567,5568,5596,5953,5976,5978,5980,5984,6015,6017,6068,6071,6100] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.318,0.278,0.702]
select surf_pocket4, protein and id [3704,3710,3711,3723,3747,3749,3754,3755,3760,3761,3763,3764,3767,3768,3770,3795,3796,3797,5608,5611,5613,5633,5634,5635,5637,5639,5641,5646,5747,5751,5763,5766,5772,5773,5774] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.498,0.361,0.902]
select surf_pocket5, protein and id [867,870,871,872,887,1278,1280,1282,1283,1284,1286,1287,1288,1292,1293,1294,1295,1947,1948,2071,2073,2074,2075,2076,2092,2100,2125,2126,2127,2364,3313,3317,3324,3326,3333,3339,7026] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.455,0.278,0.702]
select surf_pocket6, protein and id [1229,1235,1248,1274,1278,1279,1280,1282,1284,1285,1286,1287,1288,1292,1320,1321,1322,3172,3174,3175,3176,3177,3179,3199,3200,3201,3203,3205,3212,3308,3313,3317,3326,3332,3333,3339,3340] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.675,0.361,0.902]
select surf_pocket7, protein and id [842,849,851,854,858,864,6187,6188,6189,6192,6193,6195,6196,6201,6202,6203,6204,6219,6220,6230,6550,6856,6857,6982,6983,6984,6985,6997,6999,7001,7009,7273] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.592,0.278,0.702]
select surf_pocket8, protein and id [2553,2562,2563,2565,2756,2905,2906,3030,3031,3134,3519,3542,3547,3550,3635,3636,3637,3666] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.851,0.361,0.902]
select surf_pocket9, protein and id [871,872,873,1264,1265,1266,1267,1268,1276,1281,2117,3348,3740,3741,3743,3751,3756,3757,3758,4555,5781,5782,6173,6174,6175,6177,6185,6190,6191,7021,7022,7023] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.671]
select surf_pocket10, protein and id [78,87,88,90,98,555,556,567,658,659,1044,1067,1070,1071,1075,1106,1108,1144,1162,1191] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.773]
select surf_pocket11, protein and id [451,458,498,500,501,502,590,591,593,606,607,608,2649,2666,2792,2799,2806,2812,2814] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.533]
select surf_pocket12, protein and id [592,2745,2747,2749,2766,2770,2780,2802,2803,2804,2805,2826,2827,2828,2829,2830,2831,2853,2854,2855] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.596]
select surf_pocket13, protein and id [58,59,119,138,139,140,220,227,229,232,234,437,439,459,462,468,470,492,493] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.396]
select surf_pocket14, protein and id [693,695,697,699,700,701,703,704,705,728,729,730,6138,6144,6145,6148,6183] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.361,0.420]
select surf_pocket15, protein and id [337,338,339,5360,5361,5408,5409,5410,5411,5499,5502,5515] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.302,0.278]
select surf_pocket16, protein and id [4532,4536,4540,4544,4547,4549,4566,6989,6990,6991,6994,6995,7030,7037,7041] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.478,0.361]
select surf_pocket17, protein and id [274,291,305,329,330,354,378,380] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.439,0.278]
select surf_pocket18, protein and id [6189,6192,6193,6196,6985,7036] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.655,0.361]
select surf_pocket19, protein and id [573,584,585,601,621,1212,1215,1217,1220,1236,1239,1392,1393] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.576,0.278]
select surf_pocket20, protein and id [4137,4141,4142,4154,4158,4414,4415,4416,4421,4428,4434,4435,4440,4442,4461,4462,4463,4843,4845] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.831,0.361]
select surf_pocket21, protein and id [6974,7065,7066,7067,7149,7195,7197,7234,7236,7238,7240,7243,7250] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.686,0.702,0.278]
select surf_pocket22, protein and id [6575,6595,6880,6881,6882,6891,6900,6930,6935,6938,7309] 
set surface_color,  pcol22, surf_pocket22 


deselect

orient
