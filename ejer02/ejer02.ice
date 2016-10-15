{
  "image": "",
  "state": {
    "pan": {
      "x": 0,
      "y": 0
    },
    "zoom": 1
  },
  "board": "icezum",
  "graph": {
    "blocks": [
      {
        "id": "8613b06e-d44a-465c-9d9f-3fe93955b74b",
        "type": "bit.1",
        "data": {},
        "position": {
          "x": 48,
          "y": 128
        }
      },
      {
        "id": "c6067647-ed10-4bf0-8330-b30ba4c2bd1b",
        "type": "basic.output",
        "data": {
          "label": "out",
          "pin": {
            "name": "LED1",
            "value": "96"
          }
        },
        "position": {
          "x": 352,
          "y": 160
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "8613b06e-d44a-465c-9d9f-3fe93955b74b",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "c6067647-ed10-4bf0-8330-b30ba4c2bd1b",
          "port": "in"
        }
      }
    ]
  },
  "deps": {
    "bit.1": {
      "graph": {
        "blocks": [
          {
            "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
            "type": "basic.code",
            "data": {
              "code": "// Bit 1\n\nassign v = 1'b1;",
              "ports": {
                "in": [],
                "out": [
                  "v"
                ]
              }
            },
            "position": {
              "x": 96,
              "y": 96
            }
          },
          {
            "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
            "type": "basic.output",
            "data": {
              "label": ""
            },
            "position": {
              "x": 608,
              "y": 192
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "port": "v"
            },
            "target": {
              "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "port": "in"
            }
          }
        ]
      },
      "deps": {},
      "image": "resources/images/1.svg",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 1
      }
    }
  }
}