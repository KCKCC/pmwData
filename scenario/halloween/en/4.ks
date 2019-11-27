[kc_loadAllExp ]
[kc_loadExp name="komiright" url="C:/Users/KC/Desktop/R/pmwData/pwmData/exp/komiright.json"]
[kc_loadExp name="komileft" url="C:/Users/KC/Desktop/R/pmwData/pwmData/exp/komileft.json"]
[kc_loadExp name="komiseeghost" url="C:/Users/KC/Desktop/R/pmwData/pwmData/exp/komiseeghost.json"]
[kc_loadExp name="avnatrick" url="C:/Users/KC/Desktop/R/pmwData/pwmData/exp/avnatrick.json"]
[kc_loadExp name="komipinti" url="C:/Users/KC/Desktop/R/pmwData/pwmData/exp/komipinti.json"]

;prepare model 
;C:/Users/KC/Desktop/R/pmwData/pwmData/
;C:/Users/KC/Desktop/R/pmwData/pwmData/
[kc_prepareL2D name="komi" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/kokomi/choco_02/" modelFileName="m.json" ]
[kc_prepareL2D name="avna" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/avna/hoken_01/" modelFileName="m.json" ]

;load model 
[live2d_new name="komi"    width=1024 height=1024 left=66% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="avna"   width=1024 height=1024 left=33% top=160% gltop=0.25  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="bgm1"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/sound/bgm_anime03_yami_no_shinju.mp3"]
[kc_addSound name="nottoru"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/sound/se_care_002.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="C:/Users/KC/Desktop/R/pmwData/pwmData/pic/bg_nurseroom_01.png"]

;---------------------------------------


[kc_showPic name="mumi" style="z-index:100; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

[live2d_show name="komi" time=1000 ]
[kc_exp name="komi" expName="komi_f05" ]
[live2d_show name="avna" time=1000 ]
[kc_exp name="avna" expName="avna_f12" ]

;show bg
[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]
[kc_playSound name="bgm1" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=1000 ]

[kc_hukidasi str="躲在這邊應該暫時沒問題吧..." type="usr1"]
[kc_hukidasi str="心美還好嗎？" type="usr1"]

[kc_exp name="komi" expName="komi_f04" ]
[kc_hukidasi str="アッハイ、什麼變化都沒有的樣子！" type="npc2"  name="komi" paku=true fontSize="2.5em" fat=1]

[kc_hukidasi str="嗚挖ッ　\r聲音超大！" type="usr2"]
[live2d_motion name = "komi" filenm="m05.mtn" ]
[kc_exp name="komi" expName="komi_f05" ]
[kc_hukidasi str="嗚嗚！！　　對不起噫噫噫咿！！！！" type="npc2"  name="komi" paku=true fontSize="2.5em" fat=1]

[kc_hukidasi str="噓ーーー！　\r會被蜜雪兒聽到的...！" type="usr1"]

[kc_exp name="komi" expName="komileft" time=200]

[kc_exp name="komi" expName="komiright" time=200]

[kc_exp name="komi" expName="komileft" time=200]

[kc_exp name="komi" expName="komiright" time=200]

[kc_exp name="komi" expName="komi_f05" ]
[wait time=1000 ]
;心美ノッド
[kc_hukidasi str="\r靜ーーーーン" type="nar" txtInterval=200]

[kc_hukidasi str="好像還沒注意到的樣子...　\r快點趁現在求救...！" type="usr1"]

[live2d_opacity name="avna" opacity=0.8 time=0]
[live2d_opacity name="avna" opacity=0.8 time=2000]
[kc_position name="avna" y=60 ]
[wait time=1000]

[kc_exp name="komi" expName="komiseeghost" time=200]

[kc_hukidasi str="噫欸欸欸欸!　\r艾里佳老師？！" type="npc3"  name="komi"]

[kc_hukidasi str="啊啦〜\r大家都很有精神呢〜" type="npc1"  name="avna" paku=true ]
[kc_hukidasi str="\r老師很高興喔〜" type="npc1"  name="avna" paku=true ]
[wait time=400]
[kc_exp name="komi" expName="komi_f05" ]

[kc_hukidasi str="\r戳戳...戳戳戳戳！" type="nar" ]

[kc_hukidasi str="老師！　　　\r老師師師師！！" type="npc3"  name="komi"]

[kc_hukidasi str="等一下、現在馬上打電..." type="usr1"]
[wait time=1000]
[kc_hukidasi str="グワッアアアア！！！" type="usr2" fontSize="2.5em" fat=1] 
[kc_exp name="avna" expName="avna_f07" ]
[kc_hukidasi str="アバアアアアア！！！" type="usr2" fontSize="2.5em" fat=1]


[kc_hukidasi str="...........你給我等一下\r我趁著萬聖節的機會、\r好不容易來看你們喔" type="npc1"  name="avna" paku=true ]
[kc_hukidasi str="那是什麼反應？\r　　\r真是太失禮了！" type="npc1"  name="avna" paku=true ]
[kc_exp name="avna" expName="avna_f12" ]

[kc_hukidasi str="對吧〜心美？　\r　　　　\rいいね？" type="npc1"  name="avna" paku=true ]
[kc_exp name="komi" expName="komipinti" time=0]
[kc_hukidasi str="噫ッ？！" type="npc2"  name="komi" paku=true fontSize="3em"]


[kc_stopSound name="bgm1" ]

[kc_exp name="avna" expName="avnatrick" time=0]

[kc_position name="avna" x=38 ]
[kc_position name="komi" x=67 ]
[kc_hukidasi str="\r　_搗蛋？" type="npc1"  name="avna" paku=true txtInterval=100]
[kc_position name="avna" x=41 ]
[kc_position name="komi" x=68 ]
[kc_hukidasi str="\r　　_或者" type="npc1"  name="avna" paku=true txtInterval=100]
[kc_position name="avna" x=44 ]
[kc_position name="komi" x=69 ]
[kc_hukidasi str="\r　_搗蛋？" type="npc1"  name="avna" paku=true txtInterval=100]
[kc_position name="avna" x=47 ]
[kc_hukidasi str="\r　　_いいね？" type="npc1"  name="avna" paku=true txtInterval=100]
[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]
[kc_hukidasi str="アッハイイイイィィ！" type="npc2"  name="komi" paku=true fontSize="2.5em" fat=1 zindex=50]

[kc_playSound name="bgm1" time=41]

[kc_hukidasi str="\r心美ーーー！" type="usr2" zindex=50]

[kc_hukidasi str="\r碰 啪ー！" type="nar" zindex=50]

[kc_hukidasi str="老〜師〜\r找～到你了〜" type="npc1" name="dmumi" x=50 zindex=50]

[kc_hukidasi str="嗚嗚、到此為止嗎？！\r註定要變身了嗎？！\r　　嗚嗚" type="usr2" zindex=50]
[kc_hukidasi str="　　撒呦哪啦ーーー！" type="usr2" zindex=50 fontSize="3em" fat=1]

[wait time=1000]
[kc_playSound name="nottoru"]
[wait time=1000]
[kc_hukidasi str="哦哦っ～\r這個胸部的重量、真是久違了～" type="npc1"  name="avna" zindex=50]
[kc_hukidasi str="呼呼～\r也叫葵來玩吧〜" type="npc1"  name="avna" zindex=50]

[kc_hukidasi str="\rカブーーーム！" type="nar" zindex=50]

[wait time=500]
[kc_hukidasi str="畝瞇〜\r老師好可愛〜" type="npc1"  name="mumi" x=50 zindex=50]

[wait time=1000]
[kc_hukidasi str="已經無法挽回了嗎？！\r電話的那頭存在的是\r希望嗎？　　　　絕望嗎？！" type="nar" zindex=50]

[wait time=3000]

[kc_hukidasi str="摩西摩西？　老師...？\r摩西摩西〜？" type="npc1"  name="anko" x=50 zindex=50]
[kc_hukidasi str="吼~！為什麼是無聲電話？\r萬聖節的搗蛋還太早了吧！" type="npc1"  name="anko" x=50 zindex=50]
[wait time=1000]
[kc_hukidasi str="\r噗唧ーーーーー" type="nar" zindex=50]

[wait time=1000]
[kc_hukidasi str="萬聖節的搗蛋\r好像還太早了！\r是明天喔！　　いいね？！" type="nar" zindex=50]
[wait time=1000]
[kc_hukidasi str="萬聖節快樂！" type="nar" zindex=50 fontSize="2.5em"]

