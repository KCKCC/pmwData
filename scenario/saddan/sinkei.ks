

[kc_loadAllExp ]
;prepare model 
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
;[kc_prepareL2D name="2p" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/kokomi/choco_02/" modelFileName="m.json" ]
[kc_prepareL2D name="2p" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/sadone/yuki_01/" modelFileName="m.json" ]

;load model 
;[live2d_new name="1p"    width=1024 height=1024 left=33% top=55% gltop=0  lip=true glscale=1.85 ]
[live2d_new name="2p"   width=1024 height=1024 left=50% top=60% gltop=0.25  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_16b.mp3"]
[kc_addSound name="28"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_028.mp3"]
[kc_addSound name="123"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_123.mp3"]
[kc_addSound name="126"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_126.mp3"]
[kc_addSound name="601"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_601.mp3"]
[kc_addSound name="602"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_602.mp3"]
[kc_addSound name="603"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_603.mp3"]
[kc_addSound name="604"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_604.mp3"]
[kc_addSound name="605"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_605.mp3"]
[kc_addSound name="606"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_606.mp3"]
[kc_addSound name="607"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_607.mp3"]
[kc_addSound name="608"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_608.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_ramen_01.png"]

;---------------------------------------


[kc_showPic name="mumi" style="z-index:100; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

[live2d_show name="2p" time=1000 ]
[kc_position name="2p" xs=1.1 ys=1.1 ]
[kc_exp name="2p" expName="sane_f02" ]
;[live2d_motion name = "2p" filenm="m04.mtn" idle="ON" ]

;show bg
[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]
[kc_playSound name="bgm1" loop=true ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500 ]

[kc_hukidasi str="\r_2019/12/06" type="nar"]

[kc_hukidasi str="今日はサドネの誕生日だから。。" type="npc1" name="2p" paku=true ]
[kc_hukidasi str="おにいちゃんと遊びたいな～" type="npc1" name="2p" paku=true ]
[kc_hukidasi str="\rいい～？" type="npc1" name="2p" paku=true ]
[kc_hukidasi str="パーティーまではまだ時間あるけど、どうする？" type="usr3"]


[iscript]
kc.winEvents = [{ name: 'win1', weight: 1 }, { name: 'win2', weight: 1 }, { name: 'win3', weight: 1 }];
kc.loseEvents = [{ name: 'lose1', weight: 1 }, { name: 'lose2', weight: 1 }, { name: 'lose3', weight: 1 }];
kc.drawEvents = [{ name: 'draw1', weight: 1 }, { name: 'draw2', weight: 1 }, { name: 'draw3', weight: 1 }];

kc.scoreEvents = [{ name: 'score0', weight: 10 }, { name: 'score1', weight: 2 }, { name: 'score2', weight: 2 }, { name: 'score3', weight: 2 }, { name: 'score4', weight: 2 },{ name: 'score5', weight: 1 }];
kc.usrScoreEvents = [{ name: 'usrScore0', weight: 10 }, { name: 'usrScore1', weight: 2 }, { name: 'usrScore2', weight: 2 }, { name: 'usrScore3', weight: 2 }];
kc.noScoreEvents = [{ name: 'suka1', weight: 1 }, { name: 'suka2', weight: 1 }, { name: 'suka3', weight: 1 }];
[endscript]

[iscript]
kc.time2goparty=2;
kc.sinkeiLevel=(normal,hard,end)=>{
    $("#renderCanvas").hide();
    go2normal = kc.hukidasi.create(normal, "usr4",null,'50','40',63,666, null, '30px');
    go2hard = kc.hukidasi.create(hard, "usr4",null,'50','60',63,666, null, '30px');
    $("#"+go2normal).click(()=>{$("#renderCanvas").show();kc.hukidasi.clean();TYRANO.kag.rider.cutTyranoScript("[jump storage=online.ks target=*normal]")});
    $("#"+go2hard).click(()=>{$("#renderCanvas").show();kc.hukidasi.clean();TYRANO.kag.rider.cutTyranoScript("[jump storage=online.ks target=*hard]")});
    if(end){
        go2end = kc.hukidasi.create(end, "usr4",null,'50','80',63,666, null, '30px');
        $("#"+go2end).click(()=>{$("#renderCanvas").show();kc.hukidasi.clean();TYRANO.kag.rider.cutTyranoScript("[jump storage=online.ks target=*party]")});
    }
}
kc.sinkeiLevel('\r　　いいよ','\r　かかってこい、サドネ！');
[endscript]
[s]

*repeat
[kc_hukidasi str="\rもう一回？" type="usr3"]
[iscript]
kc.time2goparty--;
if(kc.time2goparty>0)
kc.sinkeiLevel('\r　__ノーマル','\r　　ハード');
else
kc.sinkeiLevel('\r　__ノーマル','\r　　ハード','\rパーティーの時間だよ！');
[endscript]
[s]

*normal
[kc_hukidasi str="\r　　いいよ" type="usr1"]
[kc_exp name="2p" expName="sane_f11" ]
[kc_hukidasi str="\rへへ～_サドネ負けないよ～" type="npc1" name="2p" paku=true ]

*sadonepunpun
[iscript]
kc.setupGame(4,3);
[endscript]
[jump storage=online.ks target=*end]

*hard
[kc_hukidasi str="\r　かかってこい、サドネ！" type="usr2"]
[kc_exp name="2p" expName="sane_f03" ]
[kc_hukidasi str="\rかかってこい～おにいちゃん！" type="npc2" name="2p" paku=true ]
[iscript]
kc.setupGame(6,4);
[endscript]
[jump storage=online.ks target=*end]

*party
[kc_hukidasi str="パーティーの時間だよ～" type="usr1"]
[kc_exp name="2p" expName="sane_f04" ]
[kc_hukidasi str="あ、サドネパーティーいくの！" type="npc1" name="2p" paku=true ]
[kc_hukidasi str="おにいちゃんはやく！" type="npc2" name="2p" paku=true ]
[live2d_hide name = "2p" time=1000 ]
[kc_hukidasi str="サドネ！\r待って～～" type="usr2"]

[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

[jump storage=online.ks target=*end]

@jump target=*win1

;SCOREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
*score0
[kc_exp name="2p" expName="sane_f11" ]
@jump target=*end

*score1
[kc_exp name="2p" expName="sane_f03" ]
[kc_sayit name="2p" sound="601"]
@jump target=*end

*score2
[kc_exp name="2p" expName="sane_f03" ]
[kc_sayit name="2p" sound="602"]
@jump target=*end

*score3
[kc_exp name="2p" expName="sane_f03" ]
[kc_sayit name="2p" sound="605"]
@jump target=*end

*score4
[kc_exp name="2p" expName="sane_f03" ]
[kc_sayit name="2p" sound="606"]
@jump target=*end

*score5
[kc_exp name="2p" expName="sane_f03" ]
[kc_sayit name="2p" sound="126"]
@jump target=*end

;USRSCOREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
*usrScore0
[kc_exp name="2p" expName="sane_f06" ]
@jump target=*end

*usrScore1
[kc_exp name="2p" expName="saku_f10" ]
[kc_sayit name="2p" sound="603"]
@jump target=*end

*usrScore2
[kc_exp name="2p" expName="sane_f04" ]
[kc_sayit name="2p" sound="604"]
@jump target=*end

*usrScore3
[kc_exp name="2p" expName="sane_f04" ]
[kc_sayit name="2p" sound="608"]
@jump target=*end

;SUKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
*suka1
[kc_exp name="2p" expName="sane_f07" ]
[kc_sayit name="2p" sound="28"]
@jump target=*end

*suka2
[kc_exp name="2p" expName="sane_f05" ]
[kc_sayit name="2p" sound="123"]
@jump target=*end

*suka3
;[kc_sayit name="2p" sound="607"]
@jump target=*end

;WINNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN
*win1
[live2d_motion name = "2p" filenm="m05.mtn" ]
[kc_exp name="2p" expName="sane_f04" ]
[kc_hukidasi str="サドネ、負けた～" type=" npc1"  name="2p" paku=true ]
@jump target=*repeat

*win2
[live2d_motion name = "2p" filenm="m04.mtn" ]
[kc_exp name="2p" expName="sane_f03" ]
[kc_hukidasi str="おにいちゃんすごい～～" type=" npc1"  name="2p" paku=true  ]
@jump target=*repeat

*win3
[live2d_motion name = "2p" filenm="m05.mtn" ]
[kc_exp name="2p" expName="hita_f06" ]
[kc_hukidasi str="んん～！　もう一回！" type=" npc2"  name="2p" paku=true ]
@jump target=*sadonepunpun

;LOSEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
*lose1
[live2d_motion name = "2p" filenm="m05.mtn" ]
[kc_exp name="2p" expName="sane_f05" ]
[kc_hukidasi str="んん～！！\rおにいちゃん！！　弱い！" type="npc1" name="2p" paku=true ]
[kc_hukidasi str="\rううっ..." type="usr3"]
@jump target=*repeat

*lose2
[live2d_motion name = "2p" filenm="m05.mtn" ]
[kc_exp name="2p" expName="sane_f03" ]
[kc_hukidasi str="へへ～サドネの勝ち～" type=" npc1"  name="2p" paku=true  ]
@jump target=*repeat

*lose3
[live2d_motion name = "2p" filenm="m05.mtn" ]
[kc_exp name="2p" expName="sane_f03" ]
[kc_hukidasi str="サドネ、すごいでしょう～" type=" npc1"  name="2p" paku=true  ]
@jump target=*repeat

;DRAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW
*draw1
[live2d_motion name = "2p" filenm="m05.mtn" ]
[kc_exp name="2p" expName="sane_f11" ]
[kc_hukidasi str="サデネ知ってる、これはヒキワケ！" type="npc1" name="2p" paku=true ]
@jump target=*repeat

*draw2
[live2d_motion name = "2p" filenm="m05.mtn" ]
[kc_exp name="2p" expName="sane_f04" ]
[kc_hukidasi str="へへ～おにいちゃんと同じ得点だ～" type=" npc1"  name="2p" paku=true  ]
@jump target=*repeat

*draw3
[live2d_motion name = "2p" filenm="m05.mtn" ]
[kc_exp name="2p" expName="kade_f04" ]
[kc_hukidasi str="あ。。！　\rツギハテをぬ？\rぬりませんです、ワ！" type=" npc1"  name="2p" paku=true  ]
@jump target=*repeat

*end