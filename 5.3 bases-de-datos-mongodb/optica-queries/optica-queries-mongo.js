1.

db.clientes.find({ cliente_id: '660bf8bcdceb7948eccae426' })
db.pedidos.find({ cliente_id: '660bf8bcdceb7948eccae426' }).limit(1)
db.gafas.find({ _id: ObjectId("660a0474dceb7948eccae401") })

// schema
/*
{
  "count": 5,
  "fields": [
    {
      "name": "_id",
      "path": [
        "_id"
      ],
      "count": 5,
      "type": "ObjectId",
      "probability": 1,
      "hasDuplicates": false,
      "types": [
        {
          "name": "ObjectId",
          "path": [
            "_id"
          ],
          "count": 5,
          "probability": 1,
          "unique": 5,
          "hasDuplicates": false,
          "values": [
            "660bf8bcdceb7948eccae426",
            "660bf7d8dceb7948eccae422",
            "660a0a64dceb7948eccae40c",
            "660bf87fdceb7948eccae424",
            "660bf76adceb7948eccae420"
          ],
          "bsonType": "ObjectId"
        }
      ]
    },
    {
      "name": "apellido",
      "path": [
        "apellido"
      ],
      "count": 5,
      "type": "String",
      "probability": 1,
      "hasDuplicates": false,
      "types": [
        {
          "name": "String",
          "path": [
            "apellido"
          ],
          "count": 5,
          "probability": 1,
          "unique": 5,
          "hasDuplicates": false,
          "values": [
            "Lee",
            "McCane",
            "Diaz",
            "ElRocas",
            "Arroyo"
          ],
          "bsonType": "String"
        }
      ]
    },
    {
      "name": "calle",
      "path": [
        "calle"
      ],
      "count": 5,
      "type": "Int32",
      "probability": 1,
      "hasDuplicates": false,
      "types": [
        {
          "name": "Int32",
          "path": [
            "calle"
          ],
          "count": 5,
          "probability": 1,
          "unique": 5,
          "hasDuplicates": false,
          "values": [
            21,
            12,
            6,
            5,
            9
          ],
          "bsonType": "Int32"
        }
      ]
    },
    {
      "name": "ciudad",
      "path": [
        "ciudad"
      ],
      "count": 5,
      "type": "String",
      "probability": 1,
      "hasDuplicates": false,
      "types": [
        {
          "name": "String",
          "path": [
            "ciudad"
          ],
          "count": 5,
          "probability": 1,
          "unique": 5,
          "hasDuplicates": false,
          "values": [
            "Brodway",
            "SummerVille",
            "RoadSpeed",
            "Stratholme",
            "Sant Boi de Llobregat"
          ],
          "bsonType": "String"
        }
      ]
    },
    {
      "name": "codigo_postal",
      "path": [
        "codigo_postal"
      ],
      "count": 5,
      "type": "Int32",
      "probability": 1,
      "hasDuplicates": false,
      "types": [
        {
          "name": "Int32",
          "path": [
            "codigo_postal"
          ],
          "count": 5,
          "probability": 1,
          "unique": 5,
          "hasDuplicates": false,
          "values": [
            64738,
            87419,
            38210,
            73826,
            88830
          ],
          "bsonType": "Int32"
        }
      ]
    },
    {
      "name": "correo_electronico",
      "path": [
        "correo_electronico"
      ],
      "count": 5,
      "type": "String",
      "probability": 1,
      "hasDuplicates": false,
      "types": [
        {
          "name": "String",
          "path": [
            "correo_electronico"
          ],
          "count": 5,
          "probability": 1,
          "unique": 5,
          "hasDuplicates": false,
          "values": [
            "wigles@gmail.com",
            "kimi@gmail.com",
            "manolin@gmail.com",
            "andersito_maravillas@gmail.com",
            "lacarmen@gmail.com"
          ],
          "bsonType": "String"
        }
      ]
    },
    {
      "name": "nombre",
      "path": [
        "nombre"
      ],
      "count": 5,
      "type": "String",
      "probability": 1,
      "hasDuplicates": false,
      "types": [
        {
          "name": "String",
          "path": [
            "nombre"
          ],
          "count": 5,
          "probability": 1,
          "unique": 5,
          "hasDuplicates": false,
          "values": [
            "Kimimaro",
            "Colt",
            "Manolo",
            "Ander",
            "Carmen"
          ],
          "bsonType": "String"
        }
      ]
    },
    {
      "name": "numero",
      "path": [
        "numero"
      ],
      "count": 5,
      "type": "Int32",
      "probability": 1,
      "hasDuplicates": false,
      "types": [
        {
          "name": "Int32",
          "path": [
            "numero"
          ],
          "count": 5,
          "probability": 1,
          "unique": 5,
          "hasDuplicates": false,
          "values": [
            10,
            7,
            4,
            2,
            9
          ],
          "bsonType": "Int32"
        }
      ]
    },
    {
      "name": "pais",
      "path": [
        "pais"
      ],
      "count": 5,
      "type": "String",
      "probability": 1,
      "hasDuplicates": true,
      "types": [
        {
          "name": "String",
          "path": [
            "pais"
          ],
          "count": 5,
          "probability": 1,
          "unique": 1,
          "hasDuplicates": true,
          "values": [
            "España",
            "España",
            "España",
            "España",
            "España"
          ],
          "bsonType": "String"
        }
      ]
    },
    {
      "name": "piso",
      "path": [
        "piso"
      ],
      "count": 5,
      "type": "Int32",
      "probability": 1,
      "hasDuplicates": true,
      "types": [
        {
          "name": "Int32",
          "path": [
            "piso"
          ],
          "count": 5,
          "probability": 1,
          "unique": 3,
          "hasDuplicates": true,
          "values": [
            4,
            4,
            2,
            1,
            1
          ],
          "bsonType": "Int32"
        }
      ]
    },
    {
      "name": "puerta",
      "path": [
        "puerta"
      ],
      "count": 5,
      "type": "Int32",
      "probability": 1,
      "hasDuplicates": true,
      "types": [
        {
          "name": "Int32",
          "path": [
            "puerta"
          ],
          "count": 5,
          "probability": 1,
          "unique": 4,
          "hasDuplicates": true,
          "values": [
            2,
            4,
            2,
            5,
            1
          ],
          "bsonType": "Int32"
        }
      ]
    },
    {
      "name": "telefono",
      "path": [
        "telefono"
      ],
      "count": 5,
      "type": "Int32",
      "probability": 1,
      "hasDuplicates": false,
      "types": [
        {
          "name": "Int32",
          "path": [
            "telefono"
          ],
          "count": 5,
          "probability": 1,
          "unique": 5,
          "hasDuplicates": false,
          "values": [
            754832907,
            874291647,
            372819465,
            283719476,
            821738946
          ],
          "bsonType": "Int32"
        }
      ]
    }
  ]
}
*/