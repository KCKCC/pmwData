[kc_loadAllExp ]
;prepare model 
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
[kc_prepareL2D name="komi" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/kokomi/choco_02/" modelFileName="m.json" ]
[kc_prepareL2D name="dmumi" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/mumi/twdark_01/" modelFileName="m.json" ]

;load model 
[live2d_new name="komi"    width=1024 height=1024 left=33% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="dmumi"   width=1024 height=1024 left=66% top=55% gltop=0  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_16.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_classroom_01.png"]

;---------------------------------------


[kc_showPic name="mumi" style="z-index:100; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

[live2d_show name="komi" time=0 ]
[kc_exp name="komi" expName="komi_f05" ]

;show bg
[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]
[kc_playSound name="bgm1" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500 ]

[kc_hukidasi str="很明顯是果凍呢。。。　\r草莓口味的" type="usr3" ]
[kc_hukidasi str="才想過去搭話、\r到底發生什麼事了？！" type="usr1"]

[kc_hukidasi str="老師。。。\r烏拉拉他們、\r沒問題嗎？" type="npc1"  name="komi" paku=true ]

[kc_hukidasi str="根據我至今的變身經歷...\r大概、沒問題。" type="usr1" ]
[kc_exp name="komi" expName="komi_f06" ]
[kc_hukidasi str="這裡先按兵不動、\r觀察一下狀況..." type="usr1" ]

[kc_hukidasi str="\r啪踏啪踏　啪踏...　啪..踏...." type="nar" txtInterval=200]

[kc_hukidasi str="好..！暫時撤退、\r請求支援！" type="usr1"]
[kc_hukidasi str="\r不要讓蜜雪兒發現了！" type="usr1"]

[live2d_show name="dmumi" time=1000 ]
[kc_exp name="dmumi" expName="mumi_f02" ]

[kc_exp name="komi" expName="komi_f05" ]
[kc_hukidasi str="老師...\r對不起...\r已經、被發現了..." type="npc1"  name="komi" paku=true fontSize="1.5em" txtInterval=200]

[kc_exp name="dmumi" expName="mumi_f06" ]
[kc_hukidasi str="心美學姊、\r聲音太小了、\r蜜蜜聽不到..." type="npc1"  name="dmumi" paku=true ]

[kc_exp name="dmumi" expName="mumi_f03" ]
[kc_hukidasi str="\r對了！" type="npc1"  name="dmumi" paku=true ]
[kc_hukidasi str="\rTRICK畝瞇！" type="npc1"  name="dmumi" paku=true ]


[kc_hukidasi str="\rコッバンンーモワモワ" type="nar" ]
[kc_showPic name="mumi" style="z-index:30;filter: opacity(0.5);transition: opacity .5s; background-color:white;height:100%;"  isBg="true"]

[kc_exp name="komi" expName="komi_f10" ]
[kc_exp name="dmumi" expName="mumi_f07" ]
[kc_hukidasi str="\r咳咳咳咳" type="npc1"  name="dmumi" paku=true ]
[kc_hukidasi str="\r趁現在快逃！" type="usr1" ]
[live2d_hide name = "komi" time=1000 ]
[kc_exp name="dmumi" expName="mumi_f05" ]
[kc_hidePic name="mumi" isBg="true"]
[kc_hukidasi str="畝瞇〜\r還沒有給老師搗蛋喔〜" type="npc1"  name="dmumi" paku=true ]
[kc_hukidasi str="\r等等〜" type="npc1"  name="dmumi" paku=true ]

[kc_hukidasi str="給糖呢？！　給糖的選擇哪裡去了？！　\r我還準備了和菓子喔！" type="usr3" ]

[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]
[kc_hukidasi str="未知！　　　　\r搗蛋失敗了嗎？！\r是因為平常行為良好嗎？！" type="nar" zindex=50]
[kc_hukidasi str="這個　　　　\r　　那個　　\r心美超可愛！！" type="nar" zindex=50]