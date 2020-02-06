[kc_loadAllExp ]

[kc_prepareL2D name="botan"   url="C:/Users/KC/Desktop/R/pmwData/pwmData/models\botan\" modelFileName="m.json" ]
[kc_prepareL2D name="kiku"    url="C:/Users/KC/Desktop/R/pmwData/pwmData/models\kiku\" modelFileName="m.json" ]
[kc_prepareL2D name="asuchu1" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models\asuchu\op_02\" modelFileName="m.json" ]
[kc_prepareL2D name="asuchu2" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models\asuchu\swm_02\" modelFileName="m.json" ]
[kc_prepareL2D name="asuchu3" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models\asuchu\yuka_01\" modelFileName="m.json" ]
[kc_prepareL2D name="mari"    url="C:/Users/KC/Desktop/R/pmwData/pwmData/models\mari\yuka_01\" modelFileName="m.json" ]
[kc_prepareL2D name="ituki"   url="C:/Users/KC/Desktop/R/pmwData/pwmData/models\ituki\swm_10\" modelFileName="m.json" ]
[kc_prepareL2D name="huran1"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/models\huran\u_09\" modelFileName="m.json" ]
[kc_prepareL2D name="huran2"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/models\huran\usagi_01\" modelFileName="m.json" ]

[live2d_new name="botan"   width=1024 height=1024 left=75% top=60% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="kiku"    width=1024 height=1024 left=25% top=60% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="asuchu3" width=1024 height=1024 left=80% top=63% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="asuchu2" width=1024 height=1024 left=80% top=63% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="asuchu1" width=1024 height=1024 left=80% top=63% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="mari"    width=1024 height=1024 left=25% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="ituki"   width=1024 height=1024 left=25% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="huran1"  width=1024 height=1024 left=75% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="huran2"  width=1024 height=1024 left=75% top=63% gltop=0.10  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="bgm"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/bgm_roulette_001.mp3"]
[kc_addSound name="makka"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/makka.mp3"]
[kc_addSound name="dalu"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/dalu.mp3"]
[kc_addSound name="asu_aa"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/asu_aa.mp3"]
[kc_addSound name="huran_haha"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/huran_haha.mp3"]
[kc_addSound name="ituki_haha"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/ituki_haha.mp3"]
[kc_addSound name="mari_wa"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/mari_wa.mp3"]
[kc_addSound name="mari_ahaha"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/mari_ahaha.mp3"]
[kc_addSound name="se_touch_001"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/se_touch_001.mp3"]
[kc_addSound name="se_touch_001_d"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/nomi/se_touch_001.mp3"]

;pic
[kc_addPic name="mumi"      url="data/others/kc/pic/mumi.png"]
[kc_addPic name="rengeroom" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_beach_03_1.png"]
[kc_addPic name="stage"     url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_rouge.png"]
[kc_addPic name="nusun"     url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/nusun.png"]

;guofunbu
[kc_showPic name="mumi" style="transition: .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

;show bg
[kc_showPic name="stage" style="left: -13%;z-index: 2;height: 100%;transition: 1s;", isBg="true"]
[kc_playSound name="bgm" loop=true vol=0.4]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500]

[kc_hukidasi str="老師家附近的神樹\r峰里民中秋聯歡晚\r會會場" type="nar" ]

;[jump storage=online.ks target=*test]

[live2d_show name="ituki" time=1000]
[live2d_show name="huran1" time=1000]
[kc_exp name = "ituki"   expName="tuki_f03" ]
[wait time=500]
[kc_setPart name="ituki" partName="PARTS_01_GLASSES_001" val=0]
[kc_exp name = "huran1"   expName="hura_f02" ]
[kc_L2DsetParam name="huran1" paramName="PARAM_CHEEK" value=3]
[live2d_motion name = "ituki" filenm="m05.mtn" ]
[kc_playSound name="ituki_haha" vol=0.7]
[kc_hukidasi str="哇~~~~\r大海~~~\r我來了~~~~" type="npc1"  name="ituki" paku=true ]

[kc_position name="ituki" x=-30 r=0]

[kc_hukidasi str="八雲老師!!\r這個時候玩水會\r感冒的喔!" type="usr2" ]

[live2d_hide name = "ituki" time=0 ]

[kc_hukidasi str="等我一下辣~~~!\r樹嗚嗚嗚!!" type="npc2"  name="huran1" paku=true ]
[kc_hukidasi str="逼逼逼逼逼逼-\r-超˙變年輕光線-\r-逼逼逼逼逼逼" type="nar" ]

[live2d_hide name = "huran1" time=1000 ]
[live2d_show name="huran2" time=1000]
[kc_exp name = "huran2"   expName="hura_f02" ]
[wait time=600]
[kc_L2DsetParam name="huran2" paramName="PARAM_CHEEK" value=2]
[wait time=600]

[kc_hukidasi str="呀哈~!\r姆咪姆咪心動動~" type="npc1"  name="huran2" paku=true ]
[kc_hukidasi str="\r蹦~" type="npc1"  name="huran2" paku=true ]
[kc_position name="huran2"   x=50 r=0]
[kc_playSound name="huran_haha" vol=1]
[kc_hukidasi str="\r蹦~" type="npc1"  name="huran2" paku=true ]
[kc_position name="huran2"   x=20 r=0]
[kc_hukidasi str="\r姆咪~~!" type="npc1"  name="huran2" paku=true ]
[kc_position name="huran2"   x=0 r=0]
[live2d_hide name = "huran2" time=1000 ]

[kc_hukidasi str="連御劍老師都瘋了...\r要是我有把美紀的\r烤肉藏好就好了..." type="usr1" ]
[kc_hukidasi str="快樂3000倍的\r孜然粉，真是太\r可怕了...." type="usr3" ]

[live2d_show name="asuchu1" time=1000]
[kc_exp name = "asuchu1"   expName="achu_f08" ]
[wait time=1000]]

[kc_hukidasi str="明日葉....\r妳..沒事吧...?" type="usr1" ]
[kc_hukidasi str="啊,是的。\r只是也照到御劍老師\r的變年輕光束了.." type="npc1" name="asuchu1" paku=true ]
[kc_hukidasi str="不過....\r小時候的明日葉....\r真可愛呢!" type="usr1" ]
[kc_exp name = "asuchu1"   expName="achu_f04" ]
[wait time=1000]]
[kc_hukidasi str="!!...老師!!\r請不要開玩笑了!!" type="npc2" name="asuchu1" paku=true ]

[live2d_show name="mari" time=1000]
[kc_exp name = "mari"   expName="mari_f03" ]

[wait time=1000]
[live2d_show name="asuchu2" time=0]
[live2d_show name="asuchu3" time=0]
[kc_exp name = "asuchu2"   expName="achu_f04" ]
[kc_exp name = "asuchu3"   expName="achu_f04" ]

[iscript]
    $("#Live2D_asuchu2").css('transition-duration','1000ms')
    $("#Live2D_asuchu3").css('transition-duration','1000ms')
[endscript]

[kc_position name="asuchu2" x=65 ]
[wait time=10]
[kc_position name="asuchu3" x=50 ]
[wait time=1000]
[live2d_motion name = "mari" filenm="m04.mtn" ]
[kc_playSound name="mari_wa" vol=1]
[kc_hukidasi str="哇啊啊~\r小明有好多個喔~~~" type="npc2" name="mari" paku=true ]
[wait time=500]
[live2d_motion name = "mari" filenm="m05.mtn" ]
[kc_hukidasi str="\r嘻嘻~~摸摸頭~~~" type="npc1" name="mari" paku=true ]
[kc_playSound name="se_touch_001" loop=true]
[wait time=600]
[kc_playSound name="se_touch_001_d" loop=true]
[kc_hukidasi str="摸摸💖💖\r摸摸摸摸💖💖" type="nar" ]
[kc_stopSound name="se_touch_001"]
[kc_stopSound name="se_touch_001_d"]
[kc_playSound name="mari_ahaha" vol=1]
[kc_hukidasi str="\r抱抱~~~嘻嘻~~~" type="npc1" name="mari" paku=true ]

[iscript]
    kc.setupMumi("asuchu2");
    kc.cloneToMumi("asuchu2");
    kc.setupMumi("asuchu3");
    kc.cloneToMumi("asuchu3");
    mumi1=kc.mumiPaku("asuchu1");
    mumi2=kc.mumiPaku("asuchu2");
    mumi3=kc.mumiPaku("asuchu3");
[endscript]

[kc_hukidasi str="茉梨學姊..!!\r請清醒一點，\r不要輸給快樂了!!" type="npc2" ]

[iscript]
    kc.shutupmumi(mumi1);
    kc.shutupmumi(mumi2);
    kc.shutupmumi(mumi3);
[endscript]

[kc_hukidasi str="姆咪嘻嘻\r抱抱抱抱\r💖💖💖💖" type="nar" ]
[kc_playSound name="asu_aa" vol=1]
[kc_hukidasi str="啊...啊...\r不能抱那邊啦!!\r嗚嗚...!!" type="npc1" name="asuchu1" paku=true ]
[kc_hukidasi str="\r盯----------" type="usr4" ]
[kc_hukidasi str="老..老師!\r我我我去找醫生!!" type="npc1" name="asuchu1" paku=true ]

[kc_position name="asuchu1"   x=-30 r=0]
[kc_position name="asuchu2"   x=-30 r=0]
[kc_position name="asuchu3"   x=-30 r=0]
[wait time=1000]
[live2d_hide name = "asuchu1" time=0 ]
[live2d_hide name = "asuchu2" time=0 ]
[live2d_hide name = "asuchu3" time=0 ]

[kc_hukidasi str="啊...!好的，\r麻煩你了，小明!" type="usr1" ]
[kc_hukidasi str="吼~~\r不要跑嘛~💖\r小明~~~" type="npc1" name="mari" paku=true ]
[kc_position name="mari"   x=-30 r=0]
[kc_hukidasi str="真是糟糕...\r畫面太糟糕...\r都看出神了_" type="usr3" ]

[live2d_hide name = "mari" time=50 ]

;*test

[live2d_show name="botan" time=1000]
[live2d_show name="kiku" time=1000]
[kc_exp name = "botan"   expName="bota_f02" ]
[kc_L2DsetParam name="botan" paramName="PARAM_CHEEK" value=2]
[kc_exp name = "kiku"   expName="bota_f02" ]
[kc_L2DsetParam name="kiku" paramName="PARAM_CHEEK" value=2]

[wait time=600]

;[jump storage=online.ks target=*end]

[kc_hukidasi str="喂喂~\r那邊的小哥\r在拍了嘛~~?!" type="npc1" name="botan" paku=true ]
[kc_hukidasi str="在拍了嘛~~\r在拍了嘛~~\r哈哈?" type="npc1" name="kiku" paku=true ]
[kc_hukidasi str="理事長...!\r是的是的\r已經在拍了!!" type="usr1" ]
[kc_hukidasi str="哈~~\r我才不是理事長呢!!\r哈哈!!" type="npc2" name="botan" paku=true ]
[kc_hukidasi str="呵呵~\r我也不是理事長唷~!\r嘻嘻" type="npc2" name="kiku" paku=true ]
[kc_hukidasi str="唔...\r完全分不出來..." type="usr1" ]
[kc_hukidasi str="吃了美紀的蝦子，\r吃了美紀的烤肉還\r被變年輕光線射到" type="usr3" ]
[kc_hukidasi str="狀況果然已經變得\r相當的...雅敗!" type="usr3" ]

[iscript]
    chas=[{"chaName":"botan"},{"chaName":"kiku" ,"paramName":"PARAM_MOUTH_OPEN_Y"}];
    kc.mumisayit($("#dalu").find('audio')[0],chas);
    $("#pakuContainer").find('audio')[0].currentTime=2
    $("#pakuContainer").find('audio')[0].play();
[endscript]

[kc_hukidasi str="那麼...啊...啊~~~~" type="npc1" name="botan" ]
[kc_stopSound name="bgm"]


[kc_hukidasi str="這個旋律是....!!" type="usr1" ]
[wait time=5000]
[kc_hukidasi str="\r突然覺得毛骨悚然!" type="usr1" ]
[wait time=6000]
[kc_hukidasi str="哦哦...\r多麼高亢的歌聲...." type="usr1" ]
[wait time=5000]
[kc_hukidasi str="等等等等!!\r理事長們不是要拍\r歌唱影片吧!" type="usr2" ]
[kc_hukidasi str="不是有事要對轉生\r失敗的老師們說嘛?" type="usr1" ]

[iscript]
    kc.mumidamare();
[endscript]


[kc_hukidasi str="呵呵...對呢!!\r要說什麼來著...?" type="npc1" name="kiku" paku=true ]
[kc_hukidasi str="對了!\r星守☆機會大挑戰\r喔!!" type="npc1" name="botan" paku=true ]
[kc_hukidasi str="哦~~~\r大挑戰~~~~\r耶~~~~" type="npc1" name="kiku" paku=true ]

[iscript]
    chas=[{"chaName":"botan"},{"chaName":"kiku" ,"paramName":"PARAM_MOUTH_OPEN_Y"}];
    kc.mumisayit($("#dalu").find('audio')[0],chas);
    $("#pakuContainer").find('audio')[0].currentTime=2
    $("#pakuContainer").find('audio')[0].play();
[endscript]

[kc_hukidasi str="那麼...啊...啊~~~~" type="npc1" name="kiku" ]

[iscript]
    kc.mumidamare();
[endscript]
[kc_playSound name="bgm" vol=0.4 loop=true]
[kc_hukidasi str="理事長們請等一下!!\r不詳細說明一下嗎?!" type="usr2" ]
[kc_hukidasi str="詳細去按EVENT\r自己看辣~~\r你很煩喔!!" type="npc1" name="kiku" paku=true ]
[kc_hukidasi str="很煩喔~~\r很煩喔~~\r哈哈~~" type="npc1" name="botan" paku=true ]
[kc_hukidasi str="嗚嗚...\r只好另外解釋了...\r內容到底是..?" type="usr3" ]
[kc_hukidasi str="欸欸~\r你在發什麼呆啊~~" type="npc1" name="botan" paku=true ]
[kc_hukidasi str="罰你先唱一首喔!!!\r拍手~拍手~" type="npc1" name="kiku" paku=true ]
[kc_hukidasi str="耶~~~\r唱!_唱!_唱!_" type="npc1" name="botan" paku=true ]
[kc_hukidasi str="欸欸?!\r我不會唱歌啦!!" type="usr2" ]
[kc_hukidasi str="囉嗦!!\r再不唱我要親你了喔!!!" type="npc1" name="botan" paku=true ]
[kc_hukidasi str="要親了喔~~\r要親了喔~~!!\r啾啾~~~💗" type="npc1" name="kiku" paku=true ]
[kc_hukidasi str="\r嚇噫噫噫噫噫!!!" type="usr2" ]
[kc_stopSound name="bgm" ]
[kc_playSound name="makka" vol=1 ]
[kc_hukidasi str="啊....欸...\r喔...喔...喔!\r窩喔喔窩喔!" type="usr1" txtInterval=100]

[kc_hukidasi str="\r窩喔喔窩喔!" type="usr1" ]

;guofunbu
[kc_showPic name="mumi" style="transition: opacity .5s; background-color:white;height:100%;"  isBg="true"]
[wait time=1000]

*end