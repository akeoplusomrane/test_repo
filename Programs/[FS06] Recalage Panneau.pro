{
  "Id": 0,
  "ReferenceName": "[FS06] Recalage Panneau",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "[FS06] Recalage Panneau",
    "IsAsync": false,
    "ComponentIDs": [],
    "ChildActions": [
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 0,
        "Name": "[IF INITIALIZATION CER75]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
            "Order": 1,
            "Name": "[PopUp]: INIT ?",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "UserMessage": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 16,
                "Name": "UserMessage",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "Voulez-vous Initialiser le Tracker ?",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "ButtonLayout": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 17,
                "Name": "ButtonLayout",
                "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 4,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Icon": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 18,
                "Name": "Icon",
                "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "UserResult": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 19,
                "Name": "UserResult",
                "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
            "Order": 2,
            "Name": "CONDITION (INITIALIZATION)",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 0,
                "Name": "SI OUI -->",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoMetrology.SetReflector, AkeoMetrology",
                    "Order": 0,
                    "Name": "Set CatEye 75",
                    "IsAsync": false,
                    "ComponentIDs": [
                      0,
                      11
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "ReflectorName": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 374,
                        "Name": "ReflectorName",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "CER 75",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoMetrology.GoToPose, AkeoMetrology",
                    "Order": 1,
                    "Name": "[AT401] GO TO REFPOSE",
                    "IsAsync": false,
                    "ComponentIDs": [
                      11
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "LaserPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 380,
                        "Name": "LaserPose",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          379
                        ]
                      }
                    }
                  },
                  {
                    "$type": "AkeoMetrology.Initialize, AkeoMetrology",
                    "Order": 2,
                    "Name": "[AT402] GO INIT",
                    "IsAsync": false,
                    "ComponentIDs": [
                      0,
                      11
                    ],
                    "ChildActions": [],
                    "Ports": {}
                  },
                  {
                    "$type": "AkeoCore.Application.LogMessage, AkeoCore",
                    "Order": 4,
                    "Name": "[LOG] INIT Terminée ",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "MessageType": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 381,
                        "Name": "MessageType",
                        "TypeName": "AkeoCore.Application.LogType, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Message": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 384,
                        "Name": "Message",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Tracker Initialisé sur CER75",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                    "Order": 5,
                    "Name": "[PopUp] AT402 ",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "UserMessage": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 23,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "AT402 Initialisé avec Succès !",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 24,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 25,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 26,
                        "Name": "UserResult",
                        "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                        "PortType": 1,
                        "Behavior": 1,
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
                "Name": "SI NON --> (VOID)",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {}
              }
            ],
            "Ports": {
              "ValueToTest": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 20,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  19
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 21,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 22,
                "Name": "Value",
                "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 6,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "REF TRACKER POSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 379,
            "Name": "REF TRACKER POSE",
            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
            "PortType": 2,
            "CurrentValue": {
              "_Pose": [
                924.28,
                -2142.94,
                -1237.69,
                0.0,
                0.0,
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
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 1,
        "Name": "[SEQUENCE TEACHING]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
            "Order": 0,
            "Name": "[PopUp]: TEACH?",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "UserMessage": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 72,
                "Name": "UserMessage",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "Voulez-vous Apprendre les positions des 3 Reflecteurs Panneau?",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "ButtonLayout": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 73,
                "Name": "ButtonLayout",
                "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 4,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Icon": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 74,
                "Name": "Icon",
                "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "UserResult": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 75,
                "Name": "UserResult",
                "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
            "Order": 1,
            "Name": "CONDITION (TEACHING)",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 1,
                "Name": "SI OUI --> (Teaching) ",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                    "Order": 0,
                    "Name": "[PopUp] Visez \"A1\"",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "UserMessage": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 80,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Visez le Reflecteur \"A1\"  Puis cliquez sur OK",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 81,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 82,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 83,
                        "Name": "UserResult",
                        "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoMetrology.GetMeasure, AkeoMetrology",
                    "Order": 1,
                    "Name": "[AT401] Mesure Pose A1",
                    "IsAsync": false,
                    "ComponentIDs": [
                      0,
                      11
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "ReflectorPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 84,
                        "Name": "ReflectorPose",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "STDValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 85,
                        "Name": "STDValue",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 2,
                    "Name": "[VAR] MAJ \"A1\" ",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 86,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          84
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 87,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "[CUR] A1-in-AT401",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                    "Order": 3,
                    "Name": "[PopUp] Visez \"A3\"",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "UserMessage": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 88,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Visez le Reflecteur \"A3\" (ALIGNE sur A1) Puis cliquez sur OK",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 89,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 90,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 91,
                        "Name": "UserResult",
                        "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoMetrology.GetMeasure, AkeoMetrology",
                    "Order": 4,
                    "Name": "[AT401] Mesure Pose A3",
                    "IsAsync": false,
                    "ComponentIDs": [
                      0
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "ReflectorPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 92,
                        "Name": "ReflectorPose",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "STDValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 93,
                        "Name": "STDValue",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 5,
                    "Name": "[VAR] MAJ \"A3\" ",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 94,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          92
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 95,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "[CUR] A3-in-AT401",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                    "Order": 6,
                    "Name": "[PopUp] Visez \"A2\"",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "UserMessage": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 96,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Visez le Reflecteur \"A2\" Puis cliquez sur OK",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 97,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 98,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 99,
                        "Name": "UserResult",
                        "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoMetrology.GetMeasure, AkeoMetrology",
                    "Order": 7,
                    "Name": "[AT401] Mesure Pose A2",
                    "IsAsync": false,
                    "ComponentIDs": [
                      0
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "ReflectorPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 100,
                        "Name": "ReflectorPose",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "STDValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 101,
                        "Name": "STDValue",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 8,
                    "Name": "[VAR] MAJ \"A2\" ",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 102,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          100
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 103,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "[CUR] A2-in-AT401",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                    "Order": 9,
                    "Name": "[PopUp] TERMINE",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "UserMessage": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 104,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Reflecteurs Panneau Appris !",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 105,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 106,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 107,
                        "Name": "UserResult",
                        "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  }
                ],
                "Ports": {
                  "test": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 79,
                    "Name": "test",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": {
                      "_Pose": [
                        0.0,
                        0.0,
                        0.0,
                        0.0,
                        0.0,
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
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 2,
                "Name": "SI NON --> (VOID)",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {}
              }
            ],
            "Ports": {
              "ValueToTest": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 76,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  75
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 77,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 78,
                "Name": "Value",
                "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 6,
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
        "Order": 2,
        "Name": "[SEQUENCE RECALAGE]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoMetrology.SetReflector, AkeoMetrology",
            "Order": 0,
            "Name": "Set TBR0.5",
            "IsAsync": false,
            "ComponentIDs": [
              0
            ],
            "ChildActions": [],
            "Ports": {
              "ReflectorName": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 274,
                "Name": "ReflectorName",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "TBR 0.5in",
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
            "Order": 1,
            "Name": "[PopUp]: RECALAGE?",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "UserMessage": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 178,
                "Name": "UserMessage",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "Voulez-vous Relocaliser le panneau appris ?",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "ButtonLayout": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 179,
                "Name": "ButtonLayout",
                "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 4,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Icon": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 180,
                "Name": "Icon",
                "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "UserResult": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 181,
                "Name": "UserResult",
                "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
            "Order": 2,
            "Name": "CONDITION (RECALAGE)",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 1,
                "Name": "SI OUI --> (Recalage) ",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                    "Order": 0,
                    "Name": "[AT401] Mesure A1",
                    "IsAsync": false,
                    "ComponentIDs": [
                      0
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "LaserPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 188,
                        "Name": "LaserPose",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          52
                        ]
                      },
                      "ReflectorPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 189,
                        "Name": "ReflectorPose",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "STDValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 190,
                        "Name": "STDValue",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                    "Order": 1,
                    "Name": "CONDITION (RMS A1)",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                        "Order": 1,
                        "Name": "SI RMS High --> (FLAG NOK)",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 0,
                            "Name": "[VAR] RMS is NOK",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "InPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 196,
                                "Name": "InPose",
                                "TypeName": "System.Boolean, mscorlib",
                                "PortType": 2,
                                "CurrentValue": false,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 197,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "RMS-NOK",
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
                        "Order": 2,
                        "Name": "ELSE --> (VOID)",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {}
                      }
                    ],
                    "Ports": {
                      "ValueToTest": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 193,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          190
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 194,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 195,
                        "Name": "Value",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 0.05,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 2,
                    "Name": "[VAR] Update CUR-A1",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 363,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          189
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 364,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "[CUR] A1-in-AT401",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                    "Order": 3,
                    "Name": "[AT401] Mesure A3",
                    "IsAsync": false,
                    "ComponentIDs": [
                      0
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "LaserPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 200,
                        "Name": "LaserPose",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          54
                        ]
                      },
                      "ReflectorPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 201,
                        "Name": "ReflectorPose",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "STDValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 202,
                        "Name": "STDValue",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                    "Order": 4,
                    "Name": "CONDITION (RMS A3)",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                        "Order": 1,
                        "Name": "SI RMS High --> (FLAG NOK)",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 0,
                            "Name": "[VAR] RMS is NOK",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "InPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 208,
                                "Name": "InPose",
                                "TypeName": "System.Boolean, mscorlib",
                                "PortType": 2,
                                "CurrentValue": false,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 209,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "RMS-NOK",
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
                        "Order": 2,
                        "Name": "ELSE --> (VOID)",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {}
                      }
                    ],
                    "Ports": {
                      "ValueToTest": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 205,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          202
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 206,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 207,
                        "Name": "Value",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 0.05,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 5,
                    "Name": "[VAR] Update CUR-A3",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 365,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          201
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 366,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "[CUR] A3-in-AT401",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                    "Order": 6,
                    "Name": "[AT401] Mesure A2",
                    "IsAsync": false,
                    "ComponentIDs": [
                      0
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "LaserPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 210,
                        "Name": "LaserPose",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          53
                        ]
                      },
                      "ReflectorPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 211,
                        "Name": "ReflectorPose",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "STDValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 212,
                        "Name": "STDValue",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                    "Order": 7,
                    "Name": "CONDITION (RMS A2)",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                        "Order": 1,
                        "Name": "SI RMS High --> (FLAG NOK)",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 0,
                            "Name": "[VAR] RMS is NOK",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "InPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 218,
                                "Name": "InPose",
                                "TypeName": "System.Boolean, mscorlib",
                                "PortType": 2,
                                "CurrentValue": false,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 219,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "RMS-NOK",
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
                        "Order": 2,
                        "Name": "ELSE --> (VOID)",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {}
                      }
                    ],
                    "Ports": {
                      "ValueToTest": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 215,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          212
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 216,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 217,
                        "Name": "Value",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 0.05,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 8,
                    "Name": "[VAR] Update CUR-A2",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 361,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          211
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 362,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "[CUR] A2-in-AT401",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                    "Order": 9,
                    "Name": "[PopUp] TERMINE",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "UserMessage": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 220,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Reflecteurs Panneau Appris !",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 221,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 222,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 223,
                        "Name": "UserResult",
                        "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  }
                ],
                "Ports": {
                  "A1-Candidat": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 185,
                    "Name": "A1-Candidat",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": {
                      "_Pose": [
                        3471.4051567846468,
                        -3457.4033464406671,
                        -1307.3154164026907,
                        0.0,
                        0.0,
                        0.0
                      ],
                      "Convention": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "A2-Candidat": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 186,
                    "Name": "A2-Candidat",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": {
                      "_Pose": [
                        3471.4022942044853,
                        -3457.4064331707486,
                        -1307.3123336617052,
                        0.0,
                        0.0,
                        0.0
                      ],
                      "Convention": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "A3-Candidat": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 187,
                    "Name": "A3-Candidat",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": {
                      "_Pose": [
                        3471.4013022013014,
                        -3457.4101498237528,
                        -1307.3129910246569,
                        0.0,
                        0.0,
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
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 2,
                "Name": "SI NON --> (VOID)",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {}
              }
            ],
            "Ports": {
              "ValueToTest": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 182,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  181
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 183,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 184,
                "Name": "Value",
                "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 6,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
            "Order": 3,
            "Name": "CONDITION (RMS)",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 1,
                "Name": "SI RMS is NOK --> ALERTE",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                    "Order": 0,
                    "Name": "ERREUR RMS",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "UserMessage": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 369,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "ERREUR: RMS trop important",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 370,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 371,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 1,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 372,
                        "Name": "UserResult",
                        "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Application.Exit, AkeoCore",
                    "Order": 1,
                    "Name": "EXIT!! ",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "Prop_Message": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 367,
                        "Name": "Prop_Message",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Erreur durant le recalage! La séquence est interrompue",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Prop_ExceptionType": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 368,
                        "Name": "Prop_ExceptionType",
                        "TypeName": "AkeoSpineCore.Engine.CycleBehavior, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
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
                "Order": 2,
                "Name": "ELSE -->  (Calcul)",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoCore.Mathematics.LinearAlgebra.FrameOnThreePoints, AkeoCore",
                    "Order": 0,
                    "Name": "[RECALAGE] Pannel-in-Tracker",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "Origine": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 227,
                        "Name": "Origine",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          52
                        ]
                      },
                      "Point Direction 1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 228,
                        "Name": "Point Direction 1",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          53
                        ]
                      },
                      "Point Direction 2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 229,
                        "Name": "Point Direction 2",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          54
                        ]
                      },
                      "Directions données": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 230,
                        "Name": "Directions données",
                        "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Scaling origine": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 231,
                        "Name": "Scaling origine",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 1.0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Scaling point direction 1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 232,
                        "Name": "Scaling point direction 1",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 1.0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Scaling point direction 2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 233,
                        "Name": "Scaling point direction 2",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 1.0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Result Frame": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 234,
                        "Name": "Result Frame",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 1,
                    "Name": "[VAR] Current Pannel-in-Tracker",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 235,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          234
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 236,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "[CUR] Pannel-in-AT401",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  }
                ],
                "Ports": {}
              }
            ],
            "Ports": {
              "ValueToTest": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 224,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  177
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 225,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 226,
                "Name": "Value",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "RMS-NOK": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 177,
            "Name": "RMS-NOK",
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
        "Order": 3,
        "Name": "[SEQUENCE VERIFICATION]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Utils.DistanceBetweenPoses, AkeoRoboticist",
            "Order": 0,
            "Name": "Check Distances",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "Position de référence": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 237,
                "Name": "Position de référence",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  176
                ]
              },
              "Position courante": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 238,
                "Name": "Position courante",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  173
                ]
              },
              "Norme translation": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 239,
                "Name": "Norme translation",
                "TypeName": "System.Double, mscorlib",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "Angle rotation (deg)": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 240,
                "Name": "Angle rotation (deg)",
                "TypeName": "System.Double, mscorlib",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "6DDiff": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 241,
                "Name": "6DDiff",
                "TypeName": "System.Double[], mscorlib",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
            "Order": 1,
            "Name": "CONDITION (Angle VS ref)",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 1,
                "Name": "SI ANGLE High --> (Alerte)",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                    "Order": 0,
                    "Name": "[PopUp] Angle NOK",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "UserMessage": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 256,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "ATTENTION: Angle Panneau trop Important. Vérifier les inclinaisons du panneau",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 257,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 258,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 1,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 259,
                        "Name": "UserResult",
                        "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Application.Exit, AkeoCore",
                    "Order": 1,
                    "Name": "EXIT !! ",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "Prop_Message": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 246,
                        "Name": "Prop_Message",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "AVERTISSEMENT: Le panneau trouvé a un ANGLE trop fort par rapport à la référence.",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Prop_ExceptionType": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 247,
                        "Name": "Prop_ExceptionType",
                        "TypeName": "AkeoSpineCore.Engine.CycleBehavior, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 1,
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
                "Order": 2,
                "Name": "ELSE --> (VOID)",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                    "Order": 0,
                    "Name": "[PopUp] Angle OK",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "UserMessage": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 248,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Angle du Panneau OK! ",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 249,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 250,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 251,
                        "Name": "UserResult",
                        "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  }
                ],
                "Ports": {}
              }
            ],
            "Ports": {
              "ValueToTest": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 243,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  240
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 244,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 3,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 245,
                "Name": "Value",
                "TypeName": "System.Double, mscorlib",
                "PortType": 2,
                "CurrentValue": 1.0,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "Seuil Angle": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 242,
            "Name": "Seuil Angle",
            "TypeName": "System.Double, mscorlib",
            "PortType": 2,
            "CurrentValue": 0.0,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 4,
        "Name": "[ENREGISTREMENT PANNEAU]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
            "Order": 0,
            "Name": "[PopUp]: Enregistrement ?",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "UserMessage": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 263,
                "Name": "UserMessage",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "Voulez-vous Enregistrer le panneau appris dans le frame manager?",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "ButtonLayout": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 264,
                "Name": "ButtonLayout",
                "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 4,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Icon": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 265,
                "Name": "Icon",
                "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "UserResult": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 266,
                "Name": "UserResult",
                "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
            "Order": 1,
            "Name": "CONDITION Enregistrement",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 1,
                "Name": "SI OUI --> Enregistrement frame manager",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                    "Order": 0,
                    "Name": "Enregistrement Frame panneau",
                    "IsAsync": false,
                    "ComponentIDs": [
                      4
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Relation entre repères": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 270,
                        "Name": "Relation entre repères",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          173
                        ]
                      },
                      "Repère départ": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 271,
                        "Name": "Repère départ",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "AT_PANNEL",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Repère d'arrivée": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 272,
                        "Name": "Repère d'arrivée",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "AT_WORLD",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Sauvegarde base de donnée": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 273,
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
                "Ports": {}
              },
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 2,
                "Name": "SI NON --> VOID",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {}
              }
            ],
            "Ports": {
              "ValueToTest": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 267,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  266
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 268,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 269,
                "Name": "Value",
                "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 6,
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
        "Order": 5,
        "Name": "[IF RELOC AT-SO]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
            "Order": 0,
            "Name": "[PopUp]: GO RELOC?",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "UserMessage": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 275,
                "Name": "UserMessage",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "Voulez-vous Relocaliser le Robot dans le Tracker ?",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "ButtonLayout": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 276,
                "Name": "ButtonLayout",
                "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 4,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Icon": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 277,
                "Name": "Icon",
                "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "UserResult": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 278,
                "Name": "UserResult",
                "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
            "Order": 2,
            "Name": "CONDITION (INITIALIZATION)",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 1,
                "Name": "SI OUI -->",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoMetrology.SetReflector, AkeoMetrology",
                    "Order": 0,
                    "Name": "Set CER",
                    "IsAsync": false,
                    "ComponentIDs": [
                      0
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "ReflectorName": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 337,
                        "Name": "ReflectorName",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "CER 75",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                    "Order": 1,
                    "Name": "[DELETE] AT-in-SO",
                    "IsAsync": false,
                    "ComponentIDs": [
                      4
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Repère départ": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 356,
                        "Name": "Repère départ",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "SO_WORLD",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Repère d'arrivée": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 357,
                        "Name": "Repère d'arrivée",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "AT_WORLD",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Sauvegarde base de donnée": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 358,
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
                    "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                    "Order": 2,
                    "Name": "[TRAJ] HOME",
                    "IsAsync": false,
                    "ComponentIDs": [
                      5
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "ListMouvement": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 282,
                        "Name": "ListMouvement",
                        "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                        "PortType": 2,
                        "CurrentValue": {
                          "Moves": [
                            {
                              "Label": "M1",
                              "Index": 0,
                              "Poses": [
                                {
                                  "Label": "M1_I3",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -11.21,
                                      -57.32,
                                      146.89,
                                      -9.72,
                                      -88.76,
                                      75.3
                                    ]
                                  }
                                }
                              ],
                              "ToolTag": "Flange",
                              "FrameTag": "World",
                              "MdescrTag": "Mdescr_3"
                            }
                          ]
                        },
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "M1_I3": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 340,
                        "Name": "M1_I3",
                        "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          339
                        ]
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                    "Order": 3,
                    "Name": "[T401] Update EFF-in-LEICA",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                        "Order": 0,
                        "Name": "[AT401] Get O-HOME",
                        "IsAsync": false,
                        "ComponentIDs": [
                          0
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "LaserPose": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 284,
                            "Name": "LaserPose",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              341
                            ]
                          },
                          "ReflectorPose": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 285,
                            "Name": "ReflectorPose",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "STDValue": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 286,
                            "Name": "STDValue",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                        "Order": 1,
                        "Name": "[AT401] Get X-HOME",
                        "IsAsync": false,
                        "ComponentIDs": [
                          0
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "LaserPose": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 287,
                            "Name": "LaserPose",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              342
                            ]
                          },
                          "ReflectorPose": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 288,
                            "Name": "ReflectorPose",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "STDValue": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 289,
                            "Name": "STDValue",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                        "Order": 2,
                        "Name": "[AT401] Get Y-HOME",
                        "IsAsync": false,
                        "ComponentIDs": [
                          0
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "LaserPose": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 290,
                            "Name": "LaserPose",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              343
                            ]
                          },
                          "ReflectorPose": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 291,
                            "Name": "ReflectorPose",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "STDValue": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 292,
                            "Name": "STDValue",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Mathematics.LinearAlgebra.FrameOnThreePoints, AkeoCore",
                        "Order": 3,
                        "Name": "Compute Effector FRAME",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "Origine": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 293,
                            "Name": "Origine",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              285
                            ]
                          },
                          "Point Direction 1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 294,
                            "Name": "Point Direction 1",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              288
                            ]
                          },
                          "Point Direction 2": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 295,
                            "Name": "Point Direction 2",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              291
                            ]
                          },
                          "Directions données": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 296,
                            "Name": "Directions données",
                            "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Scaling origine": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 297,
                            "Name": "Scaling origine",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 1.0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Scaling point direction 1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 298,
                            "Name": "Scaling point direction 1",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 1.0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Scaling point direction 2": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 299,
                            "Name": "Scaling point direction 2",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 1.0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Result Frame": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 300,
                            "Name": "Result Frame",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                        "Order": 4,
                        "Name": "[FRAME] Eff-in-LEICA",
                        "IsAsync": false,
                        "ComponentIDs": [
                          4
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Relation entre repères": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 301,
                            "Name": "Relation entre repères",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              300
                            ]
                          },
                          "Repère départ": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 302,
                            "Name": "Repère départ",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "SO_EFFECTOR",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Repère d'arrivée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 303,
                            "Name": "Repère d'arrivée",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "AT_WORLD",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Sauvegarde base de donnée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 304,
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
                    "Ports": {}
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                    "Order": 4,
                    "Name": "[T401] Update CATeye-in-EFF",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                        "Order": 0,
                        "Name": "[FRAME] CATX-in-EFF",
                        "IsAsync": false,
                        "ComponentIDs": [
                          4
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Relation entre repères": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 305,
                            "Name": "Relation entre repères",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              347
                            ]
                          },
                          "Repère départ": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 306,
                            "Name": "Repère départ",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "CATX",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Repère d'arrivée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 307,
                            "Name": "Repère d'arrivée",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "SO_EFFECTOR",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Sauvegarde base de donnée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 308,
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
                        "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                        "Order": 1,
                        "Name": "[FRAME] CATY-in-EFF",
                        "IsAsync": false,
                        "ComponentIDs": [
                          4
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Relation entre repères": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 309,
                            "Name": "Relation entre repères",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              348
                            ]
                          },
                          "Repère départ": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 310,
                            "Name": "Repère départ",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "CATY",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Repère d'arrivée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 311,
                            "Name": "Repère d'arrivée",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "SO_EFFECTOR",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Sauvegarde base de donnée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 312,
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
                    "Ports": {}
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                    "Order": 5,
                    "Name": "[KRC4] Update Flange-in-World",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                        "Order": 0,
                        "Name": "[KRC4] Get Current Pose ",
                        "IsAsync": false,
                        "ComponentIDs": [
                          5
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Tool": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 313,
                            "Name": "Tool",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "Flange",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Frame": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 314,
                            "Name": "Frame",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "World",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "CoordType": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 315,
                            "Name": "CoordType",
                            "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Pose": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 316,
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
                        "Order": 1,
                        "Name": "[FRAME] Eff-in-SOLAR",
                        "IsAsync": false,
                        "ComponentIDs": [
                          4
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Relation entre repères": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 317,
                            "Name": "Relation entre repères",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              316
                            ]
                          },
                          "Repère départ": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 318,
                            "Name": "Repère départ",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "SO_FLANGE",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Repère d'arrivée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 319,
                            "Name": "Repère d'arrivée",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "SO_WORLD",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Sauvegarde base de donnée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 320,
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
                    "Ports": {}
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                    "Order": 6,
                    "Name": "Update Eff-in-Flange",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                        "Order": 0,
                        "Name": "Get Eff-in-Flange",
                        "IsAsync": false,
                        "ComponentIDs": [
                          4
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Repère départ": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 349,
                            "Name": "Repère départ",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "SO_EFFECTOR",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Repère d'arrivée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 350,
                            "Name": "Repère d'arrivée",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "SO_FLANGE",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Relation entre repères": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 351,
                            "Name": "Relation entre repères",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Chemin des transformations": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 352,
                            "Name": "Chemin des transformations",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                        "Order": 1,
                        "Name": "[VAR] Save Eff-in-Flange",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "InPose": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 354,
                            "Name": "InPose",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              351
                            ]
                          },
                          "GlobalPosition": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 355,
                            "Name": "GlobalPosition",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "EFF-in-FLANGE",
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
                    "Order": 7,
                    "Name": "Update Solar-in-Tracker",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                        "Order": 0,
                        "Name": "[FRAME] Solar-in-Tracker",
                        "IsAsync": false,
                        "ComponentIDs": [
                          4
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Repère départ": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 325,
                            "Name": "Repère départ",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "SO_WORLD",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Repère d'arrivée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 326,
                            "Name": "Repère d'arrivée",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "AT_WORLD",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Relation entre repères": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 327,
                            "Name": "Relation entre repères",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Chemin des transformations": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 328,
                            "Name": "Chemin des transformations",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                        "Order": 1,
                        "Name": "[FRAME] ADD Solar-in-Tracker",
                        "IsAsync": false,
                        "ComponentIDs": [
                          4
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Relation entre repères": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 329,
                            "Name": "Relation entre repères",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              327
                            ]
                          },
                          "Repère départ": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 330,
                            "Name": "Repère départ",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "SO_WORLD",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Repère d'arrivée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 331,
                            "Name": "Repère d'arrivée",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "AT_WORLD",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Sauvegarde base de donnée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 332,
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
                    "Ports": {}
                  },
                  {
                    "$type": "AkeoCore.Mathematics.FrameManager.ExportFrameManager, AkeoCore",
                    "Order": 8,
                    "Name": "[FRAME] Export",
                    "IsAsync": false,
                    "ComponentIDs": [
                      4
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Exporter Dot Graph": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 333,
                        "Name": "Exporter Dot Graph",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": true,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Chemin fichier Dot Graph": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 334,
                        "Name": "Chemin fichier Dot Graph",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "C:\\AKEOPLUS\\Frames\\",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Exporter transformations": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 335,
                        "Name": "Exporter transformations",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": true,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Chemin fichier transformations": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 336,
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
                "Ports": {}
              },
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 2,
                "Name": "SI NON --> (VOID)",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {}
              }
            ],
            "Ports": {
              "ValueToTest": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 279,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  278
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 280,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 281,
                "Name": "Value",
                "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                "PortType": 2,
                "CurrentValue": 6,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {}
      }
    ],
    "Ports": {
      "[CUR] A1-in-AT401": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 52,
        "Name": "[CUR] A1-in-AT401",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            2123.2758733040837,
            -1795.4521164063194,
            -1306.9901730369008,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "[CUR] A2-in-AT401": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 53,
        "Name": "[CUR] A2-in-AT401",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            3471.5564638299393,
            -3457.2989112611758,
            -1307.2443286618823,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "[CUR] A3-in-AT401": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 54,
        "Name": "[CUR] A3-in-AT401",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            2118.1222810896538,
            -1790.1249666212368,
            -404.53792503984096,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "[CUR] Pannel-in-AT401": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 173,
        "Name": "[CUR] Pannel-in-AT401",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            2123.2758733040837,
            -1795.4521164063194,
            -1306.9901730369008,
            90.06507627500919,
            -50.947062024960545,
            0.043731213446619108
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "[REF] PlaneReference": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 176,
        "Name": "[REF] PlaneReference",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            2203.37869601878,
            -1739.11435703087,
            -1308.67385622352,
            89.8114425861403,
            -50.7289777511947,
            -0.121099028063685
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "SOLAR HOME": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 339,
        "Name": "SOLAR HOME",
        "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
        "PortType": 2,
        "CurrentValue": {
          "AxisNumber": 0,
          "_Pose": [
            -11.21,
            -57.32,
            146.89,
            -9.72,
            -88.76,
            75.3
          ]
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "CAT-O": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 341,
        "Name": "CAT-O",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            1843.51,
            -2403.061,
            -1406.884,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "CAT-X": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 342,
        "Name": "CAT-X",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            1986.683,
            -2281.0194,
            -1410.036,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "CAT-Y": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 343,
        "Name": "CAT-Y",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            1844.517,
            -2401.719,
            -1298.71,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "X-in-EFF": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 347,
        "Name": "X-in-EFF",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            190.0,
            0.0,
            0.0,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "Y-in-EFF": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 348,
        "Name": "Y-in-EFF",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            0.0,
            110.0,
            0.0,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "EFF-in-FLANGE": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 353,
        "Name": "EFF-in-FLANGE",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            -131.6145,
            69.35094,
            154.0914,
            65.38321,
            270.1078,
            99.62208
          ],
          "Convention": 1
        },
        "Behavior": 0,
        "ProducerIDs": []
      }
    }
  },
  "MaxId": 384
}