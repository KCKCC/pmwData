[iscript]
var babylonPath = "https://raw.githubusercontent.com/KCKCC/pmwData/master/babylon";
kc.babylon = {};
kc.appendExtraJS = (url) => {
    var s = document.createElement("script");
    s.type = "text/javascript";
    s.src = url;
    $("head").append(s);
}
////kc.appendExtraJS("https://code.jquery.com/pep/0.4.2/pep.min.js");
//kc.appendExtraJS("https://cdnjs.cloudflare.com/ajax/libs/dat-gui/0.6.2/dat.gui.min.js");
////kc.appendExtraJS("https://cdn.babylonjs.com/ammo.js");
////kc.appendExtraJS("https://cdn.babylonjs.com/cannon.js");
////kc.appendExtraJS("https://cdn.babylonjs.com/Oimo.js");
//kc.appendExtraJS("https://cdn.babylonjs.com/gltf_validator.js");
////kc.appendExtraJS("https://cdn.babylonjs.com/earcut.min.js");
//gitlab seems not like appendJS
//https://cdn.babylonjs.com/babylon.js
//kc.appendExtraJS(babylonPath + "/babylon.js");

//kc.appendExtraJS("https://cdn.babylonjs.com/inspector/babylon.inspector.bundle.js");
//kc.appendExtraJS("https://cdn.babylonjs.com/materialsLibrary/babylonjs.materials.min.js");
//kc.appendExtraJS("https://cdn.babylonjs.com/proceduralTexturesLibrary/babylonjs.proceduralTextures.min.js");
//kc.appendExtraJS("https://cdn.babylonjs.com/postProcessesLibrary/babylonjs.postProcess.min.js");
//kc.appendExtraJS("https://cdn.babylonjs.com/loaders/babylonjs.loaders.js");
//kc.appendExtraJS("https://cdn.babylonjs.com/serializers/babylonjs.serializers.min.js");
//kc.appendExtraJS("https://cdn.babylonjs.com/gui/babylon.gui.min.js");

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
    var firstStageRatio = (localStorage.getItem('kcw') == null ? 842 : localStorage.getItem('kcw') / $.getViewPort().width);


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

// window.addEventListener("resize", () => kc.fitBabylon());
$(window).resize(() => setTimeout(() => kc.fitBabylon(), 100));

// kc.winEvents = [{ name: 'win1', weight: 1 }, { name: 'win2', weight: 1 }, { name: 'win3', weight: 1 }];
// kc.loseEvents = [{ name: 'lose1', weight: 1 }, { name: 'lose2', weight: 1 }, { name: 'lose3', weight: 1 }];
// kc.drawEvents = [{ name: 'draw1', weight: 1 }, { name: 'draw2', weight: 1 }, { name: 'draw3', weight: 1 }];
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
