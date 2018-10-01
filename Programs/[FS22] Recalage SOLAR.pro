{
  "Id": 0,
  "ReferenceName": "[FS22] Recalage SOLAR",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "[FS22] Recalage SOLAR",
    "IsAsync": false,
    "ComponentIDs": [],
    "ChildActions": [
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 0,
        "Name": "PREPARATION FRAME MANAGER",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
            "Order": 0,
            "Name": "[FRAME MANAGER] AJOUT TOOL IN EFFECTOR",
            "IsAsync": false,
            "ComponentIDs": [
              4
            ],
            "ChildActions": [],
            "Ports": {
              "Relation entre repères": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 16,
                "Name": "Relation entre repères",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  74
                ]
              },
              "Repère départ": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 17,
                "Name": "Repère départ",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "SO_TOOL",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Repère d'arrivée": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 18,
                "Name": "Repère d'arrivée",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "SO_EFFECTOR",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Sauvegarde base de donnée": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 19,
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
            "$type": "AkeoMetrology.SetReflector, AkeoMetrology",
            "Order": 1,
            "Name": "Set CER",
            "IsAsync": false,
            "ComponentIDs": [
              0
            ],
            "ChildActions": [],
            "Ports": {
              "ReflectorName": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 248,
                "Name": "ReflectorName",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "CER 75",
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
        "Name": "RECALAGE ITERATIF SOLAR",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 0,
            "Name": "[DEPLACEMENT POSE THEORIQUE]",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                "Order": 0,
                "Name": "[FM] MAJ SOOSR in TOOL",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 4,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 5,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_OSR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 6,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_TOOL",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 7,
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
                "Name": "[FM] MAJ OSR IN PANNEL",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 79,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      3
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 80,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_OSR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 81,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_PANNEL",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 82,
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
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 2,
                "Name": "[FM] DEL EFFECTEUR in AT_WORLD",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 29,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_EFFECTOR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 22,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 23,
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
                "Order": 3,
                "Name": "[FM] AJOUT SOSOR in ATOSR",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 34,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      20
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 35,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_OSR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 36,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_OSR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 37,
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
                "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                "Order": 4,
                "Name": "[FM] DEL SOFLANGE in SOWORLD",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 38,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 39,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 40,
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
                "Order": 5,
                "Name": "[FM]GET IDEAL ROBOT POSE",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 42,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 43,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 44,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 45,
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
                "Name": "[SAVE] IDEAL POSE",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 46,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      44
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 47,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "POSE_SOLAR_IDEAL",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                "Order": 7,
                "Name": "[FM] MAJ SOSOR in ATOSR APP",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 413,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      417
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 414,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_OSR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 415,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_OSR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 416,
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
                "Order": 8,
                "Name": "[FM]GET APPROACG HOSE",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 420,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_FLANGE",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 421,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_WORLD",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 422,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Chemin des transformations": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 423,
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
                "Order": 9,
                "Name": "[SAVE] APPROCH POSE",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 418,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      422
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 419,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "POSE_APPROCHE_OSR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 10,
                "Name": "[SOLAR] Move to pose théorique",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "ListMouvement": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 57,
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
                                  -5.689068,
                                  -57.889748,
                                  146.879654,
                                  -4.027632,
                                  -89.625092,
                                  74.873619
                                ]
                              }
                            },
                            {
                              "Label": "M1_I2",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  1239.1988161139175,
                                  631.48080788826064,
                                  -680.022751976881,
                                  90.100697604960658,
                                  164.97655310172672,
                                  90.040584787544148
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  1289.1987421199983,
                                  631.54382479894821,
                                  -680.08130328290372,
                                  90.100697604960658,
                                  164.97655310172672,
                                  90.040584787544148
                                ],
                                "Convention": 1
                              }
                            }
                          ],
                          "ToolTag": "Flange",
                          "FrameTag": "World",
                          "MdescrTag": "Mdescr_1"
                        }
                      ]
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 58,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      41
                    ]
                  },
                  "M1_I2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 424,
                    "Name": "M1_I2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      412
                    ]
                  },
                  "M1_I3": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 518,
                    "Name": "M1_I3",
                    "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      517
                    ]
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                "Order": 11,
                "Name": "[FM] MAJ SOSOR in ATOSR",
                "IsAsync": false,
                "ComponentIDs": [
                  4
                ],
                "ChildActions": [],
                "Ports": {
                  "Relation entre repères": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 425,
                    "Name": "Relation entre repères",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      20
                    ]
                  },
                  "Repère départ": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 426,
                    "Name": "Repère départ",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "SO_OSR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Repère d'arrivée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 427,
                    "Name": "Repère d'arrivée",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "AT_OSR",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Sauvegarde base de donnée": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 428,
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
            "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
            "Order": 1,
            "Name": "[BOUCLE ASSERVISSEMENT PI]",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 1,
                "Name": "[SENSE]",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                    "Order": 0,
                    "Name": "[FM] DEL SOOSR in ATOSR",
                    "IsAsync": false,
                    "ComponentIDs": [
                      4
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Repère départ": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 243,
                        "Name": "Repère départ",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "SO_OSR",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Repère d'arrivée": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 86,
                        "Name": "Repère d'arrivée",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "AT_OSR",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Sauvegarde base de donnée": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 87,
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
                    "Name": "[SOLAR] Obtention position",
                    "IsAsync": false,
                    "ComponentIDs": [
                      5
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Tool": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 99,
                        "Name": "Tool",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Flange",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Frame": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 93,
                        "Name": "Frame",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "World",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "CoordType": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 94,
                        "Name": "CoordType",
                        "TypeName": "AkeoRoboticist.Robots.CoordinatesType, AkeoRoboticist",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Pose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 95,
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
                    "Name": "[SAVE] POSE SOLAR KRC4",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 111,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          95
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 112,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "POSE_SOLAR",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                    "Order": 3,
                    "Name": "[FM] AJOUT SOFLANGE in SOWORLD",
                    "IsAsync": false,
                    "ComponentIDs": [
                      4
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Relation entre repères": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 109,
                        "Name": "Relation entre repères",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          110
                        ]
                      },
                      "Repère départ": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 101,
                        "Name": "Repère départ",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "SO_FLANGE",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Repère d'arrivée": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 102,
                        "Name": "Repère d'arrivée",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "SO_WORLD",
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
                    "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                    "Order": 4,
                    "Name": "[TEST] PREV ERREUR ROTATION",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                        "Order": 1,
                        "Name": "IF",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 0,
                            "Name": "[SET] 3PT_MEASURMENT",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "InPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 154,
                                "Name": "InPose",
                                "TypeName": "System.Boolean, mscorlib",
                                "PortType": 2,
                                "CurrentValue": true,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 155,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "3PT_MEASURMENT",
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
                        "Name": "ELSE",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 0,
                            "Name": "[RESET] 3PT_MEASURMENT",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "InPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 156,
                                "Name": "InPose",
                                "TypeName": "System.Boolean, mscorlib",
                                "PortType": 2,
                                "CurrentValue": false,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 157,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "3PT_MEASURMENT",
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
                        "Id": 151,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          254
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 152,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 5,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 153,
                        "Name": "Value",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 0.1,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                    "Order": 5,
                    "Name": "[TEST] PREMIERE ITERATION",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                        "Order": 1,
                        "Name": "IF",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 0,
                            "Name": "[SET] 3PT_MEASURMENT",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "InPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 148,
                                "Name": "InPose",
                                "TypeName": "System.Boolean, mscorlib",
                                "PortType": 2,
                                "CurrentValue": true,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 147,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "3PT_MEASURMENT",
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
                        "Name": "ELSE",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {}
                      }
                    ],
                    "Ports": {
                      "ValueToTest": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 141,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          84
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 142,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 143,
                        "Name": "Value",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                    "Order": 6,
                    "Name": "[AT401]MESURE AND MAJ SOEFFECTOR",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                        "Order": 1,
                        "Name": "SI OUI --> MESURE 3PT",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Application.LogMessage, AkeoCore",
                            "Order": 0,
                            "Name": "MES 3P",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "MessageType": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 505,
                                "Name": "MessageType",
                                "TypeName": "AkeoCore.Application.LogType, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Message": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 506,
                                "Name": "Message",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "###Mesure 3P en cours###",
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
                                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                                "Order": 0,
                                "Name": "[FRAME] Get CurCATX",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  4
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "Repère départ": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 176,
                                    "Name": "Repère départ",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "CATX",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Repère d'arrivée": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 177,
                                    "Name": "Repère d'arrivée",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "AT_WORLD",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Relation entre repères": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 178,
                                    "Name": "Relation entre repères",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "Chemin des transformations": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 179,
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
                                "Order": 1,
                                "Name": "[FRAME] Get CurCATY",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  4
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "Repère départ": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 180,
                                    "Name": "Repère départ",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "CATY",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Repère d'arrivée": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 181,
                                    "Name": "Repère d'arrivée",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "AT_WORLD",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Relation entre repères": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 182,
                                    "Name": "Relation entre repères",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "Chemin des transformations": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 183,
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
                                "Order": 2,
                                "Name": "[FRAME] Get CurCATO",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  4
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "Repère départ": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 184,
                                    "Name": "Repère départ",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "SO_EFFECTOR",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Repère d'arrivée": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 185,
                                    "Name": "Repère d'arrivée",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "AT_WORLD",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Relation entre repères": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 186,
                                    "Name": "Relation entre repères",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "Chemin des transformations": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 187,
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
                                "Order": 3,
                                "Name": "[MAJ] CUR CATX",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 188,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      178
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 189,
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
                                "Order": 4,
                                "Name": "[MAJ] CUR CATY",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 190,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      182
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 191,
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
                                "Order": 5,
                                "Name": "[MAJ] CUR CATO",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 192,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      186
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 193,
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
                                "Id": 162,
                                "Name": "TempFlange",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": {
                                  "_Pose": [
                                    1289.167725,
                                    223.631989,
                                    583.616028,
                                    91.285187000000022,
                                    165.772885,
                                    90.564995000000025
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
                                "Name": "[AT401] MES-X",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  0
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "LaserPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 197,
                                    "Name": "LaserPose",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      220
                                    ]
                                  },
                                  "ReflectorPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 198,
                                    "Name": "ReflectorPose",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "STDValue": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 199,
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
                                "Name": "[TEST] RMS X",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "IF",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Application.Exit, AkeoCore",
                                        "Order": 0,
                                        "Name": "[EXIT] ERREUR MESURE O",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "Prop_Message": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 442,
                                            "Name": "Prop_Message",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur de mesure du laser tracker : la déviation standard de mesure est trop importante, veillez à ce que le laser tracker reste stable lors de la mesure de la position de l'effecteur.",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Prop_ExceptionType": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 443,
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
                                    "Name": "ELSE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [],
                                    "Ports": {}
                                  }
                                ],
                                "Ports": {
                                  "ValueToTest": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 439,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      199
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 440,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 5,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 441,
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
                                "$type": "AkeoRoboticist.Utils.DistanceBetweenPoses, AkeoRoboticist",
                                "Order": 2,
                                "Name": "[CALCUL] DISTANCE MESURE/PREVU X",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "Position de référence": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 454,
                                    "Name": "Position de référence",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      220
                                    ]
                                  },
                                  "Position courante": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 455,
                                    "Name": "Position courante",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      198
                                    ]
                                  },
                                  "Norme translation": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 456,
                                    "Name": "Norme translation",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "Angle rotation (deg)": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 457,
                                    "Name": "Angle rotation (deg)",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "6DDiff": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 458,
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
                                "Order": 3,
                                "Name": "[TEST] DISTANCE MESURE/PREVU X",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "IF",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Application.Exit, AkeoCore",
                                        "Order": 0,
                                        "Name": "[EXIT] ERREUR MESURE O",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "Prop_Message": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 482,
                                            "Name": "Prop_Message",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur de mesure du laser tracker : la position mesurée du CatEye est trop distante de la mesure prévue en utilisant la chaine cinématique du robot, vérifiez que tous les cat eye soient bien visibles pour le laser tracker.",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Prop_ExceptionType": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 483,
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
                                    "Name": "ELSE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [],
                                    "Ports": {}
                                  }
                                ],
                                "Ports": {
                                  "ValueToTest": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 479,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      456
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 480,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 5,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 481,
                                    "Name": "Value",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 5.0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                                "Order": 4,
                                "Name": "[AT401] MES-Y",
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
                                      221
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
                                "Order": 5,
                                "Name": "[TEST] RMS Y",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "IF",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Application.Exit, AkeoCore",
                                        "Order": 0,
                                        "Name": "[EXIT] ERREUR MESURE O",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "Prop_Message": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 462,
                                            "Name": "Prop_Message",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur de mesure du laser tracker : la déviation standard de mesure est trop importante, veillez à ce que le laser tracker reste stable lors de la mesure de la position de l'effecteur.",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Prop_ExceptionType": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 463,
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
                                    "Name": "ELSE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [],
                                    "Ports": {}
                                  }
                                ],
                                "Ports": {
                                  "ValueToTest": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 459,
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
                                    "Id": 460,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 5,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 461,
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
                                "$type": "AkeoRoboticist.Utils.DistanceBetweenPoses, AkeoRoboticist",
                                "Order": 6,
                                "Name": "[CALCUL] DISTANCE MESURE/PREVU Y",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "Position de référence": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 444,
                                    "Name": "Position de référence",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      221
                                    ]
                                  },
                                  "Position courante": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 445,
                                    "Name": "Position courante",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      201
                                    ]
                                  },
                                  "Norme translation": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 446,
                                    "Name": "Norme translation",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "Angle rotation (deg)": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 447,
                                    "Name": "Angle rotation (deg)",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "6DDiff": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 448,
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
                                "Order": 7,
                                "Name": "[TEST] DISTANCE MESURE/PREVU Y",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "IF",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Application.Exit, AkeoCore",
                                        "Order": 0,
                                        "Name": "[EXIT] ERREUR MESURE O",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "Prop_Message": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 467,
                                            "Name": "Prop_Message",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur de mesure du laser tracker : la position mesurée du CatEye est trop distante de la mesure prévue en utilisant la chaine cinématique du robot, vérifiez que tous les cat eye soient bien visibles pour le laser tracker.",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Prop_ExceptionType": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 468,
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
                                    "Name": "ELSE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [],
                                    "Ports": {}
                                  }
                                ],
                                "Ports": {
                                  "ValueToTest": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 464,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      446
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 465,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 5,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 466,
                                    "Name": "Value",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 5.0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoMetrology.GetMeasureAtPose, AkeoMetrology",
                                "Order": 8,
                                "Name": "[AT401] MES-O",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  0
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "LaserPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 194,
                                    "Name": "LaserPose",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      219
                                    ]
                                  },
                                  "ReflectorPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 195,
                                    "Name": "ReflectorPose",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "STDValue": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 196,
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
                                "Order": 9,
                                "Name": "[TEST] RMS O",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "IF",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Application.Exit, AkeoCore",
                                        "Order": 0,
                                        "Name": "[EXIT] ERREUR MESURE O",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "Prop_Message": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 437,
                                            "Name": "Prop_Message",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur de mesure du laser tracker : la déviation standard de mesure est trop importante, veillez à ce que le laser tracker reste stable lors de la mesure de la position de l'effecteur.",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Prop_ExceptionType": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 438,
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
                                    "Name": "ELSE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [],
                                    "Ports": {}
                                  }
                                ],
                                "Ports": {
                                  "ValueToTest": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 434,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      196
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 435,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 5,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 436,
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
                                "$type": "AkeoRoboticist.Utils.DistanceBetweenPoses, AkeoRoboticist",
                                "Order": 10,
                                "Name": "[CALCUL] DISTANCE MESURE/PREVU O",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "Position de référence": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 449,
                                    "Name": "Position de référence",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      219
                                    ]
                                  },
                                  "Position courante": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 450,
                                    "Name": "Position courante",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      195
                                    ]
                                  },
                                  "Norme translation": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 451,
                                    "Name": "Norme translation",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "Angle rotation (deg)": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 452,
                                    "Name": "Angle rotation (deg)",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "6DDiff": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 453,
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
                                "Order": 11,
                                "Name": "[TEST] DISTANCE MESURE/PREVU O",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "IF",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Application.Exit, AkeoCore",
                                        "Order": 0,
                                        "Name": "[EXIT] ERREUR MESURE O",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "Prop_Message": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 477,
                                            "Name": "Prop_Message",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur de mesure du laser tracker : la position mesurée du CatEye est trop distante de la mesure prévue en utilisant la chaine cinématique du robot, vérifiez que tous les cat eye soient bien visibles pour le laser tracker.",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Prop_ExceptionType": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 478,
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
                                    "Name": "ELSE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [],
                                    "Ports": {}
                                  }
                                ],
                                "Ports": {
                                  "ValueToTest": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 474,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      451
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 475,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 5,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 476,
                                    "Name": "Value",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 5.0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoCore.Mathematics.LinearAlgebra.FrameOnThreePoints, AkeoCore",
                                "Order": 12,
                                "Name": "Calcul Repère EFFECTEUR",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "Origine": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 203,
                                    "Name": "Origine",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      195
                                    ]
                                  },
                                  "Point Direction 1": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 204,
                                    "Name": "Point Direction 1",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      198
                                    ]
                                  },
                                  "Point Direction 2": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 205,
                                    "Name": "Point Direction 2",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      201
                                    ]
                                  },
                                  "Directions données": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 206,
                                    "Name": "Directions données",
                                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Scaling origine": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 207,
                                    "Name": "Scaling origine",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 1.0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Scaling point direction 1": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 208,
                                    "Name": "Scaling point direction 1",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 1.0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Scaling point direction 2": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 209,
                                    "Name": "Scaling point direction 2",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 1.0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Result Frame": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 210,
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
                                "Order": 13,
                                "Name": "[SAVE] MEASURED FRAME",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 406,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      210
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 407,
                                    "Name": "GlobalPosition",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "MEASURED_FRAME",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                "Order": 14,
                                "Name": "[SAVE] MEASURED FRAME",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 226,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      210
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 227,
                                    "Name": "GlobalPosition",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "LAST_3PT_MEASURED_EFFECTOR",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  }
                                }
                              }
                            ],
                            "Ports": {}
                          },
                          {
                            "$type": "AkeoCore.Application.Wait, AkeoCore",
                            "Order": 3,
                            "Name": "wait 500",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "Delay_ms": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 516,
                                "Name": "Delay_ms",
                                "TypeName": "System.Int64, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 500,
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                            "Order": 4,
                            "Name": "[FM] CREER SOEFFECTOR in ATWORLD",
                            "IsAsync": false,
                            "ComponentIDs": [
                              4
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "Relation entre repères": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 228,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  225
                                ]
                              },
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 229,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_EFFECTOR",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 230,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "AT_WORLD",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Sauvegarde base de donnée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 231,
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
                          "CUR-CATO": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 219,
                            "Name": "CUR-CATO",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": {
                              "_Pose": [
                                2652.9497552431658,
                                -3117.3425665438235,
                                807.54910314986,
                                39.052837556493763,
                                -0.04106262764097391,
                                90.0067099868311
                              ],
                              "Convention": 1
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "CUR-CATX": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 220,
                            "Name": "CUR-CATX",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": {
                              "_Pose": [
                                2800.4971202725119,
                                -2997.6356054640692,
                                807.68527196805553,
                                90.008640594332618,
                                39.052842046622878,
                                0.035618734976491311
                              ],
                              "Convention": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "CUR-CATY": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 221,
                            "Name": "CUR-CATY",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": {
                              "_Pose": [
                                2652.8966513383107,
                                -3117.4022391372437,
                                917.54907414602349,
                                90.008640594332618,
                                39.052842046622878,
                                0.035618734976491311
                              ],
                              "Convention": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "MEASURED_FRAME": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 225,
                            "Name": "MEASURED_FRAME",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": {
                              "_Pose": [
                                2654.2043942920554,
                                -3116.9303419928715,
                                807.09560931000431,
                                90.033929528100046,
                                39.060678422131659,
                                0.052709745051009449
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
                        "Name": "SI NON --> MESURE 1PT",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Application.LogMessage, AkeoCore",
                            "Order": 0,
                            "Name": "MES 1P",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "MessageType": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 507,
                                "Name": "MessageType",
                                "TypeName": "AkeoCore.Application.LogType, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 2,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Message": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 508,
                                "Name": "Message",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "#Mesure 1P en cours#",
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
                                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                                "Order": 0,
                                "Name": "[FRAME] Get CurCATO",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  4
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "Repère départ": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 266,
                                    "Name": "Repère départ",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "SO_EFFECTOR",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Repère d'arrivée": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 267,
                                    "Name": "Repère d'arrivée",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "AT_WORLD",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Relation entre repères": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 268,
                                    "Name": "Relation entre repères",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "Chemin des transformations": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 269,
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
                                "Name": "[MAJ] CUR CATO",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 274,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      268
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 275,
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
                                "Id": 257,
                                "Name": "TempFlange",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": {
                                  "_Pose": [
                                    1289.167725,
                                    223.631989,
                                    583.616028,
                                    91.285187000000022,
                                    165.772885,
                                    90.564995000000025
                                  ],
                                  "Convention": 1
                                },
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Application.Wait, AkeoCore",
                            "Order": 2,
                            "Name": "wait 1000",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "Delay_ms": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 515,
                                "Name": "Delay_ms",
                                "TypeName": "System.Int64, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 1000,
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                            "Order": 3,
                            "Name": "[AT401] Mesure Effecteur",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [
                              {
                                "$type": "AkeoMetrology.GetMeasure, AkeoMetrology",
                                "Order": 0,
                                "Name": "[AT-401] MES 0",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  0
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "ReflectorPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 502,
                                    "Name": "ReflectorPose",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "STDValue": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 503,
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
                                "Name": "[TEST] RMS O",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "IF",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Application.Exit, AkeoCore",
                                        "Order": 0,
                                        "Name": "[EXIT] ERREUR MESURE O",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "Prop_Message": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 492,
                                            "Name": "Prop_Message",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur de mesure du laser tracker : la déviation standard de mesure est trop importante, veillez à ce que le laser tracker reste stable lors de la mesure de la position de l'effecteur.",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Prop_ExceptionType": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 493,
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
                                    "Name": "ELSE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [],
                                    "Ports": {}
                                  }
                                ],
                                "Ports": {
                                  "ValueToTest": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 489,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      503
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 490,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 5,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 491,
                                    "Name": "Value",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 0.015,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoRoboticist.Utils.DistanceBetweenPoses, AkeoRoboticist",
                                "Order": 2,
                                "Name": "[CALCUL] DISTANCE MESURE/PREVU O",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "Position de référence": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 484,
                                    "Name": "Position de référence",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      313
                                    ]
                                  },
                                  "Position courante": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 485,
                                    "Name": "Position courante",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      502
                                    ]
                                  },
                                  "Norme translation": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 486,
                                    "Name": "Norme translation",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "Angle rotation (deg)": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 487,
                                    "Name": "Angle rotation (deg)",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "6DDiff": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 488,
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
                                "Order": 3,
                                "Name": "[TEST] DISTANCE MESURE/PREVU O",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "IF",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Application.Exit, AkeoCore",
                                        "Order": 0,
                                        "Name": "[EXIT] ERREUR MESURE O",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "Prop_Message": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 497,
                                            "Name": "Prop_Message",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur de mesure du laser tracker : la position mesurée du CatEye est trop distante de la mesure prévue en utilisant la chaine cinématique du robot, vérifiez que tous les cat eye soient bien visibles pour le laser tracker.",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Prop_ExceptionType": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 498,
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
                                    "Name": "ELSE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [],
                                    "Ports": {}
                                  }
                                ],
                                "Ports": {
                                  "ValueToTest": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 494,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      486
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 495,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 5,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 496,
                                    "Name": "Value",
                                    "TypeName": "System.Double, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 3.0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                                "Order": 4,
                                "Name": "[FM] Récupérer SO_EFFECTEUR in AT_WORLD par robot",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  4
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "Repère départ": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 308,
                                    "Name": "Repère départ",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "SO_EFFECTOR",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Repère d'arrivée": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 309,
                                    "Name": "Repère d'arrivée",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "AT_WORLD",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Relation entre repères": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 310,
                                    "Name": "Relation entre repères",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  },
                                  "Chemin des transformations": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 311,
                                    "Name": "Chemin des transformations",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoRoboticist.Utils.UpdateCartesianPose, AkeoRoboticist",
                                "Order": 5,
                                "Name": "Calcul Repère EFFECTEUR",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "Translation X": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 299,
                                    "Name": "Translation X",
                                    "TypeName": "System.Boolean, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": false,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Translation Y": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 300,
                                    "Name": "Translation Y",
                                    "TypeName": "System.Boolean, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": false,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Translation Z": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 301,
                                    "Name": "Translation Z",
                                    "TypeName": "System.Boolean, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": false,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Rotation 1": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 302,
                                    "Name": "Rotation 1",
                                    "TypeName": "System.Boolean, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": true,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Rotation 2": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 303,
                                    "Name": "Rotation 2",
                                    "TypeName": "System.Boolean, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": true,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Rotation 3": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 304,
                                    "Name": "Rotation 3",
                                    "TypeName": "System.Boolean, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": true,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Position à modifier": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 305,
                                    "Name": "Position à modifier",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      502
                                    ]
                                  },
                                  "Nouvelle Position": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 306,
                                    "Name": "Nouvelle Position",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      405
                                    ]
                                  },
                                  "Résultat": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 307,
                                    "Name": "Résultat",
                                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                "Order": 6,
                                "Name": "[SAVE] MEASURED FRAME",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 293,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      307
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 294,
                                    "Name": "GlobalPosition",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "MEASURED_FRAME",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  }
                                }
                              }
                            ],
                            "Ports": {}
                          },
                          {
                            "$type": "AkeoCore.Mathematics.FrameManager.AddOrUpdateFrameTransformation, AkeoCore",
                            "Order": 4,
                            "Name": "[FM] CREER SOEFFECTOR in ATWORLD",
                            "IsAsync": false,
                            "ComponentIDs": [
                              4
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "Relation entre repères": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 295,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  314
                                ]
                              },
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 296,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_EFFECTOR",
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
                              "Sauvegarde base de donnée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 298,
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
                          "CUR-CATO": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 313,
                            "Name": "CUR-CATO",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": {
                              "_Pose": [
                                2651.753685682811,
                                -3117.8129293569887,
                                807.77664782506145,
                                39.052842486921307,
                                -0.041070351817946882,
                                90.006710981377125
                              ],
                              "Convention": 1
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "MEASURED_FRAME": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 314,
                            "Name": "MEASURED_FRAME",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": {
                              "_Pose": [
                                2653.017161208636,
                                -3117.3463671051245,
                                807.34531098851619,
                                90.033929528100046,
                                39.060678422131659,
                                0.052709745051009449
                              ],
                              "Convention": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          }
                        }
                      }
                    ],
                    "Ports": {
                      "ValueToTest": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 158,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          401
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 159,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 160,
                        "Name": "Value",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": true,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                    "Order": 7,
                    "Name": "[FM] DEL SOFLANGE in SOWORLD",
                    "IsAsync": false,
                    "ComponentIDs": [
                      4
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Repère départ": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 232,
                        "Name": "Repère départ",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "SO_FLANGE",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Repère d'arrivée": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 233,
                        "Name": "Repère d'arrivée",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "SO_WORLD",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Sauvegarde base de donnée": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 234,
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
                    "Order": 8,
                    "Name": "[FM] GET SOOSR in ATOSR",
                    "IsAsync": false,
                    "ComponentIDs": [
                      4
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Repère départ": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 235,
                        "Name": "Repère départ",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "SO_OSR",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Repère d'arrivée": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 236,
                        "Name": "Repère d'arrivée",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "AT_OSR",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Relation entre repères": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 237,
                        "Name": "Relation entre repères",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Chemin des transformations": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 238,
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
                    "Order": 9,
                    "Name": "[SAVE] ERROR POSE",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 240,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          237
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 241,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "MEASURED_ERROR_POSE",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoRoboticist.Utils.DistanceBetweenPoses, AkeoRoboticist",
                    "Order": 10,
                    "Name": "[COMPUTE] ERREUR CART & ANGLE",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "Position de référence": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 249,
                        "Name": "Position de référence",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          20
                        ]
                      },
                      "Position courante": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 250,
                        "Name": "Position courante",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          239
                        ]
                      },
                      "Norme translation": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 251,
                        "Name": "Norme translation",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Angle rotation (deg)": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 252,
                        "Name": "Angle rotation (deg)",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "6DDiff": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 253,
                        "Name": "6DDiff",
                        "TypeName": "System.Double[], mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 11,
                    "Name": "[SAVE] Angular error",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 316,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          252
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 317,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Angular error",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 12,
                    "Name": "[SAVE] Cartesian error",
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
                          251
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 256,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Cartesian error",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                    "Order": 13,
                    "Name": "[TEST] PoseGood ?",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                        "Order": 0,
                        "Name": "[SET] PoseGood",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "InPose": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 332,
                            "Name": "InPose",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              334
                            ]
                          },
                          "GlobalPosition": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 333,
                            "Name": "GlobalPosition",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "PoseGood",
                            "Behavior": 0,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                        "Order": 1,
                        "Name": "[TEST] Angular Error nok ?",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                            "Order": 1,
                            "Name": "IF",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [
                              {
                                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                "Order": 0,
                                "Name": "[RESET] PoseGood",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 330,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      326
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 331,
                                    "Name": "GlobalPosition",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "PoseGood",
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
                            "Name": "ELSE",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {}
                          }
                        ],
                        "Ports": {
                          "ValueToTest": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 327,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              254
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 328,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 5,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 329,
                            "Name": "Value",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 0.1,
                            "Behavior": 0,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                        "Order": 2,
                        "Name": "[TEST] Cartesian Error nok ?",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                            "Order": 1,
                            "Name": "IF",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [
                              {
                                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                "Order": 0,
                                "Name": "[RESET] PoseGood",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 324,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      326
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 325,
                                    "Name": "GlobalPosition",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "PoseGood",
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
                            "Name": "ELSE",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {}
                          }
                        ],
                        "Ports": {
                          "ValueToTest": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 321,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              315
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 322,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 5,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 323,
                            "Name": "Value",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 0.05,
                            "Behavior": 0,
                            "ProducerIDs": []
                          }
                        }
                      }
                    ],
                    "Ports": {
                      "FALSE": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 326,
                        "Name": "FALSE",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": false,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "TRUE": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 334,
                        "Name": "TRUE",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": true,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.IO.WriteToFile, AkeoCore",
                    "Order": 14,
                    "Name": "[CSV] Save cartesian",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "OutputTarget": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 519,
                        "Name": "OutputTarget",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          315
                        ]
                      },
                      "File Path": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 520,
                        "Name": "File Path",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "C:\\acq\\Convergences\\Iterations.csv",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  }
                ],
                "Ports": {
                  "POSE_SOLAR": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 110,
                    "Name": "POSE_SOLAR",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": {
                      "_Pose": [
                        1293.610229,
                        -869.664551,
                        2519.395752,
                        90.100639000000015,
                        164.97664699999999,
                        90.040656999999982
                      ],
                      "Convention": 1
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "MEASURED_ERROR_POSE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 239,
                    "Name": "MEASURED_ERROR_POSE",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": {
                      "_Pose": [
                        0.014230399347525235,
                        -0.0071465886121586664,
                        -0.017593213042459865,
                        0.033088746776233288,
                        0.0077332996591901668,
                        -0.019550886324812687
                      ],
                      "Convention": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Angular error": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 254,
                    "Name": "Angular error",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 0.039202282012011341,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Cartesian error": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 315,
                    "Name": "Cartesian error",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 0.023729710060151649,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 2,
                "Name": "[ACT]",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                    "Order": 0,
                    "Name": "[TEST] POSE NOK ?",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                        "Order": 1,
                        "Name": "SI POSE NOK --> PI",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                            "Order": 0,
                            "Name": "[TEST] Première iteration ?",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [
                              {
                                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                "Order": 1,
                                "Name": "SI PREMIERE ITERATION -> RESET ERREUR",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                    "Order": 0,
                                    "Name": "[RESET] PI ERREUR CUMUL",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [],
                                    "Ports": {
                                      "InPose": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                        "Id": 368,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          20
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 369,
                                        "Name": "GlobalPosition",
                                        "TypeName": "System.String, mscorlib",
                                        "PortType": 2,
                                        "CurrentValue": "PREV_PI_ERREUR_CUMUL",
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      }
                                    }
                                  },
                                  {
                                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                    "Order": 1,
                                    "Name": "[RESET] PI ERREUR CALC",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [],
                                    "Ports": {
                                      "InPose": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                        "Id": 366,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          20
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 367,
                                        "Name": "GlobalPosition",
                                        "TypeName": "System.String, mscorlib",
                                        "PortType": 2,
                                        "CurrentValue": "PREV_PI_ERREUR_CALC",
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
                                "Name": "SINON --> VOID",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {}
                              }
                            ],
                            "Ports": {
                              "ValueToTest": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 361,
                                "Name": "ValueToTest",
                                "TypeName": "System.IComparable, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  84
                                ]
                              },
                              "Comparison": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 362,
                                "Name": "Comparison",
                                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Value": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 363,
                                "Name": "Value",
                                "TypeName": "System.Int64, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Mathematics.FrameManager.GetFrameTransformation, AkeoCore",
                            "Order": 1,
                            "Name": "[FM] GET SOOSR in ATOSR",
                            "IsAsync": false,
                            "ComponentIDs": [
                              4
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 377,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_OSR",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 378,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "AT_OSR",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Relation entre repères": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 379,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "Chemin des transformations": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 380,
                                "Name": "Chemin des transformations",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoRoboticist.Advanced.ConvergingProportionalIntegral, AkeoRoboticist",
                            "Order": 2,
                            "Name": "[COMPUTE] PI",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "Translation : seuil haut": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 338,
                                "Name": "Translation : seuil haut",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 10.0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Translation : seuil bas": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 339,
                                "Name": "Translation : seuil bas",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 10.0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Translation : scaling bas": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 340,
                                "Name": "Translation : scaling bas",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 1.2,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Translation : scaling origine": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 341,
                                "Name": "Translation : scaling origine",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 1.2,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Rotation : seuil haut": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 342,
                                "Name": "Rotation : seuil haut",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 0.5,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Rotation : seuil bas": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 343,
                                "Name": "Rotation : seuil bas",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 0.05,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Rotation : scaling bas": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 344,
                                "Name": "Rotation : scaling bas",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 1.0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Rotation : scaling origine": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 345,
                                "Name": "Rotation : scaling origine",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 1.0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Translation : erreur max cumulée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 346,
                                "Name": "Translation : erreur max cumulée",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 5.0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Rotation : erreur max cumulée (deg)": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 347,
                                "Name": "Rotation : erreur max cumulée (deg)",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 0.2,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Translation : gain intégral": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 348,
                                "Name": "Translation : gain intégral",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 0.6,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Rotation : gain intégral": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 349,
                                "Name": "Rotation : gain intégral",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 2,
                                "CurrentValue": 0.6,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Position de référence": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 350,
                                "Name": "Position de référence",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  20
                                ]
                              },
                              "Position courante": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 351,
                                "Name": "Position courante",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  379
                                ]
                              },
                              "Précédente erreur": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 352,
                                "Name": "Précédente erreur",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  364
                                ]
                              },
                              "Erreur cumulée (entrée)": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 353,
                                "Name": "Erreur cumulée (entrée)",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  365
                                ]
                              },
                              "Position offset": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 354,
                                "Name": "Position offset",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "Erreur calculée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 355,
                                "Name": "Erreur calculée",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "Erreur cumulée (sortie)": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 356,
                                "Name": "Erreur cumulée (sortie)",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "Norme translation": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 357,
                                "Name": "Norme translation",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "Angle rotation (deg)": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 358,
                                "Name": "Angle rotation (deg)",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "Translation : gain proportionnel calculé": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 359,
                                "Name": "Translation : gain proportionnel calculé",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "Rotation : gain proportionnel calculé": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 360,
                                "Name": "Rotation : gain proportionnel calculé",
                                "TypeName": "System.Double, mscorlib",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 3,
                            "Name": "[SAVE] ERREUR CALC",
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
                                  355
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 373,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "PREV_PI_ERREUR_CALC",
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 4,
                            "Name": "[SAVE] ERREUR CUMUL",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "InPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 375,
                                "Name": "InPose",
                                "TypeName": "System.Object, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  356
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 376,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "PREV_PI_ERREUR_CUMUL",
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 5,
                            "Name": "[SAVE] CORRECTED POSE",
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
                                  354
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 371,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "PI_CORRECTED_POSE",
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Mathematics.FrameManager.RemoveFrameTransformation, AkeoCore",
                            "Order": 6,
                            "Name": "[FM] DEL SO_EFFECTOR in AT_WORLD",
                            "IsAsync": false,
                            "ComponentIDs": [
                              4
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 381,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_EFFECTOR",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 382,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "AT_WORLD",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Sauvegarde base de donnée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 383,
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
                            "Order": 7,
                            "Name": "[FM] ADD SO_OSR in AT_OSE",
                            "IsAsync": false,
                            "ComponentIDs": [
                              4
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "Relation entre repères": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 384,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  403
                                ]
                              },
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 385,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_OSR",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 386,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "AT_OSR",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Sauvegarde base de donnée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 387,
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
                            "Order": 8,
                            "Name": "[FM] GET FLANGE in SO WORLD",
                            "IsAsync": false,
                            "ComponentIDs": [
                              4
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "Repère départ": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 388,
                                "Name": "Repère départ",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_FLANGE",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Repère d'arrivée": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 389,
                                "Name": "Repère d'arrivée",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_WORLD",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Relation entre repères": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 390,
                                "Name": "Relation entre repères",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 1,
                                "Behavior": 1,
                                "ProducerIDs": []
                              },
                              "Chemin des transformations": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 391,
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
                            "Order": 9,
                            "Name": "[SAVE] CORRECTED SOLAR POSE",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "InPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 393,
                                "Name": "InPose",
                                "TypeName": "System.Object, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  390
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 394,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "SO_CORRECTED_POSE",
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Application.LogMessage, AkeoCore",
                            "Order": 10,
                            "Name": "LOG Movement",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "MessageType": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 511,
                                "Name": "MessageType",
                                "TypeName": "AkeoCore.Application.LogType, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Message": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 512,
                                "Name": "Message",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "--> Move to Corrected Pose ",
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                            "Order": 11,
                            "Name": "[SOLAR] MOVE TO CORRECTED POSE",
                            "IsAsync": false,
                            "ComponentIDs": [
                              5
                            ],
                            "ChildActions": [],
                            "Ports": {
                              "ListMouvement": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 395,
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
                                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                            "_Pose": [
                                              1293.6124345944809,
                                              -869.66838349363707,
                                              2519.393781338837,
                                              90.100697604960658,
                                              164.97655310172672,
                                              90.040584787544148
                                            ],
                                            "Convention": 1
                                          }
                                        }
                                      ],
                                      "ToolTag": "Flange",
                                      "FrameTag": "World",
                                      "MdescrTag": "Mdescr_0"
                                    }
                                  ]
                                },
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "M1_I1": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 396,
                                "Name": "M1_I1",
                                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  392
                                ]
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Application.LogMessage, AkeoCore",
                            "Order": 12,
                            "Name": "LOG MovAck",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "MessageType": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 509,
                                "Name": "MessageType",
                                "TypeName": "AkeoCore.Application.LogType, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Message": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 510,
                                "Name": "Message",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "--> Move finished !",
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          }
                        ],
                        "Ports": {
                          "PREV_PI_ERREUR_CALC": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 364,
                            "Name": "PREV_PI_ERREUR_CALC",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": {
                              "_Pose": [
                                0.020432899564639229,
                                -0.01283150409017253,
                                -0.054066988224121815,
                                0.0,
                                0.0,
                                0.0
                              ],
                              "Convention": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "PREV_PI_ERREUR_CUMUL": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 365,
                            "Name": "PREV_PI_ERREUR_CUMUL",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": {
                              "_Pose": [
                                -0.63350307348764545,
                                0.37204815333916486,
                                2.0056521181005564,
                                0.0,
                                0.0,
                                0.0
                              ],
                              "Convention": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "SO_CORRECTED_POSE": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 392,
                            "Name": "SO_CORRECTED_POSE",
                            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": {
                              "_Pose": [
                                1293.6124345944809,
                                -869.66838349363707,
                                2519.393781338837,
                                90.100697604960658,
                                164.97655310172672,
                                90.040584787544148
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
                        "Name": "SI POSE OK --> END",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 0,
                            "Name": "END PI LOOP",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "InPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                "Id": 408,
                                "Name": "InPose",
                                "TypeName": "System.Object, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  410
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 409,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "LoopCondition",
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                            "Order": 1,
                            "Name": "[POPUP] convergence ok",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "UserMessage": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 397,
                                "Name": "UserMessage",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "CurrentValue": "Convergence réalisée avec succès",
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "ButtonLayout": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 398,
                                "Name": "ButtonLayout",
                                "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                "PortType": 2,
                                "CurrentValue": 0,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Icon": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 399,
                                "Name": "Icon",
                                "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                "PortType": 2,
                                "CurrentValue": 3,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "UserResult": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "Id": 400,
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
                          "FALSE": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 410,
                            "Name": "FALSE",
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
                      "ValueToTest": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 335,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          318
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 336,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 337,
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
                "Ports": {}
              }
            ],
            "Ports": {
              "LoopCondition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 83,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 84,
                "Name": "LoopIterator",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "PoseGood": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 318,
                "Name": "PoseGood",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "3PT_MEASURMENT": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 401,
                "Name": "3PT_MEASURMENT",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "PI_CORRECTED_POSE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 403,
                "Name": "PI_CORRECTED_POSE",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
                "CurrentValue": {
                  "_Pose": [
                    -0.388275003918443,
                    0.22836149363956793,
                    1.2250180661499825,
                    0.0,
                    0.0,
                    0.0
                  ],
                  "Convention": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LAST_3PT_MEASURED_EFFECTOR": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 405,
                "Name": "LAST_3PT_MEASURED_EFFECTOR",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
                "CurrentValue": {
                  "_Pose": [
                    2654.2043942920554,
                    -3116.9303419928715,
                    807.09560931000431,
                    90.033929528100046,
                    39.060678422131659,
                    0.052709745051009449
                  ],
                  "Convention": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "POSE_NULLE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 20,
            "Name": "POSE_NULLE",
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
          },
          "POSE_SOLAR_IDEAL": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 41,
            "Name": "POSE_SOLAR_IDEAL",
            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
            "PortType": 2,
            "CurrentValue": {
              "_Pose": [
                1289.1987421199983,
                631.54382479894821,
                -680.08130328290372,
                90.100697604960658,
                164.97655310172672,
                90.040584787544148
              ],
              "Convention": 1
            },
            "Behavior": 0,
            "ProducerIDs": []
          },
          "POSE_APPROCHE_OSR": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 412,
            "Name": "POSE_APPROCHE_OSR",
            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
            "PortType": 2,
            "CurrentValue": {
              "_Pose": [
                1239.1988161139175,
                631.48080788826064,
                -680.022751976881,
                90.100697604960658,
                164.97655310172672,
                90.040584787544148
              ],
              "Convention": 1
            },
            "Behavior": 0,
            "ProducerIDs": []
          },
          "APPROCHE_OFFSET": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 417,
            "Name": "APPROCHE_OFFSET",
            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
            "PortType": 2,
            "CurrentValue": {
              "_Pose": [
                0.0,
                0.0,
                50.0,
                0.0,
                0.0,
                0.0
              ],
              "Convention": 0
            },
            "Behavior": 0,
            "ProducerIDs": []
          },
          "POSE_PASSAGE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 517,
            "Name": "POSE_PASSAGE",
            "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
            "PortType": 2,
            "CurrentValue": {
              "AxisNumber": 0,
              "_Pose": [
                -5.689068,
                -57.889748,
                146.879654,
                -4.027632,
                -89.625092,
                74.873619
              ]
            },
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Mathematics.FrameManager.ExportFrameManager, AkeoCore",
        "Order": 2,
        "Name": "[FRAME] Export",
        "IsAsync": false,
        "ComponentIDs": [
          4
        ],
        "ChildActions": [],
        "Ports": {
          "Exporter Dot Graph": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 8,
            "Name": "Exporter Dot Graph",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Chemin fichier Dot Graph": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 9,
            "Name": "Chemin fichier Dot Graph",
            "TypeName": "System.String, mscorlib",
            "PortType": 2,
            "CurrentValue": "C:\\AKEOPLUS\\Frames\\",
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Exporter transformations": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 10,
            "Name": "Exporter transformations",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Chemin fichier transformations": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 11,
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
      "SO_OSR_in_TOOL": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 1,
        "Name": "SO_OSR_in_TOOL",
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
      },
      "AT_OSR_in_PANNEL": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 3,
        "Name": "AT_OSR_in_PANNEL",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            0.0,
            -800.0,
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
      "SO_TOOL_in_EFFECTOR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 74,
        "Name": "SO_TOOL_in_EFFECTOR",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            420.0,
            85.0,
            140.0,
            0.0,
            -90.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "SO_TOOL_in_EFFECTOR_FULL": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 411,
        "Name": "SO_TOOL_in_EFFECTOR_FULL",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            420.0,
            85.0,
            140.0,
            0.0,
            -90.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "SO_TOOL_in_EFFECTOR_POINTE": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 501,
        "Name": "SO_TOOL_in_EFFECTOR_POINTE",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            414.0,
            33.0,
            87.0,
            0.0,
            -90.0,
            0.0
          ],
          "Convention": 0
        },
        "Behavior": 0,
        "ProducerIDs": []
      }
    }
  },
  "MaxId": 522
}