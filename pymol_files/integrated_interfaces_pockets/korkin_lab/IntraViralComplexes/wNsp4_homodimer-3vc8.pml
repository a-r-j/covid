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

load data/wNsp4_homodimer-3vc8.pdb, protein
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

load data/wNsp4_homodimer-3vc8.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [562,564,569,572,686,687,690,692,693,695,696,697,698,699,866,868,869,874,880,882,884,914,916,923,925,958,1121,1150,1151,1152,1154,1173,1175] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2,7,37,38,39,57,58,70,71,73,74,75,76,125,126,128,151,152,158,159,160,188] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [989,990,991,1014,1022,1023,1024,1025,1026,1032,1141,1143,1158,1163,1165,1166,1168,1306,1313,1315,1317,1318,1321] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1014,1022,1023,1024,1025,1026,1032,1050,1055,1065,1067,1071,1073,1076,1141,1143,1317,1318,1329,1331,1332,1334] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [317,349,354,356,358,381,492,493,494,648,650,653,654,656,657,661,662,666] 
set surface_color,  pcol5, surf_pocket5 


deselect

orient
split_chains
select interface_A, protein_A and resi 13+14+15+17+18+19+21+22+25+28+35+66+69+70+85+86+87+88+89+90
select interface_B, protein_B and resi 91+92+94+98+99+100+102+103+104+106+107+108+109+138+141+142+145+161
delete points_1
deselect
orient
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp4_homodimer-3vc8_out/pockets/pocket1_vert.pqr, fpocket_pocket1_vert partial=1
show_as spheres, (fpocket_pocket1_vert)
color red, (fpocket_pocket1_vert)
