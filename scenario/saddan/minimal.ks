[iscript]
// var babylonPath = "C:/Users/KC/Desktop/babylon";
var babylonPath = "https://raw.githubusercontent.com/KCKCC/pmwData/master/babylon";
// var babylonPath = "./babylon";
kc.babylon = {};
kc.appendExtraJS = (url) => {
    var s = document.createElement("script");
    s.type = "text/javascript";
    s.src = url;
    $("head").append(s);
}

var canvas = document.createElement("canvas");
canvas.id = "renderCanvas";
$("#tywrap").append(canvas);
// var canvas = document.getElementById("renderCanvas");

kc.babylon.scene = null;
kc.babylon.chars = ["anko", "aoi", "asuchu", "asuha", "avna", "haruka", "hinata", "huuran", "ituki", "kaede", "kanon", "kokomi", "kurumi", "mari", "miki", "misaki", "mumi", "nozomi", "renge", "sadone", "sakura", "siho", "subaru", "urara", "yuri"];
kc.babylon.selectedCards = [];

kc.changeDeskSize = (rate, camera, t = 1080, b = -1080, l = -750, r = 750) => {
    camera.orthoTop = rate * t;
    camera.orthoBottom = rate * b;
    camera.orthoLeft = rate * l;
    camera.orthoRight = rate * r;
}

var createScene = () => {
    engine = new BABYLON.Engine(canvas, true, { preserveDrawingBuffer: true, stencil: true });
    // kc.babylon.scene = new BABYLON.Scene(engine);
    // kc.babylon.scene.clearColor = new BABYLON.Color4(0, 0, 0, 0);

    // BABYLON.SceneLoader.Load("C:\\Users\\KC\\Desktop\\babylon\\out\\", "scene.babylon", engine, scene);
    BABYLON.SceneLoader.ShowLoadingScreen = false;
    BABYLON.SceneLoader.Load(babylonPath + "/scene/out/", "scene.babylon", engine, function (newScene) {
        // Wait for textures and shaders to be ready
        newScene.executeWhenReady(function () {
            // Attach camera to canvas inputs
            // newScene.activeCamera.attachControl(canvas);
            newScene.clearColor = new BABYLON.Color4(0, 0, 0, 0);

            newScene.activeCamera.mode = BABYLON.Camera.ORTHOGRAPHIC_CAMERA;

            var rate = 0.01;
            kc.changeDeskSize(rate, newScene.activeCamera);

            kc.babylon.scene = newScene;
            kc.babylon.scene.lights[0].intensity = 2;

            kc.babylon.scene.onPointerDown = function (evt, pickResult) {

                if (pickResult.hit) {
                    // console.log(pickResult.pickedMesh.name)
                    kc.dealWithClick(pickResult);
                }
            };

            var frameRate = 20;

            //Rotation Animation
            kc.babylon.cardBackAnimation = new BABYLON.Animation("yRot", "rotation.y", frameRate, BABYLON.Animation.ANIMATIONTYPE_FLOAT, BABYLON.Animation.ANIMATIONLOOPMODE_CYCLE);

            var keyFramesR = [];

            keyFramesR.push({
                frame: 0,
                value: 0
            });

            keyFramesR.push({
                frame: 10,
                value: Math.PI
            });

            kc.babylon.cardBackAnimation.setKeys(keyFramesR);

            kc.babylon.cardFrontAnimation = new BABYLON.Animation("yRot", "rotation.y", frameRate, BABYLON.Animation.ANIMATIONTYPE_FLOAT, BABYLON.Animation.ANIMATIONLOOPMODE_CYCLE);

            var keyFramesR = [];

            keyFramesR.push({
                frame: 0,
                value: Math.PI
            });

            keyFramesR.push({
                frame: 10,
                value: 0
            });

            kc.babylon.cardFrontAnimation.setKeys(keyFramesR);

            // Once the scene is loaded, just register a render loop to render it
            engine.runRenderLoop(function () {
                newScene.render();
            });
            kc.fitBabylon();
        });
    }, function (progress) {
        // To do: give progress feedback to user
    });
}

kc.addCard = (x, y, chara) => {
    //  BABYLON.SceneLoader.Append(babylonPath + "/card/", "card.babylon", scene);
    BABYLON.SceneLoader.ImportMesh(["cardBack"], babylonPath + "/card/", "card.babylon", kc.babylon.scene, function (meshes, particleSystems, skeletons) {
        meshes[0].name = chara;
        meshes[1].name = "f_" + chara;
        meshes[1].material.albedoTexture = new BABYLON.Texture(babylonPath + "/card/fronts/" + chara + ".png", kc.babylon.scene);
        meshes[0].position = new BABYLON.Vector3(-x, y, 0);
        kc.cardBack(meshes[0]);
    });
}

kc.stageXY = (rows = 4, interval = 2.2, offset = 0) => {
    var arr = [];
    var bias = interval / 2;
    var shift = rows / 2;
    for (var i = 0; i < rows; i++)
        arr.push(((i - shift) * interval) + bias + offset);
    return arr;
}
kc.babylon.players = [{ name: 'usr', maxClick: 2, wins: 0, point: 0 }, { name: 'char1', maxClick: 2, wins: 0, point: 0 }];
kc.setupGame = (rows, cols) => {
    kc.babylon.players.forEach(x => x.point = 0);
    kc.babylon.currentPlayer = kc.babylon.players.findIndex(x => x.name == "usr");
    console.log(kc.babylon.currentPlayer);
    kc.babylon.canClick = true;

    var num = rows * cols;
    if (num % 2 != 0) {
        alert(" not even mumi><!");
        return;
    }
    var chars = kc.babylon.chars.slice();
    if (num / 2 < 25) {
        while (chars.length > num / 2)
            chars.splice(Math.floor(Math.random() * chars.length), 1)[0];
    } else {
        while (chars.length < num / 2)
            chars.push(Math.floor(Math.random() * chars.length))
    }
    chars = chars.concat(chars);
    var Xs = kc.stageXY(rows, 2.2);
    var Ys = kc.stageXY(cols, 3.3, -5);
    for (var x in Xs) {
        for (var y in Ys) {
            kc.addCard(Xs[x], Ys[y], chars.splice(Math.floor(Math.random() * chars.length), 1)[0]);
        }
    }
    // engine.resize();
}

kc.cardRotate = (mesh) => {
    var axis = new BABYLON.Vector3(0, 1, 0);
    target = mesh;
    if (mesh.parent != null)
        target = mesh.parent;
    target.rotate(axis, Math.PI, BABYLON.Space.WORLD);
}


kc.cardBack = (mesh) => {
    kc.babylon.scene.beginDirectAnimation(mesh, [kc.babylon.cardBackAnimation], 0, 10, false);
    // mesh.rotation.y = Math.PI;
}
kc.cardFront = (mesh) => {
    kc.babylon.scene.beginDirectAnimation(mesh, [kc.babylon.cardFrontAnimation], 0, 10, false);
    // mesh.rotation.y = 0;
}

setTimeout(() => createScene(), 3000)
// Resize

kc.fitBabylon = () => {
    console.log('fit');
    var tyraCanvas = document.querySelector('#tyrano_base');
    var scaleX = tyraCanvas.getBoundingClientRect().width / tyraCanvas.offsetWidth;

    var canvas = document.getElementById("renderCanvas");

    //god why i have to do this mumi><
    var firstStageRatio = (localStorage.getItem('kcw') == null ? 842 : localStorage.getItem('kcw')) / $.getViewPort().width;


    canvas.style.width = (scaleX * firstStageRatio * 100) + "%"; //842
    canvas.style.height = '100%'; //1080
    engine.resize();
}

//yo!

kc.dealWithClick = (pickResult) => {
    // console.log(pickResult);
    if (kc.babylon.canClick && !pickResult.pickedMesh.name.includes("f_")) {
        kc.performClick(pickResult.pickedMesh);
        if (kc.babylon.selectedCards.length >= kc.babylon.players[kc.babylon.currentPlayer].maxClick) {
            kc.endTurn();
        }
    }
}
kc.performClick = (mesh) => {
    var maxClick = kc.babylon.players[kc.babylon.currentPlayer].maxClick;
    if (kc.babylon.selectedCards.length < maxClick && !kc.babylon.selectedCards.includes(mesh)) {
        kc.cardFront(mesh);
        kc.babylon.selectedCards.push(mesh);
    }

}
kc.endTurn = () => {
    kc.babylon.canClick = false;
    setTimeout(() => {
        var combo = false;
        var currentPlayer = kc.babylon.players[kc.babylon.currentPlayer];
        while (kc.babylon.selectedCards.length > 1) {
            var card = kc.babylon.selectedCards.shift();
            var matchedIndex = kc.babylon.selectedCards.findIndex((x) => x.name == card.name);
            if (matchedIndex > -1) {
                kc.babylon.selectedCards.splice(matchedIndex, 1)[0].dispose();
                card.dispose();
                currentPlayer.point += 1;
                console.log(currentPlayer.name + "+1 mumi><!");
                if (kc.babylon.scene.meshes.length > 1) {
                    if (currentPlayer.name != "usr")
                        kc.fireEvent(kc.scoreEvents);
                    else
                        kc.fireEvent(kc.usrScoreEvents);
                }
                combo = true;
            } else {
                if (currentPlayer.name != "usr")
                    kc.fireEvent(kc.noScoreEvents);
                kc.cardBack(card);
            }
        }
        kc.babylon.selectedCards.forEach(x => kc.cardBack(x));
        kc.babylon.selectedCards = [];

        //checkShuryou
        if (kc.babylon.scene.meshes.length < 1) {
            console.log("game set!");
            console.table(kc.babylon.players);
            setTimeout(() => kc.endGame(), 1000);
            return;
        }


        //nextPlayer
        if (!combo) {
            kc.babylon.currentPlayer += 1;
            if (kc.babylon.currentPlayer > kc.babylon.players.length - 1)
                kc.babylon.currentPlayer = 0;
        }
        if (kc.babylon.players[kc.babylon.currentPlayer].name == "usr")
            kc.babylon.canClick = true;
        else {
            setTimeout(() => kc.charAction(), 1500);
        }
    }, 1500);
}

kc.endGame = () => {
    var usr = kc.babylon.players.find(x => x.name == "usr");
    kc.babylon.players.sort((a, b) => a.point < b.point ? 1 : -1);

    if (kc.babylon.players[0].point == usr.point) {
        if (kc.babylon.players[0].point == kc.babylon.players[1].point)
            kc.fireEvent(kc.drawEvents);
        else {
            kc.fireEvent(kc.winEvents);
        }
    } else
        kc.fireEvent(kc.loseEvents);
}

kc.charAction = () => {
    var player = kc.babylon.players[kc.babylon.currentPlayer];
    if (player.name == "usr" || kc.babylon.scene.meshes.length < 1) return;
    var maxClick = player.maxClick;
    if (kc.babylon.selectedCards.length < maxClick) {
        var selectableCards = kc.babylon.scene.meshes.filter(x => !x.name.includes("f_") && !kc.babylon.selectedCards.includes(x));

        if (Math.random() > 0.5 && kc.babylon.selectedCards.length > 0) {
            var target = selectableCards.find(x => x.name == kc.babylon.selectedCards[kc.babylon.selectedCards.length - 1].name);
            if (target != undefined)
                kc.performClick(target);
            else
                kc.performClick(selectableCards[Math.floor(Math.random() * selectableCards.length)]);
        }
        else
            kc.performClick(selectableCards[Math.floor(Math.random() * selectableCards.length)]);

        if (kc.babylon.selectedCards.length >= maxClick)
            kc.endTurn();
        else
            setTimeout(() => { kc.charAction() }, 1500);
    }
}

$(window).resize(() => setTimeout(() => kc.fitBabylon(), 100));

kc.fireEvent = (events) => {
    if (!events)
        return;
    var total = events.map(x => x.weight).reduce((a, b) => a + b);
    var random = Math.ceil(Math.random() * total);
    var i = 0;
    while (random > 0) {
        random -= events[i].weight;
        if (random <= 0)
            TYRANO.kag.rider.cutTyranoScript(`[jump storage=online.ks target=*${events[i].name}]`);
        i++;
    }
}

[endscript]



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

[iscript]
kc.winEvents = [{ name: 'win1', weight: 1 }, { name: 'win2', weight: 1 }, { name: 'win3', weight: 1 }];
kc.loseEvents = [{ name: 'lose1', weight: 1 }, { name: 'lose2', weight: 1 }, { name: 'lose3', weight: 1 }];
kc.drawEvents = [{ name: 'draw1', weight: 1 }, { name: 'draw2', weight: 1 }, { name: 'draw3', weight: 1 }];

kc.scoreEvents = [{ name: 'score0', weight: 10 }, { name: 'score1', weight: 2 }, { name: 'score2', weight: 2 }, { name: 'score3', weight: 2 }, { name: 'score4', weight: 2 },{ name: 'score5', weight: 1 }];
kc.usrScoreEvents = [{ name: 'usrScore0', weight: 10 }, { name: 'usrScore1', weight: 2 }, { name: 'usrScore2', weight: 2 }, { name: 'usrScore3', weight: 2 }];
kc.noScoreEvents = [{ name: 'suka1', weight: 1 }, { name: 'suka2', weight: 1 }, { name: 'suka3', weight: 1 }];
[endscript]

*repeat
[iscript]
kc.setupGame(4,3);
[endscript]
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
@jump target=*repeat

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