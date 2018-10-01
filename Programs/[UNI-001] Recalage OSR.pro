{
  "Id": 0,
  "ReferenceName": "[UNI-001] Recalage OSR",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "[UNI-001] Recalage OSR",
    "IsAsync": false,
    "ComponentIDs": [],
    "ChildActions": [
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 0,
        "Name": "[APPRENTISSAGE SHM]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
            "Order": 0,
            "Name": "[PLC] BackLight ON",
            "IsAsync": false,
            "ComponentIDs": [
              3
            ],
            "ChildActions": [],
            "Ports": {
              "SetVariable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 332,
                "Name": "SetVariable",
                "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                "PortType": 2,
                "CurrentValue": {
                  "Tag": "VAR_1",
                  "Designation": "COL_BacklightON",
                  "Index": 0,
                  "Path": "GVL.COL_BacklightON",
                  "IO_Type": 1,
                  "Var_Type": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SetValue": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 333,
                "Name": "SetValue",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 1,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
            "Order": 1,
            "Name": "[PLC] Aspi Backlight",
            "IsAsync": false,
            "ComponentIDs": [
              3
            ],
            "ChildActions": [],
            "Ports": {
              "SetVariable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 337,
                "Name": "SetVariable",
                "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                "PortType": 2,
                "CurrentValue": {
                  "Tag": "VAR_2",
                  "Designation": "COL_AspirationMatrice",
                  "Index": 0,
                  "Path": "GVL.COL_AspirationMatrice",
                  "IO_Type": 1,
                  "Var_Type": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SetValue": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 338,
                "Name": "SetValue",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoVision2D.CameraSnap, AkeoVision2D",
            "Order": 2,
            "Name": "[SNAP] CameraBL",
            "IsAsync": false,
            "ComponentIDs": [
              6
            ],
            "ChildActions": [],
            "Ports": {
              "SaveOption": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 334,
                "Name": "SaveOption",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SavePath": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 335,
                "Name": "SavePath",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "C:\\AKEOPLUS\\Acquisitions\\",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Image": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 336,
                "Name": "Image",
                "TypeName": "AkeoVision2D.AkeoImage, AkeoVision2D",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
            "Order": 3,
            "Name": "[PLC] BackLight OFF",
            "IsAsync": false,
            "ComponentIDs": [
              3
            ],
            "ChildActions": [],
            "Ports": {
              "SetVariable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 329,
                "Name": "SetVariable",
                "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                "PortType": 2,
                "CurrentValue": {
                  "Tag": "VAR_1",
                  "Designation": "COL_BacklightON",
                  "Index": 0,
                  "Path": "GVL.COL_BacklightON",
                  "IO_Type": 1,
                  "Var_Type": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SetValue": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 331,
                "Name": "SetValue",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "HalconWrapper.Engine.HDevCall, HalconWrapper",
            "Order": 4,
            "Name": "HDEV - Rectification",
            "IsAsync": false,
            "ComponentIDs": [
              8
            ],
            "ChildActions": [],
            "Ports": {
              "Procedure": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 91,
                "Name": "Procedure",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "action_rectification",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "CameraParam": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 97,
                "Name": "CameraParam",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  23
                ]
              },
              "RectifPose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 98,
                "Name": "RectifPose",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  25
                ]
              },
              "Scale": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 99,
                "Name": "Scale",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  26
                ]
              },
              "anImage": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 100,
                "Name": "anImage",
                "TypeName": "AkeoVision2D.AkeoImage, AkeoVision2D",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  336
                ]
              },
              "ImageMapped": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 96,
                "Name": "ImageMapped",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "HalconWrapper.Engine.HDevCall, HalconWrapper",
            "Order": 5,
            "Name": "HDEV - Morpho",
            "IsAsync": false,
            "ComponentIDs": [
              8
            ],
            "ChildActions": [],
            "Ports": {
              "Procedure": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 14,
                "Name": "Procedure",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "test_morpho_OSR",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Scale": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 32,
                "Name": "Scale",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  26
                ]
              },
              "ParamMorpho": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 33,
                "Name": "ParamMorpho",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  34
                ]
              },
              "ParamOSR": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 37,
                "Name": "ParamOSR",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  35
                ]
              },
              "ImageMapped": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 90,
                "Name": "ImageMapped",
                "TypeName": "AkeoVision2D.AkeoImage, AkeoVision2D",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  336
                ]
              },
              "OSR_MorphoValues": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 19,
                "Name": "OSR_MorphoValues",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "anOSR_Area_mm": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 20,
                "Name": "anOSR_Area_mm",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "errorCode": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 21,
                "Name": "errorCode",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "EstimatedOSR": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 22,
                "Name": "EstimatedOSR",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "HalconWrapper.Engine.HDevCall, HalconWrapper",
            "Order": 6,
            "Name": "HDEV - TeachSHM",
            "IsAsync": false,
            "ComponentIDs": [
              8
            ],
            "ChildActions": [],
            "Ports": {
              "Procedure": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 218,
                "Name": "Procedure",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "action_TeachOSR",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "CameraParam": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 231,
                "Name": "CameraParam",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  23
                ]
              },
              "RectifPose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 232,
                "Name": "RectifPose",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  25
                ]
              },
              "Scale": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 233,
                "Name": "Scale",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  26
                ]
              },
              "AcqFolder": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 235,
                "Name": "AcqFolder",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 2,
                "CurrentValue": {
                  "data": {
                    "$type": "System.Byte[], mscorlib",
                    "$value": "aFVYaFh9EyIAAAAAAAAAUkhUVVAAAQAAAAQAAAABAAAAQEM6XEFLRU9QTFVTXEFLRU9TcGluZSBVSSAxODA1MjFcQ2FsaWJcQ2FtX0JhY2tsaWdodFxPU1JfRlVMTC5zaG0="
                  }
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "ParamSHM": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 240,
                "Name": "ParamSHM",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  36
                ]
              },
              "ParamSize": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 236,
                "Name": "ParamSize",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  113
                ]
              },
              "ParamOSR": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 237,
                "Name": "ParamOSR",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  35
                ]
              },
              "ImageMapped": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 238,
                "Name": "ImageMapped",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  96
                ]
              },
              "EstimatedOSR": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 239,
                "Name": "EstimatedOSR",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  22
                ]
              },
              "OSRinSHMpose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 228,
                "Name": "OSRinSHMpose",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "resX": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 229,
                "Name": "resX",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "resY": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 230,
                "Name": "resY",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
            "Order": 7,
            "Name": "[UPDATE] OSR-in-SHM",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "InPose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 242,
                "Name": "InPose",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  228
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 243,
                "Name": "GlobalPosition",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "OSR-in-SHM",
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
            "Order": 8,
            "Name": "[PLC] Stop Aspi Backlight",
            "IsAsync": false,
            "ComponentIDs": [
              3
            ],
            "ChildActions": [],
            "Ports": {
              "SetVariable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 339,
                "Name": "SetVariable",
                "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                "PortType": 2,
                "CurrentValue": {
                  "Tag": "VAR_2",
                  "Designation": "COL_AspirationMatrice",
                  "Index": 0,
                  "Path": "GVL.COL_AspirationMatrice",
                  "IO_Type": 1,
                  "Var_Type": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SetValue": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 340,
                "Name": "SetValue",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 1,
        "Name": "[TRAITEMENT VISION]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoVision2D.CameraSnap, AkeoVision2D",
            "Order": 0,
            "Name": "[SNAP] CameraBL",
            "IsAsync": false,
            "ComponentIDs": [
              6
            ],
            "ChildActions": [],
            "Ports": {
              "SaveOption": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 341,
                "Name": "SaveOption",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SavePath": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 342,
                "Name": "SavePath",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Image": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 343,
                "Name": "Image",
                "TypeName": "AkeoVision2D.AkeoImage, AkeoVision2D",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "HalconWrapper.Engine.HDevCall, HalconWrapper",
            "Order": 1,
            "Name": "HDEV - Rectification",
            "IsAsync": false,
            "ComponentIDs": [
              8
            ],
            "ChildActions": [],
            "Ports": {
              "Procedure": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 251,
                "Name": "Procedure",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "action_rectification",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "CameraParam": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 252,
                "Name": "CameraParam",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  23
                ]
              },
              "RectifPose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 253,
                "Name": "RectifPose",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  25
                ]
              },
              "Scale": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 254,
                "Name": "Scale",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  26
                ]
              },
              "anImage": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 255,
                "Name": "anImage",
                "TypeName": "AkeoVision2D.AkeoImage, AkeoVision2D",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  343
                ]
              },
              "ImageMapped": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 256,
                "Name": "ImageMapped",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "HalconWrapper.Engine.HDevCall, HalconWrapper",
            "Order": 2,
            "Name": "HDEV - Morpho",
            "IsAsync": false,
            "ComponentIDs": [
              8
            ],
            "ChildActions": [],
            "Ports": {
              "Procedure": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 257,
                "Name": "Procedure",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "test_morpho_OSR",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Scale": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 258,
                "Name": "Scale",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  26
                ]
              },
              "ParamMorpho": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 259,
                "Name": "ParamMorpho",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  34
                ]
              },
              "ParamOSR": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 260,
                "Name": "ParamOSR",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  35
                ]
              },
              "ImageMapped": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 261,
                "Name": "ImageMapped",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  256
                ]
              },
              "OSR_MorphoValues": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 262,
                "Name": "OSR_MorphoValues",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "anOSR_Area_mm": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 263,
                "Name": "anOSR_Area_mm",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "errorCode": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 264,
                "Name": "errorCode",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "EstimatedOSR": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 265,
                "Name": "EstimatedOSR",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "HalconWrapper.Engine.HDevCall, HalconWrapper",
            "Order": 3,
            "Name": "HDEV Recalage ",
            "IsAsync": false,
            "ComponentIDs": [
              8
            ],
            "ChildActions": [],
            "Ports": {
              "Procedure": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 281,
                "Name": "Procedure",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "action_relocate_OSR",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "TransContours": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 282,
                "Name": "TransContours",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "errorCode": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 283,
                "Name": "errorCode",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "OSR_in_CamPose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 284,
                "Name": "OSR_in_CamPose",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "CameraParam": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 285,
                "Name": "CameraParam",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  23
                ]
              },
              "ParamSHM": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 286,
                "Name": "ParamSHM",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  36
                ]
              },
              "RectifPose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 287,
                "Name": "RectifPose",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  25
                ]
              },
              "Scale": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 288,
                "Name": "Scale",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  26
                ]
              },
              "OSR_in_SHMpose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 289,
                "Name": "OSR_in_SHMpose",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  80
                ]
              },
              "ImageMapped": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 290,
                "Name": "ImageMapped",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  256
                ]
              }
            }
          },
          {
            "$type": "HalconWrapper.Engine.HDevCall, HalconWrapper",
            "Order": 4,
            "Name": "HDEV - Measure OSR",
            "IsAsync": false,
            "ComponentIDs": [
              8
            ],
            "ChildActions": [],
            "Ports": {
              "Procedure": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 291,
                "Name": "Procedure",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "action_measure_OSR",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "ParamOSR": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 292,
                "Name": "ParamOSR",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  35
                ]
              },
              "ParamSize": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 293,
                "Name": "ParamSize",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  113
                ]
              },
              "Scale": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 294,
                "Name": "Scale",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  26
                ]
              },
              "EstimatedOSR": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 295,
                "Name": "EstimatedOSR",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  265
                ]
              },
              "ImageMapped": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 296,
                "Name": "ImageMapped",
                "TypeName": "HalconDotNet.HObject, halcondotnet",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  256
                ]
              },
              "OSR_X_mm": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 297,
                "Name": "OSR_X_mm",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "OSR_Y_mm": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 298,
                "Name": "OSR_Y_mm",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "errorCode": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 299,
                "Name": "errorCode",
                "TypeName": "HalconDotNet.HTuple, halcondotnet",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
            "Order": 5,
            "Name": "[FRAME] OSR-in-CAM",
            "IsAsync": false,
            "ComponentIDs": [
              4
            ],
            "ChildActions": [],
            "Ports": {
              "Relation entre repères": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 307,
                "Name": "Relation entre repères",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  284
                ]
              },
              "Repère départ": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 308,
                "Name": "Repère départ",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "BL_OSR",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Repère d'arrivée": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 309,
                "Name": "Repère d'arrivée",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "BL_CAM",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Sauvegarde base de donnée": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 310,
                "Name": "Sauvegarde base de donnée",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "TEACH SHM ?": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 247,
            "Name": "TEACH SHM ?",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 2,
        "Name": "[CALCUL PICKING]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
            "Order": 0,
            "Name": "[FRAME] Ag-in-CamBL",
            "IsAsync": false,
            "ComponentIDs": [
              4
            ],
            "ChildActions": [],
            "Ports": {
              "Relation entre repères": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 319,
                "Name": "Relation entre repères",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  306
                ]
              },
              "Repère départ": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 320,
                "Name": "Repère départ",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "AG_WORLD",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Repère d'arrivée": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 321,
                "Name": "Repère d'arrivée",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "BL_CAM",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Sauvegarde base de donnée": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 322,
                "Name": "Sauvegarde base de donnée",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
            "Order": 1,
            "Name": "[GET] Agilus FlangePose",
            "IsAsync": false,
            "ComponentIDs": [
              2
            ],
            "ChildActions": [],
            "Ports": {
              "Tool": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 315,
                "Name": "Tool",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "Flange",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Frame": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 316,
                "Name": "Frame",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "World",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "CoordType": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 317,
                "Name": "CoordType",
                "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Pose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 318,
                "Name": "Pose",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
            "Order": 2,
            "Name": "[FRAME] Flange-in-Agilus",
            "IsAsync": false,
            "ComponentIDs": [
              4
            ],
            "ChildActions": [],
            "Ports": {
              "Relation entre repères": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 325,
                "Name": "Relation entre repères",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  324
                ]
              },
              "Repère départ": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 301,
                "Name": "Repère départ",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "AG_FLANGE",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Repère d'arrivée": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 302,
                "Name": "Repère d'arrivée",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "AG_WORLD",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Sauvegarde base de donnée": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 303,
                "Name": "Sauvegarde base de donnée",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "DUMMY_POSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 324,
            "Name": "DUMMY_POSE",
            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
            "PortType": 2,
            "CurrentValue": {
              "_Pose": [
                200.0,
                100.0,
                500.0,
                0.0,
                90.0,
                0.0
              ],
              "Convention": 0
            },
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Mathematics.FrameManager.ExportFrameManager, AkeoCore",
        "Order": 3,
        "Name": "[FRAME] Export",
        "IsAsync": false,
        "ComponentIDs": [
          4
        ],
        "ChildActions": [],
        "Ports": {
          "Exporter Dot Graph": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 311,
            "Name": "Exporter Dot Graph",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Chemin fichier Dot Graph": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 312,
            "Name": "Chemin fichier Dot Graph",
            "TypeName": "System.String, mscorlib",
            "PortType": 2,
            "CurrentValue": "C:\\AKEOPLUS\\Frames\\",
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Exporter transformations": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 313,
            "Name": "Exporter transformations",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Chemin fichier transformations": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 314,
            "Name": "Chemin fichier transformations",
            "TypeName": "System.String, mscorlib",
            "PortType": 2,
            "CurrentValue": "C:\\AKEOPLUS\\Frames\\",
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      }
    ],
    "Ports": {
      "CamBL_Param": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 23,
        "Name": "CamBL_Param",
        "TypeName": "HalconDotNet.HTuple, halcondotnet",
        "PortType": 2,
        "CurrentValue": {
          "data": {
            "$type": "System.Byte[], mscorlib",
            "$value": "aFVYaFh9EyIAAAAAAAAAbkhUVVAAAQAAAAIAAAAMP5xqfvnbItFAevxbwBo248FFEZuAAAAAQkegNJtQAAA/qV1Oj7ALzD/6ZVjqfOD8PrtyEGFTjDQ+vASYaxtW9ECeXgtDlYEGQJWjJN0vGqBArgAAAAAAAECleAAAAAAA"
          }
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "ScaleBL": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 26,
        "Name": "ScaleBL",
        "TypeName": "HalconDotNet.HTuple, halcondotnet",
        "PortType": 2,
        "CurrentValue": {
          "data": {
            "$type": "System.Byte[], mscorlib",
            "$value": "aFVYaFh9EyIAAAAAAAAAFkhUVVAAAQAAAAIAAAABPv/wHf9WTDw="
          }
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "RectifPoseBL": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 25,
        "Name": "RectifPoseBL",
        "TypeName": "HalconDotNet.HTuple, halcondotnet",
        "PortType": 2,
        "CurrentValue": {
          "data": {
            "$type": "System.Byte[], mscorlib",
            "$value": "aFVYaFh9EyIAAAAAAAAARkhUVVAAAQAAAAIAAAAHv61P/MKI0R+/o+Lgim7ZUj/eFcDHBQyvQDBEYVIqbz9Adn1TjvNNaj+o9zFPWFfbAAAAAAAAAAA="
          }
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "ParamMorpho": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 34,
        "Name": "ParamMorpho",
        "TypeName": "HalconDotNet.HTuple, halcondotnet",
        "PortType": 2,
        "CurrentValue": {
          "data": {
            "$type": "System.Byte[], mscorlib",
            "$value": "aFVYaFh9EyIAAAAAAAAAFkhUVVAAAQAAAAIAAAABP+8zMzMzMzM="
          }
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "ParamOSR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 35,
        "Name": "ParamOSR",
        "TypeName": "HalconDotNet.HTuple, halcondotnet",
        "PortType": 2,
        "CurrentValue": {
          "data": {
            "$type": "System.Byte[], mscorlib",
            "$value": "aFVYaFh9EyIAAAAAAAAANkhUVVAAAQAAAAIAAAAFQEQAAAAAAABARYAAAAAAAD/wAAAAAAAAP5zyz5XU6Ps/oMH8jzI3iw=="
          }
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "ParamSHM": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 36,
        "Name": "ParamSHM",
        "TypeName": "HalconDotNet.HTuple, halcondotnet",
        "PortType": 2,
        "CurrentValue": {
          "data": {
            "$type": "System.Byte[], mscorlib",
            "$value": "aFVYaFh9EyIAAAAAAAAAXEhUVVAAAQAAAAgAAAAEAAAAAj/oAAAAAAAAAAAAAr+2VxCIDYAbAAAAAj+2VxCIDYAbAAAABAAAACIuXENhbGliXENhbV9CYWNrbGlnaHRcT1NSX0ZVTEwuc2ht"
          }
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "OSR-in-SHM": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 80,
        "Name": "OSR-in-SHM",
        "TypeName": "HalconDotNet.HTuple, halcondotnet",
        "PortType": 2,
        "CurrentValue": {
          "data": {
            "$type": "System.Byte[], mscorlib",
            "$value": "aFVYaFh9EyIAAAAAAAAAXkhUVVAAAQAAAAgAAAAHAAAAAr9fTp+vlGhcAAAAAr8qdnld8jLvAAAAArzzn+Nd/t2zAAAAAkB2f//////eAAAAAkB2f//////2AAAAAkBWS8WVLsnAAAAAAQAAAAA="
          }
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "ParamSize": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 113,
        "Name": "ParamSize",
        "TypeName": "HalconDotNet.HTuple, halcondotnet",
        "PortType": 2,
        "CurrentValue": {
          "data": {
            "$type": "System.Byte[], mscorlib",
            "$value": "aFVYaFh9EyIAAAAAAAAAVUhUVVAAAQAAAAgAAAAGAAAAAkA5AAAAAAAAAAAAAgAAAAAAAAAAAAAABAAAAANhbGwAAAACAAAAAAAAAAAAAAACQBwAAAAAAAAAAAACQCQAAAAAAAA="
          }
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "AG-in-CamBL": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 306,
        "Name": "AG-in-CamBL",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            680.043,
            -661.3921,
            625.0571,
            197.632,
            0.4889,
            177.2854
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      }
    }
  },
  "MaxId": 343
}