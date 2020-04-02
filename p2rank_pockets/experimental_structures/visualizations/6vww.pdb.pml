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

load data/6vww.pdb, protein
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

load data/6vww.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [580,596,744,745,746,1320,1558,1560,1571,1572,1573,1574,1575,1579,1588,1591,1595,1599,1600,1601,1603,2030,2031,2143,2145,2163,2193,2204,2209,2215,2230,2231,2232,2233,2234,2251,2252,2253,2365,2375,2379] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [4682,4683,4759,4761,4768,4774,4797,4798,5115,5117,5127,5128,5148,5450,5466,5467,5468,5469,5470,5472,5532,5534,5552,5553,5554,5555,5556,5581] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3381,3529,3530,3531,4354,4355,4356,4361,4362,4370,4371,4374,4378,4382,4813,4814,4928,4943,4946,4976,4987,4992,4998,5013,5014,5015,5016,5034,5035,5036,5151,5152,5154,5156,5157,5164,5168] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1897,1899,1900,1977,1980,1985,1991,2014,2015,2332,2334,2344,2345,2354,2359,2671,2734,2735,2736,2753,2754,2755,2756,2757,2758,2763] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [361,367,372,374,377,380,381,493,495,496,498,712,715,732,734,761,762,763,764,765] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2911,3157,3159,3162,3165,3278,3280,3283,3307,3308,3497,3500,3517,3519,3546,3547,3548,3549,4073,4074] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1251,1259,1264,1265,1267,1387,1532,1537,1543,1546,1547,1550,1568,1569,2398,2421,2422] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2155,2168,2169,2170,2171,2172,2173,2174,2262,2264,2338,2339,2340,2347] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4937,4951,4952,4953,4955,4956,4957,5045,5047,5121,5122,5123,5130] 
set surface_color,  pcol9, surf_pocket9 


deselect

orient
