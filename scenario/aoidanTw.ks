[kc_loadAllExp ]
;prepare model 
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
;C:/Users/KC/Desktop/R/pmwData/pwmData/
[kc_prepareL2D name="ao" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/aoi/u_01/" modelFileName="m.json" ]
[kc_prepareL2D name="av" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/avna/u_01/" modelFileName="m.json" ]
[kc_loadExp name="aowink" url="C:/Users/KC/Desktop/R/pmwData/pwmData/exp/aoiwink.json"]

;load model 
[live2d_new name="av" width=1024 height=1024 left=50% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="ao" width=1024 height=1024 left=-50% top=55% gltop=0  lip=true glscale=1.85 ]


;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_101.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="C:/Users/KC/Desktop/R/pmwData/pwmData/pic/bg_suisougakusadone_01.png"]

;---------------------------------------



[kc_showPic name="mumi" style="z-index:100; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]

[live2d_show name="av" time=1000]
[kc_exp name="av"  expName="f01" ]
[live2d_motion name = "av"  filenm="m01.mtn" ]
[live2d_show name="ao" time=1000]
[kc_exp name="ao"  expName="f01" ]
[live2d_motion name = "ao" filenm="m03.mtn" ]
[wait time=2000]
[kc_exp name="av"  expName="haka_f05" ]
[kc_exp name="ao"  expName="aowink" ]

;show bg
[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]

[kc_hidePic name="mumi" isBg="true"]
[wait time=500]
[kc_transDuration name="av" time=2000]
[kc_transDuration name="ao" time=2000]

[kc_hukidasi str="\r．．．．．．" type="npc1"  name="av" endWait=1500]
[kc_playSound name="bgm1" loop=true ]
[kc_position name="av" x=70 ]
[kc_position name="ao" x=30 ]
[wait time=1500]
[kc_hukidasi str="怎麼樣．．．？\r猜對了嗎？" type="npc1"  name="ao"  paku=true  ]

[kc_exp name="av"  expName="haka_f03" ]
[kc_L2DsetParam name="av" paramName="PARAM_MOUTH_FORM" value=-1 type=0]
[live2d_motion name = "av" filenm="m01.mtn" ]
[kc_hukidasi str="豪．．．好厲害～！\r你是怎麼知道的？" type="npc1"  name="av"  paku=true  ]
[kc_exp name="ao"  expName="aoi_f02" ]
[live2d_motion name = "ao" filenm="m04.mtn" ]
[kc_hukidasi str="欸っHEN！" type="npc1"  name="ao"  paku=true  ]


[live2d_motion name = "ao" filenm="m03.mtn" ]
[kc_exp name="ao"  expName="siho_f08" ]
[kc_hukidasi str="形狀這麼長的、\r也只有法國麵包了吧．．．" type="npc3"  name="ao" ]

[kc_L2DsetParam name="ao" paramName="PARAM_MOUTH_FORM" value=1.5 type=0]

[kc_exp name="av"  expName="eri_f11" ]
[live2d_motion name = "av" filenm="m05.mtn" ]
[kc_hukidasi str="來！\r生日禮物一號\r古河麵包屋的特製法國麵包" type="npc1"  name="av"  paku=true  ]
[kc_exp name="ao"  expName="aoi_f03" ]
[live2d_motion name = "ao" filenm="m05.mtn" ]
[kc_hukidasi str="謝謝你～\r艾理佳" type="npc1"  name="ao"  paku=true  ]


[kc_hukidasi str="\r扎古扎古扎古" type="nar"]

[kc_exp name="ao"  expName="eri_f11" ]
[live2d_motion name = "ao" filenm="m05.mtn" ]
[kc_hukidasi str="嗚咿呀啊啊啊啊！！！　　　\r豪好吃～～～" type="npc1"  name="ao"  paku=true  ]

[live2d_motion name = "av" filenm="m02.mtn" ]
[kc_hukidasi str="嘿嘿、二號也敬請期待喔！" type="npc1"  name="av"  paku=true  ]

[kc_exp name="ao"  expName="aoi_f03" ]
[live2d_motion name = "ao" filenm="m01.mtn" ]
[kc_hukidasi str="挖啊～\r二號是什麼樣的麵包呢？" type="npc1"  name="ao"  paku=true  ]
[kc_exp name="av"  expName="eri_f05" ]
[live2d_motion name = "av" filenm="m04.mtn" ]

[kc_L2DsetParam name="av" paramName="PARAM_MOUTH_FORM" value=-1 type=0]
[kc_hukidasi str="修但幾勒．．．、\r本命沒有在送麵包的吧．．．" type="npc1"  name="av"  paku=true  ]

[kc_L2DsetParam name="ao" paramName="PARAM_EYE_kira" value=0 type=0]
[live2d_motion name = "ao" filenm="m03.mtn" ]
[kc_exp name="ao"  expName="miki_f09" ]
[kc_hukidasi paku=true  name="ao" type="npc1" str="\r欸欸欸欸～"]

[wait time=1000]
[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=3000]


[kc_hukidasi str="\r啪呼っ" type="nar" zindex=50]
[wait time=500]
[kc_hukidasi str="這個是．．．！\r胖　　　　　　\r　　　　　" type="usr1" zindex=50 txtInterval=250]
