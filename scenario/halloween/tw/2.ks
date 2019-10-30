;楓　うらら

[kc_loadAllExp ]
[kc_loadExp name="kadezou" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/exp/kadezou.json"]
[kc_loadExp name="urajelly" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/exp/urajelly.json"]
[kc_loadExp name="urajelly2" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/exp/urajelly2.json"]

;prepare model 
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
[kc_prepareL2D name="kade" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/kaede/choco_02/" modelFileName="m.json" ]
[kc_prepareL2D name="ura" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/urara/choco_02/" modelFileName="m.json" ]

;load model 
[live2d_new name="kade"   width=1024 height=1024 left=66% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="ura"    width=1024 height=1024 left=33% top=55% gltop=0  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/mid4/bgm_anime30_holiday.mp3"]
[kc_addSound name="bgm2"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_pressure_001.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_passage_05.png"]

;---------------------------------------

[kc_showPic name="mumi" style="z-index:100; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

[live2d_show name="kade" time=1000 ]
[kc_exp name="kade" expName="kade_f02" ]
[live2d_show name="ura" time=1000 ]
[kc_exp name="ura" expName="haka_f02" ]



;show bg
[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]
[kc_playSound name="bgm1" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=1500 ]

[kc_hukidasi str="\r畝瞇..." type="nar" ]

[kc_hukidasi str="真期待烏拉拉學姊的萬聖節演唱會呢！" type="npc1"  name="kade" paku=true ]
[kc_hukidasi str="\r畝瞇。。。" type="nar"  ]
[kc_exp name="ura" expName="ura_f04" ]
[kc_hukidasi str="哼哼～　記得要COSPLAY再來喔～" type="npc1"  name="ura" paku=true ]
[kc_hukidasi str="\r畝瞇！！！" type="nar"  ]
[kc_hukidasi str="阿拉、蜜蜜、已經把萬聖雞" type="npc1"  name="kade" paku=true ]
[kc_hukidasi str="\rTRICK！" type="nar"  ]
[kc_exp name="kade" expName="kade_f05" ]
[kc_hukidasi str="\rカポンンーーー" type="nar" ]
[kc_exp name="kade" expName="kadezou" time=0]

[kc_hukidasi str="咿欸欸欸欸欸" type="npc1"  name="kade" paku=true ]


[live2d_color name="kade" red=1 green=1 blue=0.9]
[wait time=200]
[live2d_color name="kade" red=1 green=1 blue=0.8]
[wait time=200]
[live2d_color name="kade" red=1 green=1 blue=0.7]
[wait time=200]
[live2d_color name="kade" red=1 green=1 blue=0.6]
[wait time=200]
[live2d_color name="kade" red=1 green=1 blue=0.5]
[wait time=200]
[live2d_color name="kade" red=1 green=1 blue=0.4]
[wait time=200]
[live2d_color name="kade" red=1 green=1 blue=0.3]
[wait time=200]
[live2d_color name="kade" red=1 green=1 blue=0.2]
[wait time=200]
[live2d_color name="kade" red=1 green=1 blue=0.1]
[wait time=200]
[live2d_color name="kade" red=1 green=1 blue=0]
[wait time=400]

[kc_hukidasi str="身、身體。。。！" type="npc3"  name="kade" ]

[kc_exp name="ura" expName="ura_f05" ]
[kc_hukidasi str="欸！蜜蜜你做什" type="npc1"  name="ura" paku=true ]
[kc_exp name="ura" expName="ura_f07" ]
[kc_hukidasi str="\rTRIc" type="nar" ]
[kc_hukidasi str="待った！" type="npc2"  name="ura" paku=true fontSize="4em"]

[wait time=1500]
[kc_exp name="ura" expName="urajelly" ]

[kc_hukidasi str="好、OKAYー" type="npc1"  name="ura" paku=true ]
[kc_hukidasi str="\rTRCIKー！" type="nar" ]

[kc_hukidasi str="\rゼリンーーー" type="nar" ]

[live2d_opacity name="ura" opacity=0.8 time=2000]

[live2d_color name="ura" red=1 green=0.9 blue=0.9]
[wait time=100]
[live2d_color name="ura" red=1 green=0.8 blue=0.8]
[wait time=100]
[live2d_color name="ura" red=1 green=0.7 blue=0.7]
[wait time=100]
[live2d_color name="ura" red=1 green=0.6 blue=0.6]
[wait time=100]
[live2d_color name="ura" red=1 green=0.5 blue=0.5]
[wait time=100]
[live2d_color name="ura" red=1 green=0.4 blue=0.4]
[wait time=100]
[live2d_color name="ura" red=1 green=0.3 blue=0.3]
[wait time=100]

[kc_hukidasi str="呀啊啊啊🧡　\r　是紅寶石耶！" type="npc1"  name="ura" paku=true ]
[wait time=1000]
[kc_hukidasi str="很明顯是果凍呢。。。　草莓口味的" type="npc3"  name="kade" ]
[kc_exp name="ura" expName="urajelly2" ]
[kc_hukidasi str="啊、啊勒？！身體軟爛軟爛的不能出力～" type="npc1"  name="ura" paku=true ]

[kc_hukidasi str="喔、喔喔喔要倒了～～～" type="npc3"  name="kade" ]


[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]
[kc_hukidasi str="啊啊、多麼的サツバツ！\r連沒有罪的人也無情的搗蛋！\r　　　實在コワイ！！" type="nar" zindex=50]
[kc_hukidasi str="畝瞇之風已吹起\r　　　　　　　\r請注意身體健康喔！" type="nar" zindex=50]
