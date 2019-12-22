
[kc_loadAllExp ]
;prepare model 
;C:/Users/KC/Desktop/R/pmwData/pwmData/
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
[kc_prepareL2D name="kae" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/kaede/choco_02/" modelFileName="m.json" ]
[kc_prepareL2D name="sad" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/sadone/twxmas_02/" modelFileName="m.json" ]

;load model 
[live2d_new name="sad"    width=1024 height=1024 left=30% top=60% gltop=0.25  lip=true glscale=1.85 ]
[live2d_new name="kae"   width=1024 height=1024 left=70% top=60% gltop=0.25  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="bgm1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/2019_12_22_16_13_12_334.mp3"]
[kc_addSound name="kade"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_12.mp3"]
[kc_addSound name="sane"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_16b.mp3"]
[kc_addSound name="draw"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/bgm_chr_101.mp3"]
[kc_addSound name="28"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_028.mp3"]
[kc_addSound name="123"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_123.mp3"]
[kc_addSound name="126"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_126.mp3"]
[kc_addSound name="601"   url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/saneSinkei/voice_601.mp3"]

[kc_addSound name="055"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_055.mp3"]
[kc_addSound name="057"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_057.mp3"]
[kc_addSound name="058"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_058.mp3"]
[kc_addSound name="063"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_063.mp3"]
[kc_addSound name="064"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_064.mp3"]
[kc_addSound name="065"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_065.mp3"]
[kc_addSound name="120"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_120.mp3"]
[kc_addSound name="121"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_121.mp3"]
[kc_addSound name="122"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_122.mp3"]
[kc_addSound name="125"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_125.mp3"]
[kc_addSound name="142"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_142.mp3"]
[kc_addSound name="143"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_143.mp3"]
[kc_addSound name="148"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_148.mp3"]
[kc_addSound name="149"    url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/kaedan/voice_149.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_mirror_01.png"]

;---------------------------------------


[kc_showPic name="mumi" style="z-index:100; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

[live2d_show name="sad" time=0 ]
[kc_position name="sad" xs=1.1 ys=1.1 ]
[live2d_show name="kae" time=0 ]
[kc_position name="kae" xs=1.1 ys=1.1 ]
[kc_exp name="sad" expName="sane_f06" ]
[kc_exp name="kae" expName="f01" ]
;[live2d_motion name = "sad" filenm="m04.mtn" idle="ON" ]

;show bg
[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]
[kc_playSound name="bgm1" ]
[kc_hidePic name="mumi" isBg="true"]
[wait time=500 ]

[kc_hukidasi str="__　千導院家テンペスト城\r　　　　_～最上階～　　　　\r　ファイアスフィア闘技場" type="nar"]

[kc_hukidasi str="サドネはじゅんび\rカンリョです、ワ。\rカエデオネエサマ！" type="npc1" name="sad" paku=true ]
[kc_hukidasi str="ワタクシも準備万端ですわ。\rサドネ！" type="npc1" name="kae" paku=true ]

[kc_hukidasi str="なんでこうなった。。！\rもっと冷静に考えましょう！" type="usr1" fat=1]

[iscript]
kc.babylon.players = [
    { name: 'sadone', maxClick: 2, wins: 0, point: 0,
      kikendo:0.3,
      scoreEvents : [{ name: 'score0', weight: 3 }, { name: 'score1', weight: 2 }, { name: 'score2', weight: 2 }],
      noScoreEvents : [{ name: 'suka1', weight: 1 }, { name: 'suka2', weight: 1 }, { name: 'suka3', weight: 1 }]
    }, 
    { name: 'kaede', maxClick: 2, wins: 0, point: 0,
      kikendo:0.4,
      actionEvents : [{ name: 'act1', weight: 3 }, { name: 'act2', weight: 2 }, { name: 'act3', weight: 2 }, { name: 'act4', weight: 2 }],
      scoreEvents : [{ name: 'kscore0', weight: 3 }, { name: 'kscore1', weight: 2 }, { name: 'kscore2', weight: 2 }, { name: 'kscore3', weight: 2 }],
      noScoreEvents : [{ name: 'ksuka1', weight: 1 }, { name: 'ksuka2', weight: 1 }, { name: 'ksuka3', weight: 1 }, { name: 'ksuka4', weight: 1 }, { name: 'ksuka5', weight: 1 }, { name: 'ksuka6', weight: 1 }, { name: 'ksuka7', weight: 1 }, { name: 'ksuka8', weight: 1 }]
    }];

kc.endGame = () => {
    var sadone = kc.babylon.players.find(x => x.name == "sadone");
    var kaede = kc.babylon.players.find(x => x.name == "kaede");
    if(sadone.point>kaede.point){
        TYRANO.kag.rider.cutTyranoScript("[jump storage=online.ks target=*sadone]")
        return;
    }
    if(sadone.point<kaede.point){
        TYRANO.kag.rider.cutTyranoScript("[jump storage=online.ks target=*kaede]")
        return;
    }
    TYRANO.kag.rider.cutTyranoScript("[jump storage=online.ks target=*draw]")
}
sad = kc.hukidasi.create("デュエル！", "npc2",kc.hukidasi.getColor("sado"),'30','80',63,666, null, '51px');
kae = kc.hukidasi.create("デュエル！", "npc2",kc.hukidasi.getColor("kae"),'70','80',63,666, null, '51px');
setTimeout(()=>{
    kc.hukidasi.destory(sad);
    kc.hukidasi.destory(kae);
    kc.setupGame(4,3);
},1000);
[endscript]
[wait time=3000]
[iscript]
    kc.babylon.currentPlayer=0;
    kc.charAction();
[endscript]
[jump storage=online.ks target=*end]

;actionEvents
*act1
[kc_exp name="kae" expName="kade_f06" ]
@jump target=*end

*act2
[kc_exp name="kae" expName="kade_f07" ]
[kc_sayit name="kae" sound="055"]
@jump target=*end

*act3
[kc_exp name="kae" expName="kade_f07" ]
[kc_sayit name="kae" sound="057"]
@jump target=*end

*act4
[kc_exp name="kae" expName="kade_f07" ]
[kc_sayit name="kae" sound="058"]
@jump target=*end

;SCOREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
*score0
[kc_exp name="sad" expName="sane_f11" ]
@jump target=*end

*score1
[kc_exp name="sad" expName="sane_f03" ]
[kc_sayit name="sad" sound="601"]
@jump target=*end

*score2
[kc_exp name="sad" expName="sane_f03" ]
[kc_sayit name="sad" sound="126"]
@jump target=*end

*kscore0
[kc_exp name="kae" expName="kade_f03" ]
@jump target=*end

*kscore1
[kc_exp name="kae" expName="kade_f03" ]
[kc_sayit name="kae" sound="120"]
@jump target=*end

*kscore2
[kc_exp name="kae" expName="kade_f03" ]
[kc_sayit name="kae" sound="121"]
@jump target=*end

*kscore3
[kc_exp name="kae" expName="kade_f02" ]
[kc_sayit name="kae" sound="122"]
@jump target=*end

;SUKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
*suka1
[kc_exp name="sad" expName="sane_f07" ]
[kc_sayit name="sad" sound="28"]
@jump target=*end

*suka2
[kc_exp name="sad" expName="sane_f05" ]
[kc_sayit name="sad" sound="123"]
@jump target=*end

*suka3
[kc_exp name="sad" expName="sane_f07" ]
@jump target=*end

*ksuka1
[kc_exp name="kae" expName="kade_f04" ]
[kc_sayit name="kae" sound="063"]
@jump target=*end

*ksuka2
[kc_exp name="kae" expName="kade_f10" ]
[kc_sayit name="kae" sound="064"]
@jump target=*end

*ksuka3
[kc_exp name="kae" expName="hita_f05" ]
[kc_sayit name="kae" sound="065"]
@jump target=*end

*ksuka4
[kc_exp name="kae" expName="kade_f08" ]
[kc_sayit name="kae" sound="125"]
@jump target=*end

*ksuka5
[kc_exp name="kae" expName="kade_f05" ]
[kc_sayit name="kae" sound="142"]
@jump target=*end

*ksuka6
[kc_exp name="kae" expName="kade_f05" ]
[kc_sayit name="kae" sound="143"]
@jump target=*end

*ksuka7
[kc_exp name="kae" expName="kade_f04" ]
[kc_sayit name="kae" sound="148"]
@jump target=*end

*ksuka8
[kc_exp name="kae" expName="kade_f06" ]
[kc_sayit name="kae" sound="149"]
@jump target=*end

*kaede
[kc_stopSound name="bgm1" ]
[kc_playSound name="kade" ]
[live2d_motion name = "sad" filenm="m05.mtn" ]
[kc_exp name="sad" expName="sane_f04" ]
[kc_hukidasi str="サドネ、負けた～\rオネエサマの、ショウリです" type="npc1"  name="sad" paku=true ]
[kc_exp name="kae" expName="kade_f04" ]
[kc_hukidasi str="サドネ、もうお姉さまじゃないでしょう？" type="npc1"  name="kae" paku=true ]
[kc_hukidasi str="うにゅ。。。\rサドネ、分かっだ。" type="npc1"  name="sad" paku=true ]
[kc_hukidasi str="え？！まさか、千導院家に追い出された？！" type="usr2"]
[kc_exp name="sad" expName="sane_f05" ]
[kc_hukidasi str="えええええ！\rサドネ、もう千導院じゃないの？！" type="npc2"  name="sad" paku=true ]
[kc_exp name="kae" expName="kade_f05" ]
[kc_hukidasi str="ええええ？！\r違いますわ、先生！" type="npc2"  name="kae" paku=true ]
[kc_hukidasi str="お姉さま、という呼び方のことだけですわ！" type="npc2"  name="kae" paku=true ]
[kc_exp name="kae" expName="kade_f04" ]
[kc_hukidasi str="サドネは何らかのアニメの影響を受けたらしい。" type="npc1"  name="kae" paku=true ]
[kc_hukidasi str="オネエサマ、オネエサマと、言い始めた" type="npc1"  name="kae" paku=true ]
[kc_hukidasi str="なるほど。。。" type="usr1"]

[kc_exp name="sad" expName="sane_f03" ]
[kc_hukidasi str="えへへ～\rカエデはサドネのオネエサマだもん～" type="npc1"  name="sad" paku=true ]
[kc_exp name="kae" expName="kade_f06" ]
[kc_hukidasi str="とにかく、お姉さまは禁止ですわ！" type="npc1"  name="kae" paku=true ]
[kc_exp name="sad" expName="sane_f04" ]
[kc_hukidasi str="うにゅ。。\rオネエサマがダメたら。。。" type="npc1"  name="sad" paku=true ]
[kc_exp name="sad" expName="sane_f11" ]
[kc_hukidasi str="お姉ちゃん！\rおねえちゃああん～\r" type="npc1"  name="sad" paku=true ]
[kc_hukidasi str="おねえええちゃあん～" type="npc1"  name="sad" paku=true ]
[kc_exp name="kae" expName="kade_f10" ]
[kc_hukidasi str="ううう。。\rサドネ、うるさいですわ！" type="npc1"  name="kae" paku=true ]
[kc_exp name="sad" expName="sane_f03" ]
[kc_hukidasi str="えへへ～" type="npc1"  name="sad" paku=true ]
[kc_hukidasi str="ほほう..." type="usr3"]
[kc_hukidasi str="ところで、僕はなにをしてきたんだろう？" type="usr3"]

@jump target=*last


*sadone
[kc_stopSound name="bgm1" ]
[kc_playSound name="sane" ]
[live2d_motion name = "sad" filenm="m05.mtn" ]
[kc_exp name="sad" expName="sane_f03" ]
[kc_hukidasi str="やったー！\rサドネの勝ちい～" type="npc1" name="sad" paku=true ]
[kc_exp name="kae" expName="kade_f04" ]
[kc_hukidasi str="参りましたわ" type="npc1" name="kae" paku=true ]
[kc_hukidasi str="え？　え？" type="usr3"]
[kc_hukidasi str="おにいちゃん～\r楽しみにしてってね！" type="npc1" name="sad" paku=true ]

[live2d_hide name = "sad" time=500 ]

[kc_hukidasi str="おお！" type="usr2"]
[kc_exp name="kae" expName="kade_f05" ]
[kc_hukidasi str="待ちなさい！サドネ。\r私も手伝いしますわ。" type="npc1" name="kae" paku=true ]
[kc_exp name="kae" expName="kade_f08" ]
[kc_hukidasi str="それでは先生、\rまだあとでですわ" type="npc1" name="kae" paku=true ]
[live2d_hide name = "kae" time=500 ]
[kc_hukidasi str="おお！。。。\r　　　\rえ？" type="usr1"]

@jump target=*last


*draw
[kc_hukidasi str="まさかの引き分け！" type="usr2"]
[kc_hukidasi str="ところで、これは何のための勝負ですか？" type="usr1"]
[kc_stopSound name="bgm1" ]
[kc_playSound name="draw" ]
[kc_exp name="sad" expName="sane_f04" ]
[kc_hukidasi str="タイ焼きとオアチェンの勝負です、ワ！" type="npc1" name="sad" paku=true ]
[kc_hukidasi str="お、おあ？　　　　" type="usr2"]
[kc_exp name="kae" expName="kade_f02" ]
[kc_hukidasi str="私の誕生日会のサプライスディッシュですわ" type="npc1"  name="kae" paku=true ]
[kc_hukidasi str="私は頑張って手伝いするサドネのために、タイ焼きを作りたいです！" type="npc1"  name="kae" paku=true ]
[kc_exp name="sad" expName="sane_f07" ]
[kc_hukidasi str="カエデの誕生日だから、いっぱいチョウサしたのに！" type="npc1"  name="sad" paku=true ]
[kc_exp name="sad" expName="sane_f03" ]
[kc_hukidasi str="タイワンからのす～～ごく美味しい庶民のアジですよ！" type="npc1"  name="sad" paku=true ]
[kc_exp name="kae" expName="kade_f04" ]
[kc_hukidasi str="じゅるり..." type="npc3" name="kae" paku=true ]
[kc_hukidasi str="ほほう..." type="usr3"]
[kc_hukidasi str="えっと、どっちも作ればいいじゃないですか？" type="usr1"]
[kc_hukidasi str="僕も手伝いするよ！" type="usr1"]
[kc_exp name="kae" expName="kade_f05" ]
[kc_hukidasi str="え？！。。\rそうですね。。盲点ですわ。。" type="npc1"  name="kae" paku=true ]
[kc_hukidasi str="やった～\rサドネのオアチェン～\rチョコ入れるの～" type="npc1"  name="sad" paku=true ]
[kc_hukidasi str="おにいちゃんも作り方教えるね！" type="npc1"  name="sad" paku=true ]
[kc_exp name="kae" expName="kade_f03" ]
[kc_hukidasi str="さすが先生ですね、\rいい案です！" type="npc1"  name="kae" paku=true ]
[kc_hukidasi str="それでは先生、\rよろしくお願いしますわ" type="npc1"  name="kae" paku=true ]
[kc_hukidasi str="おお！　\rまかせて！" type="usr2"]

[jump storage=online.ks target=*last]

*last
[kc_showPic name="mumi" style="z-index:30; transition: opacity .5s; background-color:black;height:100%;"  isBg="true"]
[wait time=1000]

*end