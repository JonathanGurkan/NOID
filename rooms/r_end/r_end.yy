{
  "$GMRoom":"v1",
  "%Name":"r_end",
  "creationCodeFile":"rooms/r_end/RoomCreationCode.gml",
  "inheritCode":false,
  "inheritCreationOrder":false,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_5681C716","path":"rooms/r_end/r_end.yy",},
    {"name":"inst_135ED624","path":"rooms/r_end/r_end.yy",},
    {"name":"inst_6F5B8769","path":"rooms/r_end/r_end.yy",},
    {"name":"inst_2582C09B","path":"rooms/r_end/r_end.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRTileLayer":"","%Name":"col","depth":-200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"col","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":29,"SerialiseWidth":32,"TileCompressedData":[
          -31,1,2,-2147483648,1,-18,-2147483648,1,0,-12,-2147483648,1,1,-18,-2147483648,1,0,-12,-2147483648,1,
          1,-18,-2147483648,1,0,-12,-2147483648,1,1,-18,-2147483648,1,0,-12,-2147483648,1,1,-18,-2147483648,1,
          0,-9,-2147483648,4,0,-2147483648,-2147483648,1,-18,-2147483648,1,0,-12,-2147483648,1,1,-18,-2147483648,
          1,0,-9,-2147483648,4,0,-2147483648,-2147483648,1,-16,-2147483648,3,0,-2147483648,0,-3,-2147483648,1,
          0,-8,-2147483648,1,1,-14,-2147483648,5,0,-2147483648,-2147483648,0,0,-12,-2147483648,1,1,-19,0,-12,-2147483648,
          1,1,-13,-2147483648,-4,0,-13,-2147483648,2,0,1,-19,0,-12,-2147483648,1,1,-31,0,1,1,-31,-2147483648,1,
          1,-31,0,1,1,-31,0,1,1,-31,0,-32,1,-123,-2147483648,1,0,-50,-2147483648,-12,0,-134,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet2","path":"tilesets/TileSet2/TileSet2.yy",},"userdefinedDepth":true,"visible":false,"x":0,"y":0,},
    {"$GMRInstanceLayer":"","%Name":"player","depth":-100,"effectEnabled":true,"effectType":null,"gridX":16,"gridY":16,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"$GMRInstance":"v1","%Name":"inst_5681C716","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_5681C716","objectId":{"name":"obj_player","path":"objects/obj_player/obj_player.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":32.0,"y":288.0,},
        {"$GMRInstance":"v1","%Name":"inst_135ED624","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_135ED624","objectId":{"name":"obj_cutscene","path":"objects/obj_cutscene/obj_cutscene.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_cutscene","path":"objects/obj_cutscene/obj_cutscene.yy",},"propertyId":{"name":"scene_name","path":"objects/obj_cutscene/obj_cutscene.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"PLAYERSTATE.ENDTUT",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":4.5,"scaleY":3.0,"x":288.0,"y":192.0,},
        {"$GMRInstance":"v1","%Name":"inst_6F5B8769","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_6F5B8769","objectId":{"name":"obj_cutscene_cam","path":"objects/obj_cutscene_cam/obj_cutscene_cam.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":-1.0,"scaleY":1.0,"x":283.0,"y":288.0,},
        {"$GMRInstance":"v1","%Name":"inst_2582C09B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_2582C09B","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_room","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"r_main_menu",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_y","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"200",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_x","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"200",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":285.0,"y":403.0,},
      ],"layers":[],"name":"player","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRAssetLayer":"","%Name":"ring","assets":[
        {"$GMRSpriteGraphic":"","%Name":"graphic_116BA2DD","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"name":"graphic_116BA2DD","resourceType":"GMRSpriteGraphic","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"The_Circle_35x37","path":"sprites/The_Circle_35x37/The_Circle_35x37.yy",},"x":283.0,"y":111.0,},
      ],"depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"ring","properties":[],"resourceType":"GMRAssetLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"tiles","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRTileLayer":"","%Name":"Tiles_1","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Tiles_1","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":29,"SerialiseWidth":32,"TileCompressedData":[
              -33,19,-7,-2147483629,-14,-2147483648,1,-2147483629,-4,-2147483648,-4,-2147483629,-2,19,-7,-2147483629,
              -12,-2147483648,-3,-2147483629,-4,-2147483648,-4,-2147483629,-2,19,-7,-2147483629,-19,-2147483648,-4,
              -2147483629,-2,19,-7,-2147483629,-19,-2147483648,-5,-2147483629,1,19,-7,-2147483629,-19,-2147483648,
              -5,-2147483629,1,19,-7,-2147483629,-19,-2147483648,-5,-2147483629,1,19,-7,-2147483629,-19,-2147483648,
              -5,-2147483629,1,19,-7,-2147483629,-19,-2147483648,-5,-2147483629,1,19,-7,-2147483629,-19,-2147483648,
              -5,-2147483629,1,19,-7,-2147483629,-19,-2147483648,-5,-2147483629,1,19,-7,-2147483629,-19,-2147483648,
              -5,-2147483629,1,19,-31,-2147483629,1,19,-31,-2147483629,1,19,-31,-2147483629,1,19,-31,-2147483629,1,
              19,-31,-2147483629,3,19,-2147483629,19,-29,-2147483629,12,19,-2147483413,-2147483412,-2147483414,-2147483413,
              -2147483412,-2147483484,-2147483414,-2147483413,-2147483412,-2147483413,-2147483414,-3,-2147483484,17,
              -2147483412,-2147483414,-2147483413,-2147483412,-2147483414,-2147483484,-2147483412,-2147483484,-2147483413,
              -2147483412,-2147483412,-2147483414,-2147483484,-2147483412,-2147483414,-2147483413,-2147483412,-160,
              -2147483466,-160,-2147483648,
            ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet3","path":"tilesets/TileSet3/TileSet3.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
      ],"name":"tiles","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":29,"SerialiseWidth":32,"TileCompressedData":[
          33,239,43,44,45,46,47,48,49,2,3,4,5,6,7,8,9,38,39,40,41,42,43,44,45,46,47,48,49,44,45,46,47,257,-7,19,
          -11,-2147483648,-3,0,5,19,-2147483648,0,0,-2147483648,-5,19,1,275,-7,19,-11,-2147483648,1,0,-3,19,4,
          -2147483648,0,0,-2147483648,-5,19,1,257,-7,19,-10,-2147483648,-9,0,-5,19,1,275,-7,19,-11,-2147483648,
          -6,0,-2,-2147483648,-5,19,1,239,-7,19,-11,-2147483648,-6,0,-2,-2147483648,-5,19,1,257,-7,19,-11,-2147483648,
          -7,0,1,-2147483648,-5,19,1,275,-7,19,-11,-2147483648,-7,0,1,-2147483648,-5,19,1,257,-7,19,-11,-2147483648,
          -7,0,1,-2147483648,-5,19,1,275,-7,19,-11,-2147483648,-7,0,1,-2147483648,-5,19,1,239,-7,19,-11,-2147483648,
          -7,0,1,-2147483648,-5,19,1,257,-7,19,-11,-2147483648,-7,0,1,-2147483648,-5,19,1,182,-31,19,1,239,-31,
          19,1,239,-31,19,1,257,-31,19,1,275,-31,19,1,239,-31,19,12,182,235,236,234,235,236,164,234,235,236,235,
          234,-3,164,17,236,234,235,236,234,164,236,164,235,236,236,234,164,236,234,235,236,-160,182,-15,-2147483648,
          2,0,-2147483648,-5,0,5,-2147483648,0,-2147483648,0,0,-133,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"TileSet3","path":"tilesets/TileSet3/TileSet3.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"Backgrounds_1","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Backgrounds_1","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"layer_4","path":"sprites/layer_4/layer_4.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":128,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"Backgrounds_2","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Backgrounds_2","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"layer_3","path":"sprites/layer_3/layer_3.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":128,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"Backgrounds_3","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Backgrounds_3","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"layer_2","path":"sprites/layer_2/layer_2.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":128,"y":0,},
    {"$GMRBackgroundLayer":"","%Name":"Backgrounds_4","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Backgrounds_4","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":{"name":"layer_1","path":"sprites/layer_1/layer_1.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":128,"y":0,},
  ],
  "name":"r_end",
  "parent":{
    "name":"tutorial",
    "path":"folders/Rooms/tutorial.yy",
  },
  "parentRoom":null,
  "physicsSettings":{
    "inheritPhysicsSettings":false,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":450,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":512,
  },
  "sequenceId":null,
  "views":[
    {"hborder":640,"hport":720,"hspeed":-1,"hview":180,"inherit":false,"objectId":null,"vborder":360,"visible":true,"vspeed":-1,"wport":1280,"wview":320,"xport":0,"xview":0,"yport":0,"yview":0,},
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