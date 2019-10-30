[kc_loadAllExp ]
[kc_loadExp name="komiright" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/exp/komiright.json"]
[kc_loadExp name="komileft" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/exp/komileft.json"]
[kc_loadExp name="komiseeghost" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/exp/komiseeghost.json"]
[kc_loadExp name="avnatrick" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/exp/avnatrick.json"]
[kc_loadExp name="komipinti" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/exp/komipinti.json"]

;prepare model 
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
[kc_prepareL2D name="komi" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/kokomi/choco_02/" modelFileName="m.json" ]
[kc_prepareL2D name="avna" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/avna/hoken_01/" modelFileName="m.json" ]

;load model 
[live2d_new name="komi"    width=1024 height=1024 left=66% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="avna"   width=1024 height=1024 left=33% top=160% gltop=0.25  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_anime03_yami_no_shinju.mp3"]
[kc_addSound name="nottoru"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/se_care_002.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_nurseroom_01.png"]

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

[kc_hukidasi str="ここに隠れば暫く大丈夫かな..." type="usr1"]
[kc_hukidasi str="心美は大丈夫？" type="usr1"]

[kc_exp name="komi" expName="komi_f04" ]
[kc_hukidasi str="アッハイ、何も変わっでないみたいですう！" type="npc2"  name="komi" paku=true fontSize="2.5em" fat=1]

[kc_hukidasi str="うわッ　\r声超大き！" type="usr2"]
[live2d_motion name = "komi" filenm="m05.mtn" ]
[kc_exp name="komi" expName="komi_f05" ]
[kc_hukidasi str="うう！！　　ごめんなさいいいい！！！！" type="npc2"  name="komi" paku=true fontSize="2.5em" fat=1]

[kc_hukidasi str="しーーー！　\rミシェルが聞こえる...！" type="usr1"]

[kc_exp name="komi" expName="komileft" time=200]

[kc_exp name="komi" expName="komiright" time=200]

[kc_exp name="komi" expName="komileft" time=200]

[kc_exp name="komi" expName="komiright" time=200]

[kc_exp name="komi" expName="komi_f05" ]
[wait time=500 ]
;心美ノッド
[kc_hukidasi str="\rシーーーーン" type="nar" txtInterval=200]

[kc_hukidasi str="まだ気づいてないみたい...　\r早く助けを...！" type="usr1"]

[live2d_opacity name="avna" opacity=0.8 time=0]
[live2d_opacity name="avna" opacity=0.8 time=2000]
[kc_position name="avna" y=60 ]
[wait time=1300]

[kc_exp name="komi" expName="komiseeghost" time=200]

[kc_hukidasi str="ひえええええ!　\rエリカ先生？！" type="npc3"  name="komi"]

[kc_hukidasi str="あら〜\rみんな元気ですね〜" type="npc1"  name="avna" paku=true ]
[kc_hukidasi str="\r先生は嬉しいよ〜" type="npc1"  name="avna" paku=true ]
[wait time=400]
[kc_exp name="komi" expName="komi_f05" ]

[kc_hukidasi str="\rちょんちょん...チョンチョン！" type="nar" ]

[kc_hukidasi str="先生！　　　\rセンセイイイ！！" type="npc3"  name="komi"]

[kc_hukidasi str="ちょっと待て、今電話かけるか..." type="usr1"]
[kc_hukidasi str="グワッアアアア！！！" type="usr2" fontSize="2.5em" fat=1] 
[kc_exp name="avna" expName="avna_f07" ]
[kc_hukidasi str="アバアアアアア！！！" type="usr2" fontSize="2.5em" fat=1]


[kc_hukidasi str="...........ちょっとあんた\rハロウィンを機に、\rせっかく見で来るのよ" type="npc1"  name="avna" paku=true ]
[kc_hukidasi str="何その反応？\r　　\r失礼ですね！" type="npc1"  name="avna" paku=true ]
[kc_exp name="avna" expName="avna_f12" ]

[kc_hukidasi str="ね〜心美？　\r　　　　\rいいね？" type="npc1"  name="avna" paku=true ]
[kc_exp name="komi" expName="komipinti" time=0]
[kc_hukidasi str="ヒッ？！" type="npc2"  name="komi" paku=true fontSize="3em"]



[kc_stopSound name="bgm1" ]

[kc_exp name="avna" expName="avnatrick" time=0]

[kc_position name="avna" x=38 ]
[kc_position name="komi" x=67 ]
[kc_hukidasi str="\r　_トリック？" type="npc1"  name="avna" paku=true txtInterval=100]
[kc_position name="avna" x=41 ]
[kc_position name="komi" x=68 ]
[kc_hukidasi str="\r　　_オア" type="npc1"  name="avna" paku=true txtInterval=100]
[kc_position name="avna" x=44 ]
[kc_position name="komi" x=69 ]
[kc_hukidasi str="\r　_トリック？" type="npc1"  name="avna" paku=true txtInterval=100]
[kc_position name="avna" x=47 ]
[kc_hukidasi str="\r　　_いいね？" type="npc1"  name="avna" paku=true txtInterval=100]
[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]
[kc_hukidasi str="アッハイイイイィィ！" type="npc2"  name="komi" paku=true fontSize="2.5em" fat=1 zindex=50]

[kc_playSound name="bgm1" time=41]

[kc_hukidasi str="\r心美ーーー！" type="usr2" zindex=50]

[kc_hukidasi str="バッタンーッ！" type="nar" zindex=50]

[kc_hukidasi str="センセイイ〜\r見〜ツケッタ〜" type="npc1" name="dmumi" x=50 zindex=50]

[kc_hukidasi str="うぅ、ここまでか？！\r変身不可避ですか？！\r　　うう" type="usr2" zindex=50]
[kc_hukidasi str="　　サヨナラーーー！" type="usr2" zindex=50 fontSize="3em" fat=1]

[wait time=1000]
[kc_playSound name="nottoru"]
[wait time=1000]
[kc_hukidasi str="おおっ～\rこの胸の重さ、久しぶり～" type="npc1"  name="avna" zindex=50]
[kc_hukidasi str="ふふ～\r葵も呼ぼう〜" type="npc1"  name="avna" zindex=50]

[kc_hukidasi str="\rカブーーーム！" type="nar" zindex=50]

[wait time=500]
[kc_hukidasi str="ムミイ〜\r先生カワイイ〜" type="npc1"  name="mumi" x=50 zindex=50]

[wait time=1000]
[kc_hukidasi str="もうおしまいのか？！\r電話の向こうにあるのは\r希望か？　　　　絶望か？！" type="nar" zindex=50]

[wait time=3000]

[kc_hukidasi str="もしもし？　先生...？\rもしもし〜？" type="npc1"  name="anko" x=50 zindex=50]
[kc_hukidasi str="もう！なんで無言電？\rハロウィンのイタズラはまだ早いのよ！" type="npc1"  name="anko" x=50 zindex=50]
[wait time=1000]
[kc_hukidasi str="\rぷちーーーーー" type="nar" zindex=50]

[wait time=1000]
[kc_hukidasi str="ハロウィンのイタズラは\rまだ早いのようです！\r明日ですね！　　いいね？！" type="nar" zindex=50]
[wait time=1000]
[kc_hukidasi str="ハッピーハロウィン！" type="nar" zindex=50 fontSize="2.5em" fat=1]

