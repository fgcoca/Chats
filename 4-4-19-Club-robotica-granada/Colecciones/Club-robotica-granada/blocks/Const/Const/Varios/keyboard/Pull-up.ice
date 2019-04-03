{
  "version": "1.2",
  "package": {
    "name": "Pull up",
    "version": "1.0",
    "description": "Resistencia de pull up",
    "author": "Federico Coca",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22121.758%22%20height=%2296.105%22%20viewBox=%220%200%2032.215126%2025.42769%22%3E%3Ctext%20style=%22line-height:1.25%22%20x=%22129.911%22%20y=%22110.696%22%20font-weight=%22400%22%20font-size=%226.35%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20stroke-width=%22.265%22%20transform=%22translate(-124.404%20-108.124)%22%3E%3Ctspan%20x=%22129.911%22%20y=%22110.696%22%20font-size=%223.528%22%3E+Vcc%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M3.996%201.649v1.994l-2.13%201.49L5.99%207.08%201.957%209.349l2.131%201.054-.137%204.516%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.265%22/%3E%3Cpath%20d=%22M3.172%2015.33a.792.792%200%200%201%20.624-.89.792.792%200%200%201%20.924.572.792.792%200%200%201-.519.955.792.792%200%200%201-.983-.464l.737-.288z%22%20fill=%22#040000%22%20stroke=%22#040000%22%20stroke-width=%22.3%22/%3E%3Cpath%20d=%22M5.643%2014.44l-.017%206.821%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.979%22/%3E%3Cpath%20fill=%22#040000%22%20stroke=%22#040000%22%20stroke-width=%22.282%22%20d=%22M5.94%2016.972h1.403v1.842H5.94z%22/%3E%3Cpath%20d=%22M3.983%2021.35l-.012%201.312%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.265%22/%3E%3Cpath%20d=%22M1.886%2022.873h4.227%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.463%22/%3E%3Cpath%20d=%22M2.527%2024.2h2.911%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.384%22/%3E%3Cpath%20d=%22M3.302%2025.302h1.25%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.252%22/%3E%3Cpath%20d=%22M3.357%201.04A.676.676%200%200%201%203.963.3a.676.676%200%200%201%20.74.605.676.676%200%200%201-.606.74.676.676%200%200%201-.74-.605%22%20fill=%22none%22%20stroke=%22#040000%22%20stroke-width=%22.256%22/%3E%3Cpath%20d=%22M3.172%2020.63a.792.792%200%200%201%20.624-.89.792.792%200%200%201%20.924.572.792.792%200%200%201-.519.955.792.792%200%200%201-.983-.464l.737-.289z%22%20fill=%22#040000%22%20stroke=%22#040000%22%20stroke-width=%22.3%22/%3E%3Cpath%20d=%22M16.4%207.336l9.074%205.444-9.14%205.38zM0%2012.65l16.27.066M25.474%2012.78h6.741%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%22.265%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "0be503a0-ffdb-4dca-9d2d-c1341950f818",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 152,
            "y": 256
          }
        },
        {
          "id": "8e1bffc2-72b4-4741-b29d-55a5a16bebdb",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": ""
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 704,
            "y": 256
          }
        },
        {
          "id": "e15c2e20-181e-43d2-93da-eeebe8d86382",
          "type": "basic.code",
          "data": {
            "code": "// Pull up\n\nSB_IO #(\n    .PIN_TYPE(6'b 1010_01),\n    .PULLUP(1'b 1)\n) io_pin (\n    .PACKAGE_PIN(i),\n    .OUTPUT_ENABLE(1'b0),\n    .D_OUT_0(1'b0),\n    .D_IN_0(o)\n);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "i"
                }
              ],
              "out": [
                {
                  "name": "o"
                }
              ]
            }
          },
          "position": {
            "x": 328,
            "y": 176
          },
          "size": {
            "width": 296,
            "height": 224
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "0be503a0-ffdb-4dca-9d2d-c1341950f818",
            "port": "out"
          },
          "target": {
            "block": "e15c2e20-181e-43d2-93da-eeebe8d86382",
            "port": "i"
          }
        },
        {
          "source": {
            "block": "e15c2e20-181e-43d2-93da-eeebe8d86382",
            "port": "o"
          },
          "target": {
            "block": "8e1bffc2-72b4-4741-b29d-55a5a16bebdb",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {}
}