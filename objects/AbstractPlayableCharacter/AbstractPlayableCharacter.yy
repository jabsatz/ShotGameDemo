{
    "id": "c9cffbb4-2f7a-453c-8e58-bb9ae3481797",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "AbstractPlayableCharacter",
    "eventList": [
        {
            "id": "8f41638d-0123-475d-9d17-07b450e0778e",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "c9cffbb4-2f7a-453c-8e58-bb9ae3481797"
        },
        {
            "id": "dad8e7ae-ec92-4846-af97-b745f4416bbf",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "c9cffbb4-2f7a-453c-8e58-bb9ae3481797"
        },
        {
            "id": "038c5dcb-509c-4ec7-863a-a0f6526ef0b6",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "b4f00819-7d38-4568-90be-671c6fc10ecc",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "c9cffbb4-2f7a-453c-8e58-bb9ae3481797"
        },
        {
            "id": "c5ba6c60-f6e5-48df-bbaf-9a8e399ae097",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "bbc5d9fb-8814-4871-abb5-a9b0928130a3",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "c9cffbb4-2f7a-453c-8e58-bb9ae3481797"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "4451a403-0361-4144-bcec-1d51b280efec",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "hsp",
            "varType": 0
        },
        {
            "id": "334eacf8-db57-493f-9117-6d1fb563a2a2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "vsp",
            "varType": 0
        },
        {
            "id": "4b92db2f-3da3-4d7d-a20a-a2fa165abd43",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.2",
            "varName": "grv",
            "varType": 0
        },
        {
            "id": "e91e696c-c2c7-4650-bc07-96b46fc6c079",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "4",
            "varName": "walksp",
            "varType": 0
        },
        {
            "id": "f8a8b507-4879-4e28-9d3b-c0509a1e9b37",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "-5.5",
            "varName": "jumpsp",
            "varType": 0
        },
        {
            "id": "38dc2c97-2bb3-40d3-bec5-acf5c45798b1",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "grounded",
            "varType": 3
        },
        {
            "id": "4552d010-645b-4d14-95bf-af692986b75f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "facingRight",
            "varType": 3
        },
        {
            "id": "6ad216ac-391c-46e8-89c2-7362766de433",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "layer_get_name(layer) == \"Character\"",
            "varName": "active",
            "varType": 4
        },
        {
            "id": "6191de4a-34cd-4e11-99fd-b6f1a03abd1a",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "switchCooldown",
            "varType": 0
        },
        {
            "id": "1d775a2f-4210-4586-b243-6b4bb2a67446",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "shootRecoil",
            "varType": 0
        },
        {
            "id": "3617f964-978d-4cc3-8773-27e7af0d9cf5",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "recoilAngle",
            "varType": 0
        },
        {
            "id": "05261d35-365a-4645-be29-f62000a0e6c3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "flash",
            "varType": 0
        },
        {
            "id": "780a3100-e22b-4663-a563-a63899207080",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "100",
            "varName": "hp",
            "varType": 0
        },
        {
            "id": "e0f73e6a-cd94-4d66-b952-4886c6fe7fb4",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "maxvsp",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}