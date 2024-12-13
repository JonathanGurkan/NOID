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
    {"name":"inst_17FC2BAA","path":"rooms/r_tutorial_2/r_tutorial_2.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRTileLayer":"","%Name":"col","depth":-200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"name":"col","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":62,"TileCompressedData":[
          -63,1,-43,-2147483648,-19,1,-39,-2147483648,-23,1,-38,-2147483648,-24,1,-23,-2147483648,-39,1,-7,-2147483648,
          -5,1,-5,-2147483648,-45,1,-4,-2147483648,-2,0,-6,1,-3,-2147483648,-47,1,-4,0,-58,1,-4,-2147483648,-16,
          1,-2,-2147483648,1,0,-9,-2147483648,1,0,-5,-2147483648,-24,1,-8,-2147483648,-4,1,-2,-2147483648,1,0,
          -21,-2147483648,2,0,-2147483648,-27,1,-16,0,-36,-2147483648,-6,0,-3,1,-12,-2147483648,1,0,-15,-2147483648,
          1,0,-6,-2147483648,1,0,-23,-2147483648,-2,1,-14,-2147483648,1,0,-22,-2147483648,1,0,-22,-2147483648,
          -62,1,-186,0,
        ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet2","path":"tilesets/TileSet2/TileSet2.yy",},"userdefinedDepth":true,"visible":false,"x":0,"y":0,},
    {"$GMRTileLayer":"","%Name":"on_player_tiles","depth":-100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"name":"on_player_tiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":62,"TileCompressedData":[
          -79,-2147483648,1,0,-61,-2147483648,1,0,-61,-2147483648,1,0,-60,-2147483648,-2,0,-60,-2147483648,-2,
          0,-60,-2147483648,-2,0,-51,-2147483648,1,0,-8,-2147483648,-2,0,-44,-2147483648,-19,0,-53,-2147483648,
          -2,0,-5,-2147483648,-2,0,-43,-2147483648,1,268435469,-18,0,-59,-2147483648,3,0,-2147483648,0,-54,-2147483648,
          -51,0,-11,-2147483648,-51,0,-11,-2147483648,-51,0,-11,-2147483648,-40,0,-2,182,-9,0,-11,-2147483648,
          -40,0,-4,182,2,0,182,-5,0,
        ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet3","path":"tilesets/TileSet3/TileSet3.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRInstanceLayer":"","%Name":"player","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_79A040C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":true,"inheritedItemId":{"name":"inst_79A040C","path":"rooms/r_parent/r_parent.yy",},"inheritItemSettings":false,"isDnd":false,"name":"inst_79A040C","objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":-1.0,"scaleY":1.0,"x":900.0,"y":205.0,},
      ],"layers":[],"name":"player","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"enemy","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_17FC2BAA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_17FC2BAA","objectId":{"name":"obj_enemy","path":"objects/obj_enemy/obj_enemy.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":566.0,"y":205.0,},
      ],"layers":[],"name":"enemy","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRInstanceLayer":"","%Name":"colliders","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_1FC8DD35","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_1FC8DD35","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_room","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"r_tutorial_1",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":2.0,"x":960.0,"y":192.0,},
        {"$GMRInstance":"v1","%Name":"inst_7A7883A9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_7A7883A9","objectId":{"name":"obj_door","path":"objects/obj_door/obj_door.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":634.0,"y":184.0,},
        {"$GMRInstance":"v1","%Name":"inst_5BFA4288","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_5BFA4288","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":2.53125,"x":13.0,"y":81.0,},
      ],"layers":[],"name":"colliders","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"behind_player_tiles","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[
        {"$GMRTileLayer":"","%Name":"behind_player_sub","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"name":"behind_player_sub","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":62,"TileCompressedData":[-1054,0,],"TileDataFormat":1,},"tilesetId":{"name":"TileSet3","path":"tilesets/TileSet3/TileSet3.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
      ],"name":"behind_player_tiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":17,"SerialiseWidth":62,"TileCompressedData":[
          1,182,-38,200,-23,182,1,183,-16,-2147483648,1,0,-8,-2147483648,-8,0,-3,-2147483648,-2,0,1,199,-22,182,
          1,183,-16,-2147483648,1,0,-8,-2147483648,1,0,-6,-2147483648,1,0,-3,-2147483648,3,0,-2147483648,-2147483648,
          -22,182,1,183,-16,-2147483648,1,0,-8,-2147483648,1,0,-3,-2147483648,10,0,-2147483648,0,0,192,193,-2147483648,
          0,-2147483648,163,-22,182,1,183,-16,-2147483648,1,0,-6,-2147483648,1,163,-14,164,-23,182,1,183,-5,-2147483648,
          -2,0,1,163,-3,164,1,165,-4,-2147483648,2,0,163,-5,164,-38,182,1,183,-4,-2147483648,-2,0,1,163,-4,182,
          6,183,144,-2147483648,145,163,164,-44,182,1,183,-4,-2147483648,2,805306423,164,-6,182,-3,164,-5,182,
          12,268435499,268435498,268435497,8,2,3,4,41,42,43,44,45,-3,182,3,2,3,4,-19,182,5,46,47,48,49,183,-4,
          -2147483648,4,199,200,268435501,49,-4,182,8,15,182,182,40,182,38,39,55,-3,0,1,26,-7,0,8,-2147483648,
          0,26,29,-2147483648,0,-2147483648,181,-17,182,6,55,0,31,0,0,183,-8,0,8,72,15,182,55,29,0,29,26,-22,0,
          18,199,2,3,4,5,6,7,8,9,10,11,12,13,38,39,40,47,55,-5,0,-3,182,1,55,-14,0,-4,-2147483648,1,0,-3,-2147483648,
          1,0,-8,-2147483648,-7,0,-14,-2147483648,-6,0,-2,182,1,55,-7,-2147483648,-29,0,-23,-2147483648,2,182,
          55,-5,-2147483648,3,25,-2147483648,-2147483648,-10,0,1,20,-10,0,1,24,-7,0,-23,-2147483648,1,182,-61,
          164,-186,182,
        ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet3","path":"tilesets/TileSet3/TileSet3.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4279834905,"depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
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