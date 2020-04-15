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

load data/wNsp3-domain3_homotetramer-2wct.pdb, protein
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

load data/wNsp3-domain3_homotetramer-2wct.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [3591,4308,4311,4349,4351,4355,4356,4357,4360,4362,4363,4364,4640,4642,4643,4644,4645,4648,4660,4661,4662,4663,4856,4857,4866,4867,4868,4872,4874,4879,4889,5682,5688,5689,5690,5940,5941,5942,5958,5959] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.408,0.702]
select surf_pocket2, protein and id [2265,2268,2306,2308,2309,2314,2319,2320,2321,2328,2601,2602,2616,2619,2620,2623,2625,2823,2824,2825,2829,2831,2836,3617,3619,3638,3643,3644,3645,3646,3649,3667,3670,3898,3899,3913,3915,3916] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.475,0.902]
select surf_pocket3, protein and id [221,222,225,241,263,265,269,270,271,276,277,278,547,554,556,557,558,559,574,575,576,577,770,780,781,782,786,788,793,803,811,813,1574,1576,1595,1600,1601,1604,1627,1854,1855,1856,1857,1858,1870,1872,1873] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.329,0.702]
select surf_pocket4, protein and id [5187,5196,5198,5200,5327,5329,5332,5335,5336,5337,5359,5360,5361,5382,5611,5774,5780,5781,5782,5783,5784,5785,5788,5790,5791,5792,5798,5801,5807,5808,5810,5812,5813,5816,5819,5821,5827,5865,6000,6002,6005,6006,6008,6009,6010,6011] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.373,0.902]
select surf_pocket5, protein and id [6351,6354,6382,6392,6394,6395,6400,6405,6406,6407,6687,6688,6691,6704,6705,6706,6909,6910,6911,6915,6916,6917,6922,6932,7703,7732,7733,7957,7984,7985] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.310,0.278,0.702]
select surf_pocket6, protein and id [1114,1143,1232,1241,1243,1245,1246,1249,1251,1273,1274,1275,1295,1297,1525,1692,1694,1695,1696,1697,1700,1702,1706,1721,1724,1726,1730,1734,1735,1742,1925] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.451,0.361,0.902]
select surf_pocket7, protein and id [3275,3284,3289,3292,3294,3318,3332,3338,3340,3568,3731,3737,3738,3739,3740,3745,3749,3751,3767,3769,3773,3776,3777,3785,3965] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.392,0.278,0.702]
select surf_pocket8, protein and id [791,794,795,796,1541,1550,1559,1561,1562,1569,1746,1749,1751,1754,1762,1763,1764,1794,1795,1796,1797,1800,1824,6360,6577,6678,6680,6684,6687,6711,6713,6715,6716,6717,6718,6719,6725,6749,6750] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.553,0.361,0.902]
select surf_pocket9, protein and id [565,567,568,570,588,592,594,595,597,600,603,611,612,613,847,6695,6696,6697,6699,6721,6726,6732,6927,6934,6951,6976,7945,7946] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.471,0.278,0.702]
select surf_pocket10, protein and id [222,228,231,233,448,547,549,551,555,559,561,582,583,584,588,589,590,597,620,621,6919,6924,6926,6927,6928,7670,7679,7688,7689,7690,7697,7878,7880,7883,7891,7892,7893,7925,7926,7945,7946] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.655,0.361,0.902]
select surf_pocket11, protein and id [2170,2171,2172,2173,2177,2180,2182,7823,7829,7831,7833,7853,7855,7856,7906,7908,7909,8043,8051,8053,8054,8059,8060,8079,8080] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.549,0.278,0.702]
select surf_pocket12, protein and id [2274,2491,2598,2604,2625,2627,2630,2631,2632,2633,2638,2639,2640,2663,2664,4653,4654,4880,4881,4884,4885,4887,4891,4908,5627,5636,5647,5648,5835,5837,5840,5849,5850,5882,5883,5886,5899,5901] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.757,0.361,0.902]
select surf_pocket13, protein and id [13,14,15,34,35,51,286,755,756,757,758,828,829,858,860,861,892,957,970,972,974,976,978,1846,2016,2023,2029,2030,2031,2032,2036,2039] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.627,0.278,0.702]
select surf_pocket14, protein and id [2182,2184,7272,7361,7370,7372,7375,7378,7380,7403,7426,7654,7823,7824,7825,7826,7835,7841,7859,7871] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.859,0.361,0.902]
select surf_pocket15, protein and id [2607,2608,2613,2631,2635,2637,2646,2837,2838,2842,2843,2844,2848,2864,2865,2886,2888,2889,2890,3805,3807,3837,3838,3839,3840,3841,3843,3858,3860,4651,4652,4653,4656,4674,4678,4680,4681,4683,4686,4689,4698,4699,4706] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.278,0.690]
select surf_pocket16, protein and id [6163,6164,6173,6189,6884,6886,6887,6908,6957,6958,6965,6966,6967,6988,6989,6990,7099,7101,7102,7103,7105,7107,7108,7975,8145,8152,8154,8157,8158,8159,8160,8161,8162] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.361,0.839]
select surf_pocket17, protein and id [2057,2058,2077,2078,2329,2798,2800,2801,2871,2872,2902,2903,2904,2934,3001,3013,3015,3019,3021,3890,3891,4059,4066,4071,4072,4073,4074,4075] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.278,0.612]
select surf_pocket18, protein and id [4100,4101,4103,4120,4121,4843,4844,4913,4914,4915,4946,4947,4977,5056,5058,5062,6116,6117,6118] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.361,0.733]
select surf_pocket19, protein and id [2841,2842,3584,3591,3593,3602,3605,3789,3792,3794,3797,3806,3807,4317,4319,4534,4633,4641,4645,4647,4668,4670,4673,4675,4676,4706,4707] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.702,0.278,0.533]
select surf_pocket20, protein and id [1009,1036,1051,1053,1078,1097,1161,1166,1215,1216,1667,1886,1893,1895,1896,1897,1898] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.902,0.361,0.631]
select surf_pocket21, protein and id [2608,2631,2635,2637,2638,2639,2643,2645,2646,2655,2656,2888,2889,4651,4652,4653,4654,4678,4680,4681,4683,4686,4689,4933] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.702,0.278,0.451]
select surf_pocket22, protein and id [5117,5118,5119,5147,5149,5150,5151,5164,5183,5250,5251,5275,5301,5302,5763,5972,5974,5976,5977,5979,5980,5984,5985] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.902,0.361,0.529]
select surf_pocket23, protein and id [196,259,260,261,296,317,318,319,340,353,354,355,375,383,511] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.702,0.278,0.373]
select surf_pocket24, protein and id [6389,6448,6482,6484,6485,6486,6504,6512,6640] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.902,0.361,0.427]
select surf_pocket25, protein and id [567,794,795,796,805,822,1762,1764,1794,1795,1796,1797,1798,1800,1813,1815,1816,1817,6717,6725,6726,6741,6749] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.702,0.278,0.294]
select surf_pocket26, protein and id [4843,4844,4861,4865,4869,4871,4914,5056,5058,5060,5062,5063,5064,5065,5066,5907,5932,5933,5934,6102,6109,6115,6116,6117,6124,6125] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.902,0.392,0.361]
select surf_pocket27, protein and id [7115,7116,7118,7126,7128,7129,7130,7194,7195,7197,7201,7965,7970,7993,7995,8011,8019,8021,8023,8033,8035,8109] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.702,0.345,0.278]
select surf_pocket28, protein and id [6158,6165,6166,6167,6168,6169,6170,6171,6248,6249,6262,6264,6273,6280,6285,7072,7073,7074,7076,7078,7094] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.902,0.498,0.361]
select surf_pocket29, protein and id [3739,3745,3767,3769,3770,3820,3822,3823,3959,3960,3965,3967,3968,3973,3994] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.702,0.427,0.278]
select surf_pocket30, protein and id [411,423,428,438,439,440,441,458,459,460,2105,2113,2114,2130,2131,2153,2154,2156,7404,7410,7412,7413,7863,7871] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.902,0.600,0.361]
select surf_pocket31, protein and id [3078,3106,3108,3120,3121,3122,3140,3204,3209,3258,3259,3940,3942] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.702,0.506,0.278]
select surf_pocket32, protein and id [985,987,989,997,1063,1065,1071,1836,1841,1843,1861,1864,1866,1882,1894,1904,1906,2013] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.902,0.702,0.361]
select surf_pocket33, protein and id [2205,2206,2207,2208,2215,2216,2541,2745,2746,2747,2748,7214,7216,7236,7253,7262,7263,7264,8056,8065] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.702,0.584,0.278]
select surf_pocket34, protein and id [5072,5075,5083,5121,5122,5151,5152,5157,5923,5927,5929,5952,5978,5980,5992,6066,6076,6099] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.902,0.804,0.361]
select surf_pocket35, protein and id [7192,7194,7226,7293,7295,7344,7345,8022,8023,8024,8026,8027] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.702,0.663,0.278]
select surf_pocket36, protein and id [438,440,450,454,459,672,674,676,2103,2130,2131,2145,2146,2148,7863,7866] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.894,0.902,0.361]
select surf_pocket37, protein and id [4281,4282,4346,4405,4459,4461,4468,4594,4596] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.655,0.702,0.278]
select surf_pocket38, protein and id [4659,4661,4663,5646,5647,5648,5660,5663,5664,5665,5666,5690] 
set surface_color,  pcol38, surf_pocket38 


deselect

orient
split_chains
select interface_C, protein_C and resi 556+557+558+580+582+583+584+585+587+601+602+603+604+605+607+609+610+613+633+692+693+694+725+726+728+751+752+753+754+755+756+759
select interface_D, protein_D and resi 934+935+936+937+938+956+957+958+959+960+962+963+966+1010+1014+1015+1016+1040+1041+1042+1043+821+822+844+845+846+847+848+849+866+867+868+869+871+873+874+877+897+956+957+958+988+989+990+992+1015+1016+1017+1018+1019+1020+1023+1026
select interface_A, protein_A and resi 22+52+55+56+58+59+60+61+62+64+88+89+91+92+93+95+29+30+52+54+55+56+57+72+74+75+76+77+79+81+82+85+89+105+164+165+166+196+197+198+200+223+224+225+226+227+228+231
select interface_B, protein_B and resi 267+274+275+276+278+279+280+281+282+283+284+285+329+357+358+388+293+294+316+318+319+320+321+338+339+340+341+343+345+346+349+353+369+428+429+430+461+462+464+487+488+489+490+491+492+495+498+272+273+274+276+278+279+397+398+399+400+402
delete points_1
deselect
orient
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp3-domain3_homotetramer-2wct_out/pockets/pocket1_vert.pqr, fpocket_pocket1_vert partial=1
show_as spheres, (fpocket_pocket1_vert)
color red, (fpocket_pocket1_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp3-domain3_homotetramer-2wct_out/pockets/pocket10_vert.pqr, fpocket_pocket10_vert partial=1
show_as spheres, (fpocket_pocket10_vert)
color red, (fpocket_pocket10_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp3-domain3_homotetramer-2wct_out/pockets/pocket13_vert.pqr, fpocket_pocket13_vert partial=1
show_as spheres, (fpocket_pocket13_vert)
color red, (fpocket_pocket13_vert)
load /home/arj39/Documents/github/covid/pockets/korkin_lab/IntraViralComplexes/wNsp3-domain3_homotetramer-2wct_out/pockets/pocket66_vert.pqr, fpocket_pocket66_vert partial=1
show_as spheres, (fpocket_pocket66_vert)
color red, (fpocket_pocket66_vert)
