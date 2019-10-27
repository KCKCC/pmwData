[kc_loadAllExp ]
;prepare model 
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
[kc_prepareL2D name="mumi" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/mumi/choco_02/" modelFileName="m.json" ]
[kc_prepareL2D name="dmumi" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/mumi/twdark_01/" modelFileName="m.json" ]
[kc_prepareL2D name="renge" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/renge/m/models/" modelFileName="m.json" ]

;load model 
[live2d_new name="renge"   width=1024 height=1024 left=66% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="mumi"    width=1024 height=1024 left=33% top=60% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="dmumi"   width=1024 height=1024 left=33% top=60% gltop=0  lip=true glscale=1.85 ]


;preload assets
;sound
[kc_addSound name="bgm1"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/sound/bgm_chr_101.mp3"]
[kc_addSound name="bgm2"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/sound/bgm_pressure_001.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="C:/Users/KC/Desktop/R/pmwData/pwmData/pic/bg_jyutaku_02.png"]
[kc_addPic name="naka" url="C:/Users/KC/Desktop/R/pmwData/pwmData/pic/bg_nakaniwa2_01.png"]

;---------------------------------------



[kc_showPic name="mumi" style="z-index:100; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=5000]

;show bg
[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]
[kc_playSound name="bgm1" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500]

[kc_hukidasi str="\r_____ハロウィンすごし前" type="nar" fat=1]

[live2d_show name="mumi" time=1000]

[kc_exp name="mumi" expName="haka_f02" ]

[kc_hukidasi str="むみみ～\rもうすぐはろうぃん～むみぃ～\rおっかしいっぱいもらうの～" type="npc1"  name="mumi" paku=true ]
[kc_hukidasi str="\rぶみゅうぅ" type="nar"]
[kc_exp name="mumi" expName="mumi_f05" ]
[kc_hukidasi str="\rむみぃ？　なんか踏んだ？" type="npc1"  name="mumi" paku=true ]
[kc_exp name="mumi" expName="mumi_f06" ]
[kc_hukidasi str="\rん～～～～" type="npc1"  name="mumi" paku=true ]
[kc_hukidasi str="\r何もない...よ？" type="npc1"  name="mumi" paku=true ]
[kc_exp name="mumi" expName="mumi_f07" ]
[kc_hukidasi str="\r　ムミィ？！" type="npc1"  name="mumi" paku=true ]
[wait time=1000]

[kc_exp name="mumi" expName="f01" ]
[wait time=1000]

[kc_exp name="mumi" expName="haka_f02" ]
[kc_hukidasi str="\rムミ　ムミィ〜" type="npc1"  name="mumi" paku=true ]

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

[kc_hukidasi str="ミミちゃん〜　\r逃げないで〜" type="npc1"  name="renge" paku=true ]
[kc_hukidasi str="このハロウィンコスプレ着てみて〜\rぜっったいかわいいから～🧡" type="npc1"  name="renge" paku=true ]

[kc_exp name="mumi" expName="mumi_f07" ]
[kc_hukidasi str="ムミィィィィ！\r蓮華先輩大学いかないの～？？" type="npc1"  name="mumi" paku=true ]

[kc_exp name="renge" expName="ren_f04" ]
[kc_hukidasi str="今日は休みで、\r時間たくさんあるのよ～～🧡🧡🧡🧡" type="npc1"  name="renge" paku=true ]

[kc_exp name="mumi" expName="mumi_f05" ]
[kc_hukidasi str="\rイヤーーーーー!" type="npc1"  name="mumi" paku=true ]

[live2d_hide name = "mumi" time=1000 ]

[kc_hukidasi str="\r厶ボンーーー！！"  type="nar" ]




[live2d_show name="dmumi" time=1000]
[kc_exp name="dmumi" expName="mumi_f03" ]

[kc_exp name="renge" expName="nomi_f03" ]
[kc_hukidasi str="あら、ミミもハロウィン衣装持ってきたのね！\rかわいいわ〜🧡" type="npc1"  name="renge" paku=true ]

[kc_hukidasi str="\rトリック・オア・トリート！" type="npc1"  name="dmumi" paku=true fat=1]

[kc_exp name="renge" expName="ren_f05" ]
[kc_hukidasi str="え？　\rハロウィンは今日じゃないよ？" type="npc1"  name="renge" paku=true ]

[kc_hukidasi str="トリィィィック、ムミィイヤーッ！" type="npc1"  name="dmumi" paku=true ]

[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[kc_hukidasi str="\rえ？" type="npc1"  name="renge" paku=true ]

[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=200]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[kc_hukidasi str="\rええええ？！" type="npc1"  name="renge" paku=true ]

[kc_stopSound name="bgm1" ]
[kc_playSound name="bgm2" time=0 vol=1]

[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=200]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[wait time=200]
[kc_randomParam name="renge" excludes="SCALE,POSITION" type=0]
[kc_hukidasi str="\r体が勝手に動いてる！" type="npc1"  name="renge" paku=true ]

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
[kc_hukidasi str="あんんん🧡🧡\rいやあああぁぁ\r蓮華壊れじゃううぅ～～" type="npc1"  name="renge" paku=true ]

[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]
[kc_hukidasi str="おお、ナムアミダブツ！　　\r黒きウサギの瞳は...狂気漲る！\r　　　実際ムミイ！！" type="nar" zindex=50]
[kc_hukidasi str="\rこれからはどんな惨劇が起こるのか？！" type="nar" zindex=50]