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

load data/6w41.pdb, protein
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

load data/6w41.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [3404,3405,3406,3407,3409,3413,3414,3437,3440,3449,3450,3451,3620,3623,3643,3644,3645,3646,3652,3654,3679,3680,3691,3700,3702] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.353,0.702]
select surf_pocket2, protein and id [994,998,999,1009,1016,1019,1021,1026,1027,1045,1050,1053,1054,1057,2583,2588,2591,2594,2596,2598,2601,3300,3302] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.388,0.361,0.902]
select surf_pocket3, protein and id [1896,1898,1915,1934,1935,2093,2094,3824,3825,3840,3842,4144,4841] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.396,0.278,0.702]
select surf_pocket4, protein and id [444,445,460,461,781,782,784,785,788,789,1878,2407,2417,2420,2422,2427,2428,3744,3745,3746,3749,3751,3993,3997,3998,3999,4114,4130] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.631,0.361,0.902]
select surf_pocket5, protein and id [321,322,707,708,709,871,884,885,889,1143,1144,1147,1302,1305,1348,1349] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.584,0.278,0.702]
select surf_pocket6, protein and id [1,2,8,191,194,196,201,203,229,239,240,3659,3660,3661,3662,3673,3782,3783] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.875,0.361,0.902]
select surf_pocket7, protein and id [184,186,187,189,200,204,208,211,213,216,218,220,221,222,414,416,419,420,572,573,598,599,3684,3685,3695,3704,3705,3706] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.627]
select surf_pocket8, protein and id [1890,3872,4108,4109,4122,4125,4126,4133,4138,4141,4142,4420,4422,4813,4818,4830,4834] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.682]
select surf_pocket9, protein and id [3436,3437,3445,3449,3450,3451,3679,3680,3690,3691,3700,3702,4181,4182,4183,4184,4186] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.439]
select surf_pocket10, protein and id [687,707,708,709,884,885,889,894,897,898,1305,1349] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.439]
select surf_pocket11, protein and id [803,2077,2090,2091,2093,3765,3769,3770] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.310,0.278]
select surf_pocket12, protein and id [297,316,379,492,501,503,523,524,526,647,649,682,683,693,694,701] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.522,0.361]
select surf_pocket13, protein and id [1982,1983,1984,2000,2002,2043,2044,2045,2156,2157,2186,2187,2311,2314,2315,2316,2323] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.502,0.278]
select surf_pocket14, protein and id [4353,4354,4577,4607,4608,4609,4611,4612,4613,4615,4618,4649] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.765,0.361]
select surf_pocket15, protein and id [3930,3953,4029,4030,4031,4032,4322,4323,4646,4737] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.690,0.278]
select surf_pocket16, protein and id [245,391,762,763,775,793,809,811,2445] 
set surface_color,  pcol16, surf_pocket16 


deselect

orient
