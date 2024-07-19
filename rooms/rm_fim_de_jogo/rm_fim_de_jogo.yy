{
  "$GMRoom":"v1",
  "%Name":"rm_fim_de_jogo",
  "creationCodeFile":"rooms/rm_fim_de_jogo/RoomCreationCode.gml",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_634CB8DD_1","path":"rooms/rm_fim_de_jogo/rm_fim_de_jogo.yy",},
    {"name":"inst_399A7126","path":"rooms/rm_fim_de_jogo/rm_fim_de_jogo.yy",},
    {"name":"inst_649C44D1","path":"rooms/rm_fim_de_jogo/rm_fim_de_jogo.yy",},
    {"name":"inst_4C26B19D","path":"rooms/rm_fim_de_jogo/rm_fim_de_jogo.yy",},
    {"name":"inst_8A9FB4C","path":"rooms/rm_fim_de_jogo/rm_fim_de_jogo.yy",},
    {"name":"inst_4284CE61","path":"rooms/rm_fim_de_jogo/rm_fim_de_jogo.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRInstanceLayer":"","%Name":"Transitions","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"name":"Transitions","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"bk_title","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":100,"effectEnabled":true,"effectType":"_filter_heathaze","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"bk_title","properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.01",},
        {"name":"g_Distort2Speed","type":0,"value":"0.025",},
        {"name":"g_Distort1Scale","type":0,"value":"13.3",},
        {"name":"g_Distort1Scale","type":0,"value":"1.3",},
        {"name":"g_Distort2Scale","type":0,"value":"33.3",},
        {"name":"g_Distort2Scale","type":0,"value":"3.3",},
        {"name":"g_Distort1Amount","type":0,"value":"2",},
        {"name":"g_Distort2Amount","type":0,"value":"4",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"0.5",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_heathaze_noise_sprite",},
      ],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sTitlePoints","path":"sprites/sTitlePoints/sTitlePoints.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":100,"y":100,},
    {"$GMRInstanceLayer":"","%Name":"UI","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_8A9FB4C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_8A9FB4C","objectId":{"name":"oExit","path":"objects/oExit/oExit.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-32.0,"y":96.0,},
        {"$GMRInstance":"v1","%Name":"inst_4284CE61","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_4284CE61","objectId":{"name":"oResume","path":"objects/oResume/oResume.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"oButtom","path":"objects/oButtom/oButtom.yy",},"propertyId":{"name":"destino","path":"objects/oButtom/oButtom.yy",},"resource":{"name":"rm_jogo","path":"rooms/rm_jogo/rm_jogo.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"rm_jogo",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-32.0,"y":160.0,},
      ],"layers":[],"name":"UI","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"bk_water","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":300,"effectEnabled":true,"effectType":"_filter_underwater","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"bk_water","properties":[
        {"name":"g_Distort1Speed","type":0,"value":"0.054",},
        {"name":"g_Distort2Speed","type":0,"value":"0.031",},
        {"name":"g_Distort1Scale","type":0,"value":"28",},
        {"name":"g_Distort1Scale","type":0,"value":"2",},
        {"name":"g_Distort2Scale","type":0,"value":"100",},
        {"name":"g_Distort2Scale","type":0,"value":"10",},
        {"name":"g_Distort1Amount","type":0,"value":"3",},
        {"name":"g_Distort2Amount","type":0,"value":"6",},
        {"name":"g_ChromaSpreadAmount","type":0,"value":"1",},
        {"name":"g_CamOffsetScale","type":0,"value":"1",},
        {"name":"g_GlintCol","type":1,"value":"#FF161910",},
        {"name":"g_TintCol","type":1,"value":"#FF859860",},
        {"name":"g_AddCol","type":1,"value":"#FF6F884D",},
        {"name":"g_DistortTexture","type":2,"value":"_filter_underwater_noise_sprite",},
      ],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sWater","path":"sprites/sWater/sWater.yy",},"stretch":true,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":800,},
    {"$GMRInstanceLayer":"","%Name":"Limites","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_634CB8DD_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_634CB8DD_1","objectId":{"name":"oLimit","path":"objects/oLimit/oLimit.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":22.0,"scaleY":2.03125,"x":256.0,"y":768.0,},
        {"$GMRInstance":"v1","%Name":"inst_649C44D1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_649C44D1","objectId":{"name":"oLimit","path":"objects/oLimit/oLimit.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":20.03125,"x":-80.0,"y":480.0,},
        {"$GMRInstance":"v1","%Name":"inst_4C26B19D","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_4C26B19D","objectId":{"name":"oLimit","path":"objects/oLimit/oLimit.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":20.03125,"x":576.0,"y":480.0,},
      ],"layers":[],"name":"Limites","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"Instances","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_399A7126","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_399A7126","objectId":{"name":"oWater","path":"objects/oWater/oWater.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":16.0,"scaleY":10.032974,"x":256.0,"y":639.3671,},
      ],"layers":[],"name":"Instances","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":2.0,"animationSpeedType":0,"colour":4294967295,"depth":600,"effectEnabled":true,"effectType":"none","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"sBkMangrove","path":"sprites/sBkMangrove/sBkMangrove.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"rm_fim_de_jogo",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":true,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":800,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":512,
  },
  "sequenceId":null,
  "views":[
    {"hborder":32,"hport":800,"hspeed":-1,"hview":800,"inherit":false,"objectId":null,"vborder":32,"visible":true,"vspeed":-1,"wport":512,"wview":512,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":false,
    "enableViews":true,
    "inheritViewSettings":false,
  },
  "volume":1.0,
}