Appalach<-local({
  con<-textConnection('
    siteid       lat    long    area    elev   n      mean    t       t_3     t_4     t_5
    01578500 39.6900 76.1286   193.0      73  41   7379.95  0.4958  0.4844  0.3348  0.2101
    01580000 39.6303 76.4036    94.4     250  65   4273.89  0.2878  0.3443  0.2431  0.0951
    01582000 39.6044 76.6211    52.9     305  47   2725.96  0.3040  0.3009  0.2183  0.1027
    01583000 39.4944 76.7958     2.0     420  34    186.09  0.3147  0.3548  0.2512  0.0736
    01583500 39.5105 76.6769    59.8     262  47   3512.02  0.4872  0.5545  0.4564  0.4115
    01584500 39.5050 76.4322    36.1     261  58   3559.83  0.3812  0.2951  0.1519  0.0307
    01585100 39.3708 76.4461     7.6      38  30   1779.00  0.3992  0.3746  0.2912  0.1843
    01585200 39.3736 76.5930     2.1     285  30    747.23  0.3555  0.2613  0.0717 -0.0712
    01585300 39.3411 76.4880     4.4      21  29   1523.79  0.3218  0.2961  0.2835  0.2744
    01585400 39.3336 76.4730     1.9      10  29    507.66  0.4746  0.5598  0.4086  0.3284
    01585500 39.5930 76.9680     3.2     670  43    392.95  0.5376  0.4915  0.2311  0.1043
    01586000 39.5000 76.8833    56.6     425  46   3401.70  0.4283  0.6113  0.5218  0.4068
    01587500 39.3514 76.9139    64.4     289  32   4291.56  0.4874  0.5857  0.4366  0.2878
    01588000 39.3819 76.9667    11.4     450  43   1185.53  0.5377  0.5678  0.4470  0.3535
    01589100 39.2400 76.6925     2.4      45  32    742.44  0.2970  0.4479  0.3373  0.1841
    01589300 39.3458 76.7336    32.5     361  33   2458.24  0.4945  0.5777  0.4162  0.3109
    01589330 39.3111 76.7172     5.5     310  28   1940.04  0.3861  0.5167  0.3361  0.2000
    01589440 39.3917 76.6617    25.2     240  31   1873.29  0.5978  0.7086  0.5486  0.3834
    01591000 39.2383 77.0564    34.8     364  47   2827.72  0.5539  0.5942  0.4309  0.2827
    01593500 39.1678 76.8519    38.0     260  59   1923.37  0.4134  0.4896  0.3047  0.1862
    01613900 39.2144 78.2883    15.0     668  31   1015.77  0.3665  0.1977  0.1804  0.0736
    01615000 39.1778 78.0722    57.4     503  48   2901.19  0.3939  0.4013  0.3245  0.1985
    01616000 39.1778 78.0861    16.5     526  24    579.42  0.3297  0.2297  0.1262  0.0348
    01620500 38.3375 79.2403    17.2    2054  45   1204.36  0.5448  0.5875  0.4250  0.3274
    01621000 38.5028 79.0539    72.6    1606  30   3088.00  0.3934  0.5723  0.5101  0.4325
    01621200 38.4744 78.9872     9.4    1349  28    700.89  0.3689  0.3675  0.3268  0.2441
    01622000 38.3403 78.9139   379.0    1103  62  10619.03  0.4360  0.5363  0.4384  0.3285
    01622400 38.1986 79.2194     0.4    1622  24     63.38  0.3511  0.4045  0.2726  0.2309
    01624300 38.2433 79.0355   178.0    1260  19   6979.47  0.4645  0.5876  0.5897  0.5952
    01624800 38.1283 78.9947    70.1    1230  23   2686.74  0.2224 -0.1796  0.1440  0.0904
    01625000 38.2617 78.8622   375.0    1061  64   8202.77  0.4135  0.3727  0.2564  0.1686
    01626000 38.0575 78.9083   127.0    1296  39   4110.49  0.4978  0.4996  0.2836  0.1281
    01627500 38.2186 78.8369   212.0    1129  49   7392.90  0.4180  0.2837  0.1574  0.1244
    01628500 38.3225 78.7550  1084.0    1013  61  22378.03  0.4097  0.4074  0.2402  0.0995
    01629500 38.6461 78.5350  1377.0     721  31  26762.58  0.4360  0.4547  0.2933  0.1526
    01629945 38.5753 78.4589     3.1    1300  32    255.06  0.4341  0.2485  0.0648  0.0130
    01631000 38.9139 78.2111  1642.0     469  67  29396.12  0.4256  0.4074  0.2243  0.1085
    01632000 38.6369 78.8530   210.0    1051  66  11194.24  0.4009  0.3659  0.2574  0.1884
    01632300 38.5786 78.7611     8.1    1080  25    215.92  0.5392  0.5024  0.3746  0.3360
    01632900 38.6933 78.6431    93.2     881  30   2796.37  0.3986  0.3117  0.1946  0.1254
    01632970 38.7622 78.6850     6.4     962  19    914.11  0.3566  0.2560  0.1623  0.1335
    01633000 38.7455 78.6392   506.0     838  49  14044.08  0.3896  0.4329  0.3692  0.2897
    01633500 38.8653 78.6292    79.4     895  30   2480.67  0.3635  0.2907  0.1257  0.0978
    01633650 38.9300 78.5453     3.6    1027  21    163.29  0.4449  0.4081  0.2392  0.1345
    01634000 38.9767 78.3364   768.0     494  65  16093.69  0.4195  0.4786  0.3925  0.2912
    01634500 39.0811 78.3297   103.0     647  54   4367.30  0.4468  0.4553  0.3555  0.2323
    01635500 38.9580 78.2669    87.8     525  59   3358.56  0.4523  0.5353  0.4270  0.2902
    01636210 38.9055 78.1861    14.0     610  29    906.24  0.3339  0.3143  0.1221  0.0053
    01638480 39.2544 77.5767    89.6     249  21   5736.00  0.4486  0.4663  0.3873  0.2263
    01638500 39.2736 77.5430  9651.0     200  97 122134.02  0.2987  0.3128  0.2710  0.1699
    01639500 39.6125 77.2361   102.0     340  44   4590.68  0.3787  0.5601  0.5219  0.3942
    01640000 39.5611 77.0439     8.1     525  31    621.65  0.4639  0.4501  0.2809  0.1568
    01640500 39.6767 77.4639     5.9     965  53    641.00  0.5189  0.4502  0.1929  0.0804
    01641000 39.5944 77.3972    18.4     355  42   1006.10  0.3186  0.1920  0.1306  0.1128
    01641500 39.5264 77.4667     7.2     735  37    247.27  0.5571  0.5920  0.4191  0.3084
    01643000 39.3878 77.3800   817.0     231  62  21248.87  0.2781  0.3349  0.2842  0.1830
    01643500 39.2944 77.4083    62.8     240  42   3724.74  0.4705  0.6372  0.5152  0.3930
    01643700 38.9864 77.7969   123.0     329  24   5157.25  0.4228  0.3778  0.2394  0.2055
    01644000 39.0194 77.5778   332.0     248  64  10403.44  0.4591  0.5334  0.4074  0.2670
    01645000 39.1280 77.3369   101.0     214  61   4509.33  0.4771  0.5796  0.3946  0.2225
    01645200 39.0842 77.1772     3.7     330  30    872.20  0.4237  0.4276  0.3410  0.2119
    01646000 38.9758 77.2461    57.9     151  57   2574.70  0.4691  0.6327  0.5324  0.4450
    01646550 38.9575 77.1086     4.1     169  40   1065.60  0.3412  0.1810  0.1516  0.0280
    01649500 38.9603 76.9261    72.8      12  53   3728.66  0.3136  0.2991  0.2275  0.1363
    01650500 39.0653 77.0300    21.1     264  60   1769.68  0.4085  0.5452  0.4020  0.2434
    01652500 38.8433 77.0794    13.8      22  39   3883.18  0.3870  0.3647  0.2721  0.1401
    01653000 38.8055 77.1022    33.7      36  36   5010.42  0.3262  0.3626  0.3744  0.2026
    01654000 38.8128 77.2286    23.5     190  44   2859.00  0.4157  0.3968  0.2338  0.1548
    01655500 38.7403 77.7878    12.3     419  41   1439.44  0.4781  0.3900  0.2366  0.2036
    01656000 38.6367 77.6253    93.4     199  41   4870.68  0.3969  0.4726  0.4330  0.3672
    01656200 38.8069 77.8130     2.9     610  36     97.00  0.2901  0.1422  0.2122  0.1338
    01656500 38.7805 77.6728    50.5     284  35   2741.31  0.4763  0.5630  0.4612  0.3216
    01657000 38.7978 77.4578   148.0     138  31   9862.58  0.4044  0.5411  0.5494  0.4845
    01658500 38.5872 77.4289     7.6     238  40    764.05  0.4752  0.5254  0.4407  0.2982
    01662000 38.6847 77.9042   195.0     312  49   5730.37  0.4085  0.4872  0.3984  0.2509
    01662800 38.6555 78.0742    27.6     374  33   1723.58  0.4700  0.5064  0.2706  0.1513
    01663500 38.5917 77.9653   287.0     288  50  11096.00  0.4314  0.4888  0.2732  0.1203
    01664000 38.5305 77.8139   620.0     252  49  16107.76  0.3810  0.5102  0.3965  0.2214
    01665000 38.4805 78.0528    15.9     389  42   1038.69  0.4888  0.5025  0.2407  0.0765
    01665050 38.4511 77.9566     0.3     400  32     78.90  0.3791  0.2629  0.1391 -0.0445
    01665500 38.2805 78.3403   114.0     439  48   6371.77  0.4684  0.4451  0.2725  0.1554
    01666500 38.3250 78.0958   179.0     283  49   7722.45  0.4271  0.4216  0.2849  0.1961
    01667000 38.3130 78.0639   446.0     266  34  11775.00  0.4505  0.5083  0.3879  0.2222
    01667500 38.3503 77.9753   472.0     241  61  13100.66  0.4133  0.4492  0.3323  0.1909
    01668000 38.3222 77.5181  1596.0      55  84  33591.79  0.3053  0.3357  0.3028  0.1920
    02027500 37.7022 79.0278    47.6     633  42   3675.31  0.6022  0.6822  0.5765  0.4666
    02027800 37.6055 78.9236   147.0     444  31   8679.45  0.5326  0.4896  0.3184  0.2015
    02028500 37.8694 78.8236    94.6     530  49   6344.12  0.5356  0.6149  0.5058  0.4396
    02028700 37.8683 78.7255     4.0     640  25    583.84  0.4948  0.4193  0.3024  0.2542
    02029200 37.9675 78.6178    11.0     577  25    883.96  0.7136  0.7417  0.5698  0.3669
    02030000 37.8125 78.4556   116.0     294  53   5210.28  0.5301  0.5801  0.4513  0.3787
    02030500 37.7028 78.3778   226.0     238  65   6141.08  0.4006  0.5397  0.4081  0.2882
    02031500 38.1403 78.7514    11.4     999  26    843.50  0.3924  0.3462  0.1352 -0.0028
    02032700 38.0422 78.4750     1.3     371  37    516.49  0.3202  0.3432  0.1907  0.1270
    02034000 37.8578 78.2661   664.0     210  58  21033.45  0.4168  0.4148  0.2611  0.1676
    02034500 37.6667 78.1667   262.0     178  64   3793.92  0.4121  0.4376  0.2250  0.0952
    02036500 37.5978 77.8200    22.1     156  47    856.28  0.5401  0.4488  0.1967  0.0910
    02038800 37.3819 78.7900     5.7     650  22    702.18  0.4763  0.5626  0.4120  0.3843
    02038850 37.4153 78.6361     8.5     472  25   1239.76  0.6638  0.6815  0.4985  0.3273
    02039000 37.2569 78.4866    69.7     339  45   2105.42  0.4164  0.3314  0.2290  0.1703
    02039500 37.3069 78.3889   303.0     281  66   6260.23  0.3978  0.3525  0.2188  0.1317
    02040000 37.4214 77.8591   726.0     174  71   7748.87  0.3636  0.4120  0.2598  0.1723
    02041000 37.2831 77.8700   158.0     177  45   4363.09  0.4230  0.3251  0.1392  0.0330
    02041500 37.2258 77.5389  1334.0     116  40   8905.50  0.2306  0.4244  0.3813  0.1828
  ')
  temp<-read.table(con,header=TRUE,colClasses=c('character',rep('numeric',10)))
  close(con)
  temp
})