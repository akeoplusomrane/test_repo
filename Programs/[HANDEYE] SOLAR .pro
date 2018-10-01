{
  "Id": 0,
  "ReferenceName": "[HANDEYE] SOLAR ",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "[HANDEYE] SOLAR ",
    "IsAsync": false,
    "ComponentIDs": [],
    "ChildActions": [
      {
        "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrame, AkeoCore",
        "Order": 0,
        "Name": "[FRAME] Delete ALL!!",
        "IsAsync": false,
        "ComponentIDs": [
          4
        ],
        "ChildActions": [],
        "Ports": {
          "Supprimer tous les repères": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 101,
            "Name": "Supprimer tous les repères",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Repère à supprimer": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 102,
            "Name": "Repère à supprimer",
            "TypeName": "System.String, mscorlib",
            "PortType": 2,
            "CurrentValue": "",
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Sauvegarde base de donnée": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 103,
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
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 1,
        "Name": "[IF INITIALIZATION]",
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
                    "Id": 1188,
                    "Name": "UserMessage",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Voulez-vous Initialiser le Tracker ?",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "ButtonLayout": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1189,
                    "Name": "ButtonLayout",
                    "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                    "PortType": 2,
                    "CurrentValue": 4,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Icon": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1190,
                    "Name": "Icon",
                    "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                    "PortType": 2,
                    "CurrentValue": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "UserResult": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1191,
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
                            "Id": 1195,
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
                            "Id": 1196,
                            "Name": "LaserPose",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              1187
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
                            "Id": 1197,
                            "Name": "MessageType",
                            "TypeName": "AkeoCore.Application.LogType, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Message": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1198,
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
                            "Id": 1199,
                            "Name": "UserMessage",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "AT402 Initialisé avec Succès !",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ButtonLayout": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1200,
                            "Name": "ButtonLayout",
                            "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Icon": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1201,
                            "Name": "Icon",
                            "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                            "PortType": 2,
                            "CurrentValue": 3,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "UserResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 1202,
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
                    "Id": 1192,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1191
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1193,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1194,
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
                "Id": 1187,
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
            "Name": "[RECALAGE AT-SO]",
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
                    "Id": 1208,
                    "Name": "UserMessage",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Voulez-vous Relocaliser le Robot dans le Tracker ?",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "ButtonLayout": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1209,
                    "Name": "ButtonLayout",
                    "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                    "PortType": 2,
                    "CurrentValue": 4,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Icon": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1210,
                    "Name": "Icon",
                    "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                    "PortType": 2,
                    "CurrentValue": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "UserResult": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1211,
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
                "Name": "CONDITION (RELOC)",
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
                        "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                        "Order": 0,
                        "Name": "[CLEAR] TRACKER-in-SOLAR",
                        "IsAsync": false,
                        "ComponentIDs": [
                          4
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Repère départ": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1215,
                            "Name": "Repère départ",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "AT_WORLD",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Repère d'arrivée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1216,
                            "Name": "Repère d'arrivée",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "SO_WORLD",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Sauvegarde base de donnée": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1217,
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
                        "Order": 1,
                        "Name": "[TRAJ] HOME",
                        "IsAsync": false,
                        "ComponentIDs": [
                          5
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "ListMouvement": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1218,
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
                                      "Label": "M1_I1",
                                      "Position": {
                                        "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                        "AxisNumber": 0,
                                        "_Pose": [
                                          -69.585487365722656,
                                          -75.388923645019531,
                                          149.11087036132812,
                                          -69.728851318359375,
                                          -83.964553833007812,
                                          90.401016235351563
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
                          "M1_I1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 1397,
                            "Name": "M1_I1",
                            "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              34
                            ]
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                        "Order": 2,
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
                              0,
                              11
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "LaserPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 1220,
                                "Name": "LaserPose",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1203
                                ]
                              },
                              "ReflectorPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 1221,
                                "Name": "ReflectorPose",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "STDValue": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 1222,
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
                              0,
                              11
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "LaserPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 1223,
                                "Name": "LaserPose",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1204
                                ]
                              },
                              "ReflectorPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 1224,
                                "Name": "ReflectorPose",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "STDValue": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 1225,
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
                              0,
                              11
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "LaserPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 1226,
                                "Name": "LaserPose",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1205
                                ]
                              },
                              "ReflectorPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 1227,
                                "Name": "ReflectorPose",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "STDValue": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 1228,
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
                                "Id": 1229,
                                "Name": "Origine",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1221
                                ]
                              },
                              "Point Direction 1": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 1230,
                                "Name": "Point Direction 1",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1224
                                ]
                              },
                              "Point Direction 2": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 1231,
                                "Name": "Point Direction 2",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1227
                                ]
                              },
                              "Directions données": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1232,
                                "Name": "Directions données",
                                "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Scaling origine": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1233,
                                "Name": "Scaling origine",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 1.0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Scaling point direction 1": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1234,
                                "Name": "Scaling point direction 1",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 1.0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Scaling point direction 2": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1235,
                                "Name": "Scaling point direction 2",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 1.0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Result Frame": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 1236,
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
                                "Id": 1237,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1236
                                ]
                              },
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1238,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_EFFECTOR",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1239,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "AT_WORLD",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Sauvegarde base de donnée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1240,
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
                        "Order": 3,
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
                                "Id": 1241,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  125
                                ]
                              },
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1242,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "CATX",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1243,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_EFFECTOR",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Sauvegarde base de donnée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1244,
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
                                "Id": 1245,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  126
                                ]
                              },
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1246,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "CATY",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1247,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_EFFECTOR",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Sauvegarde base de donnée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1248,
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
                                "Id": 1249,
                                "Name": "Tool",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "Flange",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Frame": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1250,
                                "Name": "Frame",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "World",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "CoordType": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1251,
                                "Name": "CoordType",
                                "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                                "PortType": 2,
                                "CurrentValue": 0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Pose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 1252,
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
                            "Name": "[FRAME] Flange-in-SO_WORLD",
                            "IsAsync": false,
                            "ComponentIDs": [
                              4
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "Relation entre repères": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 1253,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1252
                                ]
                              },
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1254,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_FLANGE",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1255,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_WORLD",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Sauvegarde base de donnée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1256,
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
                        "Name": "MAJ EFF-in-FLANGE",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                            "Order": 0,
                            "Name": "[FRAME] Eff-in-Flange",
                            "IsAsync": false,
                            "ComponentIDs": [
                              4
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "Relation entre repères": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 1257,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  19
                                ]
                              },
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1258,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_EFFECTOR",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1259,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_FLANGE",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Sauvegarde base de donnée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1260,
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
                                "Id": 1261,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_WORLD",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1262,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "AT_WORLD",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Relation entre repères": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 1263,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "Chemin des transformations": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 1264,
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
                                "Id": 1265,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1263
                                ]
                              },
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1266,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_WORLD",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1267,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "AT_WORLD",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Sauvegarde base de donnée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1268,
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
                        "Name": "EXPORT ",
                        "IsAsync": false,
                        "ComponentIDs": [
                          4
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Exporter Dot Graph": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1269,
                            "Name": "Exporter Dot Graph",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 2,
                            "CurrentValue": true,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Chemin fichier Dot Graph": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1270,
                            "Name": "Chemin fichier Dot Graph",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "C:\\AKEOPLUS\\Frames\\SOLAR\\",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Exporter transformations": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1271,
                            "Name": "Exporter transformations",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 2,
                            "CurrentValue": true,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Chemin fichier transformations": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1272,
                            "Name": "Chemin fichier transformations",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "C:\\AKEOPLUS\\Frames\\SOLAR\\",
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
                    "Id": 1212,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1211
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1213,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1214,
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
              "O-HOME": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1203,
                "Name": "O-HOME",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
                "CurrentValue": {
                  "_Pose": [
                    943.41497848903225,
                    -2186.6425792759196,
                    -1262.8841208203987,
                    0.0,
                    0.0,
                    0.0
                  ],
                  "Convention": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "X-HOME": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1204,
                "Name": "X-HOME",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
                "CurrentValue": {
                  "_Pose": [
                    1090.1397029173127,
                    -2062.9005786679845,
                    -1264.5861814455827,
                    0.0,
                    0.0,
                    0.0
                  ],
                  "Convention": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Y-HOME": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1205,
                "Name": "Y-HOME",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
                "CurrentValue": {
                  "_Pose": [
                    943.948086982752,
                    -2186.87776793446,
                    -1152.9144451845268,
                    0.0,
                    0.0,
                    0.0
                  ],
                  "Convention": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "CAT-X-in-EFF": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1206,
                "Name": "CAT-X-in-EFF",
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
              "CAT-Y-in-EFF": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1207,
                "Name": "CAT-Y-in-EFF",
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
              }
            }
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 2,
        "Name": "[P1] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 229,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1289.167847,
                              223.631592,
                              583.61554,
                              91.285332000000011,
                              165.772901,
                              90.565041
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 230,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 231,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 232,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 233,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 234,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 235,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 236,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 2,
                "Name": "test",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 340,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      236
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 341,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "TempFlange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 237,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      236
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 238,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 239,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 240,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 241,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 242,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 243,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 244,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 245,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 246,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 247,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 248,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 6,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 249,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 250,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 251,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 252,
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
                "Order": 7,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 253,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      243
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 254,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 255,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      247
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 256,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 9,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 257,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      251
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 258,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {
              "TempFlange": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 339,
                "Name": "TempFlange",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
                "CurrentValue": {
                  "_Pose": [
                    1289.167724609375,
                    223.63198852539062,
                    583.61602783203125,
                    91.285186767578139,
                    165.7728853225708,
                    90.564994812011733
                  ],
                  "Convention": 1
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 2,
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 259,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 260,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 261,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 262,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 263,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 264,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 265,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 266,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 267,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 268,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      260
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 269,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      263
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 270,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      266
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 271,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 272,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 273,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 274,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 275,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 276,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      275
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 277,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 278,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 279,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 280,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 281,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 282,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      281
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 283,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 3,
        "Name": "[P2] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 284,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1289.134155,
                              113.254036,
                              637.290527,
                              91.286414999999977,
                              165.774304,
                              90.569679
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 285,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 286,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 287,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 288,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 289,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 290,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 291,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 292,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      291
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 293,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 294,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 295,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 296,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 297,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 298,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 299,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 300,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 301,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 302,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 303,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 304,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 305,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 306,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 307,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 308,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      298
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 309,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 310,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      302
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 311,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 312,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      306
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 313,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 314,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 315,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 316,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 317,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 318,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 319,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 320,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 321,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 322,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 323,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      315
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 324,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      318
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 325,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      321
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 326,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 327,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 328,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 329,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 330,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 331,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      330
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 332,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 333,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 334,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 335,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 336,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 337,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      336
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 338,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 4,
        "Name": "[P3] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 346,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1209.005981,
                              82.299438,
                              732.219727,
                              93.999030999999988,
                              157.683252,
                              101.72454799999997
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 347,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 348,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 349,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 350,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 351,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 352,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 353,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 354,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      353
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 355,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 356,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 357,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 358,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 359,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 360,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 361,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 362,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 363,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 364,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 365,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 366,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 367,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 368,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 369,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 370,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      360
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 371,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 372,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      364
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 373,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 374,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      368
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 375,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 376,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 377,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 378,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 379,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 380,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 381,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 382,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 383,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 384,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 385,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      377
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 386,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      380
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 387,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      383
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 388,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 389,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 390,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 391,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 392,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 393,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      392
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 394,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 395,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 396,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 397,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 398,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 399,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      398
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 400,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 5,
        "Name": "[P4] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 401,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1209.549438,
                              82.291695,
                              533.379822,
                              83.210457000000019,
                              156.939226,
                              74.855721000000031
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 402,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 403,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 404,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 405,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 406,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 407,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 408,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 409,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      408
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 410,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 411,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 412,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 413,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 414,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 415,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 416,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 417,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 418,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 419,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 420,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 421,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 422,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 423,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 424,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 425,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      415
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 426,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 427,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      419
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 428,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 429,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      423
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 430,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 431,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 432,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 433,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 434,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 435,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 436,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 437,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 438,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 439,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 440,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      432
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 441,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      435
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 442,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      438
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 443,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 444,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 445,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 446,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 447,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 448,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      447
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 449,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 450,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 451,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 452,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 453,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 454,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      453
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 455,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 6,
        "Name": "[P5] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 456,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1211.344604,
                              1122.604614,
                              532.573914,
                              83.221085,
                              156.96532200000001,
                              74.830399000000014
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 457,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 458,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 459,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 460,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 461,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 462,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 463,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 464,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      463
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 465,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 466,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 467,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 468,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 469,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 470,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 471,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 472,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 473,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 474,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 475,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 476,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 477,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 478,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 479,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 480,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      470
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 481,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 482,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      474
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 483,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 484,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      478
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 485,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 486,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 487,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 488,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 489,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 490,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 491,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 492,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 493,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 494,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 495,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      487
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 496,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      490
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 497,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      493
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 498,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 499,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 500,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 501,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 502,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 503,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      502
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 504,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 505,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 506,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 507,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 508,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 509,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      508
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 510,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 7,
        "Name": "[P6] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 511,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1211.421631,
                              1122.59436,
                              532.604248,
                              86.711113000000026,
                              174.974281,
                              90.350624
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 512,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 513,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 514,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 515,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 516,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 517,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 518,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 519,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      518
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 520,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 521,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 522,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 523,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 524,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 525,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 526,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 527,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 528,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 529,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 530,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 531,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 532,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 533,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 534,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 535,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      525
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 536,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 537,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      529
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 538,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 539,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      533
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 540,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 541,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 542,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 543,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 544,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 545,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 546,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 547,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 548,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 549,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 550,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      542
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 551,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      545
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 552,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      548
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 553,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 554,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 555,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 556,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 557,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 558,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      557
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 559,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 560,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 561,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 562,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 563,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 564,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      563
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 565,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 8,
        "Name": "[P7] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 566,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1211.445068,
                              1122.696167,
                              887.328674,
                              86.291488999999984,
                              149.894003,
                              90.08886
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 567,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 568,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 569,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 570,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 571,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 572,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 573,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 574,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      573
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 575,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 576,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 577,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 578,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 579,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 580,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 581,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 582,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 583,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 584,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 585,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 586,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 587,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 588,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 589,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 590,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      580
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 591,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 592,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      584
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 593,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 594,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      588
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 595,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 596,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 597,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 598,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 599,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 600,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 601,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 602,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 603,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 604,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 605,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      597
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 606,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      600
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 607,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      603
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 608,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 609,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 610,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 611,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 612,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 613,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      612
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 614,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 615,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 616,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 617,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 618,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 619,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      618
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 620,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 9,
        "Name": "[P8] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 621,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1211.460083,
                              1122.701904,
                              887.352173,
                              88.033623,
                              164.64706900000002,
                              95.570740000000015
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 622,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 623,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 624,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 625,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 626,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 627,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 628,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 629,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      628
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 630,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 631,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 632,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 633,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 634,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 635,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 636,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 637,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 638,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 639,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 640,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 641,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 642,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 643,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 644,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 645,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      635
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 646,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 647,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      639
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 648,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 649,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      643
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 650,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 651,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 652,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 653,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 654,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 655,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 656,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 657,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 658,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 659,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 660,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      652
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 661,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      655
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 662,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      658
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 663,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 664,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 665,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 666,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 667,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 668,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      667
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 669,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 670,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 671,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 672,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 673,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 674,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      673
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 675,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 10,
        "Name": "[P9] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 676,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1101.147095,
                              1447.769287,
                              1362.822021,
                              83.934601000000015,
                              167.37772200000003,
                              78.377518000000023
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 677,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 678,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 679,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 680,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 681,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 682,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 683,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 684,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      683
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 685,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 686,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 687,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 688,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 689,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 690,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 691,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 692,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 693,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 694,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 695,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 696,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 697,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 698,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 699,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 700,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      690
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 701,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 702,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      694
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 703,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 704,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      698
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 705,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 706,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 707,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 708,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 709,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 710,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 711,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 712,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 713,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 714,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 715,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      707
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 716,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      710
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 717,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      713
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 718,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 719,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 720,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 721,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 722,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 723,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      722
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 724,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 725,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 726,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 727,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 728,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 729,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      728
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 730,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 11,
        "Name": "[P10] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 731,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1071.266724,
                              1483.101563,
                              1434.457642,
                              88.717414999999988,
                              164.60124400000004,
                              98.179733000000013
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 732,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 733,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 734,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 735,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 736,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 737,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 738,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 739,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      738
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 740,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 741,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 742,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 743,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 744,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 745,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 746,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 747,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 748,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 749,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 750,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 751,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 752,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 753,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 754,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 755,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      745
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 756,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 757,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      749
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 758,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 759,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      753
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 760,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 761,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 762,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 763,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 764,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 765,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 766,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 767,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 768,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 769,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 770,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      762
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 771,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      765
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 772,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      768
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 773,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 774,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 775,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 776,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 777,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 778,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      777
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 779,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 780,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 781,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 782,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 783,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 784,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      783
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 785,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 12,
        "Name": "[P11] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 786,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1071.187622,
                              1371.874756,
                              1434.669556,
                              87.139106999999981,
                              175.265158,
                              92.293686000000008
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 787,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 788,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 789,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 790,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 791,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 792,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 793,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 794,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      793
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 795,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 796,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 797,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 798,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 799,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 800,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 801,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 802,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 803,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 804,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 805,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 806,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 807,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 808,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 809,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 810,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      800
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 811,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 812,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      804
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 813,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 814,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      808
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 815,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 816,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 817,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 818,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 819,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 820,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 821,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 822,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 823,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 824,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 825,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      817
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 826,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      820
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 827,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      823
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 828,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 829,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 830,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 831,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 832,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 833,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      832
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 834,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 835,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 836,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 837,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 838,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 839,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      838
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 840,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 13,
        "Name": "[P12] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 841,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1071.159546,
                              1371.848999,
                              1290.788208,
                              87.143684,
                              175.26494399999999,
                              92.283424000000025
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 842,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 843,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 844,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 845,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 846,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 847,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 848,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 849,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      848
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 850,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 851,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 852,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 853,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 854,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 855,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 856,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 857,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 858,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 859,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 860,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 861,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 862,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 863,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 864,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 865,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      855
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 866,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 867,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      859
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 868,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 869,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      863
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 870,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 871,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 872,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 873,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 874,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 875,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 876,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 877,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 878,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 879,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 880,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      872
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 881,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      875
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 882,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      878
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 883,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 884,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 885,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 886,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 887,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 888,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      887
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 889,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 890,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 891,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 892,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 893,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 894,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      893
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 895,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 14,
        "Name": "[P13] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 896,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1070.436035,
                              477.065033,
                              1435.876831,
                              88.113929999999968,
                              162.83411,
                              95.436835999999985
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 897,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 898,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 899,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 900,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 901,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 902,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 903,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 904,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      903
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 905,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 906,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 907,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 908,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 909,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 910,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 911,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 912,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 913,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 914,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 915,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 916,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 917,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 918,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 919,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 920,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      910
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 921,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 922,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      914
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 923,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 924,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      918
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 925,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 926,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 927,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 928,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 929,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 930,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 931,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 932,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 933,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 934,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 935,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      927
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 936,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      930
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 937,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      933
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 938,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 939,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 940,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 941,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 942,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 943,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      942
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 944,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 945,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 946,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 947,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 948,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 949,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      948
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 950,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 15,
        "Name": "[P14] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 951,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1177.692261,
                              -197.792938,
                              731.70459,
                              76.454224000000011,
                              176.62205500000002,
                              82.843948000000069
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 952,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 953,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 954,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 955,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 956,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 957,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 958,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 959,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      958
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 960,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 961,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 962,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 963,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 964,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 965,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 966,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 967,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 968,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 969,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 970,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 971,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 972,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 973,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 974,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 975,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      965
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 976,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 977,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      969
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 978,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 979,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      973
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 980,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 981,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 982,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 983,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 984,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 985,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 986,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 987,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 988,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 989,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 990,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      982
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 991,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      985
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 992,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      988
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 993,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 994,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 995,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 996,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 997,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 998,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      997
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 999,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1000,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1001,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1002,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1003,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1004,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1003
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1005,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 16,
        "Name": "[P15] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1006,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1177.736572,
                              7.478375,
                              731.787109,
                              87.839301999999989,
                              162.853907,
                              94.600722999999988
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1007,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1008,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1009,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1010,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1011,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1012,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1013,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1014,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1013
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1015,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1016,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1017,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1018,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1019,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1020,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1021,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1022,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1023,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1024,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1025,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1026,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1027,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1028,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1029,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1030,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1020
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1031,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1032,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1024
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1033,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1034,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1028
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1035,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1036,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1037,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1038,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1039,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1040,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1041,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1042,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1043,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1044,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1045,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1037
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1046,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1040
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1047,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1043
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1048,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1049,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1050,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1051,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1052,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1053,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1052
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1054,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1055,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1056,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1057,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1058,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1059,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1058
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1060,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 17,
        "Name": "[P16] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1061,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1177.606201,
                              -983.723938,
                              764.900696,
                              106.50414999999998,
                              163.34643700000004,
                              91.506614999999982
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1062,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1063,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1064,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1065,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1066,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1067,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1068,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1069,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1068
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1070,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1071,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1072,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1073,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1074,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1075,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1076,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1077,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1078,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1079,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1080,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1081,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1082,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1083,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1084,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1085,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1075
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1086,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1087,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1079
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1088,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1089,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1083
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1090,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1091,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1092,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1093,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1094,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1095,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1096,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1097,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1098,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1099,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1100,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1092
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1101,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1095
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1102,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1098
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1103,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1104,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1105,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1106,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1107,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1108,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1107
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1109,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1110,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1111,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1112,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1113,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1114,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1113
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1115,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 18,
        "Name": "[P17] (Process)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRAJ Next Pose ",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 121,
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
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              1177.529541,
                              -1200.742432,
                              1240.420288,
                              66.086715999999967,
                              167.168304,
                              82.105529999999987
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_2"
                    }
                  ]
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[FRAME] MAJ Reperes",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FRAME] CUT Eff-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 106,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 107,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 108,
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
                "Name": "Get Robot Flange ",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 152,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 153,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 154,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 155,
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
                "Name": "[FRAME] add Flange-in-Solar",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 156,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      155
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 157,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 158,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 159,
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
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 3,
                "Name": "[FRAME] Get CurCATX",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 164,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 165,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 166,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 167,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FRAME] Get CurCATY",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 179,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 180,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 181,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 182,
                    "Name": "Chemin des transformations",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                "Order": 5,
                "Name": "[FRAME] Get CurCATO",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 160,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 161,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 162,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 163,
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
                "Order": 6,
                "Name": "[MAJ] CUR CATX",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 174,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      166
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 195,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATX",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 7,
                "Name": "[MAJ] CUR CATY",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 184,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      181
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 185,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATY",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 8,
                "Name": "[MAJ] CUR CATO",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 170,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      162
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 173,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "CUR-CATO",
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
            "Name": "[AT401] Mesure Effecteur",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                "Order": 0,
                "Name": "[AT401] MES-O",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 206,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      183
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 207,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 208,
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
                "Name": "[AT401] MES-X",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 209,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      168
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 210,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 211,
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
                "Name": "[AT401] MES-Y",
                "IsAsync": false,
                "ComponentIDs": [
                  0,
                  11
                ],
                "ChildActions": [],
                "Ports": {
                  "LaserPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 212,
                    "Name": "LaserPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      169
                    ]
                  },
                  "ReflectorPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 213,
                    "Name": "ReflectorPose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "STDValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 214,
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
                "Name": "Calcul Repère EFFECTEUR",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 215,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      207
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 216,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      210
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 217,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      213
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 218,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 219,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 220,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 221,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 222,
                    "Name": "Result Frame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 4,
                "Name": "[CSV] Effecteur-in-Tracker",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 223,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      222
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 224,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\EffectorInTracker.csv",
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
            "Order": 3,
            "Name": "[KRC4] Mesure Flange",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Status.GetRobotPose, AkeoRoboticist",
                "Order": 0,
                "Name": "[KRC4] Get Flange in World",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "Tool": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 225,
                    "Name": "Tool",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Flange",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 226,
                    "Name": "Frame",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "World",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "CoordType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 227,
                    "Name": "CoordType",
                    "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Pose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 228,
                    "Name": "Pose",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                "Order": 1,
                "Name": "[CSV] Flange-in-World",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "OutputTarget": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 204,
                    "Name": "OutputTarget",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      228
                    ]
                  },
                  "File Path": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 205,
                    "Name": "File Path",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "C:\\AKEOPLUS\\CSV\\FlangeInWorld.csv",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {}
          }
        ],
        "Ports": {}
      }
    ],
    "Ports": {
      "EFF-in-FLANGE (Gross)": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 19,
        "Name": "EFF-in-FLANGE (Gross)",
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
      },
      "SOLAR-HOME": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 34,
        "Name": "SOLAR-HOME",
        "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
        "PortType": 2,
        "CurrentValue": {
          "AxisNumber": 0,
          "_Pose": [
            -69.585487365722656,
            -75.388923645019531,
            149.11087036132812,
            -69.728851318359375,
            -83.964553833007812,
            90.401016235351563
          ]
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "O-HOME": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 36,
        "Name": "O-HOME",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            1961.298,
            -2267.877,
            -1129.205,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "X-HOME": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 37,
        "Name": "X-HOME",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            2105.15,
            -2146.61,
            -1127.416,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "Y-HOME": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 38,
        "Name": "Y-HOME",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            1959.43,
            -2267.536,
            -1021.018,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "CATX-in-EFF": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 125,
        "Name": "CATX-in-EFF",
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
      "CATY-in-EFF": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 126,
        "Name": "CATY-in-EFF",
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
      "CUR-CATX": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 168,
        "Name": "CUR-CATX",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            2132.2931629878044,
            -2121.2658978622781,
            -1154.7819846886332,
            88.902260103161936,
            40.77873569315885,
            1.283064014144413
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "CUR-CATY": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 169,
        "Name": "CUR-CATY",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            1986.5889579940508,
            -2244.8916478256751,
            -1046.6757471575556,
            88.902260103161936,
            40.77873569315885,
            1.283064014144413
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "CUR-CATO": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 183,
        "Name": "CUR-CATO",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            1988.4541098497548,
            -2245.3900467672029,
            -1156.6588040665647,
            40.792148897710639,
            -0.56597672687518974,
            89.168731311772746
          ],
          "Convention": 1
        },
        "Behavior": 0,
        "ProducerIDs": []
      }
    }
  },
  "MaxId": 1397
}