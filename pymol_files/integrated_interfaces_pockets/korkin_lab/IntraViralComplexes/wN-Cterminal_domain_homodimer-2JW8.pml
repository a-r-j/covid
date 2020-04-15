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

load data/wN-Cterminal_domain_homodimer-2JW8.pdb, protein
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

load data/wN-Cterminal_domain_homodimer-2JW8.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [516,520,539,541,546,547,548,549,550,551,579,580,581,582,1073,1120,1125,1128,1147,1150,1152,1153,1159,1175,1230,1241,1249,1251,1284,1285,1291,1340,1367,1374,1375,1376,1399,1400,1768,1776,1778,1798,1799,1800,1801,1802,1803] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [112,113,131,182,184,185,186,210,211,213,215,217,218,219,220,221,222,289,291,306,308,312,314,316,347,355,430,433,435,436,437,438,439,442,461,462,463,464,467,468,469,864,866,1443,1444,1447,1449,1451,1453,1455,1476,1479,1484,1486,1487,1488,1490,1491] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [520,1065,1066,1068,1071,1073,1152,1153,1285,1322,1375,1376] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [485,487,499,501,705,706,717,723,1038,1039,1041,1470,1482,1600,1615] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [88,89,97,119,120,207,212,214,218,273,275,280,1460,1491,1493,1494,1496,1633,1635,1637,1643,1651,1652] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [506,507,510,512,515,518,1065,1066,1067,1068,1071,1322,1323,1372,1375,1406] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [79,89,92,93,207,1648,1649,1651,1652] 
set surface_color,  pcol7, surf_pocket7 


deselect

orient
split_chains
select interface_A, protein_A and resi 12+13+14+15+16+17+28+33+34+35+36+38+39+40+55+58+59+60+61+62+63+64+65+66+67+68+69+70+71+72+73+74+75+76+78+82+83+84+85+86+87+88+89+90+91+92+93+94+95+96+97+100+104+107+108+111+114
select interface_B, protein_B and resi 129+131+132+133+134+135+146+151+152+153+154+155+156+157+158+163+173+176+177+179+180+181+182+183+184+185+186+187+188+189+190+191+192+193+194+196+200+201+202+203+204+205+206+207+208+209+210+211+213+214+218+222+225+226+229
delete points_1
deselect
orient
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wN-Cterminal_domain_homodimer-2JW8_out/pockets/pocket1_vert.pqr, fpocket_pocket1_vert partial=1
show_as spheres, (fpocket_pocket1_vert)
color red, (fpocket_pocket1_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wN-Cterminal_domain_homodimer-2JW8_out/pockets/pocket2_vert.pqr, fpocket_pocket2_vert partial=1
show_as spheres, (fpocket_pocket2_vert)
color red, (fpocket_pocket2_vert)
