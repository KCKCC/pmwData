;prepare model 
[kc_prepareL2D name="haruka" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/haruka/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="sadone" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/sadone/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="miki"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/miki/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="misaki" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/misaki/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="sadone-taizai" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/sadone/m/models/" modelFileName="taizai.json" ]
[kc_prepareL2D name="siho" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/siho/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="kanon" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/kanon/m/models/" modelFileName="m.json" ]


;load model 
[live2d_new name="haruka"   width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="misaki"  width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="siho"  width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="kanon"  width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="sadone-taizai"    width=1024 height=1024 left=-100 top=250 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="sadone"    width=1024 height=1024 left=-100 top=250 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="miki"    width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]


;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_comical_001.mp3"]
[kc_addSound name="bgm2"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_battle_005.mp3"]
[kc_addSound name="sado_hehe"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sado_hehe.mp3"]
[kc_addSound name="sado_oni"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sado_oni.mp3"]
[kc_addSound name="sado_theme"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_16b.mp3"]
[kc_addSound name="miki_theme"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_01.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="beach"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_beach_03_1.png"]
[kc_addPic name="rengeroom" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_kitchen_kaede_01.png"]

;guofunbu
[kc_showPic name="mumi" style="transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

;show bg
[kc_showPic name="rengeroom" style="left: -14%;z-index: 1;height: 100%;", isBg="true"]
[kc_playSound name="sado_theme" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500]
;

;set expression  no exp no paku so lame orz

[live2d_expression name="haruka" filenm="f02.exp.json" ]
[live2d_expression name="miki" filenm="f02.exp.json" ]
[live2d_expression name="misaki" filenm="f02.exp.json" ]
[live2d_expression name="siho" filenm="f02.exp.json" ]
[live2d_expression name="kanon" filenm="f02.exp.json" ]
[live2d_expression name="sadone" filenm="f02.exp.json" ]
[live2d_expression name="sadone-taizai" filenm="f02.exp.json" ]

;set motion really wierd 
[live2d_motion name = "haruka" filenm="m03.mtn" idle="ON" ]
;show model

;hukidasi test
;[live2d_show name="haruka" left=-300 top=0 time=1000]
;[live2d_show name="miki" left=-200 top=0 time=1000]
;[live2d_show name="misaki" left=-100 top=0 time=1000]
;[live2d_show name="siho" left=-0 top=0 time=1000]
;[live2d_show name="kanon" left=100 top=0 time=1000]
;[live2d_show name="sadone" left=0 top=0 time=1000]
;[live2d_show name="sadone-taizai" left=300 top=0 time=1000]

[live2d_show name="sadone" left=0 top=0 time=1000]
[live2d_show name="haruka" left=250 top=0 time=1000]
[live2d_show name="misaki" left=-250 top=0 time=1000]


[kc_hukidasi str="\r____老師的廚房_" type="nar" ]
[kc_hukidasi str="好期待呢。又可以\r吃到莎朵霓的肉了～" type="npc1" name="haruka" paku=true x=55 ]
[kc_hukidasi str="這次也是幹勁滿滿\r的呢。" type="npc1"  name="haruka" paku=true x=55 ]

[live2d_expression name = "misaki" filenm="f08.exp.json" ]
[wait time=1000]

[kc_hukidasi str="美紀看起來也很\r興奮，真是令人\r擔心....." type="npc3"  name="misaki" x=0 ]

[live2d_expression name = "sadone" filenm="f03.exp.json" ]
[wait time=1000]

[kc_playSound name="sado_hehe" vol=1]

[kc_hukidasi str="\r嘿嘿~♪" type="npc1"  name="sadone" paku=true]
[kc_hukidasi str="這次要做很~大，\r很~~~大的肉肉喔!!" type="npc1"  name="sadone" paku=true]

[wait time=500]

[live2d_expression name = "misaki" filenm="f02.exp.json" ]
[wait time=1000]

[live2d_expression name = "haruka" filenm="f03.exp.json" ]
[wait time=1000]

[kc_hukidasi str="\r哇啊~~~~這麼大嗎" type="npc1"  name="haruka" paku=true x=55 ]

[live2d_show name="miki" left=1000 top=0 time=0]
[live2d_opacity name="miki" opacity=0 time=0]
[kc_position name="miki" x=45 y=22 r=-22]
[live2d_opacity name="miki" opacity=1 time=1000]

[kc_hukidasi str="我要做的是醃\r蝦子喔~" type="npc1"  name="miki" paku=true x=60]

;[live2d_opacity name="miki" opacity=0 time=1000]

[live2d_expression name = "misaki" filenm="f16.exp.json" ]
[wait time=1000]

[kc_hukidasi str="嗚嗯! ！\r馬上就出現\r蝦子了!!" type="npc3"  name="misaki" x=0 ]
[kc_hukidasi str="那，莎朵霓這次\r也會加油的!" type="npc1"  name="sadone" paku=true]
[kc_hukidasi str="那麼先把肉肉\r拿出來吧！" type="npc1"  name="sadone" paku=true]

[live2d_expression name = "misaki" filenm="f02.exp.json" ]
[wait time=1000]

[kc_hukidasi str="\r🍖🍖" type="nar" ]
[kc_hukidasi str="\r🍖🍖🍖🍖" type="nar" txtInterval=0]
[kc_hukidasi str="\r🍖🍖🍖🍖🍖🍖🍖🥬" type="nar" txtInterval=0]
[kc_hukidasi str="啊\r這邊是要直接烤的" type="npc1"  name="sadone" paku=true]
[kc_hukidasi str="\r🍖🍖🍖🍖🍖🍖" type="nar" txtInterval=0]

[kc_hukidasi str="穿戴穿戴\r____閃光閃光" type="nar" ]

[live2d_expression name = "misaki" filenm="f05.exp.json" ]
[wait time=1000]

[kc_hukidasi str="\r那個是....手指虎?" type="npc3"  name="misaki"  x=0]

[live2d_expression name = "sadone" filenm="f08.exp.json" ]
[wait time=1000]

[kc_hukidasi str="呼...哈~~~\r哥哥...哥哥...\r哥哥_哥哥_哥哥" type="npc1"  name="sadone" paku=true]

[iscript]
$("#Live2D_sadone-taizai").attr('style',$("#Live2D_sadone-taizai").attr('style')+"-webkit-mask-image: -webkit-gradient(linear, left top,left bottom, from(rgba(0,0,0,1)), to(rgba(0,0,0,0)));")
[endscript]

[live2d_show name="sadone-taizai" left=100 top=1000 time=1000]
[live2d_opacity name="sadone-taizai" opacity=0 time=0]
[kc_position name="sadone-taizai" x=0 y=0 r=0]
[live2d_opacity name="sadone-taizai" opacity=1 time=1000]
[kc_position name="sadone-taizai" x=11 y=-29 r=0]

[live2d_motion name = "sadone" filenm="m05.mtn"]

[live2d_expression name = "sadone" filenm="f03.exp.json" ]
[wait time=1000]

[kc_hukidasi str="哥哥哥哥哥哥哥哥\r哥哥哥哥哥哥哥哥\r哥哥哥哥哥哥哥哥" type="npc2"  name="sadone" paku=true]

[live2d_expression name = "haruka" filenm="f10.exp.json" ]
[wait time=1000]

[wait time=500]

[kc_playSound name="sado_oni" vol=1]

[kc_hukidasi str="歐逆醬" type="npc2"  name="sadone" paku=true fontSize="4em"]

[kc_hukidasi str="\r好驚人的鬥氣!" type="npc2"  name="haruka" paku=true x=55 ]

[live2d_expression name = "misaki" filenm="f05.exp.json" ]
[wait time=1000]

[kc_hukidasi str="肉竟然.....融合了!!" type="npc2"  name="misaki" paku=true x=0 ]

[live2d_expression name = "haruka" filenm="f02.exp.json" ]
[wait time=1000]

[live2d_expression name = "miki" filenm="f03.exp.json" ]
[wait time=1000]

[kc_hukidasi str="莎朵霓好厲害!!" type="npc1"  name="miki" paku=true x=60]

[live2d_expression name = "sadone" filenm="f04.exp.json" ]
[wait time=1000]

[kc_hukidasi str="嘿嘿~♪ \r這個是千導院開\r發的料理器喔" type="npc1"  name="sadone" paku=true]
[kc_hukidasi str="是莎朵霓跟主廚\r一起想出來的唷～" type="npc1"  name="sadone" paku=true]

[live2d_hide name = "sadone-taizai" time=1000 ]

[live2d_hide name = "sadone" time=1000 ]

[kc_stopSound]
[kc_playSound name="miki_theme" ]


;[live2d_opacity name="miki" opacity=1 time=1000]
[kc_position name="miki" x=0 y=0 r=0]

[kc_hukidasi str="接下來是我的\r醃蝦子喔!" type="npc1"  name="miki" paku=true]

[live2d_expression name = "misaki" filenm="f07.exp.json" ]
[wait time=1000]

[kc_hukidasi str="唔!_來了!" type="npc3"  name="misaki" x=0 ]

[live2d_expression name = "miki" filenm="f02.exp.json" ]
[wait time=1000]


[kc_hukidasi str="\r首先把蝦子洗乾淨~" type="npc1"  name="miki" paku=true]
[kc_hukidasi str="洗洗洗" type="nar" ]
[kc_hukidasi str="\r然後把背剪開~" type="npc1"  name="miki" paku=true]
[kc_hukidasi str="剪剪剪" type="nar"  name="miki" paku=true]
[kc_hukidasi str="\r接下來撒上鹽巴~" type="npc1"  name="miki" paku=true]
[kc_hukidasi str="土耳其撒鹽\r　　　　∴∴\r　　　_∴_∴∴" type="nar" ]

[live2d_expression name = "haruka" filenm="f04.exp.json" ]
[wait time=1000]

[kc_hukidasi str="哇~~看起來好好吃" type="npc1"  name="haruka" paku=true x=55 ]

[live2d_expression name = "misaki" filenm="f16.exp.json" ]
[wait time=1000]

[kc_hukidasi str="還是生的吧!!\r只有灑鹽而已喔!!" type="npc3"  name="misaki"  x=0]
[kc_hukidasi str="然後裝到袋子裡~" type="npc1"  name="miki" paku=true]
[kc_hukidasi str="完成!\r這樣烤的時候就會\r很~好吃喔!" type="npc1"  name="miki" paku=true]

[live2d_expression name = "misaki" filenm="f05.exp.json" ]
[wait time=1000]

[kc_hukidasi str="嗯?!\r這樣就結束了?!" type="npc2"  name="misaki" paku=true x=0 ]
[kc_hukidasi str="因為是烤蝦子嘛~" type="npc1"  name="miki" paku=true]
[kc_hukidasi str="嗯...?\r說的也是呢...?" type="npc1"  name="misaki" paku=true x=0 ]

[live2d_expression name = "haruka" filenm="f06.exp.json" ]
[wait time=1000]

[live2d_expression name = "misaki" filenm="f02.exp.json" ]
[wait time=1000]

[kc_hukidasi str="說起來老師到底去\r哪裡了呢?" type="npc1"  name="haruka" paku=true x=55 ]
[kc_hukidasi str="時間都快到了呢" type="npc1"  name="misaki" paku=true x=0 ]
[kc_hukidasi str="美紀，你們先把材\r料帶去吧。" type="npc1"  name="misaki" paku=true x=0 ]
[kc_hukidasi str="我留下來等老師跟\rf*f的兩位。" type="npc1" name="misaki" paku=true x=0]

[live2d_expression name = "haruka" filenm="f02.exp.json" ]
[wait time=1000]

[live2d_expression name = "miki" filenm="f01.exp.json" ]
[wait time=1000]

[kc_hukidasi str="\r那我們先走摟~" type="npc1"  name="haruka" paku=true x=55 ]

[live2d_hide name = "miki" time=1000 ]
[live2d_hide name = "haruka" time=1000 ]

[kc_hukidasi str="3分鐘後" type="nar" ]

[live2d_show name="kanon" left=100 top=0 time=1000]
[live2d_show name="siho" left=300 top=0 time=1000]

[kc_hukidasi str="哈摟~我們來摟" type="npc1" name="kanon" paku=true]
[kc_hukidasi str="喔，美紀他們已經\r先出發了。" type="npc1"  name="misaki" paku=true x=0]
[kc_hukidasi str="話說回來我們在玄\r關撿到一顆柚子呢" type="npc1"  name="siho" paku=true x=60]
[kc_hukidasi str="放在這個箱子裡吧\r老師家裡的柚子到\r處亂放呢..." type="npc1"  name="misaki" paku=true x=0]
[kc_hukidasi str="\r放...." type="nar" ]
[kc_hukidasi str="\r碰~" type="nar" ]

[kc_playSound name="bgm1" ]

[live2d_expression name = "kanon" filenm="f05.exp.json" ]
[live2d_expression name = "siho" filenm="f05.exp.json" ]
[wait time=1000]

[kc_hukidasi str="\r欸?!變態教_師?!" type="npc2"  name="kanon" paku=true]

[live2d_expression name = "siho" filenm="f08.exp.json" ]
[wait time=1000]

[kc_hukidasi str="啊啦~老師這次\r變成柚子了嗎?\r真是應景呢~" type="npc1"  name="siho" paku=true x=60]
[kc_hukidasi str="咦....?\r原來我不是一顆\r柚子嗎...?" type="usr1" ]

[live2d_expression name = "misaki" filenm="f08.exp.json" ]
[wait time=1000]

[kc_hukidasi str="...已經不會覺得\r驚訝了呢。既然到了\r那就快走吧。" type="npc1"  name="misaki" paku=true x=0]

[live2d_expression name = "kanon" filenm="f08.exp.json" ]
[wait time=1000]

[kc_hukidasi str="真是的，不要這樣\r汙辱柚子好嗎!" type="npc1"  name="kanon" paku=true]

[live2d_hide name = "misaki" time=1000 ]
[live2d_opacity name="siho" opacity=0 time=1000]
[live2d_opacity name="kanon" opacity=0 time=1000]

[live2d_hide name = "siho" time=1000 ]
[live2d_hide name = "kanon" time=1000 ]

[kc_hukidasi str="這次是柚子嗎...?\r我是不是史上最會\r變身的老師呢?" type="usr3" ]
[kc_hukidasi str="\r有西洽否？" type="usr3" ]

;guofunbu
[kc_showPic name="mumi" style="transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

;[kc_stopSound]
