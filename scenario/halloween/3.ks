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

[kc_hukidasi str="明らかにゼリーですね。。。　\rいちご味の" type="usr3" ]
[kc_hukidasi str="声かけるところに、\rいったい何が起こったが？！" type="usr1"]

[kc_hukidasi str="先生。。。\rうららたち、\r大丈夫ですか？" type="npc1"  name="komi" paku=true ]

[kc_hukidasi str="今までの変身経歴によると...\r多分、大丈夫。" type="usr1" ]
[kc_exp name="komi" expName="komi_f06" ]
[kc_hukidasi str="ここは静かに待つ、\r様子を見る..." type="usr1" ]

[kc_hukidasi str="\rドタドタ　ドタ...　ド..タ...." type="nar" txtInterval=200]

[kc_hukidasi str="よし..！いったん撤退、\r助けを呼ぶんだ！" type="usr1"]
[kc_hukidasi str="\rミシェルに気づかれないように！" type="usr1"]

[live2d_show name="dmumi" time=1000 ]
[kc_exp name="dmumi" expName="mumi_f02" ]

[kc_exp name="komi" expName="komi_f05" ]
[kc_hukidasi str="先生...\rごめんなさい...\rもう、バレました..." type="npc1"  name="komi" paku=true fontSize="1.5em" txtInterval=200]

[kc_exp name="dmumi" expName="mumi_f06" ]
[kc_hukidasi str="ココミセンパイ、\r声小さいから、\rミミ聞こえない..." type="npc1"  name="dmumi" paku=true ]

[kc_exp name="dmumi" expName="mumi_f03" ]
[kc_hukidasi str="\rソウダ！" type="npc1"  name="dmumi" paku=true ]
[kc_hukidasi str="\rトリックムミィ！" type="npc1"  name="dmumi" paku=true ]


[kc_hukidasi str="\rコッバンンーモワモワ" type="nar" ]
[kc_showPic name="mumi" style="z-index:30;filter: opacity(0.5);transition: opacity .5s; background-color:white;height:100%;"  isBg="true"]

[kc_exp name="komi" expName="komi_f10" ]
[kc_exp name="dmumi" expName="mumi_f07" ]
[kc_hukidasi str="\rケホケホ" type="npc1"  name="dmumi" paku=true ]
[kc_hukidasi str="\r今のうちに逃げるぞ！" type="usr1" ]
[live2d_hide name = "komi" time=1000 ]
[kc_exp name="dmumi" expName="mumi_f05" ]
[kc_hidePic name="mumi" isBg="true"]
[kc_hukidasi str="ムミィ〜\r先生はまたトリックしていないよ〜" type="npc1"  name="dmumi" paku=true ]
[kc_hukidasi str="\rマッテ〜" type="npc1"  name="dmumi" paku=true ]

[kc_hukidasi str="トリートは？！　トリートの選択肢はないのか？！　\r和菓子もあるぞ！" type="usr3" ]

[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]
[kc_hukidasi str="未知！　　　　\rトリックは失敗したか？！\r普段の行いは良いからか？！" type="nar" zindex=50]
[kc_hukidasi str="アノ　　　　\r　　ソノ　　\rココミカワイイ！" type="nar" zindex=50]