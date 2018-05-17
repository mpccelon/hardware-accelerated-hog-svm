; ModuleID = 'D:/lolic/Documents/Thesis/hog_svm_fpga/hog_svm_fpga/hog_svm_fpga/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@xillybus_wrapper_str = internal unnamed_addr constant [17 x i8] c"xillybus_wrapper\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a29]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@SVM_detector_V = internal constant [1764 x i14] [i14 -4584, i14 -2142, i14 -2696, i14 394, i14 -3816, i14 -439, i14 2242, i14 826, i14 -2265, i14 -1700, i14 98, i14 -411, i14 1592, i14 -5355, i14 -1952, i14 -400, i14 140, i14 -1149, i14 -1134, i14 -251, i14 -1557, i14 1418, i14 -2722, i14 -491, i14 721, i14 -725, i14 -1572, i14 2898, i14 2195, i14 -2255, i14 3607, i14 2726, i14 1619, i14 887, i14 -516, i14 -583, i14 -2720, i14 -1162, i14 -448, i14 1818, i14 -3764, i14 -2366, i14 56, i14 -1580, i14 -2692, i14 1013, i14 1735, i14 -489, i14 -125, i14 -3514, i14 -286, i14 435, i14 -1283, i14 -2260, i14 -2324, i14 -1472, i14 -2414, i14 2523, i14 -745, i14 -1791, i14 922, i14 55, i14 -863, i14 -443, i14 1931, i14 -1876, i14 4180, i14 1717, i14 -1287, i14 296, i14 -439, i14 -1459, i14 -2663, i14 -1502, i14 -1515, i14 1189, i14 -3653, i14 -3668, i14 1067, i14 -137, i14 -1626, i14 -1571, i14 1146, i14 -1593, i14 -137, i14 -3227, i14 -2769, i14 -149, i14 -1538, i14 -2876, i14 -3005, i14 -3505, i14 -2384, i14 1089, i14 -1358, i14 -4224, i14 -870, i14 -1784, i14 -1666, i14 -1612, i14 -1723, i14 -1606, i14 2601, i14 2745, i14 -1156, i14 -1143, i14 -1854, i14 -1213, i14 -2744, i14 -2831, i14 -1781, i14 52, i14 27, i14 -1129, i14 -81, i14 -1422, i14 -1526, i14 -2747, i14 -2056, i14 -1066, i14 661, i14 566, i14 -939, i14 -839, i14 -1988, i14 -2144, i14 -1261, i14 -1108, i14 14, i14 -874, i14 1235, i14 1441, i14 -1894, i14 -3575, i14 -2837, i14 -2618, i14 -2352, i14 -461, i14 -1168, i14 -481, i14 -130, i14 -1624, i14 -2388, i14 -2537, i14 -1823, i14 -1592, i14 -549, i14 -2589, i14 411, i14 1969, i14 -2343, i14 -4036, i14 -3605, i14 -1776, i14 -1898, i14 -453, i14 -78, i14 3162, i14 2421, i14 -2111, i14 -1949, i14 -1559, i14 -739, i14 -200, i14 518, i14 -3821, i14 -3498, i14 1261, i14 -1302, i14 -596, i14 -1011, i14 -3403, i14 -1151, i14 103, i14 -3278, i14 -3462, i14 1442, i14 -1241, i14 551, i14 -817, i14 -144, i14 -102, i14 579, i14 -1517, i14 -1477, i14 975, i14 -2236, i14 -281, i14 -647, i14 -1485, i14 211, i14 742, i14 -1165, i14 1126, i14 4659, i14 -1624, i14 1341, i14 831, i14 -2287, i14 -1019, i14 655, i14 -2062, i14 -4148, i14 1584, i14 45, i14 -582, i14 -1613, i14 -2837, i14 -1442, i14 691, i14 -74, i14 -3882, i14 -1011, i14 -606, i14 1915, i14 1082, i14 -1923, i14 -886, i14 1012, i14 1084, i14 -2666, i14 101, i14 -1422, i14 101, i14 -494, i14 -1469, i14 -758, i14 885, i14 2354, i14 2082, i14 2000, i14 -2506, i14 2428, i14 2647, i14 -2515, i14 1204, i14 1795, i14 -2582, i14 -4347, i14 1084, i14 -2746, i14 -2077, i14 -4630, i14 -1736, i14 984, i14 458, i14 -2703, i14 -5654, i14 999, i14 -1292, i14 -753, i14 -2046, i14 -2371, i14 399, i14 371, i14 3623, i14 -4242, i14 -3730, i14 -787, i14 154, i14 -2162, i14 5, i14 1616, i14 726, i14 1848, i14 -6355, i14 -2409, i14 1786, i14 2259, i14 495, i14 271, i14 1558, i14 -821, i14 800, i14 -1942, i14 411, i14 719, i14 -808, i14 -2420, i14 3076, i14 3067, i14 42, i14 5695, i14 2461, i14 -102, i14 404, i14 1898, i14 1680, i14 901, i14 1895, i14 441, i14 1639, i14 -3737, i14 -3471, i14 -830, i14 -1509, i14 -2718, i14 783, i14 2021, i14 109, i14 1784, i14 -3356, i14 -4175, i14 -1219, i14 197, i14 -1240, i14 -1306, i14 1327, i14 -1508, i14 1877, i14 -3002, i14 -4340, i14 488, i14 -1029, i14 -2222, i14 3674, i14 3836, i14 -195, i14 5333, i14 2643, i14 -1301, i14 -225, i14 -136, i14 -353, i14 -1114, i14 908, i14 -1853, i14 -1060, i14 -2553, i14 -2642, i14 -243, i14 -1401, i14 -2155, i14 -1920, i14 559, i14 -1276, i14 -1503, i14 -3396, i14 -2441, i14 -887, i14 -1500, i14 -3868, i14 -3574, i14 -3580, i14 -2805, i14 -432, i14 -1391, i14 -5596, i14 -2536, i14 -2456, i14 -2389, i14 -1214, i14 -1025, i14 -1617, i14 1649, i14 1909, i14 -1941, i14 -2109, i14 -1493, i14 -1503, i14 -2673, i14 -2910, i14 -2909, i14 -2068, i14 -563, i14 -1696, i14 -909, i14 -1969, i14 -1851, i14 -2504, i14 -1995, i14 -1639, i14 -389, i14 -661, i14 -2688, i14 -1992, i14 -1629, i14 -1841, i14 -2181, i14 -2501, i14 -1469, i14 -2485, i14 -985, i14 -1587, i14 -2548, i14 -2620, i14 -2475, i14 -1338, i14 -958, i14 -1386, i14 -2131, i14 -517, i14 -1219, i14 -2437, i14 -1706, i14 -2190, i14 -3055, i14 -2452, i14 -1845, i14 -4803, i14 -408, i14 460, i14 -2984, i14 -3456, i14 -3871, i14 -1781, i14 -1133, i14 -1441, i14 -1192, i14 2663, i14 1562, i14 -1967, i14 -1124, i14 -1809, i14 -2330, i14 -1044, i14 150, i14 -2012, i14 -1822, i14 -30, i14 -1986, i14 162, i14 -285, i14 -3917, i14 -1266, i14 -683, i14 -3427, i14 -3436, i14 -686, i14 -1791, i14 1010, i14 -1348, i14 -2698, i14 -728, i14 855, i14 -4095, i14 -2470, i14 2934, i14 -1905, i14 347, i14 -451, i14 -834, i14 -434, i14 238, i14 -1341, i14 2836, i14 5249, i14 -1180, i14 4169, i14 3932, i14 -3053, i14 -1521, i14 -155, i14 -2995, i14 -3572, i14 1470, i14 -89, i14 1701, i14 892, i14 -2569, i14 471, i14 -270, i14 -3810, i14 -4105, i14 1104, i14 188, i14 1533, i14 -588, i14 -2620, i14 -535, i14 1555, i14 781, i14 -1666, i14 1028, i14 -1338, i14 1495, i14 266, i14 964, i14 2323, i14 1793, i14 419, i14 2256, i14 5864, i14 -48, i14 2626, i14 2922, i14 -2240, i14 860, i14 288, i14 -4559, i14 -4884, i14 2955, i14 -795, i14 -311, i14 -2309, i14 1358, i14 2523, i14 1854, i14 -2910, i14 -6167, i14 3030, i14 1085, i14 1719, i14 1301, i14 -289, i14 1398, i14 563, i14 447, i14 -4570, i14 -166, i14 1559, i14 1753, i14 -5, i14 -20, i14 2695, i14 1229, i14 4581, i14 -5556, i14 -3659, i14 2285, i14 1761, i14 -363, i14 1664, i14 2407, i14 -577, i14 580, i14 352, i14 1921, i14 686, i14 1438, i14 307, i14 3081, i14 2525, i14 333, i14 2496, i14 3652, i14 2994, i14 -414, i14 1835, i14 2348, i14 2085, i14 2785, i14 186, i14 1521, i14 384, i14 -366, i14 -321, i14 1228, i14 332, i14 -127, i14 687, i14 -38, i14 -1291, i14 -1734, i14 -803, i14 -1122, i14 307, i14 -406, i14 699, i14 1535, i14 -869, i14 56, i14 -2738, i14 -2398, i14 496, i14 824, i14 21, i14 3525, i14 1732, i14 370, i14 1467, i14 3759, i14 2179, i14 -765, i14 426, i14 3087, i14 -368, i14 1074, i14 -1032, i14 -1867, i14 -278, i14 1255, i14 146, i14 274, i14 -1225, i14 -787, i14 -284, i14 -448, i14 -671, i14 2602, i14 1505, i14 -1378, i14 -1173, i14 -985, i14 -87, i14 -1080, i14 -1735, i14 617, i14 1399, i14 -2098, i14 -1676, i14 -487, i14 602, i14 -1312, i14 -1258, i14 -670, i14 908, i14 2731, i14 133, i14 -1063, i14 -1349, i14 -1540, i14 -1802, i14 -2097, i14 -2087, i14 -2066, i14 1564, i14 762, i14 -1485, i14 -976, i14 -448, i14 -2863, i14 -2089, i14 -1338, i14 -844, i14 2622, i14 1619, i14 -293, i14 -341, i14 -1627, i14 216, i14 -424, i14 -704, i14 906, i14 1105, i14 -2474, i14 -2544, i14 -1780, i14 -1184, i14 -682, i14 -413, i14 -277, i14 2734, i14 2470, i14 -1622, i14 -851, i14 -1923, i14 -2242, i14 173, i14 -611, i14 -1265, i14 -2209, i14 1264, i14 739, i14 -2191, i14 -1419, i14 -596, i14 -1442, i14 -1649, i14 -952, i14 1079, i14 2551, i14 355, i14 -402, i14 -1323, i14 -1090, i14 -1045, i14 149, i14 -266, i14 -511, i14 -376, i14 -652, i14 -1585, i14 1278, i14 385, i14 -1778, i14 -595, i14 -660, i14 1877, i14 3007, i14 -210, i14 -654, i14 -442, i14 -1834, i14 -418, i14 256, i14 126, i14 -3402, i14 -2302, i14 1075, i14 -1354, i14 2120, i14 1609, i14 2460, i14 1497, i14 378, i14 2012, i14 3308, i14 1510, i14 -112, i14 1603, i14 2537, i14 -1553, i14 864, i14 -284, i14 -182, i14 224, i14 1149, i14 181, i14 2356, i14 615, i14 -388, i14 604, i14 -662, i14 -498, i14 -1332, i14 -1362, i14 -455, i14 754, i14 -184, i14 -291, i14 1367, i14 1091, i14 2279, i14 896, i14 1092, i14 -519, i14 2111, i14 1480, i14 2769, i14 2091, i14 9, i14 2508, i14 3314, i14 2138, i14 -88, i14 2790, i14 3531, i14 598, i14 1746, i14 1491, i14 -778, i14 -5535, i14 333, i14 858, i14 1545, i14 647, i14 772, i14 2398, i14 1406, i14 -3946, i14 -5568, i14 4374, i14 1812, i14 2513, i14 856, i14 -310, i14 1852, i14 359, i14 2177, i14 -4325, i14 -1226, i14 1843, i14 1750, i14 -185, i14 -144, i14 1535, i14 1367, i14 2308, i14 -6533, i14 -3364, i14 1388, i14 3408, i14 1972, i14 1265, i14 649, i14 -243, i14 -1030, i14 1749, i14 4563, i14 -34, i14 1566, i14 2097, i14 937, i14 1207, i14 -280, i14 2534, i14 4461, i14 4576, i14 344, i14 2369, i14 2135, i14 577, i14 849, i14 1396, i14 -1506, i14 -754, i14 2207, i14 -144, i14 752, i14 512, i14 -3237, i14 342, i14 383, i14 1825, i14 955, i14 326, i14 81, i14 671, i14 -2489, i14 2711, i14 1370, i14 605, i14 1231, i14 1688, i14 1267, i14 232, i14 370, i14 2210, i14 1460, i14 1189, i14 -852, i14 -1362, i14 2211, i14 2418, i14 -496, i14 987, i14 1384, i14 697, i14 832, i14 955, i14 -1138, i14 1480, i14 3424, i14 1242, i14 272, i14 444, i14 -1791, i14 140, i14 -136, i14 1457, i14 3396, i14 238, i14 -105, i14 -485, i14 -2362, i14 -198, i14 -1138, i14 -43, i14 -9, i14 161, i14 68, i14 1079, i14 -316, i14 18, i14 -665, i14 -946, i14 -771, i14 -2377, i14 2135, i14 2282, i14 331, i14 212, i14 -77, i14 -1340, i14 -1478, i14 -611, i14 -2937, i14 -653, i14 1417, i14 858, i14 -661, i14 -1257, i14 -1622, i14 -887, i14 -695, i14 278, i14 3065, i14 -195, i14 -350, i14 342, i14 -641, i14 -345, i14 -874, i14 321, i14 1975, i14 -1567, i14 -4070, i14 335, i14 -938, i14 -756, i14 -74, i14 66, i14 -620, i14 236, i14 2976, i14 -379, i14 -751, i14 -641, i14 -767, i14 193, i14 -1082, i14 312, i14 758, i14 82, i14 -560, i14 633, i14 -984, i14 27, i14 239, i14 113, i14 -796, i14 2167, i14 2878, i14 -2234, i14 -710, i14 -878, i14 -895, i14 -250, i14 881, i14 1297, i14 2904, i14 1006, i14 -1150, i14 903, i14 807, i14 -659, i14 -2096, i14 39, i14 -931, i14 -295, i14 3634, i14 689, i14 -738, i14 -1234, i14 -3027, i14 2392, i14 1772, i14 1103, i14 1422, i14 1417, i14 1296, i14 556, i14 1458, i14 2032, i14 2054, i14 2090, i14 -430, i14 3005, i14 2819, i14 -2069, i14 -1243, i14 111, i14 321, i14 352, i14 985, i14 314, i14 2347, i14 -451, i14 -1170, i14 1166, i14 1216, i14 728, i14 -1563, i14 1818, i14 684, i14 926, i14 577, i14 1074, i14 534, i14 102, i14 -3085, i14 1956, i14 1870, i14 295, i14 4085, i14 1800, i14 -897, i14 -585, i14 631, i14 1265, i14 2258, i14 2926, i14 431, i14 3975, i14 3837, i14 2654, i14 479, i14 1052, i14 630, i14 1185, i14 2204, i14 971, i14 -1578, i14 -4653, i14 1880, i14 1150, i14 2219, i14 830, i14 1833, i14 3664, i14 1334, i14 -3833, i14 -5732, i14 2967, i14 1505, i14 1990, i14 52, i14 1171, i14 2074, i14 1700, i14 3724, i14 -3429, i14 -2064, i14 1270, i14 3043, i14 2576, i14 -377, i14 1164, i14 385, i14 1178, i14 -4215, i14 -1717, i14 1328, i14 2682, i14 1341, i14 1890, i14 1590, i14 76, i14 1805, i14 2240, i14 2881, i14 474, i14 2390, i14 2849, i14 1085, i14 2471, i14 -268, i14 -2056, i14 2390, i14 6167, i14 39, i14 2763, i14 1711, i14 -566, i14 1020, i14 673, i14 -1658, i14 -2463, i14 1130, i14 1036, i14 1217, i14 -318, i14 -900, i14 1807, i14 722, i14 -613, i14 599, i14 2458, i14 312, i14 1805, i14 -519, i14 4356, i14 2103, i14 -338, i14 -620, i14 3465, i14 4417, i14 468, i14 2392, i14 4794, i14 -866, i14 -545, i14 -1287, i14 -3164, i14 2005, i14 4010, i14 290, i14 1902, i14 1358, i14 1086, i14 1135, i14 488, i14 -956, i14 1799, i14 2401, i14 748, i14 617, i14 267, i14 -1425, i14 -14, i14 320, i14 111, i14 1197, i14 619, i14 895, i14 1471, i14 -153, i14 49, i14 -484, i14 -470, i14 -1481, i14 946, i14 1621, i14 1610, i14 817, i14 624, i14 -953, i14 -1091, i14 -752, i14 -2125, i14 1671, i14 2028, i14 948, i14 1445, i14 1164, i14 -480, i14 -50, i14 859, i14 -287, i14 863, i14 1104, i14 1954, i14 680, i14 -307, i14 -1305, i14 -607, i14 482, i14 2896, i14 2079, i14 -1389, i14 1633, i14 1641, i14 459, i14 574, i14 287, i14 963, i14 251, i14 549, i14 91, i14 1423, i14 469, i14 300, i14 866, i14 1081, i14 273, i14 -595, i14 3012, i14 2648, i14 1508, i14 -13, i14 -848, i14 1182, i14 705, i14 116, i14 544, i14 1437, i14 -786, i14 9, i14 -106, i14 146, i14 1460, i14 1180, i14 -195, i14 2496, i14 1815, i14 -3183, i14 -442, i14 -895, i14 -957, i14 651, i14 1096, i14 477, i14 1846, i14 1748, i14 -1165, i14 301, i14 63, i14 -12, i14 -1070, i14 738, i14 275, i14 1568, i14 1709, i14 -288, i14 1320, i14 -379, i14 -2437, i14 5484, i14 3531, i14 661, i14 4844, i14 3856, i14 -1325, i14 -813, i14 1070, i14 3177, i14 783, i14 1007, i14 62, i14 5437, i14 1898, i14 -4529, i14 -652, i14 -970, i14 -1576, i14 -65, i14 1943, i14 1351, i14 871, i14 -3217, i14 -2260, i14 703, i14 318, i14 -1680, i14 -671, i14 1276, i14 -349, i14 1834, i14 1336, i14 47, i14 700, i14 1422, i14 -752, i14 2770, i14 2871, i14 1209, i14 3013, i14 1897, i14 1411, i14 74, i14 711, i14 863, i14 1177, i14 1832, i14 -333, i14 4797, i14 2759, i14 -533, i14 182, i14 2472, i14 1413, i14 2728, i14 3319, i14 1304, i14 -3069, i14 -3578, i14 3949, i14 1261, i14 1874, i14 1416, i14 1957, i14 2943, i14 551, i14 -867, i14 -3729, i14 1013, i14 1057, i14 1181, i14 -480, i14 944, i14 1307, i14 73, i14 3449, i14 -3711, i14 -3856, i14 610, i14 2019, i14 1618, i14 -1354, i14 -1130, i14 -113, i14 -4867, i14 -7388, i14 178, i14 -1154, i14 -682, i14 -589, i14 2053, i14 1989, i14 -766, i14 -46, i14 2925, i14 3798, i14 -828, i14 3088, i14 3611, i14 -1397, i14 -93, i14 -842, i14 -2636, i14 -402, i14 3151, i14 -1379, i14 -41, i14 -1141, i14 14, i14 1547, i14 -117, i14 -1190, i14 169, i14 1490, i14 -638, i14 1654, i14 517, i14 -1375, i14 892, i14 23, i14 -3773, i14 -2811, i14 2132, i14 -704, i14 -102, i14 -2144, i14 1918, i14 -209, i14 -2300, i14 -1948, i14 4933, i14 4843, i14 -392, i14 3816, i14 5625, i14 -1833, i14 -592, i14 -2586, i14 -5896, i14 -135, i14 2643, i14 -1429, i14 376, i14 -470, i14 56, i14 14, i14 -897, i14 -1744, i14 1250, i14 775, i14 -338, i14 1200, i14 898, i14 -1853, i14 327, i14 -519, i14 -3109, i14 -2503, i14 -1739, i14 -969, i14 -351, i14 -1870, i14 -1231, i14 -1502, i14 -2091, i14 -649, i14 6668, i14 3125, i14 -768, i14 1250, i14 1024, i14 -1450, i14 -1141, i14 -1122, i14 -5330, i14 1246, i14 2227, i14 -1796, i14 -2104, i14 -2020, i14 -1647, i14 -1355, i14 -1159, i14 684, i14 3805, i14 104, i14 -369, i14 425, i14 -353, i14 -1548, i14 -1135, i14 -560, i14 -1460, i14 1082, i14 -842, i14 -699, i14 -1200, i14 -1612, i14 454, i14 308, i14 -1283, i14 643, i14 3870, i14 -46, i14 -452, i14 -1023, i14 -1409, i14 -1294, i14 -1072, i14 -407, i14 -2858, i14 1037, i14 110, i14 -837, i14 -1206, i14 -1533, i14 1839, i14 1075, i14 -1417, i14 3118, i14 6311, i14 -1083, i14 -1541, i14 -1347, i14 -750, i14 -1543, i14 -1379, i14 -1053, i14 1086, i14 1657, i14 -4338, i14 -1837, i14 -1238, i14 -1464, i14 1115, i14 764, i14 -694, i14 925, i14 461, i14 -1804, i14 847, i14 230, i14 314, i14 -2232, i14 -140, i14 -1258, i14 -2885, i14 -2410, i14 -2391, i14 -550, i14 186, i14 -2106, i14 4723, i14 2643, i14 -356, i14 5008, i14 4446, i14 -2054, i14 -1089, i14 -375, i14 1426, i14 -1300, i14 224, i14 -2072, i14 1324, i14 -44, i14 -5082, i14 -2190, i14 -820, i14 -2513, i14 1289, i14 1399, i14 -1047, i14 477, i14 -2, i14 -1031, i14 -14, i14 1483, i14 686, i14 -563, i14 789, i14 -785, i14 1362, i14 -2867, i14 -2980, i14 454, i14 884, i14 -388, i14 3423, i14 2743, i14 -702, i14 2623, i14 3145, i14 703, i14 -1179, i14 1639, i14 2053, i14 -454, i14 978, i14 -1332, i14 3014, i14 434, i14 -1971, i14 -795, i14 -102, i14 -1130, i14 1675, i14 2111, i14 -473, i14 -3959, i14 -4501, i14 2332, i14 455, i14 1483, i14 541, i14 -180, i14 -508, i14 -132, i14 -1274, i14 -7955, i14 -3218, i14 26, i14 -639, i14 -425, i14 897, i14 -951, i14 475, i14 -433, i14 -4106, i14 1431, i14 -812, i14 193, i14 2737, i14 -4462, i14 -1693, i14 -1015, i14 -2629, i14 -7047, i14 -926, i14 -717, i14 1040, i14 -1264, i14 700, i14 324, i14 -463, i14 378, i14 1543, i14 4181, i14 -629, i14 1608, i14 2477, i14 -2700, i14 741, i14 -2542, i14 -3946, i14 -855, i14 3694, i14 -2317, i14 -2727, i14 -4630, i14 -439, i14 129, i14 -756, i14 -4825, i14 -3262, i14 3234, i14 -1173, i14 738, i14 595, i14 -2469, i14 394, i14 -1907, i14 -4017, i14 -1781, i14 2748, i14 -2241, i14 -2161, i14 -3555, i14 -171, i14 -551, i14 -3392, i14 -1393, i14 5871, i14 3805, i14 -2478, i14 1019, i14 1954, i14 -3763, i14 -1814, i14 -4139, i14 -4222, i14 -202, i14 1774, i14 -2365, i14 -3139, i14 -4048, i14 -580, i14 202, i14 -1235, i14 -3047, i14 -38, i14 461, i14 -1947, i14 -41, i14 22, i14 -1574, i14 -629, i14 -2216, i14 -3845, i14 -1806, i14 763, i14 -1228, i14 -1779, i14 -1615, i14 -883, i14 -1778, i14 -1806, i14 -918, i14 4408, i14 1157, i14 -2655, i14 -1752, i14 -522, i14 -4024, i14 -2030, i14 -2784, i14 -4892, i14 1604, i14 2185, i14 -2676, i14 -2805, i14 -4414, i14 -369, i14 -1738, i14 -1767, i14 -1585, i14 2167, i14 -145, i14 -1683, i14 -1612, i14 -229, i14 -2925, i14 -1369, i14 -2164, i14 -2135, i14 284, i14 -1218, i14 -1707, i14 -2241, i14 -3532, i14 248, i14 -1517, i14 -1137, i14 167, i14 2509, i14 -1833, i14 -2000, i14 -1295, i14 -56, i14 -3069, i14 -1953, i14 -2246, i14 -1091, i14 -199, i14 -3343, i14 -2026, i14 -2146, i14 -2799, i14 -320, i14 -1378, i14 -1500, i14 1369, i14 3587, i14 -2112, i14 -2196, i14 -1420, i14 -839, i14 -4064, i14 -2742, i14 -2967, i14 2116, i14 1179, i14 -5041, i14 -1877, i14 -2173, i14 -3730, i14 -429, i14 302, i14 -1504, i14 1556, i14 202, i14 -4259, i14 -1662, i14 352, i14 -426, i14 -2466, i14 -1206, i14 -718, i14 2222, i14 -2177, i14 -5041, i14 -1269, i14 -206, i14 -2054, i14 354, i14 899, i14 -2061, i14 5630, i14 5628, i14 -3861, i14 -3427, i14 -328, i14 -978, i14 -4881, i14 -2273, i14 -1635, i14 3518, i14 -321, i14 -4859, i14 -2689, i14 -1298, i14 -4229, i14 1364, i14 1842, i14 -459, i14 4504, i14 -3307, i14 -5995, i14 -385, i14 303, i14 235, i14 -1967, i14 -907, i14 -1967, i14 3323, i14 -2442, i14 -5701, i14 -1772, i14 -40, i14 -1850, i14 2367, i14 2404, i14 -288, i14 5311, i14 980, i14 -1672, i14 16, i14 425, i14 685, i14 -3192, i14 -1512, i14 -2090, i14 5467, i14 -479, i14 -5815, i14 -2208, i14 102, i14 -2202, i14 3329, i14 912, i14 860, i14 1791, i14 -4429, i14 -87, i14 956, i14 -270, i14 1783, i14 -887, i14 600, i14 -349, i14 -322, i14 -7662, i14 -3988, i14 -1302, i14 -1991, i14 -3944]
@p_str8 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str6 = private unnamed_addr constant [14 x i8] c"ROM_2P_LUTRAM\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str45 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str4 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @xillybus_wrapper(i32* %in_r, i32* %out_r) nounwind uwtable {
arrayctor.loop4.preheader:
  %tmp_channel = alloca float, align 4
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_r) nounwind, !map !172
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_r) nounwind, !map !176
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @xillybus_wrapper_str) nounwind
  %image_V = alloca [4096 x i8], align 1
  %cells_bin_V = alloca [576 x i32], align 4
  %cells_mag_sq_V = alloca [64 x i64], align 8
  %grad_vote_magnitude_s = alloca [4096 x i26], align 4
  %grad_vote_bin_V = alloca [4096 x i4], align 1
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_r, [8 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_r, [8 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call fastcc void @Loop_1_proc(i32* %in_r, [4096 x i8]* %image_V)
  call fastcc void @compute_gradients([4096 x i8]* %image_V, [4096 x i26]* %grad_vote_magnitude_s, [4096 x i4]* %grad_vote_bin_V) nounwind
  call fastcc void @compute_cells([4096 x i26]* %grad_vote_magnitude_s, [4096 x i4]* %grad_vote_bin_V, [576 x i32]* %cells_bin_V, [64 x i64]* %cells_mag_sq_V) nounwind
  call fastcc void @svm_detect(float* %tmp_channel, [576 x i32]* %cells_bin_V, [64 x i64]* %cells_mag_sq_V) nounwind
  call fastcc void @Block_arrayctor.loop(float* %tmp_channel, i32* %out_r) nounwind
  ret void
}

define internal fastcc void @svm_detect(float* nocapture %cells_bin_V_2, [576 x i32]* nocapture %cells_bin_V, [64 x i64]* nocapture %cells_mag_sq_V) {
codeRepl:
  %p_Val2_s = alloca i32
  %p_Val2_7 = alloca i32
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1764 x i14]* @SVM_detector_V, [1 x i8]* @p_str2, [14 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  store i32 -19822, i32* %p_Val2_7
  store i32 -19822, i32* %p_Val2_s
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %codeRepl
  %i = phi i3 [ 0, %codeRepl ], [ %i_1, %.loopexit.loopexit ]
  %i_cast = zext i3 %i to i7
  %exitcond2 = icmp eq i3 %i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7)
  %i_1 = add i3 %i, 1
  br i1 %exitcond2, label %_ifconv24, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %p_shl = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i, i3 0)
  %p_shl_cast = zext i6 %p_shl to i7
  %tmp_5 = sub i7 %p_shl_cast, %i_cast
  br label %.preheader

.preheader.loopexit:                              ; preds = %0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader.preheader
  %j = phi i3 [ 0, %.preheader.preheader ], [ %j_1, %.preheader.loopexit ]
  %exitcond3 = icmp eq i3 %j, -1
  %empty_23 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7)
  %j_1 = add i3 %j, 1
  br i1 %exitcond3, label %.loopexit.loopexit, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %tmp_4 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i, i3 %j)
  %tmp_8 = zext i6 %tmp_4 to i64
  %tmp_8_cast = zext i6 %tmp_4 to i10
  %tmp_6 = call i9 @_ssdm_op_BitConcatenate.i9.i3.i3.i3(i3 %i, i3 %j, i3 0)
  %p_shl4_cast = zext i9 %tmp_6 to i10
  %tmp_10 = add i10 %p_shl4_cast, %tmp_8_cast
  %tmp_11 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i_1, i3 %j)
  %tmp_15 = zext i6 %tmp_11 to i64
  %tmp_37_cast = zext i6 %tmp_11 to i10
  %tmp_16 = call i9 @_ssdm_op_BitConcatenate.i9.i3.i3.i3(i3 %i_1, i3 %j, i3 0)
  %p_shl3_cast = zext i9 %tmp_16 to i10
  %tmp_18 = add i10 %p_shl3_cast, %tmp_37_cast
  %cells_mag_sq_V_addr = getelementptr [64 x i64]* %cells_mag_sq_V, i64 0, i64 %tmp_8
  %cells_mag_sq_V_addr_1 = getelementptr [64 x i64]* %cells_mag_sq_V, i64 0, i64 %tmp_15
  %p_Val2_18 = load i64* %cells_mag_sq_V_addr, align 8
  %p_Val2_19 = load i64* %cells_mag_sq_V_addr_1, align 8
  %tmp_23 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i, i3 %j_1)
  %tmp_32 = zext i6 %tmp_23 to i64
  %tmp_48_cast = zext i6 %tmp_23 to i10
  %tmp_34 = call i9 @_ssdm_op_BitConcatenate.i9.i3.i3.i3(i3 %i, i3 %j_1, i3 0)
  %p_shl2_cast = zext i9 %tmp_34 to i10
  %tmp_37 = add i10 %p_shl2_cast, %tmp_48_cast
  %tmp_39 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i_1, i3 %j_1)
  %tmp_40 = zext i6 %tmp_39 to i64
  %tmp_62_cast = zext i6 %tmp_39 to i10
  %tmp_44 = call i9 @_ssdm_op_BitConcatenate.i9.i3.i3.i3(i3 %i_1, i3 %j_1, i3 0)
  %p_shl1_cast = zext i9 %tmp_44 to i10
  %tmp_45 = add i10 %p_shl1_cast, %tmp_62_cast
  %cells_mag_sq_V_addr_2 = getelementptr [64 x i64]* %cells_mag_sq_V, i64 0, i64 %tmp_32
  %cells_mag_sq_V_addr_3 = getelementptr [64 x i64]* %cells_mag_sq_V, i64 0, i64 %tmp_40
  %p_Val2_21 = load i64* %cells_mag_sq_V_addr_2, align 8
  %p_Val2_22 = load i64* %cells_mag_sq_V_addr_3, align 8
  %tmp1 = add i64 %p_Val2_21, %p_Val2_19
  %tmp2 = add i64 %p_Val2_22, %p_Val2_18
  %p_Val2_23 = add i64 %tmp1, %tmp2
  %tmp_12 = icmp eq i64 %p_Val2_23, 0
  %is_neg = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_23, i32 63)
  %tmp_13 = sub nsw i64 0, %p_Val2_23
  %p_Val2_31 = select i1 %is_neg, i64 %tmp_13, i64 %p_Val2_23
  %p_Result_s = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %p_Val2_31, i32 63, i32 0)
  %tmp_14 = call i64 @llvm.cttz.i64(i64 %p_Result_s, i1 true) nounwind
  %num_zeros_1 = trunc i64 %tmp_14 to i32
  %tmp_50 = trunc i64 %tmp_14 to i8
  %msb_idx = xor i32 %num_zeros_1, 63
  %tmp_52 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx, i32 5, i32 31)
  %icmp = icmp eq i27 %tmp_52, 0
  %tmp32_V_5 = trunc i64 %p_Val2_31 to i32
  %tmp_17 = sub nsw i32 31, %msb_idx
  %tmp32_V_3 = shl i32 %tmp32_V_5, %tmp_17
  %tmp_62 = trunc i32 %msb_idx to i6
  %tmp_67 = add i6 -31, %tmp_62
  %tmp_72 = zext i6 %tmp_67 to i64
  %tmp_91 = lshr i64 %p_Val2_31, %tmp_72
  %tmp32_V_6 = trunc i64 %tmp_91 to i32
  %tmp32_V_7 = select i1 %icmp, i32 %tmp32_V_3, i32 %tmp32_V_6
  %f_2 = uitofp i32 %tmp32_V_7 to float
  %tmp32_V_12 = bitcast float %f_2 to i32
  %p_Result_s_24 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_12, i32 23, i32 30)
  %tmp_19 = icmp ne i8 %p_Result_s_24, -98
  %tmp_20 = sub i8 -98, %tmp_50
  %tmp_21 = zext i1 %tmp_19 to i8
  %p_Repl2_4_trunc = add i8 %tmp_21, %tmp_20
  %tmp_22 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %is_neg, i8 %p_Repl2_4_trunc)
  %p_Result_1 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_12, i9 %tmp_22, i32 23, i32 31)
  %tmp_46 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_Result_1, i32 1, i32 31)
  %tmp_48 = zext i31 %tmp_46 to i32
  %p_op = sub i32 1597463007, %tmp_48
  %tmp_57 = bitcast i32 %p_op to float
  %yn = select i1 %tmp_12, float 0x43E6EB3BE0000000, float %tmp_57
  %f_3 = bitcast i32 %p_Result_1 to float
  %x = select i1 %tmp_12, float 0.000000e+00, float %f_3
  %yn_sq = fmul float %yn, %yn
  %yn_sq_x = fmul float %yn_sq, %x
  %tmp_24 = fsub float 3.000000e+00, %yn_sq_x
  %v_assign = fmul float %yn, %tmp_24
  %d_assign = fpext float %v_assign to double
  %ireg_V = bitcast double %d_assign to i64
  %tmp_93 = trunc i64 %ireg_V to i63
  %isneg = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %ireg_V, i32 63)
  %exp_tmp_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %ireg_V, i32 52, i32 62)
  %tmp_25 = zext i11 %exp_tmp_V to i12
  %tmp_95 = trunc i64 %ireg_V to i52
  %tmp_26 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %tmp_95)
  %p_Result_2 = zext i53 %tmp_26 to i54
  %man_V_1 = sub i54 0, %p_Result_2
  %man_V_2 = select i1 %isneg, i54 %man_V_1, i54 %p_Result_2
  %tmp_27 = icmp eq i63 %tmp_93, 0
  %F2 = sub i12 1075, %tmp_25
  %tmp_28 = icmp sgt i12 %F2, 16
  %tmp_29 = add i12 -16, %F2
  %tmp_30 = sub i12 16, %F2
  %sh_amt = select i1 %tmp_28, i12 %tmp_29, i12 %tmp_30
  %sh_amt_cast = sext i12 %sh_amt to i32
  %tmp_31 = icmp eq i12 %F2, 16
  %tmp_96 = trunc i54 %man_V_2 to i32
  %tmp_33 = icmp ult i12 %sh_amt, 54
  %tmp_97 = call i7 @_ssdm_op_PartSelect.i7.i12.i32.i32(i12 %sh_amt, i32 5, i32 11)
  %icmp1 = icmp eq i7 %tmp_97, 0
  %tmp_35 = zext i32 %sh_amt_cast to i54
  %tmp_36 = ashr i54 %man_V_2, %tmp_35
  %tmp_38 = shl i32 %tmp_96, %sh_amt_cast
  %sel_tmp1 = xor i1 %tmp_27, true
  %sel_tmp2 = and i1 %tmp_31, %sel_tmp1
  %sel_tmp6_demorgan = or i1 %tmp_27, %tmp_31
  %sel_tmp6 = xor i1 %sel_tmp6_demorgan, true
  %sel_tmp7 = and i1 %tmp_28, %sel_tmp6
  %sel_tmp8 = and i1 %sel_tmp7, %tmp_33
  %sel_tmp = xor i1 %tmp_33, true
  %sel_tmp3 = and i1 %sel_tmp7, %sel_tmp
  %sel_tmp21_demorgan = or i1 %sel_tmp6_demorgan, %tmp_28
  %sel_tmp4 = xor i1 %sel_tmp21_demorgan, true
  %sel_tmp5 = and i1 %icmp1, %sel_tmp4
  %or_cond = or i1 %sel_tmp5, %sel_tmp3
  %or_cond1 = or i1 %sel_tmp8, %sel_tmp2
  %or_cond2 = or i1 %or_cond, %or_cond1
  %tmp_73 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %tmp_38, i32 1, i32 31)
  %tmp_74 = select i1 %isneg, i31 -1, i31 0
  %tmp_75 = select i1 %sel_tmp5, i31 %tmp_73, i31 %tmp_74
  %tmp_76 = call i31 @_ssdm_op_PartSelect.i31.i54.i32.i32(i54 %tmp_36, i32 1, i32 31)
  %tmp_77 = call i31 @_ssdm_op_PartSelect.i31.i54.i32.i32(i54 %man_V_2, i32 1, i32 31)
  %tmp_78 = select i1 %sel_tmp8, i31 %tmp_76, i31 %tmp_77
  %tmp_79 = select i1 %or_cond, i31 %tmp_75, i31 %tmp_78
  %tmp_80 = select i1 %or_cond2, i31 %tmp_79, i31 0
  %tmp_55_cast = zext i3 %j to i7
  %tmp_41 = add i7 %tmp_55_cast, %tmp_5
  %tmp_42 = call i12 @_ssdm_op_BitConcatenate.i12.i7.i5(i7 %tmp_41, i5 0)
  %tmp_43 = call i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7 %tmp_41, i2 0)
  %tmp_77_cast_cast = sext i9 %tmp_43 to i10
  %OP2_V_cast = sext i31 %tmp_80 to i63
  br label %0

; <label>:0                                       ; preds = %1, %_ifconv
  %k = phi i4 [ 0, %_ifconv ], [ %k_1, %1 ]
  %exitcond = icmp eq i4 %k, -7
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %k_1 = add i4 %k, 1
  br i1 %exitcond, label %.preheader.loopexit, label %1

; <label>:1                                       ; preds = %0
  %p_Val2_7_load = load i32* %p_Val2_7
  %tmp_89_cast_cast = zext i4 %k to i10
  %tmp3 = add i10 %tmp_77_cast_cast, %tmp_89_cast_cast
  %tmp29_cast = sext i10 %tmp3 to i12
  %SVM_index = add i12 %tmp29_cast, %tmp_42
  %SVM_index_cast = sext i12 %SVM_index to i16
  %tmp_81 = add i10 %tmp_89_cast_cast, %tmp_10
  %tmp_84_cast = zext i10 %tmp_81 to i64
  %cells_bin_V_addr = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_84_cast
  %tmp_82 = add i10 %tmp_89_cast_cast, %tmp_18
  %tmp_85_cast = zext i10 %tmp_82 to i64
  %cells_bin_V_addr_1 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_85_cast
  %tmp_83 = add i10 %tmp_89_cast_cast, %tmp_37
  %tmp_86_cast = zext i10 %tmp_83 to i64
  %cells_bin_V_addr_2 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_86_cast
  %tmp_84 = add i10 %tmp_89_cast_cast, %tmp_45
  %tmp_87_cast = zext i10 %tmp_84 to i64
  %cells_bin_V_addr_3 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_87_cast
  %cells_bin_V_load = load i32* %cells_bin_V_addr, align 4
  %OP1_V_cast = sext i32 %cells_bin_V_load to i63
  %p_Val2_1 = mul i63 %OP1_V_cast, %OP2_V_cast
  %tmp_47 = call i32 @_ssdm_op_PartSelect.i32.i63.i32.i32(i63 %p_Val2_1, i32 16, i32 47)
  %cells_bin_V_load_1 = load i32* %cells_bin_V_addr_1, align 4
  %OP1_V_1_cast = sext i32 %cells_bin_V_load_1 to i63
  %p_Val2_2 = mul i63 %OP1_V_1_cast, %OP2_V_cast
  %tmp_49 = call i32 @_ssdm_op_PartSelect.i32.i63.i32.i32(i63 %p_Val2_2, i32 16, i32 47)
  %cells_bin_V_load_2 = load i32* %cells_bin_V_addr_2, align 4
  %OP1_V_2_cast = sext i32 %cells_bin_V_load_2 to i63
  %p_Val2_3 = mul i63 %OP1_V_2_cast, %OP2_V_cast
  %tmp_51 = call i32 @_ssdm_op_PartSelect.i32.i63.i32.i32(i63 %p_Val2_3, i32 16, i32 47)
  %cells_bin_V_load_3 = load i32* %cells_bin_V_addr_3, align 4
  %OP1_V_3_cast = sext i32 %cells_bin_V_load_3 to i63
  %p_Val2_5 = mul i63 %OP1_V_3_cast, %OP2_V_cast
  %tmp_53 = call i32 @_ssdm_op_PartSelect.i32.i63.i32.i32(i63 %p_Val2_5, i32 16, i32 47)
  %tmp_54 = zext i16 %SVM_index_cast to i64
  %SVM_detector_V_addr = getelementptr [1764 x i14]* @SVM_detector_V, i64 0, i64 %tmp_54
  %SVM_detector_V_load = load i14* %SVM_detector_V_addr, align 2
  %OP1_V_4_cast = sext i14 %SVM_detector_V_load to i45
  %OP2_V_1_cast = sext i32 %tmp_47 to i45
  %p_Val2_6 = mul i45 %OP2_V_1_cast, %OP1_V_4_cast
  %p_Val2_6_cast = sext i45 %p_Val2_6 to i64
  %tmp_55 = call i48 @_ssdm_op_BitConcatenate.i48.i32.i16(i32 %p_Val2_7_load, i16 0)
  %tmp_69_cast = zext i48 %tmp_55 to i65
  %tmp_56 = zext i64 %p_Val2_6_cast to i65
  %p_Val2_34 = add nsw i65 %tmp_56, %tmp_69_cast
  %tmp_72_cast = zext i16 %SVM_index_cast to i17
  %tmp_58 = add i17 %tmp_72_cast, 9
  %tmp_59 = zext i17 %tmp_58 to i64
  %SVM_detector_V_addr_1 = getelementptr [1764 x i14]* @SVM_detector_V, i64 0, i64 %tmp_59
  %SVM_detector_V_load_1 = load i14* %SVM_detector_V_addr_1, align 2
  %OP1_V_5_cast = sext i14 %SVM_detector_V_load_1 to i45
  %OP2_V_2_cast = sext i32 %tmp_49 to i45
  %p_Val2_9 = mul i45 %OP2_V_2_cast, %OP1_V_5_cast
  %p_Val2_9_cast = sext i45 %p_Val2_9 to i64
  %tmp_85 = call i32 @_ssdm_op_PartSelect.i32.i65.i32.i32(i65 %p_Val2_34, i32 16, i32 47)
  %tmp_60 = call i48 @_ssdm_op_BitConcatenate.i48.i32.i16(i32 %tmp_85, i16 0)
  %tmp_76_cast = zext i48 %tmp_60 to i65
  %tmp_61 = zext i64 %p_Val2_9_cast to i65
  %p_Val2_35 = add nsw i65 %tmp_61, %tmp_76_cast
  %tmp_63 = add i17 %tmp_72_cast, 18
  %tmp_64 = zext i17 %tmp_63 to i64
  %SVM_detector_V_addr_2 = getelementptr [1764 x i14]* @SVM_detector_V, i64 0, i64 %tmp_64
  %SVM_detector_V_load_2 = load i14* %SVM_detector_V_addr_2, align 2
  %OP1_V_6_cast = sext i14 %SVM_detector_V_load_2 to i45
  %OP2_V_3_cast = sext i32 %tmp_51 to i45
  %p_Val2_8 = mul i45 %OP2_V_3_cast, %OP1_V_6_cast
  %p_Val2_10_cast = sext i45 %p_Val2_8 to i64
  %tmp_86 = call i32 @_ssdm_op_PartSelect.i32.i65.i32.i32(i65 %p_Val2_35, i32 16, i32 47)
  %tmp_65 = call i48 @_ssdm_op_BitConcatenate.i48.i32.i16(i32 %tmp_86, i16 0)
  %tmp_82_cast = zext i48 %tmp_65 to i65
  %tmp_66 = zext i64 %p_Val2_10_cast to i65
  %p_Val2_36 = add nsw i65 %tmp_66, %tmp_82_cast
  %tmp_68 = add i17 %tmp_72_cast, 27
  %tmp_69 = zext i17 %tmp_68 to i64
  %SVM_detector_V_addr_3 = getelementptr [1764 x i14]* @SVM_detector_V, i64 0, i64 %tmp_69
  %SVM_detector_V_load_3 = load i14* %SVM_detector_V_addr_3, align 2
  %OP1_V_7_cast = sext i14 %SVM_detector_V_load_3 to i45
  %OP2_V_4_cast = sext i32 %tmp_53 to i45
  %p_Val2_4 = mul i45 %OP2_V_4_cast, %OP1_V_7_cast
  %p_Val2_11_cast = sext i45 %p_Val2_4 to i64
  %tmp_87 = call i32 @_ssdm_op_PartSelect.i32.i65.i32.i32(i65 %p_Val2_36, i32 16, i32 47)
  %tmp_70 = call i48 @_ssdm_op_BitConcatenate.i48.i32.i16(i32 %tmp_87, i16 0)
  %tmp_88_cast = zext i48 %tmp_70 to i65
  %tmp_71 = zext i64 %p_Val2_11_cast to i65
  %p_Val2_37 = add nsw i65 %tmp_71, %tmp_88_cast
  %result_V = call i32 @_ssdm_op_PartSelect.i32.i65.i32.i32(i65 %p_Val2_37, i32 16, i32 47)
  store i32 %result_V, i32* %p_Val2_7
  store i32 %result_V, i32* %p_Val2_s
  br label %0

_ifconv24:                                        ; preds = %.loopexit
  %p_Val2_load = load i32* %p_Val2_s
  %tmp_s = icmp eq i32 %p_Val2_load, 0
  %is_neg_1 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_load, i32 31)
  %tmp_7 = sub nsw i32 0, %p_Val2_load
  %p_Val2_38 = select i1 %is_neg_1, i32 %tmp_7, i32 %p_Val2_load
  %p_Result_4 = call i32 @_ssdm_op_PartSelect.i32.i32.i32.i32(i32 %p_Val2_38, i32 31, i32 0)
  %num_zeros = call i32 @llvm.cttz.i32(i32 %p_Result_4, i1 true) nounwind
  %tmp32_V_1 = shl i32 %p_Val2_38, %num_zeros
  %f_1 = uitofp i32 %tmp32_V_1 to float
  %tmp32_V = bitcast float %f_1 to i32
  %p_Result_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V, i32 23, i32 30)
  %tmp_1 = icmp ne i8 %p_Result_3, -98
  %tmp = trunc i32 %num_zeros to i8
  %tmp_2 = sub i8 -114, %tmp
  %tmp_9 = zext i1 %tmp_1 to i8
  %p_Repl2_1_trunc = add i8 %tmp_2, %tmp_9
  %tmp_3 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %is_neg_1, i8 %p_Repl2_1_trunc)
  %p_Result_5 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V, i9 %tmp_3, i32 23, i32 31)
  %f = bitcast i32 %p_Result_5 to float
  %p_03_i = select i1 %tmp_s, float 0.000000e+00, float %f
  call void @_ssdm_op_Write.ap_auto.volatile.floatP(float* %cells_bin_V_2, float %p_03_i)
  ret void
}

declare i32 @llvm.part.set.i32.i9(i32, i9, i32, i32) nounwind readnone

declare i7 @llvm.part.select.i7(i7, i32, i32) nounwind readnone

declare i65 @llvm.part.select.i65(i65, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i63 @llvm.part.select.i63(i63, i32, i32) nounwind readnone

declare i54 @llvm.part.select.i54(i54, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i64 @llvm.cttz.i64(i64, i1) nounwind readnone

declare i32 @llvm.cttz.i32(i32, i1) nounwind readnone

define internal fastcc void @compute_gradients([4096 x i8]* nocapture %image_V, [4096 x i26]* %grad_vote_magnitude_s, [4096 x i4]* %grad_vote_bin_V) {
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  %i_5_dup = add i7 1, %i
  %exitcond = icmp eq i7 %j, -64
  %j_mid2 = select i1 %exitcond, i7 0, i7 %j
  %tmp_mid1 = icmp eq i7 %i_5_dup, 0
  %tmp_mid1_26 = icmp eq i7 %i_5_dup, 63
  %tmp_73_mid2_v = select i1 %exitcond, i7 %i_5_dup, i7 %i
  %tmp_88 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_73_mid2_v, i6 0)
  %tmp_92_cast = zext i13 %tmp_88 to i14
  %tmp_110 = trunc i7 %i_5_dup to i6
  %i_5_cast_mid1 = add i6 1, %tmp_110
  %uy_V_cast_mid1 = add i6 -1, %tmp_110
  %tmp_89 = select i1 %tmp_mid1_26, i6 -1, i6 %i_5_cast_mid1
  %tmp_90 = select i1 %exitcond, i6 %tmp_89, i6 %dy_V
  %tmp_91 = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %tmp_90, i6 0)
  %tmp_96_cast = zext i12 %tmp_91 to i13
  %tmp_92 = select i1 %tmp_mid1, i6 0, i6 %uy_V_cast_mid1
  %tmp_93 = select i1 %exitcond, i6 %tmp_92, i6 %p_s_27
  %tmp_94 = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %tmp_93, i6 0)
  %tmp_100_cast = zext i12 %tmp_94 to i13
  %tmp_72 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_73 = icmp eq i7 %j_mid2, 0
  %tmp_111 = trunc i7 %j_mid2 to i6
  %lx_V = add i6 -1, %tmp_111
  %p_s = select i1 %tmp_73, i6 0, i6 %lx_V
  %tmp_74 = icmp eq i7 %j_mid2, 63
  %rx_V = add i6 1, %tmp_111
  %p_4 = select i1 %tmp_74, i6 -1, i6 %rx_V
  %tmp_95 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_73_mid2_v, i6 %p_4)
  %tmp_96 = zext i13 %tmp_95 to i64
  %image_V_addr = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_96
  %tmp_97 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_73_mid2_v, i6 %p_s)
  %tmp_98 = zext i13 %tmp_97 to i64
  %image_V_addr_1 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_98
  %image_V_load = load i8* %image_V_addr, align 1
  %lhs_V = zext i8 %image_V_load to i9
  %image_V_load_1 = load i8* %image_V_addr_1, align 1
  %rhs_V = zext i8 %image_V_load_1 to i9
  %r_V = sub i9 %lhs_V, %rhs_V
  %tmp_75_cast1 = zext i7 %j_mid2 to i14
  %tmp_75_cast = zext i7 %j_mid2 to i13
  %tmp_99 = add i13 %tmp_75_cast, %tmp_96_cast
  %tmp_105_cast = zext i13 %tmp_99 to i64
  %image_V_addr_2 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_105_cast
  %tmp_101 = add i13 %tmp_75_cast, %tmp_100_cast
  %tmp_106_cast = zext i13 %tmp_101 to i64
  %image_V_addr_3 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_106_cast
  %tmp_102 = add i14 %tmp_75_cast1, %tmp_92_cast
  %tmp_107_cast = zext i14 %tmp_102 to i64
  %grad_vote_magnitude_1 = getelementptr [4096 x i26]* %grad_vote_magnitude_s, i64 0, i64 %tmp_107_cast
  %grad_vote_bin_V_addr = getelementptr [4096 x i4]* %grad_vote_bin_V, i64 0, i64 %tmp_107_cast
  %image_V_load_2 = load i8* %image_V_addr_2, align 1
  %lhs_V_1 = zext i8 %image_V_load_2 to i9
  %image_V_load_3 = load i8* %image_V_addr_3, align 1
  %rhs_V_1 = zext i8 %image_V_load_3 to i9
  %r_V_1 = sub i9 %lhs_V_1, %rhs_V_1
  %tmp_112 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V, i32 8)
  %tmp_77 = sub i9 0, %r_V
  %gradX = select i1 %tmp_112, i9 %tmp_77, i9 %r_V
  %tmp_113 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V_1, i32 8)
  %p_Val2_39 = sub i9 0, %r_V_1
  %gradY = select i1 %tmp_113, i9 %p_Val2_39, i9 %r_V_1
  %tmp_80 = icmp sgt i9 %gradX, %gradY
  %p_Val2_s = select i1 %tmp_80, i9 %gradX, i9 %gradY
  %a_V = call i25 @_ssdm_op_BitConcatenate.i25.i9.i16(i9 %p_Val2_s, i16 0)
  %a_V_cast = sext i25 %a_V to i26
  %p_Val2_1 = call i22 @_ssdm_op_BitConcatenate.i22.i9.i13(i9 %p_Val2_s, i13 0)
  %p_Val2_56_cast = sext i22 %p_Val2_1 to i24
  %p_Val2_5 = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %p_Val2_s, i14 0)
  %p_Val2_15_cast = sext i23 %p_Val2_5 to i24
  %p_Val2_6 = call i24 @_ssdm_op_BitConcatenate.i24.i9.i15(i9 %p_Val2_s, i15 0)
  %p_Val2_16_cast = sext i24 %p_Val2_6 to i25
  %tmp_103 = select i1 %tmp_80, i9 %gradY, i9 %gradX
  %p_Val2_7 = call i24 @_ssdm_op_BitConcatenate.i24.i9.i15(i9 %tmp_103, i15 0)
  %p_Val2_17_cast = sext i24 %p_Val2_7 to i26
  %addconv = add i24 %p_Val2_15_cast, %p_Val2_56_cast
  %addconv_cast = sext i24 %addconv to i25
  %addconv2 = add i25 %p_Val2_16_cast, %addconv_cast
  %addconv2_cast = sext i25 %addconv2 to i26
  %r1_V = add i26 %addconv2_cast, %p_Val2_17_cast
  %tmp_81 = icmp sgt i26 %r1_V, %a_V_cast
  %tmp_82 = select i1 %tmp_81, i26 %r1_V, i26 %a_V_cast
  store i26 %tmp_82, i26* %grad_vote_magnitude_1, align 4
  %tmp_114 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V, i32 8)
  %tmp_115 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V_1, i32 8)
  %quad = xor i1 %tmp_114, %tmp_115
  %tmp_104 = call i25 @_ssdm_op_BitConcatenate.i25.i9.i16(i9 %gradY, i16 0)
  %dy_V_1 = sext i25 %tmp_104 to i27
  %dy_V_cast15_cast_i = zext i27 %dy_V_1 to i30
  %dy_V_cast_i = zext i27 %dy_V_1 to i32
  %tmp_93_i = call i22 @_ssdm_op_BitConcatenate.i22.i9.i13(i9 %gradX, i13 0)
  %tmp_93_i_cast = sext i22 %tmp_93_i to i29
  %p_Val2_50_cast_i = zext i29 %tmp_93_i_cast to i30
  %tmp_94_i = call i21 @_ssdm_op_BitConcatenate.i21.i9.i12(i9 %gradX, i12 0)
  %tmp_94_i_cast = sext i21 %tmp_94_i to i28
  %p_Val2_12_i_cast = zext i28 %tmp_94_i_cast to i29
  %p_Val2_12_cast_i = zext i28 %tmp_94_i_cast to i30
  %addconv_i = add i30 %p_Val2_50_cast_i, %p_Val2_12_cast_i
  %tmp_95_i = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %gradX, i14 0)
  %tmp_95_i_cast = sext i23 %tmp_95_i to i30
  %p_Val2_15_i_cast = zext i30 %tmp_95_i_cast to i31
  %tmp_96_i = call i24 @_ssdm_op_BitConcatenate.i24.i9.i15(i9 %gradX, i15 0)
  %tmp_96_i_cast = sext i24 %tmp_96_i to i31
  %p_Val2_41 = zext i31 %tmp_96_i_cast to i32
  %tmp_97_i = call i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9 %gradX, i10 0)
  %tmp_97_i_cast = sext i19 %tmp_97_i to i26
  %p_Val2_17_i_cast = zext i26 %tmp_97_i_cast to i29
  %tmp1 = add i29 %p_Val2_12_i_cast, %p_Val2_17_i_cast
  %tmp1_cast = zext i29 %tmp1 to i32
  %p_Val2_i = add i32 %tmp1_cast, %p_Val2_41
  %tmp2 = add i29 65536, %p_Val2_12_i_cast
  %tmp2_cast = zext i29 %tmp2 to i30
  %p_Val2_13_i = add i30 %tmp2_cast, %p_Val2_50_cast_i
  %tmp3 = add i31 131072, %p_Val2_15_i_cast
  %tmp3_cast = zext i31 %tmp3 to i32
  %p_Val2_14_i = add i32 %tmp3_cast, %p_Val2_41
  %tmp_98_i = icmp sgt i30 %dy_V_cast15_cast_i, %addconv_i
  %tmp_99_i = icmp sgt i32 %dy_V_cast_i, %p_Val2_i
  %tmp_100_i = icmp sgt i30 %dy_V_cast15_cast_i, %p_Val2_13_i
  %tmp_101_i = select i1 %quad, i4 -8, i4 1
  %tmp_102_i = icmp sgt i32 %dy_V_cast_i, %p_Val2_14_i
  %tmp_108_cast_i_cast_s = select i1 %quad, i4 7, i4 2
  %tmp_109_cast_i_cast_s = select i1 %quad, i4 5, i4 4
  %tmp_110_cast_i_cast_s = select i1 %quad, i4 6, i4 3
  %sel_tmp_i = xor i1 %tmp_99_i, true
  %sel_tmp1_i = and i1 %tmp_98_i, %sel_tmp_i
  %sel_tmp2_i = select i1 %sel_tmp1_i, i4 %tmp_101_i, i4 %tmp_110_cast_i_cast_s
  %sel_tmp3_i = and i1 %tmp_98_i, %tmp_99_i
  %sel_tmp4_i = xor i1 %tmp_100_i, true
  %sel_tmp5_i = and i1 %sel_tmp3_i, %sel_tmp4_i
  %sel_tmp6_i = select i1 %sel_tmp5_i, i4 %tmp_108_cast_i_cast_s, i4 %sel_tmp2_i
  %tmp4 = and i1 %tmp_100_i, %tmp_102_i
  %sel_tmp9_i = and i1 %tmp4, %sel_tmp3_i
  %sel_tmp10_i = select i1 %sel_tmp9_i, i4 %tmp_109_cast_i_cast_s, i4 %sel_tmp6_i
  %agg_result_V_i = select i1 %tmp_98_i, i4 %sel_tmp10_i, i4 0
  store i4 %agg_result_V_i, i4* %grad_vote_bin_V_addr, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_72)
  %j_2 = add i7 1, %j_mid2
  br label %.preheader

.preheader:                                       ; preds = %.loopexit.loopexit, %0
  %indvar_flatten = phi i13 [ 0, %0 ], [ %indvar_flatten_next, %.loopexit.loopexit ]
  %i = phi i7 [ 0, %0 ], [ %tmp_73_mid2_v, %.loopexit.loopexit ]
  %j = phi i7 [ 0, %0 ], [ %j_2, %.loopexit.loopexit ]
  %tmp = icmp eq i7 %i, 0
  %tmp_s = icmp eq i7 %i, 63
  %tmp_100 = trunc i7 %i to i6
  %i_5_cast = add i6 1, %tmp_100
  %uy_V_cast = add i6 -1, %tmp_100
  %p_s_27 = select i1 %tmp, i6 0, i6 %uy_V_cast
  %dy_V = select i1 %tmp_s, i6 -1, i6 %i_5_cast
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -4096
  %empty_28 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %indvar_flatten_next = add i13 1, %indvar_flatten
  br i1 %exitcond_flatten, label %1, label %.loopexit.loopexit

; <label>:1                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @compute_cells([4096 x i26]* nocapture %grad_vote_magnitude_s, [4096 x i4]* %grad_vote_bin_V, [576 x i32]* %cells_bin_V, [64 x i64]* %cells_mag_sq_V) {
  %bin_vote_V = alloca [9 x i32], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %.preheader230

.preheader230:                                    ; preds = %3, %0
  %indvar_flatten6 = phi i7 [ 0, %0 ], [ %indvar_flatten_next7, %3 ]
  %i_op_assign_1 = phi i7 [ 0, %0 ], [ %tmp_mid2_v_v_v, %3 ]
  %i_op_assign = phi i7 [ 0, %0 ], [ %j, %3 ]
  %exitcond_flatten8 = icmp eq i7 %indvar_flatten6, -64
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %indvar_flatten_next7 = add i7 %indvar_flatten6, 1
  br i1 %exitcond_flatten8, label %4, label %.preheader230.preheader

.preheader227:                                    ; preds = %.preheader230.preheader, %1
  %k = phi i4 [ %k_2, %1 ], [ 0, %.preheader230.preheader ]
  %exitcond5 = icmp eq i4 %k, -7
  %empty_29 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %k_2 = add i4 %k, 1
  br i1 %exitcond5, label %.preheader226.preheader, label %1

.preheader226.preheader:                          ; preds = %.preheader227
  br label %.preheader226

; <label>:1                                       ; preds = %.preheader227
  %tmp_83 = zext i4 %k to i64
  %bin_vote_V_addr = getelementptr [9 x i32]* %bin_vote_V, i64 0, i64 %tmp_83
  store i32 0, i32* %bin_vote_V_addr, align 4
  br label %.preheader227

.preheader.preheader:                             ; preds = %.preheader226
  %tmp_85 = call i3 @_ssdm_op_PartSelect.i3.i7.i32.i32(i7 %i_op_assign_mid2, i32 3, i32 5)
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_mid2_v, i3 %tmp_85)
  %tmp_s = zext i6 %tmp to i64
  %tmp_110_cast = zext i6 %tmp to i10
  %tmp_105 = call i9 @_ssdm_op_BitConcatenate.i9.i3.i3.i3(i3 %tmp_mid2_v, i3 %tmp_85, i3 0)
  %p_shl_cast = zext i9 %tmp_105 to i10
  %tmp_106 = add i10 %p_shl_cast, %tmp_110_cast
  %cells_mag_sq_V_addr = getelementptr [64 x i64]* %cells_mag_sq_V, i64 0, i64 %tmp_s
  br label %.preheader

.preheader226:                                    ; preds = %.preheader226.preheader, %.preheader23
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader23 ], [ 0, %.preheader226.preheader ]
  %t_V = phi i4 [ %tmp_95_mid2_v_v_v, %.preheader23 ], [ 0, %.preheader226.preheader ]
  %t_V_3 = phi i4 [ %jj_V, %.preheader23 ], [ 0, %.preheader226.preheader ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader.preheader, label %.preheader23

.preheader23:                                     ; preds = %.preheader226
  %ii_V = add i4 %t_V, 1
  %tmp_107 = icmp eq i4 %t_V_3, -8
  %t_V_3_mid2 = select i1 %tmp_107, i4 0, i4 %t_V_3
  %tmp_95_mid2_v_v_v = select i1 %tmp_107, i4 %ii_V, i4 %t_V
  %tmp_95_mid2_v_v = zext i4 %tmp_95_mid2_v_v_v to i7
  %tmp_95_mid2_v = add i7 %tmp_mid2_v_v_v, %tmp_95_mid2_v_v
  %tmp_108 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_95_mid2_v, i6 0)
  %tmp_114_cast = zext i13 %tmp_108 to i14
  %tmp_86 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str45)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %rhs_V_cast = zext i4 %t_V_3_mid2 to i7
  %r_V = add i7 %i_op_assign_mid2, %rhs_V_cast
  %tmp_87_cast = zext i7 %r_V to i14
  %tmp_109 = add i14 %tmp_87_cast, %tmp_114_cast
  %tmp_115_cast = zext i14 %tmp_109 to i64
  %grad_vote_magnitude_2 = getelementptr [4096 x i26]* %grad_vote_magnitude_s, i64 0, i64 %tmp_115_cast
  %grad_vote_bin_V_addr = getelementptr [4096 x i4]* %grad_vote_bin_V, i64 0, i64 %tmp_115_cast
  %grad_vote_magnitude_3 = load i26* %grad_vote_magnitude_2, align 4
  %p_Val2_43 = sext i26 %grad_vote_magnitude_3 to i32
  %grad_vote_bin_V_load = load i4* %grad_vote_bin_V_addr, align 1
  %tmp_88 = zext i4 %grad_vote_bin_V_load to i64
  %bin_vote_V_addr_3 = getelementptr [9 x i32]* %bin_vote_V, i64 0, i64 %tmp_88
  %p_Val2_42 = load i32* %bin_vote_V_addr_3, align 4
  %p_Val2_s = add i32 %p_Val2_43, %p_Val2_42
  store i32 %p_Val2_s, i32* %bin_vote_V_addr_3, align 4
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str45, i32 %tmp_86)
  %jj_V = add i4 %t_V_3_mid2, 1
  br label %.preheader226

.preheader:                                       ; preds = %2, %.preheader.preheader
  %p_Val2_8 = phi i64 [ 0, %.preheader.preheader ], [ %mag_sq_V, %2 ]
  %k1 = phi i4 [ 0, %.preheader.preheader ], [ %k_3, %2 ]
  %exitcond = icmp eq i4 %k1, -7
  %empty_32 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %k_3 = add i4 %k1, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_89 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_90 = zext i4 %k1 to i64
  %tmp_90_cast = zext i4 %k1 to i10
  %tmp_110 = add i10 %tmp_106, %tmp_90_cast
  %tmp_116_cast = zext i10 %tmp_110 to i64
  %cells_bin_V_addr = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_116_cast
  %bin_vote_V_addr_1 = getelementptr [9 x i32]* %bin_vote_V, i64 0, i64 %tmp_90
  %bin_vote_V_load = load i32* %bin_vote_V_addr_1, align 4
  %tmp_91 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %bin_vote_V_load, i32 1, i32 31)
  %p_Val2_s_33 = sext i31 %tmp_91 to i32
  %tmp_92 = icmp eq i4 %k1, -8
  %tmp_93 = select i1 %tmp_92, i4 0, i4 %k_3
  %tmp_94 = zext i4 %tmp_93 to i64
  %bin_vote_V_addr_2 = getelementptr [9 x i32]* %bin_vote_V, i64 0, i64 %tmp_94
  %bin_vote_V_load_1 = load i32* %bin_vote_V_addr_2, align 4
  %tmp_95 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %bin_vote_V_load_1, i32 1, i32 31)
  %p_Val2_9 = sext i31 %tmp_95 to i32
  %addconv = add nsw i32 %p_Val2_9, %p_Val2_s_33
  store i32 %addconv, i32* %cells_bin_V_addr, align 4
  %OP1_V = sext i32 %addconv to i64
  %p_Val2_1 = mul nsw i64 %OP1_V, %OP1_V
  %mag_sq_V = add i64 %p_Val2_8, %p_Val2_1
  %empty_34 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_89)
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  store i64 %p_Val2_8, i64* %cells_mag_sq_V_addr, align 8
  %j = add i7 %i_op_assign_mid2, 8
  br label %.preheader230

.preheader230.preheader:                          ; preds = %.preheader230
  %i = add i7 %i_op_assign_1, 8
  %tmp_117 = call i1 @_ssdm_op_BitSelect.i1.i7.i32(i7 %i_op_assign, i32 6)
  %i_op_assign_mid2 = select i1 %tmp_117, i7 0, i7 %i_op_assign
  %tmp_mid2_v_v_v = select i1 %tmp_117, i7 %i, i7 %i_op_assign_1
  %tmp_mid2_v = call i3 @_ssdm_op_PartSelect.i3.i7.i32.i32(i7 %tmp_mid2_v_v_v, i32 3, i32 5)
  br label %.preheader227

; <label>:4                                       ; preds = %.preheader230
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak float @_ssdm_op_Read.ap_auto.volatile.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32, i9, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i9(i32 %0, i9 %1, i32 %2, i32 %3)
  ret i32 %empty
}

declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_35 = trunc i32 %empty to i8
  ret i8 %empty_35
}

define weak i7 @_ssdm_op_PartSelect.i7.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_36 = trunc i12 %empty to i7
  ret i7 %empty_36
}

define weak i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  ret i64 %empty
}

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i65.i32.i32(i65, i32, i32) nounwind readnone {
entry:
  %empty = call i65 @llvm.part.select.i65(i65 %0, i32 %1, i32 %2)
  %empty_37 = trunc i65 %empty to i32
  ret i32 %empty_37
}

declare i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i63.i32.i32(i63, i32, i32) nounwind readnone {
entry:
  %empty = call i63 @llvm.part.select.i63(i63 %0, i32 %1, i32 %2)
  %empty_38 = trunc i63 %empty to i32
  ret i32 %empty_38
}

declare i32 @_ssdm_op_PartSelect.i32.i54.i32.i32(i54, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  ret i32 %empty
}

define weak i31 @_ssdm_op_PartSelect.i31.i54.i32.i32(i54, i32, i32) nounwind readnone {
entry:
  %empty = call i54 @llvm.part.select.i54(i54 %0, i32 %1, i32 %2)
  %empty_39 = trunc i54 %empty to i31
  ret i31 %empty_39
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_40 = trunc i32 %empty to i31
  ret i31 %empty_40
}

define weak i3 @_ssdm_op_PartSelect.i3.i7.i32.i32(i7, i32, i32) nounwind readnone {
entry:
  %empty = call i7 @llvm.part.select.i7(i7 %0, i32 %1, i32 %2)
  %empty_41 = trunc i7 %empty to i3
  ret i3 %empty_41
}

define weak i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_42 = trunc i32 %empty to i27
  ret i27 %empty_42
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_43 = trunc i64 %empty to i11
  ret i11 %empty_43
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_44 = shl i9 1, %empty
  %empty_45 = and i9 %0, %empty_44
  %empty_46 = icmp ne i9 %empty_45, 0
  ret i1 %empty_46
}

define weak i1 @_ssdm_op_BitSelect.i1.i7.i32(i7, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i7
  %empty_47 = shl i7 1, %empty
  %empty_48 = and i7 %0, %empty_47
  %empty_49 = icmp ne i7 %empty_48, 0
  ret i1 %empty_49
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_50 = shl i64 1, %empty
  %empty_51 = and i64 %0, %empty_50
  %empty_52 = icmp ne i64 %empty_51, 0
  ret i1 %empty_52
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_53 = and i32 %0, %empty
  %empty_54 = icmp ne i32 %empty_53, 0
  ret i1 %empty_54
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7, i2) nounwind readnone {
entry:
  %empty = zext i7 %0 to i9
  %empty_55 = zext i2 %1 to i9
  %empty_56 = shl i9 %empty, 2
  %empty_57 = or i9 %empty_56, %empty_55
  ret i9 %empty_57
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i3.i3.i3(i3, i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %1 to i6
  %empty_58 = zext i3 %2 to i6
  %empty_59 = shl i6 %empty, 3
  %empty_60 = or i6 %empty_59, %empty_58
  %empty_61 = zext i3 %0 to i9
  %empty_62 = zext i6 %empty_60 to i9
  %empty_63 = shl i9 %empty_61, 6
  %empty_64 = or i9 %empty_63, %empty_62
  ret i9 %empty_64
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1, i8) nounwind readnone {
entry:
  %empty = zext i1 %0 to i9
  %empty_65 = zext i8 %1 to i9
  %empty_66 = shl i9 %empty, 8
  %empty_67 = or i9 %empty_66, %empty_65
  ret i9 %empty_67
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_68 = zext i3 %1 to i6
  %empty_69 = shl i6 %empty, 3
  %empty_70 = or i6 %empty_69, %empty_68
  ret i6 %empty_70
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_71 = zext i52 %1 to i53
  %empty_72 = shl i53 %empty, 52
  %empty_73 = or i53 %empty_72, %empty_71
  ret i53 %empty_73
}

define weak i48 @_ssdm_op_BitConcatenate.i48.i32.i16(i32, i16) nounwind readnone {
entry:
  %empty = zext i32 %0 to i48
  %empty_74 = zext i16 %1 to i48
  %empty_75 = shl i48 %empty, 16
  %empty_76 = or i48 %empty_75, %empty_74
  ret i48 %empty_76
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i9.i16(i9, i16) nounwind readnone {
entry:
  %empty = zext i9 %0 to i25
  %empty_77 = zext i16 %1 to i25
  %empty_78 = shl i25 %empty, 16
  %empty_79 = or i25 %empty_78, %empty_77
  ret i25 %empty_79
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i9.i15(i9, i15) nounwind readnone {
entry:
  %empty = zext i9 %0 to i24
  %empty_80 = zext i15 %1 to i24
  %empty_81 = shl i24 %empty, 15
  %empty_82 = or i24 %empty_81, %empty_80
  ret i24 %empty_82
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9, i14) nounwind readnone {
entry:
  %empty = zext i9 %0 to i23
  %empty_83 = zext i14 %1 to i23
  %empty_84 = shl i23 %empty, 14
  %empty_85 = or i23 %empty_84, %empty_83
  ret i23 %empty_85
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i9.i13(i9, i13) nounwind readnone {
entry:
  %empty = zext i9 %0 to i22
  %empty_86 = zext i13 %1 to i22
  %empty_87 = shl i22 %empty, 13
  %empty_88 = or i22 %empty_87, %empty_86
  ret i22 %empty_88
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i9.i12(i9, i12) nounwind readnone {
entry:
  %empty = zext i9 %0 to i21
  %empty_89 = zext i12 %1 to i21
  %empty_90 = shl i21 %empty, 12
  %empty_91 = or i21 %empty_90, %empty_89
  ret i21 %empty_91
}

define weak i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9, i10) nounwind readnone {
entry:
  %empty = zext i9 %0 to i19
  %empty_92 = zext i10 %1 to i19
  %empty_93 = shl i19 %empty, 10
  %empty_94 = or i19 %empty_93, %empty_92
  ret i19 %empty_94
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13
  %empty_95 = zext i6 %1 to i13
  %empty_96 = shl i13 %empty, 6
  %empty_97 = or i13 %empty_96, %empty_95
  ret i13 %empty_97
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i7.i5(i7, i5) nounwind readnone {
entry:
  %empty = zext i7 %0 to i12
  %empty_98 = zext i5 %1 to i12
  %empty_99 = shl i12 %empty, 5
  %empty_100 = or i12 %empty_99, %empty_98
  ret i12 %empty_100
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6, i6) nounwind readnone {
entry:
  %empty = zext i6 %0 to i12
  %empty_101 = zext i6 %1 to i12
  %empty_102 = shl i12 %empty, 6
  %empty_103 = or i12 %empty_102, %empty_101
  ret i12 %empty_103
}

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i32 @_autotb_FifoRead_i32(i32*)

declare void @_GLOBAL__I_a29() nounwind

define internal fastcc void @Loop_1_proc(i32* %in_r, [4096 x i8]* nocapture %image_V) nounwind {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_r, [8 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  br label %.preheader50.i

arrayctor.loop8.preheader.exitStub:               ; preds = %.preheader50.i
  ret void

.preheader50.i.loopexit:                          ; preds = %.preheader.i
  br label %.preheader50.i

.preheader50.i:                                   ; preds = %.preheader50.i.loopexit, %newFuncRoot
  %i_i = phi i7 [ 0, %newFuncRoot ], [ %i, %.preheader50.i.loopexit ]
  %exitcond_i = icmp eq i7 %i_i, -64
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %i = add i7 %i_i, 1
  br i1 %exitcond_i, label %arrayctor.loop8.preheader.exitStub, label %.preheader.preheader.i

.preheader.i:                                     ; preds = %0, %.preheader.preheader.i
  %p_1_rec_i = phi i5 [ %p_rec_i, %0 ], [ 0, %.preheader.preheader.i ]
  %j_i = phi i7 [ %j, %0 ], [ 0, %.preheader.preheader.i ]
  %empty_104 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %exitcond = icmp eq i5 %p_1_rec_i, -16
  %p_rec_i = add i5 %p_1_rec_i, 1
  br i1 %exitcond, label %.preheader50.i.loopexit, label %0

.preheader.preheader.i:                           ; preds = %.preheader50.i
  %tmp = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %i_i, i6 0)
  %tmp_117_cast = zext i13 %tmp to i14
  br label %.preheader.i

; <label>:0                                       ; preds = %.preheader.i
  %temp = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %in_r) nounwind
  %tmp_125 = trunc i32 %temp to i8
  %tmp_3_i_cast = zext i7 %j_i to i14
  %tmp_s = add i14 %tmp_117_cast, %tmp_3_i_cast
  %tmp_118_cast = zext i14 %tmp_s to i64
  %image_V_addr = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_118_cast
  store i8 %tmp_125, i8* %image_V_addr, align 4
  %tmp_126 = trunc i7 %j_i to i6
  %tmp_4_i = or i6 %tmp_126, 1
  %tmp_111 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %i_i, i6 %tmp_4_i)
  %tmp_112 = zext i13 %tmp_111 to i64
  %image_V_addr_1 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_112
  %p_1_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp, i32 8, i32 15)
  store i8 %p_1_i, i8* %image_V_addr_1, align 1
  %tmp_7_i = or i6 %tmp_126, 2
  %tmp_113 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %i_i, i6 %tmp_7_i)
  %tmp_114 = zext i13 %tmp_113 to i64
  %image_V_addr_2 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_114
  %p_2_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp, i32 16, i32 23)
  store i8 %p_2_i, i8* %image_V_addr_2, align 2
  %tmp_i = or i6 %tmp_126, 3
  %tmp_115 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %i_i, i6 %tmp_i)
  %tmp_116 = zext i13 %tmp_115 to i64
  %image_V_addr_3 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_116
  %p_3_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp, i32 24, i32 31)
  store i8 %p_3_i, i8* %image_V_addr_3, align 1
  %j = add i7 4, %j_i
  br label %.preheader.i
}

define internal fastcc void @Block_arrayctor.loop(float* nocapture %tmp, i32* %out_r) {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_r, [8 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  %tmp_read = call float @_ssdm_op_Read.ap_auto.volatile.floatP(float* %tmp)
  %result = bitcast float %tmp_read to i32
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %out_r, i32 %result)
  ret void
}

!opencl.kernels = !{!0, !0, !7, !9, !15, !17, !20, !20, !23, !25, !25, !27, !33, !33, !27, !36, !27, !27, !27, !39, !39, !41, !41, !43, !27, !27, !27, !46, !33, !33, !49, !27, !27, !27, !51, !51, !53, !53, !55, !27, !27, !27, !27, !27, !27, !57, !27, !27, !27, !59, !27, !27, !27, !27, !61, !64, !27, !27, !27, !27, !65, !68, !68, !27, !70, !72, !74, !74, !80, !80, !82, !83, !83, !83, !82, !59, !59, !27, !85, !85, !27, !27, !59, !59, !87, !87, !27, !27, !82, !89, !89, !89, !82, !59, !59, !27, !91, !91, !27, !27, !91, !91, !91, !82, !59, !59, !27, !93, !93, !27, !27, !95, !82, !59, !59, !27, !98, !98, !27, !27, !100, !100, !85, !85, !85, !82, !59, !59, !27, !102, !102, !27, !27, !102, !102, !102, !82, !59, !59, !27, !27, !104, !27, !27, !106, !106, !107, !98, !98, !109, !27, !27, !27, !27, !27, !27, !111, !115, !119, !115, !122, !125, !128, !128, !27, !27, !27, !27, !27, !61, !64, !27, !27, !27, !27, !65, !68, !68, !27, !27, !70, !72, !74, !74, !80, !80, !27, !27, !27, !27, !61, !64, !27, !129, !131, !131, !27, !132, !72, !134, !134, !80, !80, !136, !136, !138, !138, !27, !59, !59, !27, !27, !139, !139, !27, !59, !138, !138, !138, !141, !141, !25, !27, !33, !33, !27, !36, !27, !27, !27, !39, !39, !41, !41, !43, !27, !27, !27, !46, !33, !33, !49, !27, !27, !27, !51, !51, !53, !53, !55, !27, !27, !27, !27, !27, !27, !57, !136, !136, !139, !139, !27, !138, !82, !27, !27, !27, !27, !102, !102, !102, !82, !59, !59, !27, !27, !104, !27, !27, !82, !102, !27, !142, !144, !144, !27, !146, !27, !27, !27, !148, !148, !150, !150, !152, !154, !155, !157, !27, !27, !106, !106, !107, !100, !100, !98, !98, !158, !106, !106, !107, !98, !98, !109, !27, !160, !27, !27, !27, !148, !148, !27, !162, !162, !163, !27, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!165}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"gradX", metadata !"gradY"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"dx", metadata !"dy"}
!9 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !6}
!10 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!11 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!13 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!15 = metadata !{null, metadata !10, metadata !11, metadata !16, metadata !13, metadata !14, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"uint &"}
!17 = metadata !{null, metadata !10, metadata !11, metadata !18, metadata !13, metadata !19, metadata !6}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"double_fixed_point"}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"sum_of_squares"}
!20 = metadata !{null, metadata !10, metadata !11, metadata !21, metadata !13, metadata !22, metadata !6}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!23 = metadata !{null, metadata !10, metadata !11, metadata !21, metadata !13, metadata !24, metadata !6}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!25 = metadata !{null, metadata !10, metadata !11, metadata !26, metadata !13, metadata !24, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space"}
!29 = metadata !{metadata !"kernel_arg_access_qual"}
!30 = metadata !{metadata !"kernel_arg_type"}
!31 = metadata !{metadata !"kernel_arg_type_qual"}
!32 = metadata !{metadata !"kernel_arg_name"}
!33 = metadata !{null, metadata !10, metadata !11, metadata !34, metadata !13, metadata !35, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!36 = metadata !{null, metadata !1, metadata !2, metadata !37, metadata !4, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!39 = metadata !{null, metadata !10, metadata !11, metadata !40, metadata !13, metadata !35, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!41 = metadata !{null, metadata !10, metadata !11, metadata !42, metadata !13, metadata !35, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!43 = metadata !{null, metadata !10, metadata !11, metadata !44, metadata !13, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!46 = metadata !{null, metadata !1, metadata !2, metadata !47, metadata !4, metadata !48, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!49 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !38, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!51 = metadata !{null, metadata !10, metadata !11, metadata !52, metadata !13, metadata !35, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!53 = metadata !{null, metadata !10, metadata !11, metadata !54, metadata !13, metadata !35, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!55 = metadata !{null, metadata !10, metadata !11, metadata !56, metadata !13, metadata !45, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!57 = metadata !{null, metadata !10, metadata !11, metadata !26, metadata !13, metadata !58, metadata !6}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!59 = metadata !{null, metadata !10, metadata !11, metadata !60, metadata !13, metadata !35, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!61 = metadata !{null, metadata !10, metadata !11, metadata !62, metadata !13, metadata !63, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"pi"}
!64 = metadata !{null, metadata !10, metadata !11, metadata !21, metadata !13, metadata !58, metadata !6}
!65 = metadata !{null, metadata !10, metadata !11, metadata !66, metadata !13, metadata !67, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!67 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!68 = metadata !{null, metadata !10, metadata !11, metadata !66, metadata !13, metadata !69, metadata !6}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!70 = metadata !{null, metadata !10, metadata !11, metadata !71, metadata !13, metadata !67, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!72 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !73, metadata !6}
!73 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!74 = metadata !{null, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !6}
!75 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!76 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!78 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!80 = metadata !{null, metadata !10, metadata !11, metadata !81, metadata !13, metadata !35, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!82 = metadata !{null, metadata !10, metadata !11, metadata !60, metadata !13, metadata !45, metadata !6}
!83 = metadata !{null, metadata !10, metadata !11, metadata !84, metadata !13, metadata !35, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 19, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!85 = metadata !{null, metadata !10, metadata !11, metadata !86, metadata !13, metadata !35, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 18, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!87 = metadata !{null, metadata !10, metadata !11, metadata !88, metadata !13, metadata !67, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!89 = metadata !{null, metadata !10, metadata !11, metadata !90, metadata !13, metadata !35, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<51, 35, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!91 = metadata !{null, metadata !10, metadata !11, metadata !92, metadata !13, metadata !35, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<50, 34, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!93 = metadata !{null, metadata !10, metadata !11, metadata !94, metadata !13, metadata !35, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!95 = metadata !{null, metadata !1, metadata !2, metadata !96, metadata !4, metadata !97, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<32, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!98 = metadata !{null, metadata !10, metadata !11, metadata !99, metadata !13, metadata !35, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!100 = metadata !{null, metadata !10, metadata !11, metadata !34, metadata !13, metadata !101, metadata !6}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!102 = metadata !{null, metadata !10, metadata !11, metadata !103, metadata !13, metadata !35, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 17, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!104 = metadata !{null, metadata !10, metadata !11, metadata !34, metadata !13, metadata !105, metadata !6}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!106 = metadata !{null, metadata !10, metadata !11, metadata !34, metadata !13, metadata !22, metadata !6}
!107 = metadata !{null, metadata !10, metadata !11, metadata !34, metadata !13, metadata !108, metadata !6}
!108 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!109 = metadata !{null, metadata !10, metadata !11, metadata !110, metadata !13, metadata !35, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!111 = metadata !{null, metadata !112, metadata !2, metadata !113, metadata !4, metadata !114, metadata !6}
!112 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"byte [64]*", metadata !"struct gradient_vote [64]*"}
!114 = metadata !{metadata !"kernel_arg_name", metadata !"image", metadata !"grad_vote"}
!115 = metadata !{null, metadata !116, metadata !11, metadata !117, metadata !13, metadata !118, metadata !6}
!116 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"struct cell_histogram [8]*"}
!118 = metadata !{metadata !"kernel_arg_name", metadata !"cells"}
!119 = metadata !{null, metadata !112, metadata !2, metadata !120, metadata !4, metadata !121, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"struct gradient_vote [64]*", metadata !"struct cell_histogram [8]*"}
!121 = metadata !{metadata !"kernel_arg_name", metadata !"grad_vote", metadata !"cells"}
!122 = metadata !{null, metadata !112, metadata !2, metadata !123, metadata !4, metadata !124, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"struct cell_histogram [8]*", metadata !"float*"}
!124 = metadata !{metadata !"kernel_arg_name", metadata !"cells", metadata !"hog"}
!125 = metadata !{void (i32*, i32*)* @xillybus_wrapper, metadata !112, metadata !2, metadata !126, metadata !4, metadata !127, metadata !6}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!127 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!128 = metadata !{null, metadata !10, metadata !11, metadata !62, metadata !13, metadata !67, metadata !6}
!129 = metadata !{null, metadata !10, metadata !11, metadata !130, metadata !13, metadata !67, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!131 = metadata !{null, metadata !10, metadata !11, metadata !130, metadata !13, metadata !69, metadata !6}
!132 = metadata !{null, metadata !10, metadata !11, metadata !133, metadata !13, metadata !67, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!134 = metadata !{null, metadata !75, metadata !76, metadata !135, metadata !78, metadata !79, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!136 = metadata !{null, metadata !10, metadata !11, metadata !137, metadata !13, metadata !45, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!138 = metadata !{null, metadata !10, metadata !11, metadata !137, metadata !13, metadata !35, metadata !6}
!139 = metadata !{null, metadata !10, metadata !11, metadata !140, metadata !13, metadata !35, metadata !6}
!140 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<65, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!141 = metadata !{null, metadata !10, metadata !11, metadata !26, metadata !13, metadata !22, metadata !6}
!142 = metadata !{null, metadata !1, metadata !2, metadata !143, metadata !4, metadata !97, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"short", metadata !"const ap_int_base<8, false> &"}
!144 = metadata !{null, metadata !10, metadata !11, metadata !145, metadata !13, metadata !35, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"short"}
!146 = metadata !{null, metadata !1, metadata !2, metadata !147, metadata !4, metadata !38, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"const ap_int_base<8, false> &"}
!148 = metadata !{null, metadata !10, metadata !11, metadata !149, metadata !13, metadata !35, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!150 = metadata !{null, metadata !10, metadata !11, metadata !151, metadata !13, metadata !35, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!152 = metadata !{null, metadata !10, metadata !11, metadata !34, metadata !13, metadata !153, metadata !6}
!153 = metadata !{metadata !"kernel_arg_name", metadata !""}
!154 = metadata !{null, metadata !10, metadata !11, metadata !42, metadata !13, metadata !45, metadata !6}
!155 = metadata !{null, metadata !1, metadata !2, metadata !156, metadata !4, metadata !38, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!157 = metadata !{null, metadata !10, metadata !11, metadata !52, metadata !13, metadata !45, metadata !6}
!158 = metadata !{null, metadata !10, metadata !11, metadata !159, metadata !13, metadata !35, metadata !6}
!159 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!160 = metadata !{null, metadata !1, metadata !2, metadata !161, metadata !4, metadata !38, metadata !6}
!161 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!162 = metadata !{null, metadata !10, metadata !11, metadata !34, metadata !13, metadata !67, metadata !6}
!163 = metadata !{null, metadata !10, metadata !11, metadata !164, metadata !13, metadata !45, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!165 = metadata !{metadata !166, [1 x i32]* @llvm_global_ctors_0}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 0, i32 31, metadata !168}
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !"llvm.global_ctors.0", metadata !170, metadata !"", i32 0, i32 31}
!170 = metadata !{metadata !171}
!171 = metadata !{i32 0, i32 0, i32 1}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 0, i32 31, metadata !174}
!174 = metadata !{metadata !175}
!175 = metadata !{metadata !"in", metadata !170, metadata !"int", i32 0, i32 31}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 0, i32 31, metadata !178}
!178 = metadata !{metadata !179}
!179 = metadata !{metadata !"out", metadata !170, metadata !"int", i32 0, i32 31}
