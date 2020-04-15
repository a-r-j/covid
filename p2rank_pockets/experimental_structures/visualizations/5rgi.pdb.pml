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

load data/5rgi.pdb, protein
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

load data/5rgi.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [169,174,178,179,180,183,310,311,312,331,336,341,342,345,368,369,371,1088,1099,1105,1108,1109,1110,1112,1113,1121,1122,1126,1269,1273,1282,1284,1292,1294,1296,1299,1300,1302,1303,1476,1477,1478,1479] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [845,846,848,852,853,854,855,857,858,859,868,1029,1030,1550,1551,1553,1560,1565,1573,1901,1902,1904,1909,1912,1927,1941,1944,1952,1953,1954,1976,1977,2295,2305] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [819,820,821,839,865,866,869,870,873,875,1164,1165,1166,1167,1170,1171,1176,1180,1183,1221,1222,2287,2300,2303,2313,2337] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [102,111,121,225,227,545,546,547,548,549,570,749,750,758,759,943] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [299,300,391,407,410,655,656,657,660,667,1400,1401,1404,1405,1407,1427,1438,1447,1450,1451,1459] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [45,46,47,48,53,56,61,63,65,72,994,2277,2310,2311,2312,2313,2314,2332,2334,2335,2337,2344,2348,2368] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [232,241,244,257,259,275,277,652,691,791,793,811,813] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [41,1069,1070,1072,1074,1526,1543,1544,2235,2240,2246,2252,2254,2259,2260,2261,2266,2267,2268,2269,2270] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1543,1544,1868,1871,1893,1895,2126,2132,2134,2138,2157,2160,2165,2166,2227,2230,2233,2237,2240,2241,2242,2243,2259,2260,2261] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1936,1958,1960,1987,1989,2009,2010,2045,2048,2049,2053,2055,2056,2060,2061,2062] 
set surface_color,  pcol10, surf_pocket10 


deselect

orient
