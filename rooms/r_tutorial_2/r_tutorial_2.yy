{
  "$GMRoom":"v1",
  "%Name":"r_tutorial_2",
  "creationCodeFile":"",
  "inheritCode":true,
  "inheritCreationOrder":true,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_79A040C","path":"rooms/r_tutorial_2/r_tutorial_2.yy",},
    {"name":"inst_1FC8DD35","path":"rooms/r_tutorial_2/r_tutorial_2.yy",},
    {"name":"inst_7A7883A9","path":"rooms/r_tutorial_2/r_tutorial_2.yy",},
    {"name":"inst_5BFA4288","path":"rooms/r_tutorial_2/r_tutorial_2.yy",},
    {"name":"inst_53E12AF0","path":"rooms/r_tutorial_2/r_tutorial_2.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRTileLayer":"","%Name":"col","depth":-200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"name":"col","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":62,"TileCompressedData":[
          -329,0,-21,1,-36,0,-6,1,-19,0,-2,1,-31,0,-5,1,-24,0,-2,1,-17,0,-16,1,-27,0,-2,1,-15,0,-2,1,-43,0,-18,
          1,-72,0,-10,-2147483648,1,0,-15,-2147483648,1,0,-6,-2147483648,1,0,-23,-2147483648,-5,0,-11,-2147483648,
          1,0,-22,-2147483648,1,0,-22,-2147483648,-62,1,-186,0,
        ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet2","path":"tilesets/TileSet2/TileSet2.yy",},"userdefinedDepth":true,"visible":false,"x":0,"y":0,},
    {"$GMRTileLayer":"","%Name":"on_player_tiles","depth":-100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"name":"on_player_tiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":62,"TileCompressedData":[
          -79,-2147483648,1,0,-61,-2147483648,1,0,-61,-2147483648,1,0,-60,-2147483648,-2,0,-60,-2147483648,-2,
          0,-60,-2147483648,-2,0,-51,-2147483648,1,0,-8,-2147483648,-2,0,-44,-2147483648,-19,0,-53,-2147483648,
          -2,0,-5,-2147483648,-2,0,-43,-2147483648,-19,0,-59,-2147483648,3,0,-2147483648,0,-54,-2147483648,-51,
          0,-11,-2147483648,-51,0,-11,-2147483648,-51,0,-11,-2147483648,-40,0,-2,182,-9,0,-11,-2147483648,-40,
          0,-4,182,2,0,182,-5,0,
        ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet3","path":"tilesets/TileSet3/TileSet3.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRInstanceLayer":"","%Name":"player","depth":0,"effectEnabled":true,"effectType":null,"gridX":1,"gridY":1,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_79A040C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_79A040C","path":"rooms/r_parent/r_parent.yy",},"inheritItemSettings":false,"isDnd":false,"name":"inst_79A040C","objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":-1.0,"scaleY":1.0,"x":915.0,"y":208.0,},
      ],"layers":[],"name":"player","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"enemy","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_53E12AF0","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_53E12AF0","objectId":{"name":"obj_enemy_flamethrower","path":"objects/obj_enemy_flamethrower/obj_enemy_flamethrower.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":184.0,"y":207.0,},
      ],"layers":[],"name":"enemy","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"colliders","depth":200,"effectEnabled":true,"effectType":null,"gridX":1,"gridY":1,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_1FC8DD35","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_1FC8DD35","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_room","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"r_tutorial_1",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_y","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"45",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_x","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"544",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":2.0,"x":960.0,"y":192.0,},
        {"$GMRInstance":"v1","%Name":"inst_7A7883A9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_7A7883A9","objectId":{"name":"obj_door","path":"objects/obj_door/obj_door.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":634.0,"y":184.0,},
        {"$GMRInstance":"v1","%Name":"inst_5BFA4288","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_5BFA4288","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.15625,"x":-8.0,"y":175.0,},
      ],"layers":[],"name":"colliders","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"behind_player_tiles","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[
        {"$GMRAssetLayer":"","%Name":"tut_text","assets":[
            {"$GMRSpriteGraphic":"","%Name":"graphic_712CF3CD","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_712CF3CD","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"Sprite118","path":"sprites/Sprite118/Sprite118.yy",},"x":453.0,"y":132.0,},
            {"$GMRSpriteGraphic":"","%Name":"graphic_2891EBE6","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_2891EBE6","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"Sprite119","path":"sprites/Sprite119/Sprite119.yy",},"x":451.0,"y":156.0,},
            {"$GMRSpriteGraphic":"","%Name":"graphic_25487E10","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_25487E10","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"spr_arrow_dodge","path":"sprites/spr_arrow_dodge/spr_arrow_dodge.yy",},"x":283.0,"y":140.0,},
            {"$GMRSpriteGraphic":"","%Name":"graphic_2B190A07","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_2B190A07","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"Sprite53","path":"sprites/Sprite53/Sprite53.yy",},"x":576.0,"y":176.0,},
          ],"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"tut_text","properties":[],"resourceType":"GMRAssetLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
        {"$GMRTileLayer":"","%Name":"behind_player_sub","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"name":"behind_player_sub","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":62,"TileCompressedData":[
              -329,0,20,65,66,65,66,67,65,66,67,65,66,67,65,66,67,65,66,67,65,66,67,-10,0,1,240,-31,0,1,83,-3,84,1,
              83,-3,84,1,83,-4,84,1,83,-5,84,2,83,84,-9,0,1,258,-61,0,1,276,-570,0,
            ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet3","path":"tilesets/TileSet3/TileSet3.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
      ],"name":"behind_player_tiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":62,"TileCompressedData":[
          -140,182,1,15,-6,182,1,15,-17,182,1,15,-11,182,1,15,-12,182,1,15,-16,182,1,15,-37,182,1,15,-51,182,1,
          15,-22,182,1,15,-9,182,12,268435499,268435498,268435497,8,2,3,4,41,42,43,44,4,-3,182,4,2,3,4,42,-14,
          182,1,15,-23,182,5,47,48,49,7,55,-3,0,1,26,-9,0,2,26,29,-4,0,4,238,182,182,15,-29,182,9,40,182,41,182,
          135,136,0,0,27,-20,0,1,256,-9,182,1,15,-8,182,20,46,47,48,49,44,45,46,47,42,43,5,6,7,5,6,1879048264,
          0,0,153,154,-16,0,1,-2147483648,-3,0,4,-2147483648,0,-2147483648,181,-17,182,3,55,0,31,-4,0,1,29,-27,
          0,2,207,208,-7,0,18,199,2,3,4,5,6,7,8,9,10,11,12,13,38,39,40,47,55,-23,0,-4,-2147483648,1,0,-3,-2147483648,
          1,0,-3,-2147483648,2,225,226,-3,-2147483648,-7,0,-6,-2147483648,1,29,-7,-2147483648,-10,0,-6,-2147483648,
          -29,0,-23,-2147483648,-3,0,-4,-2147483648,6,25,-2147483648,-2147483648,209,210,211,-7,0,1,20,-7,0,4,
          244,245,246,247,-7,0,-3,-2147483648,1,24,-19,-2147483648,5,182,164,234,235,236,-11,164,3,234,235,236,
          -4,164,3,234,235,236,-7,164,3,234,235,236,-7,164,3,234,235,236,-4,164,3,234,235,236,-9,164,-17,182,3,
          15,182,15,-24,182,1,15,-18,182,1,15,-4,182,1,15,-18,182,1,15,-4,182,1,15,-24,182,1,15,-15,182,1,15,-19,
          182,1,15,-32,182,
        ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet3","path":"tilesets/TileSet3/TileSet3.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"Backgrounds_1","animationFPS":15.0,"animationSpeedType":0,"colour":4279834905,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Backgrounds_1","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"r_tutorial_2",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":{
    "name":"r_parent",
    "path":"rooms/r_parent/r_parent.yy",
  },
  "physicsSettings":{
    "inheritPhysicsSettings":true,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":270,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":992,
  },
  "sequenceId":null,
  "views":[
    {"hborder":640,"hport":720,"hspeed":-1,"hview":180,"inherit":false,"objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"vborder":360,"visible":true,"vspeed":-1,"wport":1280,"wview":320,"xport":0,"xview":0,"yport":0,"yview":0,},
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
    "inheritViewSettings":true,
  },
  "volume":1.0,
}