; ;符號為註解 不會執行
;載入所有預設表情 
[kc_loadAllExp]

;載入音樂
[kc_addSound name="s1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sadTheImoto/s1.mp3"]
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_16b.mp3"]
;撥放音樂
[kc_playSound name="bgm1" loop=true ]

;載入圖片
[kc_addPic name="jyu" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_ramen_01.png"]
;顯示圖片
[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]

;指定LIVE2D 位置
[kc_prepareL2D name="sad" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/sadone/twxmas_02/" modelFileName="m.json" ]
;載入LIVE2D
[live2d_new name="sad" width=1024 height=1024 left=50% top=60% gltop=0.25  lip=true glscale=1.85 ]
;顯示LIVE2D
[live2d_show name="sad" time=1000 ]

;指定表情
[kc_exp name="sad" expName="sane_f02" ]
;講話 type為框框種類 paku 嘴巴要不要動
[kc_hukidasi str="\rお兄ちゃん～" type="npc1" name="sad" paku="true"]

;等待500毫秒 休息一下喝口水上個廁所
[wait time=500]
;講話
[kc_sayit name="sad" sound="s1"]
;等她講完>_@
[wait time=5000]

;搭配hukidasi 拿掉paku
[kc_sayit name="sad" sound="s1"]
[kc_hukidasi str="\rお兄ちゃん～" type="npc1" name="sad"]

;做動作 
[live2d_motion name = "sad" filenm="m04.mtn" ]
;等她做完
[wait time=5000]
;做動作LOOP
[live2d_motion name = "sad" filenm="m02.mtn" idle="ON" ]

[kc_setPart name="sad" partName="PARTS_01_EXTENSION_XMAS_02" val=0]