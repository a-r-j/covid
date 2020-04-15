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

load data/6w63.pdb, protein
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

load data/6w63.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [354,355,363,366,608,609,610,611,612,613,614,660,661,662,723,724,725,726,2166,2185,2186,2203,2206,2208,2216,2217,2228,2239,2500,2511,2526,2529,2531,2542,2545,2546,2841,2842,2843,2852,2853,2854,2855,2876,2877,2880,2881,2884] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [124,1630,1632,1667,1672,1727,1728,1729,1731,1743,1745,2310,2311,2312,2313,2323,2344,2345,2346,2359,2415,2416,4458,4485,4486,4487,4489,4491,4507,4551,4646,4648] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1689,1692,1705,1706,1717,1718,1719,1730,3034,3053,3070,3685,3687,3688,3689,3699,3779,3780,3781,3823,3824,4473] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [207,220,221,222,240,446,448,1079,1081,1087,1088,1497,1498,1499,1879,1900] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [589,805,807,1289,1294,1307,2749,2807,2825,2828,2829,2846,2859,2860] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [463,486,509,544,545,1355,1356,1572,1573,1615] 
set surface_color,  pcol6, surf_pocket6 


deselect

orient
