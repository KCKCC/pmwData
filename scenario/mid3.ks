;prepare model 
[kc_prepareL2D name="subaru" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/subaru/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="asuha" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/asuha/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="yuri"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/yuri/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="nozomi" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/nozomi/m/models/" modelFileName="m.json" ]

;load model 
[live2d_new name="subaru"   width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="asuha"    width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="yuri"  width=1024 height=1024 left=-100 top=230 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="nozomi"    width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_comical_001.mp3"]
[kc_addSound name="nomi_theme"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_04.mp3"]
[kc_addSound name="asu_hiee"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/mid3/asu_hiee.mp3"]
[kc_addSound name="nozo_morai"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/mid3/nozo_morai.mp3"]
[kc_addSound name="nozo_ooo"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/mid3/nozo_ooo.mp3"]
[kc_addSound name="suba_uwa"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/mid3/suba_uwa.mp3"]
[kc_addSound name="yuri_ee"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/mid3/yuri_ee.mp3"]
[kc_addSound name="yuri_unn"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/mid3/yuri_unn.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="rengeroom" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_shoppingmall_01.png"]

;guofunbu
[kc_showPic name="mumi" style="transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

;show bg
[kc_showPic name="rengeroom" style="left: -13%;z-index: 1;height: 100%;", isBg="true"]
[kc_playSound name="nomi_theme" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500]


[live2d_show name="subaru" left=-3000 top=0 time=0]
[live2d_show name="asuha" left=-1000 top=0 time=0]
[live2d_show name="nozomi" left=3000 top=0 time=0]
[live2d_show name="yuri" left=1000 top=0 time=0]

[live2d_opacity name="subaru" opacity=0 time=0]
[live2d_opacity name="asuha" opacity=0 time=0]
[live2d_opacity name="nozomi" opacity=0 time=0]
[live2d_opacity name="yuri" opacity=0 time=0]

[kc_position name="subaru" x=-30 ]
[kc_position name="asuha"  x=-10 ]
[kc_position name="nozomi" x=10 ]
[kc_position name="yuri"   x=30 ]

[live2d_opacity name="subaru" opacity=1 time=1000]
[live2d_opacity name="asuha"  opacity=1 time=1000]
[live2d_opacity name="nozomi" opacity=1 time=1000]
[live2d_opacity name="yuri"   opacity=1 time=1000]


[live2d_expression name="subaru" filenm="f02.exp.json" ]
[live2d_expression name="asuha" filenm="f01.exp.json" ]
[live2d_expression name="nozomi" filenm="f02.exp.json" ]
[live2d_expression name="yuri" filenm="f08.exp.json" ]


[kc_hukidasi str="老師家附近的\r會員制美式大賣場" type="nar"]

[kc_playSound name="yuri_unn" vol=1]

[kc_hukidasi str="努唔唔。沒想到人\r會這麼多。" type="npc1"  name="yuri" paku=true x=60 ]
[kc_hukidasi str="要是有照時間來的\r話，就不會這樣了!" type="npc1"  name="yuri" paku=true x=60 ]
[kc_hukidasi str="都是因為望一直跑\r去看秋季特賣會。" type="npc1"  name="yuri" paku=true x=60 ]
[kc_hukidasi str="百合還不是被中秋\r怪獸吸引過去..." type="npc1"  name="nozomi" paku=true x=40]
[kc_hukidasi str="剛剛的飾品，好可\r愛呢..." type="npc3"  name="subaru" x=0]
[kc_hukidasi str="好了，不要在分心\r了。" type="npc1"  name="asuha" paku=true x=20]
[kc_hukidasi str="打起精神來，現在\r要專心買煙火！" type="npc1"  name="asuha" paku=true x=20]

[live2d_expression name = "yuri" filenm="f05.exp.json" ]
[wait time=1000]

[kc_hukidasi str="啊! \r好的，明日葉\r學姊！" type="npc1"  name="yuri" paku=true x=60 ]
[kc_hukidasi str="嘻嘻~買東西就交給\r望喵吧。明日喵！" type="npc1"  name="nozomi" paku=true x=40]

[live2d_expression name = "asuha" filenm="f05.exp.json" ]
[wait time=600]

[kc_hukidasi str="...！！" type="npc3"  name="asuha"  x=20]

[live2d_expression name = "yuri" filenm="f01.exp.json" ]
[wait time=600]

[live2d_expression name = "asuha" filenm="f04.exp.json" ]
[wait time=600]

[kc_hukidasi str="拜..拜託你們了喔。\r百合_望..望喵...." type="npc1"  name="asuha" paku=true x=20]

[live2d_expression name = "subaru" filenm="f01.exp.json" ]
[wait time=1000]

[live2d_expression name = "nozomi" filenm="f01.exp.json" ]
[wait time=1000]

[kc_hukidasi str="那麼就開始吧！" type="npc1"  name="nozomi" paku=true x=40]

[live2d_expression name = "asuha" filenm="f02.exp.json" ]
[wait time=600]

[kc_position name="nozomi" x=20 ]
[kc_hukidasi str="這個" type="npc1"  name="nozomi" paku=true x=50]
[kc_position name="nozomi" x=-30 ]
[kc_hukidasi str="這個\r這個" type="npc1"  name="nozomi" paku=true x=0]
[kc_position name="nozomi" x=10 ]
[kc_hukidasi str="這個\r這個\r這個" type="npc1"  name="nozomi" paku=true x=30]
[kc_position name="nozomi" x=30 ]
[kc_hukidasi str="\r那個那個" type="npc1"  name="nozomi" paku=true x=60]
[kc_position name="nozomi" x=-10 ]
[kc_hukidasi str="\r這個這個這個" type="npc1"  name="nozomi" paku=true x=20]
[kc_position name="nozomi" x=0 ]
[kc_hukidasi str="\r還有這個~~" type="npc1"  name="nozomi" paku=true ]

[live2d_expression name = "nozomi" filenm="f02.exp.json" ]
[wait time=1000]
[kc_playSound name="nozo_morai" ]
[kc_hukidasi str="摸啦咿~" type="npc2"  name="nozomi" paku=true fontSize="4em"]

[live2d_expression name = "asuha" filenm="f05.exp.json" ]
[wait time=1000]

[kc_hukidasi str="蹦__蹦_蹦__蹦__蹦_\r蹦蹦蹦蹦蹦蹦蹦蹦" type="nar"]
[kc_position name="nozomi" x=-30 ]

[kc_playSound name="asu_hiee" ]

[kc_hukidasi str="\r噫耶噫噫噫~" type="npc1"  name="asuha" paku=true x=20]

[kc_stopSound name="asu_hiee" ]

[iscript]
    $("#Live2D_yuri").css('z-index',13)
[endscript]

[live2d_expression name = "yuri" filenm="f02.exp.json" ]
[wait time=1000]

[kc_hukidasi str="\r唔!我也不能輸!!" type="npc1"  name="yuri" paku=true x=60 ]
[kc_hukidasi str="哈~~~" type="npc1"  name="yuri" paku=true x=60 ]
[kc_position name="yuri" x=-20 ]
[kc_hukidasi str="\r這個" type="npc1"  name="yuri" paku=true x=10 ]
[kc_position name="yuri" x=0 ]
[kc_hukidasi str="\r這個" type="npc1"  name="yuri" paku=true ]
[kc_position name="yuri" x=20 ]
[kc_hukidasi str="\r這個" type="npc1"  name="yuri" paku=true x=50 ]
[kc_position name="yuri" x=-30 ]

[live2d_expression name = "yuri" filenm="f03.exp.json" ]
[wait time=1000]

[kc_hukidasi str="\r還有這一整排~~" type="npc2"  name="yuri" paku=true x=0 ]
[kc_position name="yuri" x=30 ]
[wait time=1000]
[kc_position name="yuri" x=0 ]
[wait time=500]

[live2d_expression name = "nozomi" filenm="f03.exp.json" ]
[wait time=1000]

[kc_playSound name="nozo_ooo" ]

[kc_hukidasi str="喔~~~那邊好像有\r奇怪的商品呢!" type="npc2"  name="nozomi" paku=true x=0]

[kc_position name="nozomi" x=-50 ]
[live2d_hide name = "nozomi" time=1000 ]

[live2d_expression name = "yuri" filenm="f05.exp.json" ]
[wait time=1000]

[kc_playSound name="yuri_ee" ]

[kc_hukidasi str="望?!\r等一下~~~\r不能再逛了!!" type="npc2"  name="yuri" paku=true ]

[kc_hukidasi str="____蹦" type="nar" fontSize="4em"]

[kc_position name="yuri" x=-50 ]
[live2d_hide name = "yuri" time=1000 ]

[live2d_expression name = "subaru" filenm="f05.exp.json" ]
[wait time=1000]

[kc_playSound name="asu_hiee" time=1]

[kc_hukidasi str="啊...啊...我的腰.." type="npc1"  name="asuha" paku=true x=20]

[live2d_expression name = "asuha" filenm="f10.exp.json" ]
[wait time=1000]

[kc_position name="asuha" x=2 y=14 r=14 ]
[wait time=100]

[kc_playSound name="suba_uwa" ]

[kc_position name="subaru" x=12 ]

[kc_hukidasi str="明日葉學姊，\r你沒事吧?!" type="npc2"  name="subaru" paku=true x=60]

[kc_position name="subaru" x=22 ]

[kc_position name="asuha" x=0 y=0 r=0 ]

[live2d_expression name = "asuha" filenm="f10.exp.json" ]
[wait time=1000]

[kc_hukidasi str="嗯..嗯...我沒事..." type="npc1"  name="asuha" paku=true]

[live2d_expression name = "asuha" filenm="f04.exp.json" ]
[wait time=1000]

[kc_hukidasi str="謝謝妳，昴昴...." type="npc1"  name="asuha" paku=true]

[kc_hukidasi str="欸?!" type="npc2"  name="subaru" paku=true fontSize="2em" x=60]

[live2d_expression name = "asuha" filenm="f10.exp.json" ]
[wait time=1000]

[kc_hukidasi str="啊，不。\r我什麼都沒說！" type="npc2"  name="asuha" paku=true]
[kc_hukidasi str="買買好了就就\r去結帳吧！" type="npc2"  name="asuha" paku=true]
[kc_hukidasi str="\r大家都在等我們呢！" type="npc2"  name="asuha" paku=true]

[kc_position name="asuha" x=50 ]
[live2d_hide name = "asuha" time=1000 ]

[kc_hukidasi str="明日葉學姊，\r那邊是後門喔！" type="npc2"  name="subaru" paku=true x=50]

[kc_position name="subaru" x=50 ]
[live2d_hide name = "subaru" time=1000 ]

;guofunbu
[kc_showPic name="mumi" style="transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

;[kc_stopSound]
