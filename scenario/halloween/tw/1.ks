[kc_loadAllExp ]
;prepare model 
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
;C:/Users/KC/Desktop/R/pmwData/pwmData/
[kc_prepareL2D name="mumi" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/mumi/choco_02/" modelFileName="m.json" ]
[kc_prepareL2D name="dmumi" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/mumi/twdark_01/" modelFileName="m.json" ]
[kc_prepareL2D name="renge" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/renge/m/models/" modelFileName="m.json" ]

;load model 
[live2d_new name="renge"   width=1024 height=1024 left=66% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="mumi"    width=1024 height=1024 left=33% top=60% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="dmumi"   width=1024 height=1024 left=33% top=60% gltop=0  lip=true glscale=1.85 ]


;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_101.mp3"]
[kc_addSound name="bgm2"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_pressure_001.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_jyutaku_02.png"]
[kc_addPic name="naka" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_nakaniwa2_01.png"]

;---------------------------------------



[kc_showPic name="mumi" style="z-index:100; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=5000]

;show bg
[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]
[kc_playSound name="bgm1" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500]

[kc_hukidasi str="\r_____萬聖節前" type="nar" fat=1]

[live2d_show name="mumi" time=1000]
[kc_exp name="mumi" expName="haka_f02" ]

[kc_hukidasi str="姆咪咪～\r萬聖節要到了～姆咪～\r可以拿到一堆點心～" type="npc1"  name="mumi" paku=true ]
[kc_hukidasi str="\r哺咪嗚" type="nar"]
[kc_exp name="mumi" expName="mumi_f05" ]
[kc_hukidasi str="\r姆咪？　好像踩到什麼？" type="npc1"  name="mumi" paku=true ]
[kc_exp name="mumi" expName="mumi_f06" ]
[kc_hukidasi str="\r嗯～～～～" type="npc1"  name="mumi" paku=true ]
[kc_hukidasi str="\r什麼都沒有...唷？" type="npc1"  name="mumi" paku=true ]
[kc_exp name="mumi" expName="mumi_f07" ]
[kc_hukidasi str="\r　畝瞇？！" type="npc1"  name="mumi" paku=true ]
[wait time=1000]

[kc_exp name="mumi" expName="f01" ]
[wait time=1000]

[kc_exp name="mumi" expName="haka_f02" ]
[kc_hukidasi str="\r畝瞇　畝瞇咿〜" type="npc1"  name="mumi" paku=true ]

[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]
[kc_hidePic name="jyu" isBg="true"]
[kc_stopSound name="bgm1" ]
[kc_hukidasi str="\rゴゴゴゴゴゴゴゴ" type="nar" zindex=50]

[kc_showPic name="naka" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]
[wait time=1000]
[kc_playSound name="bgm1" ]
[kc_exp name="mumi" expName="mumi_f09" ]
[kc_hidePic name="mumi" isBg="true"]

[live2d_show name="renge" time=1000]
[kc_exp name="renge" expName="ren_f03" ]

[kc_hukidasi str="蜜蜜醬〜　\r不要逃啊〜" type="npc1"  name="renge" paku=true ]
[kc_hukidasi str="穿穿看這個萬聖節COSPLAY〜\r一~定很可愛的～🧡" type="npc1"  name="renge" paku=true ]

[kc_exp name="mumi" expName="mumi_f07" ]
[kc_hukidasi str="畝瞇噫噫噫！\r蓮華學姊不用去大學嗎～？？" type="npc1"  name="mumi" paku=true ]

[kc_exp name="renge" expName="ren_f04" ]
[kc_hukidasi str="今天休息、\r有很多時間唷～～🧡🧡🧡🧡" type="npc1"  name="renge" paku=true ]

[kc_exp name="mumi" expName="mumi_f05" ]
[kc_hukidasi str="\r不要ーーーーー!" type="npc1"  name="mumi" paku=true ]

[live2d_hide name = "mumi" time=1000 ]

[kc_hukidasi str="\r厶ボンーーー！！"  type="nar" ]

[live2d_show name="dmumi" time=1000]
[kc_exp name="dmumi" expName="mumi_f03" ]

[kc_exp name="renge" expName="nomi_f03" ]
[kc_hukidasi str="哎呀、蜜蜜已經有帶萬聖節用的衣服了啊！\r很可愛喔〜🧡" type="npc1"  name="renge" paku=true ]

[kc_hukidasi str="\rTRICK・OR・TREAT！" type="npc1"  name="dmumi" paku=true fat=1]

[kc_exp name="renge" expName="ren_f05" ]
[kc_hukidasi str="欸？　\r今天還不是萬聖節唷？" type="npc1"  name="renge" paku=true ]

[kc_hukidasi str="TRIIIIIICK、畝瞇咿咿呀啊啊！" type="npc1"  name="dmumi" paku=true ]

[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[kc_hukidasi str="\r欸？" type="npc1"  name="renge" paku=true ]

[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=200]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[kc_hukidasi str="\r欸欸欸欸？！" type="npc1"  name="renge" paku=true ]

[kc_stopSound name="bgm1" ]
[kc_playSound name="bgm2" time=0 vol=1]

[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=200]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=200]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[kc_hukidasi str="\r身體不聽使喚！" type="npc1"  name="renge" paku=true ]

[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=100]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=100]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=100]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=100]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=100]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[kc_hukidasi str="啊嗯嗯嗯🧡🧡\r不要凹凹凹\r蓮華要壞掉了～～" type="npc1"  name="renge" paku=true ]

[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]
[kc_hukidasi str="噢噢、ナムアミダブツ！　　\r黑色兔子的眼中...狂氣暴漲！\r　　　實在畝瞇！！" type="nar" zindex=50]
[kc_hukidasi str="\r接下來將會發生怎樣的慘劇呢？！" type="nar" zindex=50]