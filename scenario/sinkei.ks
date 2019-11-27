[kc_loadAllExp ]
;prepare model 
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
[kc_prepareL2D name="1p" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/kokomi/choco_02/" modelFileName="m.json" ]
[kc_prepareL2D name="2p" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/mumi/twdark_01/" modelFileName="m.json" ]

;load model 
[live2d_new name="1p"    width=1024 height=1024 left=33% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="2p"   width=1024 height=1024 left=66% top=55% gltop=0  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_16.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_classroom_01.png"]

;---------------------------------------


[kc_showPic name="mumi" style="z-index:100; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

[live2d_show name="1p" time=0 ]
[kc_exp name="1p" expName="komi_f05" ]

;show bg
[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]
[kc_playSound name="bgm1" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500 ]

[jump storage=online.ks target=*end]
@jump target=*win1

;WINNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
*win1
[kc_hukidasi str="声かけるところに、\rいったい何が起こったが？！" type="usr1"]
@jump target=*end

*win2
[live2d_motion name = "1p" filenm="m05.mtn" ]
[kc_exp name="1p" expName="komi_f05" ]
[kc_hukidasi str="うう！！　　ごめんなさいいいい！！！！" type="npc2"  name="1p" paku=true fontSize="2.5em" fat=1]
@jump target=*end

*win3
[live2d_motion name = "1p" filenm="m05.mtn" ]
[kc_exp name="1p" expName="komi_f05" ]
[kc_hukidasi str="うう！！　　ごめんなさいいいい！！！！" type="npc2"  name="1p" paku=true fontSize="2.5em" fat=1]
@jump target=*end

;LOSEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
*lose1
[live2d_motion name = "1p" filenm="m05.mtn" ]
[kc_exp name="1p" expName="komi_f05" ]
[kc_hukidasi str="うう！！　　ごめんなさいいいい！！！！" type="npc2"  name="1p" paku=true fontSize="2.5em" fat=1]
@jump target=*end
*lose2
[live2d_motion name = "1p" filenm="m05.mtn" ]
[kc_exp name="1p" expName="komi_f05" ]
[kc_hukidasi str="うう！！　　ごめんなさいいいい！！！！" type="npc2"  name="1p" paku=true fontSize="2.5em" fat=1]
@jump target=*end
*lose3
[live2d_motion name = "1p" filenm="m05.mtn" ]
[kc_exp name="1p" expName="komi_f05" ]
[kc_hukidasi str="うう！！　　ごめんなさいいいい！！！！" type="npc2"  name="1p" paku=true fontSize="2.5em" fat=1]
@jump target=*end


*end