[kc_loadAllExp ]

;prepare model 
[kc_prepareL2D name="haruka" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/haruka/m/models/" modelFileName="m.json" ]

;load model 
[live2d_new name="haruka"   width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_comical_001.mp3"]
[kc_addSound name="dalu"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/dalu.mp3"]
[kc_addSound name="se_touch_001"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/se_touch_001.mp3"]
;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="rengeroom" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_shoppingmall_01.png"]

;guofunbu
[kc_showPic name="mumi" style="z-index:3 transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=5000]

;show bg
[kc_showPic name="rengeroom" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]
[kc_playSound name="bgm1" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500]

[live2d_show name="haruka" left=-3000 top=0 time=0]

[live2d_opacity name="haruka" opacity=0 time=0]

[kc_position name="haruka" x=21 ]

[live2d_opacity name="haruka" opacity=1 time=1000]

[kc_exp name="haruka" expName="haka_f02" ]

[kc_hukidasi str="老師家附近的商店街" type="nar"]

[kc_hukidasi str="\r啊！遙香" type="usr1" ]

[kc_exp name="haruka" expName="haka_f05" ]
[kc_hukidasi str="啊啦~老師!\r老師也來買東西嗎?" type="npc1"  name="haruka" paku=true x=50]
[kc_hukidasi str="嗯?!_嗯嗯...對對啊!天氣涼涼的隨便來逛逛。" type="usr1" ]
[kc_hukidasi str="其實是來拿生日派對的蛋糕...." type="usr3" ]
[kc_hukidasi str="因為太大了，分了兩次拿呢..." type="usr3" ]
[kc_hukidasi str="遙香呢?\r今天晚上不是有派對嗎?" type="usr1" ]

[kc_exp name="haruka" expName="miki_f02" ]
[kc_hukidasi str="是啊~美紀託我來買很多能拌飯的東西呢!" type="npc1"  name="haruka" paku=true x=50]

[kc_hukidasi str="\r玻玻玻璃罐" type="nar"]

[kc_hukidasi str="老師你看!這罐千導院家新推出的\r美莎希拌飯!" type="npc1"  name="haruka" paku=true x=50]
[kc_hukidasi str="看起來好好吃呢~" type="npc1"  name="haruka" paku=true x=50]
[kc_hukidasi str="?!!...所以那一大袋都是拌飯料嗎?!" type="usr3" ]
[kc_stopSound name="bgm1" ]
[kc_playSound name="dalu" time=2 vol=1]
[wait time="3000"]
[kc_hukidasi str="這個旋律是....!!" type="usr3" ]
[kc_exp name="haruka" expName="f01" ]
[kc_hukidasi str="啊~是美紀打來的呢" type="npc1"  name="haruka" paku=true x=50]
[kc_hukidasi str="為什麼要用這個鈴聲...!!" type="usr3" ]
[kc_stopSound name="dalu" ]
[kc_hukidasi str="摩西摩西~美紀?怎麼了嗎?" type="npc1"  name="haruka" paku=true x=50]

[kc_hidePic name="rengeroom" isBg="true"]

[kc_hukidasi str="遙香~~我等一下會帶很多好吃的飯回去喔~" type="npc1" x=0]
[kc_hukidasi str="都是剛採收下來新鮮的米做成的喔~" type="npc1" x=0]
[wait time=1000]
[kc_exp name="haruka" expName="miki_f03" ]
[kc_hukidasi str="哇~~好看起來好好吃~" type="npc1"  name="haruka" paku=true x=50]
[kc_hukidasi str="我也有買了很多拌飯料喔!" type="npc1"  name="haruka" paku=true x=50]
[kc_hukidasi str="嘿嘿~那就敬請期待~現在就飛回去摟" type="npc1" x=0]
[kc_hukidasi str="回來的時候注意安全，不要再撞到小鳥了喔!" type="npc1"  name="haruka" paku=true x=50]
[kc_hukidasi str="欸?!那次是...不會再撞到了啦~" type="npc1" x=0]
[kc_playSound name="se_touch_001"]
[kc_playSound name="bgm1" loop=true ]
[kc_showPic name="rengeroom" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]

[kc_hukidasi str="那麼老師，我先走摟~" type="npc1"  name="haruka" paku=true x=50]
[kc_hukidasi str="嗯，路上小心喔!" type="usr1" ]

[live2d_hide name = "haruka" time=2000 ]

[kc_hukidasi str="要趕快把蛋糕先拿回去呢!" type="usr3" ]
[wait time=1000]
[kc_hukidasi str="...我也順便買一罐美莎希拌飯好了" type="usr3" ]


;guofunbu
[kc_showPic name="mumi" style="transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

;[kc_stopSound]
