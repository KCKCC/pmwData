
[kc_loadAllExp ]
;prepare model 
;C:/Users/KC/Desktop/R/pmwData/pwmData/
;https://raw.githubusercontent.com/KCKCC/pmwData/master/
[kc_prepareL2D name="sad" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/models/sadone/twxmas_02/" modelFileName="m.json" ]

;load model 
[live2d_new name="sad"    width=1024 height=1024 left=50% top=60% gltop=0.25  lip=true glscale=1.85 ]

;preload assets
;sound
[kc_addSound name="con"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sadTheImoto/2020_01_05_19_06_26_864.mp3"]
[kc_addSound name="fbi"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sadTheImoto/2020_01_05_18_54_01_451.mp3"]
[kc_addSound name="nade"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/se_care_002.mp3"]
[kc_addSound name="hehe"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sado_hehe.mp3"]
[kc_addSound name="c1"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sadTheImoto/1.mp3"]
[kc_addSound name="c2"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sadTheImoto/2.mp3"]
[kc_addSound name="c3"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sadTheImoto/3.mp3"]
[kc_addSound name="c41"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sadTheImoto/41.mp3"]
[kc_addSound name="c42"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sadTheImoto/42.mp3"]
[kc_addSound name="c5"  url="https://raw.githubusercontent.com/KCKCC/pmwData/master/sound/sadTheImoto/5.mp3"]

;pic
[kc_addPic name="mumi"    url="data/others/kc/pic/mumi.png"]
[kc_addPic name="jyu" url="https://raw.githubusercontent.com/KCKCC/pmwData/master/pic/bg_mirror_01.png"]

[kc_showPic name="jyu" style="left: -13%;z-index: 2;height: 100%;", isBg="true"]

[live2d_show name="sad" time=1000 ]

[wait time=2000]
[kc_position name="sad" xs=1.1 ys=1.1 ]
[kc_exp name="sad" expName="sane_f04" ]


[kc_sayit name="sad" sound="c1"]
[kc_hukidasi str="\rお兄ちゃん～" type="npc1" name="sad" txtInterval="100"]

[wait time=500]

[kc_sayit name="sad" sound="c2"]
[kc_hukidasi str="\rお兄～～ちゃん～" type="npc1" name="sad" txtInterval="330"]

[wait time=500]
[kc_sayit name="sad" sound="c3"]
[kc_hukidasi str="\rお兄～～～ちゃん～" type="npc1" name="sad" txtInterval="120"]
[wait time=500]
[kc_sayit name="sad" sound="c41"]
[kc_hukidasi str="\rお兄" type="npc1" name="sad" txtInterval="10" endWait=0]
[kc_playSound name="c42" ]
[kc_hukidasi str="I'm_right_here!_\rWhat_do_you_want?!" type="usr2" txtInterval="20" fontSize=2.3em]

[kc_sayit name="sad" sound="c5"]
[kc_hukidasi str="なでなでして～\rお兄ちゃん～" type="npc1" name="sad" ]

[iscript]
    var ended=false;
    nadeReaction={
        up:()=>{if(!ended)TYRANO.kag.rider.cutTyranoScript("[jump storage=online.ks target=*nadeUp]")},
        down:()=>{if(!ended)TYRANO.kag.rider.cutTyranoScript("[jump storage=online.ks target=*nadeDown]")},
        move: ()=>  {if(kc.nadeDo>1000 && !ended) {
                console.log('6');
                ended=true; 
                TYRANO.kag.rider.cutTyranoScript("[jump storage=online.ks target=*nadeOwa]");}
            },
        out: ()=>{if(!ended)TYRANO.kag.rider.cutTyranoScript("[jump storage=online.ks target=*nadeOut]");}
    };

    kc.nadeSet("sad",nadeReaction);
[endscript]
[jump storage=online.ks target=*end]

*nadeDown
[kc_playSound name="nade" ]
[kc_exp name="sad" expName="sane_f11" ]
[kc_sayit name="sad" sound="hehe"]

[jump storage=online.ks target=*end]

*nadeUp

*nadeOut
[kc_exp name="sad" expName="sane_f03" ]

[jump storage=online.ks target=*end]

*nadeOwa

[wait time=500]
[kc_playSound name="con" ]
[iscript]
    kc.nadeClear();
[endscript]
[kc_exp name="sad" expName="anko_f10" ]
[kc_hukidasi str="うにゅううううう～ " type="npc1" name="sad" paku=true]

[kc_playSound name="fbi" ]
[kc_hukidasi str="F.B.I.!!_\rOPEN_UP!! " type="nar" fat=1 fontSize=2em txtInterval="20" endWait=1000]

[kc_hukidasi str="\r\r◀▰To Be Continued▰▰" type="nar" fontSize=2em txtInterval="1" endWait=50000]

*end

