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

load data/6vsb.pdb, protein
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

load data/6vsb.pdb_points.pdb.gz, points
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
select surf_pocket1, protein and id [4271,4287,4687,5765,6306,6330,6345,6346,6347,6348,6349,6350,6351,6352,6355,6356,6357,6358,6367,6368,6369,6370,6373,6374,6375,6384,6465,6478,6484,6486,6489,6491,6493,11630,11633,11650,12016,12045,12047,12048,12049,12050,12081,13127,13128,13670,13685,13693,13708,13709,13710,13711,13712,13713,13714,13715,13718,13720,13721,13729,13731,13732,13736,13737,13738,13747,13761,13828,13841,13849,13852,13854,13856,13863,13864,13865,13866,13874,13875,18962,19343,19373,19375,19376,19377,19378,19407,19410,21013,21021,21035,21036,21037,21038,21039,21040,21041,21042,21043,21046,21048,21049,21058,21059,21061,21065,21066,21074,21075,21089,21098,21154,21156,21169,21175,21180,21182,21183] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.431,0.702]
select surf_pocket2, protein and id [4503,4504,5936,5944,5945,6117,6118,6119,6120,6123,6125,6126,6127,6129,6130,6153,6154,6155,6156,6157,6185,6186,6187,11864,11866,11867,11888,13299,13300,13302,13482,13483,13484,13486,13488,13489,13490,13493,13515,13516,13517,13518,13520,13546,13548,13549,13550,19192,19194,19195,20627,20628,20810,20811,20816,20817,20818,20819,20821,20843,20844,20845,20846,20847,20848,20868,20876,20877,20878] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.533,0.902]
select surf_pocket3, protein and id [4376,4378,4379,4380,4384,4404,4410,4416,4417,4418,5077,5086,5089,5092,5908,5909,5912,5970,5974,5979,5980,5984,5993,5994,5995,6001,6002,6003,6168,16467,16468,17850,17852,17888,17891,17892,17894,17895,17899,17900,17903,17906,17908,17909,18082,18085,18088,18093,18094,18097,18099,18100,18210,18220,18223,18224,18225,18229,18231,18242,18243,18244,18246] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.278,0.400,0.702]
select surf_pocket4, protein and id [1864,1866,1867,3153,3155,3186,3188,3191,3192,3193,3194,3195,3197,3198,3203,3206,3209,3211,3212,3343,3345,3380,3384,3385,3388,3389,3390,3391,3396,3397,3402,3403,3513,3523,3526,3532,3534,3545,11743,11747,11759,11766,11767,11771,11772,11773,11781,12443,12445,12447,12452,12455,13271,13272,13275,13342,13347,13357,13531] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.361,0.494,0.902]
select surf_pocket5, protein and id [5290,5291,5302,5303,5304,5305,5306,5307,5308,5309,5310,5318,5357,5374,5376,5377,5414,5439,5440,5441,5468,5471,5472,5474,5511,6433,6436,6437,6439,6440,6441,6453,6454,6456,18863,18865,18869,20169,20171,20177,20179,21136,21140,21142,21143,21144,21146,21147,21160,21164,21165,21207,21209,21214,21216,21220,21567,21568,21573,21574,21575,21688,21689,21690,21691,21692,21693,21698,21702,21703,21704] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.278,0.369,0.702]
select surf_pocket6, protein and id [11535,11537,11541,12831,12839,12841,12843,12849,12851,13814,13818,13819,13821,13832,13836,13837,13886,13888,14244,14245,14246,14358,14361,14362,14363,14364,14375,14376,19989,19992,19993,19995,19999,20001,20009,20047,20048,20050,20065,20068,20101,20104,20105,20129,20130,20131,20132,20161,20162,20163,20164,20165,20167,21127,21132,21144,21145,21147] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.361,0.451,0.902]
select surf_pocket7, protein and id [9069,10505,10507,10544,10545,10550,10555,10558,10561,10562,10563,10564,10566,10732,10737,10742,10743,10746,10747,10749,10752,10754,10755,10865,10869,10870,10874,10875,10878,10879,10880,10881,10884,10886,19067,19071,19075,19087,19095,19099,19100,19101,19106,19109,19768,19780,19783,20603,20661,20665,20670,20671,20675,20679,20683,20684,20685,20686,20693,20694,20859] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.278,0.333,0.702]
select surf_pocket8, protein and id [3355,3356,3358,3363,3364,3370,3376,3377,3378,3382,3386,7429,7441,7459,7460,7461,7482,7486,7492,7495,7496,7497,7498,7499,7500,7501,7504,7506,7512,8922,8946,8947,8948,13206,13227,13229,13232,13233,13256,13257,13258,13279,13280,13281,19205,19206,19228,19229,19230] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.361,0.408,0.902]
select surf_pocket9, protein and id [6296,6297,6300,6320,6321,6327,6328,6329,6330,6331,6332,6347,6350,6355,6358,13660,13661,13663,13665,13667,13686,13687,13691,13692,13693,13694,13695,13696,13699,13710,13713,13714,13718,13721,20988,20995,20997,21014,21015,21018,21019,21020,21021,21022,21038,21039,21040,21041,21042,21043,21046,21049] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.278,0.302,0.702]
select surf_pocket10, protein and id [4480,4484,4507,4508,4509,4510,4511,4514,4515,4538,4539,10707,10708,10710,10716,10722,10728,10729,10734,10735,10740,10741,14790,14792,14807,14808,14826,14827,14828,14848,14864,14866,14867,14871,14873,14879,16345,16346,20580,20581,20582,20583,20585,20586,20588,20595,20607,20608,20609,20611,20615] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.361,0.369,0.902]
select surf_pocket11, protein and id [5476,5478,5480,5481,5483,5486,5488,6445,6451,6452,6454,6455,6456,6468,6469,6472,6473,6474,6521,6523,6525,6529,6532,6999,7011,7012,7013,12666,12667,12668,12669,12670,12671,12672,12801,12802,12803,12804,12837,13793,13796,13799,13800,13803,13816,13817] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.290,0.278,0.702]
select surf_pocket12, protein and id [5978,5979,6001,6002,6003,16559,16995,17686,17687,17689,17694,17695,17703,17704,17706,17707,17710,17713,17716,17717,17864,17875,17876,17879,17881,17882,17883,17888,17889,17891,17892,18027,18031,18038,18040,18041,18042,18055,18085,18086,18099,18100,18120,18124,18141,18144,18146] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.396,0.361,0.902]
select surf_pocket13, protein and id [9614,9615,10336,10337,10339,10340,10342,10343,10344,10345,10346,10355,10364,10368,10519,10530,10531,10533,10536,10537,10538,10543,10544,10545,10550,10682,10683,10693,10695,10696,10697,10710,10737,10740,10741,10755,10774,14792,14807,20656,20669,20670,20693,20694] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.322,0.278,0.702]
select surf_pocket14, protein and id [56,264,276,277,278,1195,1624,1625,1629,1636,1661,1667,1669,1690,1715,3638,3639,3640,3641] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.435,0.361,0.902]
select surf_pocket15, protein and id [5470,5471,5472,5497,5500,5502,5503,5508,5509,6879,6880,6881,6882,6993,7044,7045,7059,7060,7061,7095,7099,7104,7107,21550,21555,21556,21557,21558,21559,21560,21562,21810,21811,21812,21813,21814,21815,21816] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.357,0.278,0.702]
select surf_pocket16, protein and id [4287,4293,4294,5760,5761,5762,5764,5765,5787,5790,5795,5820,5821,6247,6248,6250,6251,6252,6272,6273,6274,6276,6278,6279,6282,6283,6286,6303,6304,6305,6306,6307,6315,6332,6333,6336,6337,11940,11942,11943,11960,11961,11962,11963,11969,11987,11988,11989,11990,11991,12015,12016,12050,13628,13631,13632,13656,13657,13685,13686,13687,13712,13713] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.478,0.361,0.902]
select surf_pocket17, protein and id [14229,14231,14232,14234,14479,14482,14483,14484,14485,14486,14487,14492,14500,20192,20193,20201,20210,21568,21569,21570,21571,21572,21573,21672,21677,21684,21735,21736,21750,21751,21752,21786,21792,21795] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.388,0.278,0.702]
select surf_pocket18, protein and id [15166,15167,15192,15286,15300,15301,15305,15314,15315,15317,15349,15351,15354,15355,15364,15377,15395,15397,15438,15447,15450,15458,15459,15460,15461,15462,15465,15482,15526,15527,15528,15981,15982,15984,15985,15987,15993,15997] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.522,0.361,0.902]
select surf_pocket19, protein and id [4577,4579,4597,4598,4599,4624,4627,4628,4652,4653,6265,6269,6293,6294,6295,6298,6320,6324,18978,18984,18985,20449,20451,20453,20455,20456,20478,20481,20488,20510,20511,20512,20942,20964,20967,20969,20970,20973,20974,20976,20977,20994,20995,20996,20997,20998,21004,21027,21028] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.420,0.278,0.702]
select surf_pocket20, protein and id [4344,4352,4356,5068,5071,5072,5073,5075,5094,5095,5096,5099,5100,5109,5110,5111,16427,16428,16449,18233,18238,18241,18244,18246,18247,18248,18250,18253,18254,18394,18399,18401,18402,18403,18410] 
set surface_color,  pcol20, surf_pocket20 
set_color pcol21 = [0.561,0.361,0.902]
select surf_pocket21, protein and id [7752,7753,7754,7765,7775,7791,7792,7794,7940,8240,8241,8243,8247,8270,8271,8272,8274,8295,8296] 
set surface_color,  pcol21, surf_pocket21 
set_color pcol22 = [0.455,0.278,0.702]
select surf_pocket22, protein and id [7366,7367,7368,7572,7585,7586,8825,8829,8832,8836,8837,8838,8864,8872,8887,8893,8918,8962,8964,10964] 
set surface_color,  pcol22, surf_pocket22 
set_color pcol23 = [0.604,0.361,0.902]
select surf_pocket23, protein and id [11670,11674,11680,11683,11685,11686,11691,11692,12031,12412,12413,12414,12415,12417,12418,12419,12420,12479,12480,12481,12485,12501,12502,12503,12527,12528,12531,12534,12559,13166,13192,13197,13219,13965,13975,13977,13978] 
set surface_color,  pcol23, surf_pocket23 
set_color pcol24 = [0.486,0.278,0.702]
select surf_pocket24, protein and id [9324,9341,9343,9655,9657,9659,9853,9868,9875,10057,10058,10059,10062,10064,10314,10318,10330,15664,15665,15667,15679,15680,15900,15901,15902,15903,15909,15915] 
set surface_color,  pcol24, surf_pocket24 
set_color pcol25 = [0.647,0.361,0.902]
select surf_pocket25, protein and id [14731,14939,14941,14952,14953,15817,16225,16226,16230,16233,16237,16262,16285,16291,16316,16360,18336,18337,18338] 
set surface_color,  pcol25, surf_pocket25 
set_color pcol26 = [0.518,0.278,0.702]
select surf_pocket26, protein and id [6859,6866,6868,6869,6871,7119,7120,7121,7122,7123,12834,12835,12851,12854,12855,12859,12860,12863,12864,12865,12872,12874,14240,14241,14242,14349,14353,14356,14407,14422,14423,14424,14461,14467] 
set surface_color,  pcol26, surf_pocket26 
set_color pcol27 = [0.686,0.361,0.902]
select surf_pocket27, protein and id [4330,4331,4592,4594,4595,4613,4619,4645,5125,5126,5130,5133,16403,16405,16406,16407,16424,16427,18269,18392,18393,18395,18505,18635,18636,18637,18641,18642,18648] 
set surface_color,  pcol27, surf_pocket27 
set_color pcol28 = [0.549,0.278,0.702]
select surf_pocket28, protein and id [446,458,459,462,463,468,473,486,487,489,490,493,494,502,517,518,644,938,948,975,993,995] 
set surface_color,  pcol28, surf_pocket28 
set_color pcol29 = [0.729,0.361,0.902]
select surf_pocket29, protein and id [617,618,621,634,635,636,646,649,652,685,686,700,701,702,703,791,792,806,807,808,809,810,811,812,833] 
set surface_color,  pcol29, surf_pocket29 
set_color pcol30 = [0.584,0.278,0.702]
select surf_pocket30, protein and id [9029,9030,9050,10888,10893,10896,10899,10900,10901,10902,10903,10905,10906,10908,10909,11045,11050,11054,11055,11057,19035,19038,19039,19043,19044,19047,19255,19761,19762,19768,19785,19786,19787,19791,19800,19801,19802] 
set surface_color,  pcol30, surf_pocket30 
set_color pcol31 = [0.773,0.361,0.902]
select surf_pocket31, protein and id [13182,13183,13184,13608,13610,13615,13636,13639,13642,13645,13646,13648,13649,13668,13669,13670,19270,19288,19289,19290,19291,19292,19297,19315,19316,19319,20956,20959,20960,20984,20985,20989,21015] 
set surface_color,  pcol31, surf_pocket31 
set_color pcol32 = [0.616,0.278,0.702]
select surf_pocket32, protein and id [4684,4685,4686,4687,4719,6324,6346,6347,6348,6349,6350,6366,6367,6368,6369,6374,18962,18978,20455,20456,20997,21020,21023,21024,21027,21028,21048,21049,21074,21075,21169,21172] 
set surface_color,  pcol32, surf_pocket32 
set_color pcol33 = [0.812,0.361,0.902]
select surf_pocket33, protein and id [6806,6808,6816,6827,6828,6829,6843,7090,7091,7111,7130,7131,7232,7254,7255] 
set surface_color,  pcol33, surf_pocket33 
set_color pcol34 = [0.647,0.278,0.702]
select surf_pocket34, protein and id [4301,4303,4306,4307,4311,4317,4320,4322,4323,4328,4329,4631,4632,4633,4644,4667,4668,5055,5122,5134,5135,5138,5139,5140,5152,5169,5170,5171,5196,6602,6613,6615,6616] 
set surface_color,  pcol34, surf_pocket34 
set_color pcol35 = [0.855,0.361,0.902]
select surf_pocket35, protein and id [1923,1936,1937,3087,3090,3149,3150,3151,3152,3168,3169,3170,3172,3230,3231,3423,3497,3498,3514] 
set surface_color,  pcol35, surf_pocket35 
set_color pcol36 = [0.682,0.278,0.702]
select surf_pocket36, protein and id [1968,1970,1996,1997,2172,2173,2175,2177,2200,2201,2273,2321,2410,2660,2958,2959,2977] 
set surface_color,  pcol36, surf_pocket36 
set_color pcol37 = [0.898,0.361,0.902]
select surf_pocket37, protein and id [1041,1042,1043,1045,1293,16731,16732,16733,17034,17035,17036,17037,17038,17039,17040,17041,17052,17436,17437,17438,17440,17442,17662,17663,17667,17679] 
set surface_color,  pcol37, surf_pocket37 
set_color pcol38 = [0.702,0.278,0.686]
select surf_pocket38, protein and id [4148,4149,4152,6777,6778,6779,7182,7183,7184,7186,7188,12178,12181,12194,12195,12745,12748,12759,12763,12769,12935] 
set surface_color,  pcol38, surf_pocket38 
set_color pcol39 = [0.902,0.361,0.863]
select surf_pocket39, protein and id [14169,14171,14176,14190,14192,14204,14206,14207,14451,14452,14453,14474,14493,14494,14595,14597,14615,14618] 
set surface_color,  pcol39, surf_pocket39 
set_color pcol40 = [0.702,0.278,0.655]
select surf_pocket40, protein and id [1802,1804,1805,1806,1809,1819,1823,1826,3572,3695,3697,3698,3814,3945,3946,3951,11693,11694,11953,11956,11957,11958,11973,11974,11975,11976,11981,11982,12008,12486,12488,12493,12495,12496] 
set surface_color,  pcol40, surf_pocket40 
set_color pcol41 = [0.902,0.361,0.820]
select surf_pocket41, protein and id [4831,4832,5382,5385,5396,5400,5401,5406,5571,5572,18839,18840,18843,21469,21470,21872,21873,21875,21876,21877,21879] 
set surface_color,  pcol41, surf_pocket41 
set_color pcol42 = [0.702,0.278,0.620]
select surf_pocket42, protein and id [15130,15138,15157,15158,15161,15182,15307,15308,15309,15577,15578,15579,15580,15593,15594,15607,15626,15627] 
set surface_color,  pcol42, surf_pocket42 
set_color pcol43 = [0.902,0.361,0.776]
select surf_pocket43, protein and id [4358,4360,4366,4370,4371,4372,4450,4473,4474,4476,4484,4509,4529,4530,4531,4532,4533,4534,4538,4564,16428,16437] 
set surface_color,  pcol43, surf_pocket43 
set_color pcol44 = [0.702,0.278,0.588]
select surf_pocket44, protein and id [4172,4174,4178,4185,6892,6893,6998,6999,7000,7001,7003,7012,12654,12668,12670,12671,12672,12673,12681,12722,12739,12740] 
set surface_color,  pcol44, surf_pocket44 
set_color pcol45 = [0.902,0.361,0.737]
select surf_pocket45, protein and id [6436,6443,6444,6447,6448,6450,6451,6452,6453,6457,6458,6461,6462,6463,13799,13806,13809,13811,13813,13815,13817,13821,13824,13826,21139,21143,21145,21148,21149,21153,21154] 
set surface_color,  pcol45, surf_pocket45 
set_color pcol46 = [0.702,0.278,0.557]
select surf_pocket46, protein and id [10621,10622,10714,10717,10718,10719,10720,10760,10763,10858,10873,14818,14834,14835,19773] 
set surface_color,  pcol46, surf_pocket46 
set_color pcol47 = [0.902,0.361,0.694]
select surf_pocket47, protein and id [11510,11511,11512,11515,14141,14142,14544,14545,14546,14548,14550,14551,19522,19523,20073,20076,20087,20091,20234,20262,20263] 
set surface_color,  pcol47, surf_pocket47 
set_color pcol48 = [0.702,0.278,0.525]
select surf_pocket48, protein and id [7817,8238,8291,8292,8293,8294,8295,8296,8312,8314,8370] 
set surface_color,  pcol48, surf_pocket48 
set_color pcol49 = [0.902,0.361,0.651]
select surf_pocket49, protein and id [18998,19002,19008,19011,19013,19014,19019,19020,19360,19808,19812,19813,19819,19825,19829,19830,19831,19843,19860,19861,19862,19887,21291,21293,21294,21303,21305,21306] 
set surface_color,  pcol49, surf_pocket49 
set_color pcol50 = [0.702,0.278,0.490]
select surf_pocket50, protein and id [6032,6034,16923,16930,17007,17250,17251,17252,17253,17254,17255,17256,17668,17687] 
set surface_color,  pcol50, surf_pocket50 
set_color pcol51 = [0.902,0.361,0.612]
select surf_pocket51, protein and id [2302,2303,2304,2305,2309,2310,2311,2371,2387,2640,2642,2643,2988,2989,2990] 
set surface_color,  pcol51, surf_pocket51 
set_color pcol52 = [0.702,0.278,0.459]
select surf_pocket52, protein and id [11656,11657,13124,13125,13127,13152,13153,13160,13182,13183,13184,13646,13667,13668,13669,13670,13678,13699,19343,19344,21013,21041] 
set surface_color,  pcol52, surf_pocket52 
set_color pcol53 = [0.902,0.361,0.569]
select surf_pocket53, protein and id [7335,7336,7621,7622,7623,7624,7625,7626,7755,7761,8264,8423,8427,8429,8633,8635,8646,8652,8654,8655,8656] 
set surface_color,  pcol53, surf_pocket53 
set_color pcol54 = [0.702,0.278,0.427]
select surf_pocket54, protein and id [2079,2098,2433,2599,2601,2606,2614,2621,2622,2636,2649,2949,2950,2951,2965,2966] 
set surface_color,  pcol54, surf_pocket54 
set_color pcol55 = [0.902,0.361,0.525]
select surf_pocket55, protein and id [15357,15359,15553,15574,15576,15709,15880,15882] 
set surface_color,  pcol55, surf_pocket55 
set_color pcol56 = [0.702,0.278,0.392]
select surf_pocket56, protein and id [2210,2211,2212,2323,2324,2329,2331,17490,17491,17505,17506,17507,17508,17509,17510,17511,17525] 
set surface_color,  pcol56, surf_pocket56 
set_color pcol57 = [0.902,0.361,0.486]
select surf_pocket57, protein and id [193,196,198,1744,1745,5892,5893,5894,5895,5918,11870,11871,11872,11901] 
set surface_color,  pcol57, surf_pocket57 
set_color pcol58 = [0.702,0.278,0.361]
select surf_pocket58, protein and id [21497,21499,21520,21534,21781,21782,21822,21923,21925,21943,21946] 
set surface_color,  pcol58, surf_pocket58 
set_color pcol59 = [0.902,0.361,0.443]
select surf_pocket59, protein and id [117,152,153,178,189,191,192,5917,5918,18050,18051,18052,18053,18055,18067,18074,18075,18079,18080,18083] 
set surface_color,  pcol59, surf_pocket59 
set_color pcol60 = [0.702,0.278,0.329]
select surf_pocket60, protein and id [9333,9335,9338,10074,10075,10078,10079,15264,15371,15386,15506,15507,15508,15909,15917,15919,15922] 
set surface_color,  pcol60, surf_pocket60 
set_color pcol61 = [0.902,0.361,0.400]
select surf_pocket61, protein and id [2470,2484,2506,2548,2552,2553,2558,2791,2792,2793,2794,2821,2830,2832,2836] 
set surface_color,  pcol61, surf_pocket61 
set_color pcol62 = [0.702,0.278,0.298]
select surf_pocket62, protein and id [2141,2142,7895,8005,8006,8168,8170,8171,8176,8177,8179,8523,8528,8530,8532,8533,8546] 
set surface_color,  pcol62, surf_pocket62 
set_color pcol63 = [0.902,0.361,0.361]
select surf_pocket63, protein and id [7913,7914,7917,7931,7932,7945,7946,7947,7982,7998,7999,8079,8082,8085,8101,8102,8104,8123,8128,8614] 
set surface_color,  pcol63, surf_pocket63 
set_color pcol64 = [0.702,0.298,0.278]
select surf_pocket64, protein and id [15183,15293,15575,15645,15708,15709] 
set surface_color,  pcol64, surf_pocket64 
set_color pcol65 = [0.902,0.400,0.361]
select surf_pocket65, protein and id [13302,13304,13515,13517,13520,13546,13548,13549,13550,19192,19194,19215,20845,20868] 
set surface_color,  pcol65, surf_pocket65 
set_color pcol66 = [0.702,0.329,0.278]
select surf_pocket66, protein and id [14139,14224,14244,14246,14249,14251,14255,14365,14366,20093,20095,20099,20121,20122,20123,20128,20130,20163,20198,20199,20200,20202,20236] 
set surface_color,  pcol66, surf_pocket66 
set_color pcol67 = [0.902,0.443,0.361]
select surf_pocket67, protein and id [2116,2117,2133,2134,2140,2141,2142,2396,2403,2404,3008,3012,3027,8168,8169,8170,8171,8176,8179,8523,8530] 
set surface_color,  pcol67, surf_pocket67 
set_color pcol68 = [0.702,0.361,0.278]
select surf_pocket68, protein and id [9708,9722,9784,9792,10016,10017,10018,10019,10185,10187,10189,16857] 
set surface_color,  pcol68, surf_pocket68 
set_color pcol69 = [0.902,0.486,0.361]
select surf_pocket69, protein and id [11650,11656,11657,13125,13126,13127,13128,13670,13695,13696,13699,13700,13721,19343,19344,19376,19377,19378,21013,21040,21041] 
set surface_color,  pcol69, surf_pocket69 
set_color pcol70 = [0.702,0.392,0.278]
select surf_pocket70, protein and id [17082,17085,17089,17103,17173,17394,17395,17396,17397,17540,17544,17548,17553,17555,17559,17591,17593] 
set surface_color,  pcol70, surf_pocket70 
set_color pcol71 = [0.902,0.525,0.361]
select surf_pocket71, protein and id [19007,19013,19740,19741,19742,19746,19747,19809,20490,20494,20495,20517,20520,20522,20524,20525,20546,21304,21306] 
set surface_color,  pcol71, surf_pocket71 
set_color pcol72 = [0.702,0.427,0.278]
select surf_pocket72, protein and id [16833,16891,16892,16966,17272,17288,17656] 
set surface_color,  pcol72, surf_pocket72 
set_color pcol73 = [0.902,0.569,0.361]
select surf_pocket73, protein and id [5382,5383,5396,5400,5401,5406,5407,5571,5572,18839,18840,21469,21470,21873] 
set surface_color,  pcol73, surf_pocket73 
set_color pcol74 = [0.702,0.459,0.278]
select surf_pocket74, protein and id [7820,7823,7856,7857,7859,7900,7915,7916,7917,8026,8036,8043,8047,8050,8051,8052,8074,8122,8599,8615] 
set surface_color,  pcol74, surf_pocket74 
set_color pcol75 = [0.902,0.612,0.361]
select surf_pocket75, protein and id [1827,1847,1848,3544,3550,3556,3697,3705,3706,11707,11711,11715,11719,11927,12459,12472,12473,12474] 
set surface_color,  pcol75, surf_pocket75 
set_color pcol76 = [0.702,0.490,0.278]
select surf_pocket76, protein and id [1674,1675,1676,1698,1699,1840,1853,3565,3566,3668,3669,3686,3687,3688,3749] 
set surface_color,  pcol76, surf_pocket76 
set_color pcol77 = [0.902,0.651,0.361]
select surf_pocket77, protein and id [10648,10649,10650,10666,10668,10675,10677,14773,14774,14775,14776,14805,14815,15735,15842,15843,15858,15859,15860,16196,16198,16201,16202] 
set surface_color,  pcol77, surf_pocket77 
set_color pcol78 = [0.702,0.525,0.278]
select surf_pocket78, protein and id [197,198,1521,1522,1646,1647,1648,1694,1718,1719,1720,1722,1723,1726,1744,1745] 
set surface_color,  pcol78, surf_pocket78 
set_color pcol79 = [0.902,0.694,0.361]
select surf_pocket79, protein and id [7418,7528,7529,7530,7537,8319,8329,8360,8361,8362,8363,8381,8382] 
set surface_color,  pcol79, surf_pocket79 
set_color pcol80 = [0.702,0.557,0.278]
select surf_pocket80, protein and id [4320,4321,4322,5051,5055,5061,5117,5118,5801,5803,5826,5828,5830,5831,5834,5855,6614,6615] 
set surface_color,  pcol80, surf_pocket80 
set_color pcol81 = [0.902,0.737,0.361]
select surf_pocket81, protein and id [9542,9549,9625,9870,9872,9873,9874,9875,10319,10335,10337,10338,20723,20725] 
set surface_color,  pcol81, surf_pocket81 
set_color pcol82 = [0.702,0.588,0.278]
select surf_pocket82, protein and id [4734,4742,4743,4744,5344,5347,5348,5351,5352,18799,18811,18812,21416] 
set surface_color,  pcol82, surf_pocket82 
set_color pcol83 = [0.902,0.776,0.361]
select surf_pocket83, protein and id [11727,11762,11763,11838,11890,11891,11918,13539,13564] 
set surface_color,  pcol83, surf_pocket83 
set_color pcol84 = [0.702,0.620,0.278]
select surf_pocket84, protein and id [16631,16632,16648,16651,16654,16656,16669,16670,16671,17300,17302,17311,17317,17320,17336,17342,17347,17377,17628] 
set surface_color,  pcol84, surf_pocket84 
set_color pcol85 = [0.902,0.820,0.361]
select surf_pocket85, protein and id [3781,3782,3866,3867,3868,3872,3976,4054,4059] 
set surface_color,  pcol85, surf_pocket85 
set_color pcol86 = [0.702,0.655,0.278]
select surf_pocket86, protein and id [9051,19049,19051,19057,19062,19063,19220,19221,19222,19223,19224,19225,19229,19252,19255] 
set surface_color,  pcol86, surf_pocket86 
set_color pcol87 = [0.902,0.863,0.361]
select surf_pocket87, protein and id [7252,7261,7262,7263,7264,7267,7268,7269,7270,7294,14632,21790,21958,21960] 
set surface_color,  pcol87, surf_pocket87 
set_color pcol88 = [0.702,0.686,0.278]
select surf_pocket88, protein and id [9211,9218,9219,9238,9241,9243,9252,9435,9438,9440,9443,9464,9465,9476] 
set surface_color,  pcol88, surf_pocket88 
set_color pcol89 = [0.898,0.902,0.361]
select surf_pocket89, protein and id [4108,4120,6725,12105,12107,12124,12705,12707,12710,12711,12714,12715] 
set surface_color,  pcol89, surf_pocket89 
set_color pcol90 = [0.682,0.702,0.278]
select surf_pocket90, protein and id [13253,13257,13258,13267,13281,13283,19171,19198,19199,19200,19201,19202,19205] 
set surface_color,  pcol90, surf_pocket90 
set_color pcol91 = [0.855,0.902,0.361]
select surf_pocket91, protein and id [14770,14773,14782,14783,14784,14785,14788,14789,14805,14808,14828,14865,16149,16170] 
set surface_color,  pcol91, surf_pocket91 
set_color pcol92 = [0.647,0.702,0.278]
select surf_pocket92, protein and id [6865,6866,6875,6883,6886,6892,7002,7003,12795,12800,12802,12835,12872,12873,12874] 
set surface_color,  pcol92, surf_pocket92 
set_color pcol93 = [0.812,0.902,0.361]
select surf_pocket93, protein and id [9598,9610,10514,10515,10536,10537,10538,20693,20715,20716] 
set surface_color,  pcol93, surf_pocket93 


deselect

orient
