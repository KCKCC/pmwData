;dai shu gou mumi!
[kc_prepareL2D name="anko"   url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/anko/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="asuha"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/asuha/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="haruka" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/haruka/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="hinata" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/hinata/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="kaede"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/kaede/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="kanon"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/kanon/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="kokomi" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/kokomi/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="kurumi" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/kurumi/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="miki"   url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/miki/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="misaki" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/misaki/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="mumi"   url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/mumi/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="nozomi" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/nozomi/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="renge"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/renge/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="sadone" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/sadone/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="sakura" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/sakura/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="siho"   url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/siho/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="subaru" url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/subaru/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="urara"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/urara/m/models/" modelFileName="m.json" ]
[kc_prepareL2D name="yuri"   url="C:/Users/KC/Desktop/R/pmwData/pwmData/models/yuri/m/models/" modelFileName="m.json" ]

[live2d_new name="kokomi"  width=1024 height=1024  left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="urara"   width=1024 height=1024  left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="kurumi"   width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="miki"    width=1024 height=1024  left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="hinata"   width=1024 height=1024 left=-100 top=250 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="sakura"  width=1024 height=1024  left=-100 top=250 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="kanon"  width=1024 height=1024   left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="misaki"  width=1024 height=1024  left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="siho"  width=1024 height=1024    left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="kaede"    width=1024 height=1024 left=-100 top=230 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="renge"    width=1024 height=1024 left=-100 top=200 gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="mumi"    width=1024 height=1024  left=-100 top=250 gltop=0.25  lip=true glscale=1.85 ]


;[live2d_show name="sakura"   ]
;[live2d_show name="mumi"  ]
;


;preload assets
;sound
[kc_addSound name="bgm"  url="C:/Users/KC/Desktop/R/pmwData/pwmData/sound/mid4/bgm_anime30_holiday.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="rengeroom"    url="C:/Users/KC/Desktop/R/pmwData/pwmData/pic/bg_beach_03_1.png"]
[kc_addPic name="stage"    url="C:/Users/KC/Desktop/R/pmwData/pwmData/pic/bg_rouge.png"]

;guofunbu
[kc_showPic name="mumi" style="transition: .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]



;show bg
[kc_showPic name="rengeroom" style="left: -13%;z-index: 2;height: 100%;transition: 1s;", isBg="true"]
[kc_playSound name="bgm" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500]




[kc_hukidasi str="老師家附近的\r千導院私人海灘" type="nar"]

[live2d_show name="kokomi" left=-200 top=0 time=1000]
[live2d_expression name = "kokomi" filenm="f02.exp.json" ]
[live2d_show name="urara" left=200 top=0 time=1000]
[live2d_expression name = "urara" filenm="f02.exp.json" ]

[kc_hukidasi str="嘿咻...\r嘿咻..." type="npc1"  name="kokomi" paku=true]
[kc_hukidasi str="這樣桌子跟椅子就\r都擺好了呢~" type="npc1"  name="kokomi" paku=true]
[kc_hukidasi str="呼~\r烏拉拉快要累死了~" type="npc1"  name="urara" paku=true]
[kc_hukidasi str="因為...\r烏拉拉醬穿著\r古裝嘛...?" type="npc1"  name="kokomi" paku=true]
[kc_hukidasi str="雖然很難啟齒...\r為什麼要穿古裝呢?" type="npc1"  name="kokomi" paku=true]
[kc_hukidasi str="這才不是古裝，\r是嫦娥喔!" type="npc1"  name="urara" paku=true]
[kc_hukidasi str="欸欸?!" type="npc1"  name="kokomi" paku=true]
[kc_hukidasi str="因為明天這邊要\r舉辦一年一度的..." type="npc1"  name="urara" paku=true]
[kc_hukidasi str="神樹峰\r里民中秋聯歡晚會\r暨" type="npc1"  name="urara" paku=true]
[kc_hukidasi str="神樹峰\r最佳嫦娥決定賽!!" type="npc1"  name="urara" paku=true]
[kc_hukidasi str="所以烏拉拉順便\r來彩排喔~" type="npc1"  name="urara" paku=true]
[kc_hukidasi str="嗚欸~~?!\r這到底要比什麼?!" type="npc3"  name="kokomi" ]

[kc_hukidasi str="\r嗚咿~~~" type="nar"]


[kc_hukidasi str="喔~舞台飛過來了~" type="npc1"  name="urara" paku=true]
[kc_hukidasi str="歐來~\r_____\r歐來~" type="npc1"  name="urara" paku=true]

[kc_hukidasi str="\r咚---沙----" type="nar"]
[kc_hukidasi str="\r咿嗚------" type="nar"]
[kc_hukidasi str="那烏拉拉就先去\r看看舞台摟~★" type="npc1"  name="urara" paku=true]

[kc_showPic name="stage" style="left: -13%;z-index: 1;height: 100%;", isBg="true"]
[kc_cssPic name="rengeroom" style="transform: translate(100%,0%); opacity: 0;"  isBg="true"]
[live2d_hide name = "kokomi" time=1000 ]

[live2d_show name="kurumi" left=-200 top=0 time=1000]
[live2d_expression name = "kurumi" filenm="f02.exp.json" ]

[kc_hukidasi str="欸欸?!\r胡胡學姊怎麼\r在這裡?" type="npc1"  name="urara" paku=true]
[kc_hukidasi str="啊。烏拉拉。" type="npc1"  name="kurumi" paku=true]
[kc_hukidasi str="因為不小心被埋在\r蔬菜裡，就被一起\r載過來了..." type="npc1"  name="kurumi" paku=true]
[kc_hukidasi str="難怪剛剛飛行器\r感覺怪怪的..." type="npc1"  name="urara" paku=true]
[kc_hukidasi str="哦！\r舞台已經送來了嘛。" type="usr1" ]

[kc_cssPic name="rengeroom" style="transform: translate(0%,0%); opacity: 1;"  isBg="true"]

[kc_hukidasi str="\r老師~~~" type="npc1"  name="urara" paku=true]
[kc_hukidasi str="你看你看，烏拉拉\r是嫦娥喔~" type="npc1"  name="urara" paku=true]
[kc_hukidasi str="嗚哦。\r看起來好熱..." type="usr1" ]
[kc_hukidasi str="對了，這裡有很多\r冰涼的柚子喔" type="usr1" ]
[kc_hukidasi str="先來吃一些吧~" type="usr1" ]
[kc_hukidasi str="哇~~~謝謝老師。" type="npc2"  name="urara" paku=true]
[kc_hukidasi str="老師，\r有柚子的香味呢~" type="npc1"  name="kurumi" paku=true]
[kc_hukidasi str="！！\r哈哈，應該是剛剛\r碰到的關係吧~" type="usr2" ]

[live2d_hide name = "urara" time=1000 ]
[live2d_hide name = "kurumi" time=1000 ]

[live2d_show name="miki" left=0 top=0 time=1000]
[live2d_expression name = "miki" filenm="f02.exp.json" ]

[kc_hukidasi str="那我來切柚子吧！" type="npc1"  name="miki" paku=true]
[kc_hukidasi str="\r欸呀~~~~" type="npc1"  name="miki" paku=true]
[kc_hukidasi str="星月式快速劍\r_____星月式快速劍\r__星月式快速劍" type="npc1"  name="miki" paku=true]
[kc_hukidasi str="哦哦哦! 柚子在跳舞!" type="usr2" ]

[live2d_show name="hinata" left=0 top=0 time=1000]
[live2d_expression name = "hinata" filenm="f02.exp.json" ]

[kc_hukidasi str="哇~~ 日向也要切~~~" type="npc1"  name="hinata" paku=true]
[kc_hukidasi str="欸~都\r欸~~~都" type="npc1"  name="hinata" paku=true]
[kc_hukidasi str="\r日向手刀!" type="npc2"  name="hinata" paku=true]
[kc_hukidasi str="\r柚子變少了?!" type="usr3" ]

[live2d_show name="sakura" left=200 top=0 time=1000]
[live2d_expression name = "sakura" filenm="f02.exp.json" ]

[kc_hukidasi str="\r櫻花手刀!" type="npc1"  name="sakura" paku=true]

[live2d_hide name = "hinata" time=1000 ]
[live2d_hide name = "sakura" time=1000 ]

[kc_hukidasi str="那麼開動吧~" type="usr1" ]
[kc_hukidasi str="啊~\r_啊~~\r__啊....." type="usr1" ]

[live2d_hide name = "miki" time=1000 ]

;
[live2d_show name="misaki" left=-3000 top=0 time=0]
[live2d_show name="siho" left=-1000 top=0 time=0]
[live2d_show name="kanon" left=3000 top=0 time=0]
[wait time=500]

[live2d_opacity name="misaki" opacity=0 time=0]
[live2d_opacity name="siho" opacity=0 time=0]
[live2d_opacity name="kanon" opacity=0 time=0]


[kc_position name="misaki" x=-30 ]
[kc_position name="siho"  x=0 ]
[kc_position name="kanon" x=30 ]


[live2d_opacity name="misaki" opacity=1 time=1000]
[live2d_opacity name="siho"  opacity=1 time=1000]
[live2d_opacity name="kanon" opacity=1 time=1000]
[wait time=1500]
[kc_hukidasi str="心理上有點\r抗拒呢...." type="usr3" ]
[live2d_opacity name="misaki" opacity=0 time=1000]
[live2d_opacity name="siho"  opacity=0 time=1000]
[live2d_opacity name="kanon" opacity=0 time=1000]


[kc_hukidasi str="\r說起來楓還沒到嘛?" type="usr1" ]
[kc_hukidasi str="嗡嗡嗡嗡嗡嗡" type="nar" ]

[live2d_show name="kaede" left=0 top=0 time=1000]
[live2d_expression name = "kaede" filenm="f02.exp.json" ]

[kc_hukidasi str="啊啦，大家都\r到齊了呢。" type="npc1"  name="kaede" paku=true]
[kc_hukidasi str="因為剛剛發現\r新的颱風形成。" type="npc1"  name="kaede" paku=true]
[kc_hukidasi str="把它炸掉花了\r一點時間呢~" type="npc1"  name="kaede" paku=true]
[kc_hukidasi str="最近颱風很多呢，\r辛苦妳了。" type="usr1" ]
[kc_hukidasi str="保護節慶氣氛也是\r千導院家的使命!" type="npc1"  name="kaede" paku=true]
[kc_hukidasi str="我還帶了移動式的\r天文台唷!" type="npc1"  name="kaede" paku=true]

[live2d_show name="renge" left=200 top=0 time=1000]
[live2d_expression name = "renge" filenm="f02.exp.json" ]
[live2d_show name="mumi" left=-200 top=0 time=1000]
[live2d_expression name = "mumi" filenm="f02.exp.json" ]

[kc_hukidasi str="哇~❤\r好大~" type="npc1"  name="renge" paku=true]
[kc_hukidasi str="搞不好可以看到\r月亮上面的女孩子呢\r~❤" type="npc1"  name="renge" paku=true]
[kc_hukidasi str="蜜蜜要找月亮\r上面的兔子~~" type="npc1"  name="mumi" paku=true]

[live2d_hide name = "renge" time=1000 ]
[live2d_hide name = "mumi" time=1000 ]
[live2d_hide name = "kaede" time=1000 ]

[live2d_show name="miki" left=0 top=0 time=1000]

[kc_hukidasi str="大家都到齊了~\r那麼~" type="npc1"  name="miki" paku=true]


[kc_hukidasi str="中秋節快樂~" type="npc2" fontSize="2em"]
