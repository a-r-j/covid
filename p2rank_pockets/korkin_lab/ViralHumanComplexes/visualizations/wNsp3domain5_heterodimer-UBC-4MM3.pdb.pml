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

load data/wNsp3domain5_heterodimer-UBC-4MM3.pdb, protein
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

load data/wNsp3domain5_heterodimer-UBC-4MM3.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [353,354,355,356,358,359,360,361,362,363,366,368,370,373,374,466,469,474,486,511,513,516,522,2079,2081,2096,2097,2109,2131,2138,2150,2152,2153,2154,2168,2169,2170,2179,2184,2363,2366,2371,2373,2375,2379,2380,2381,2382,2383,2385,2386,2434] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [49,50,59,61,62,63,65,67,76,360,362,363,364,533,534,535,536,537,538,548,552,2244,2245,2255,2256,2257,2258,2259,2260,2263,2306,2347,2348,2349,2352,2360,2365,2371,2435,2552,2554] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [703,1168,1169,1179,1271,1272,1658,1660,1680,1681,1682,1683,1686,1687,1688,1720,1721,1772,1773,1774,1775,1805] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [653,654,656,657,667,668,671,672,749,752,755,766,767,812,814,844,846,848,866,867,1027,1051] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1463,1464,1483,1895,1896,2735,2736,2739,2740,2741,2742,2745,2746,2747] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [886,887,904,916,918,940,942,943,991,992,993] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2675,2676,2678,2696,2769,2771,2852,2853,2899,2900,2901,2915,2938,2940,2942,2954] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1194,1197,1198,1234,1236,1828,1833,1840,1852,1961,1963,1970,1992,1993,2004,2006] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1456,1457,1458,1459,1460,1461,1462,1463,1464,2745,2746,2748,2750,2867,2868,2869] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2279,2297,2585,2586,2598,2632,2633,2634,3014,3015] 
set surface_color,  pcol10, surf_pocket10 


deselect

orient
