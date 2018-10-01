{
  "Id": 0,
  "ReferenceName": "[FS53] Travail Asynchrone",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "[FS53] Travail Asynchrone",
    "IsAsync": false,
    "ComponentIDs": [],
    "ChildActions": [
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 2,
        "Name": "{MACRO PROGRAMME}",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 0,
            "Name": "[MACRO] INIT",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 0,
                "Name": "JOB-Ag---> FALSE",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": false,
                    "Id": 14,
                    "Name": "InPose",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": "JOB-AGILUS",
                    "Id": 15,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 1,
                "Name": "JOB-So---> FALSE",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": false,
                    "Id": 12,
                    "Name": "InPose",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": "JOB-SOLAR",
                    "Id": 13,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
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
            "Name": "[MACRO] AGILUS",
            "IsAsync": true,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 1,
                "Name": "Traj AGILUS",
                "IsAsync": false,
                "ComponentIDs": [
                  2
                ],
                "ChildActions": [],
                "Ports": {
                  "ListMouvement": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": {
                      "Moves": [
                        {
                          "Label": "M1",
                          "Index": 0,
                          "Poses": [
                            {
                              "Label": "M1_P1",
                              "Position": {
                                "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                "AxisNumber": 0,
                                "_Pose": [
                                  -150.019196,
                                  -90.703629,
                                  121.944016,
                                  -71.129997,
                                  -63.960537,
                                  -124.29808
                                ]
                              }
                            },
                            {
                              "Label": "M1_P2",
                              "Position": {
                                "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                "AxisNumber": 0,
                                "_Pose": [
                                  -105.367065,
                                  -98.055298,
                                  122.122475,
                                  -30.442921,
                                  -27.626942,
                                  -149.922211
                                ]
                              }
                            }
                          ],
                          "ToolTag": "Flange",
                          "FrameTag": "World",
                          "MdescrTag": "Mdescr_0"
                        },
                        {
                          "Label": "M2",
                          "Index": 0,
                          "Poses": [
                            {
                              "Label": "M2_P1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -95.471291,
                                  427.696075,
                                  645.963257,
                                  6.6049189999999811,
                                  -92.529418999999976,
                                  -94.831535
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P2",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -57.240467,
                                  442.946472,
                                  652.673279,
                                  25.249664000000131,
                                  -68.238075,
                                  -111.35171500000013
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P3",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -95.066162,
                                  460.815216,
                                  672.416931,
                                  115.717613,
                                  -69.988068,
                                  163.20979299999996
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P4",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -114.976181,
                                  425.875488,
                                  641.651428,
                                  6.5968480000000014,
                                  -117.970448,
                                  -83.810164999999984
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P5",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -74.651436,
                                  412.184235,
                                  620.983154,
                                  67.639426999999955,
                                  -107.294159,
                                  -140.170368
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P6",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -81.623093,
                                  409.326782,
                                  617.66748,
                                  107.86650799999997,
                                  -105.86989600000003,
                                  166.51617600000003
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P7",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -57.240467,
                                  442.946472,
                                  652.673279,
                                  25.249664000000131,
                                  -68.238075,
                                  -111.35171500000013
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P8",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -95.066162,
                                  460.815216,
                                  672.416931,
                                  115.717613,
                                  -69.988068,
                                  163.20979299999996
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P9",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -114.976181,
                                  425.875488,
                                  641.651428,
                                  6.5968479999999756,
                                  -117.970451,
                                  -83.810164999999984
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P10",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -74.651436,
                                  412.184235,
                                  620.983154,
                                  67.639426999999955,
                                  -107.294159,
                                  -140.17036399999998
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P11",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -81.623093,
                                  409.326782,
                                  617.66748,
                                  107.86650800000014,
                                  -105.86989600000004,
                                  166.51617399999989
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P12",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -95.471291,
                                  427.696075,
                                  645.963257,
                                  6.6049189999999811,
                                  -92.529418999999976,
                                  -94.831535
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P13",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -97.609024,
                                  427.448547,
                                  694.678467,
                                  6.6049499999987553,
                                  -92.529419,
                                  -94.83156599999873
                                ],
                                "Convention": 1
                              }
                            }
                          ],
                          "ToolTag": "Flange",
                          "FrameTag": "World",
                          "MdescrTag": "Mdescr_0"
                        },
                        {
                          "Label": "M3",
                          "Index": 0,
                          "Poses": [
                            {
                              "Label": "M3_P1",
                              "Position": {
                                "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                "AxisNumber": 0,
                                "_Pose": [
                                  -150.019196,
                                  -90.703629,
                                  121.944016,
                                  -71.130005,
                                  -63.960537,
                                  -124.298073
                                ]
                              }
                            }
                          ],
                          "ToolTag": "Flange",
                          "FrameTag": "World",
                          "MdescrTag": "Mdescr_1"
                        }
                      ]
                    },
                    "Id": 1,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 2,
                "Name": "JOB---> TRUE",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": true,
                    "Id": 16,
                    "Name": "InPose",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": "JOB-AGILUS",
                    "Id": 17,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
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
            "Name": "[MACRO] SOLAR",
            "IsAsync": true,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 1,
                "Name": "Traj SOLAR",
                "IsAsync": false,
                "ComponentIDs": [
                  5
                ],
                "ChildActions": [],
                "Ports": {
                  "ListMouvement": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": {
                      "Moves": [
                        {
                          "Label": "M2",
                          "Index": 0,
                          "Poses": [
                            {
                              "Label": "M2_P1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  898.212036,
                                  951.496887,
                                  388.446808,
                                  128.072937,
                                  165.77598500000002,
                                  90.559006000000011
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P2",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  900.804932,
                                  954.780945,
                                  453.522125,
                                  125.79929699999995,
                                  165.774097,
                                  81.872008999999977
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P3",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  994.299011,
                                  871.410889,
                                  482.000122,
                                  140.90443399999998,
                                  163.45023500000002,
                                  77.862723999999986
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P4",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  1034.24353,
                                  838.00061,
                                  353.618042,
                                  152.718414,
                                  163.568726,
                                  95.37886
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P5",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  894.487,
                                  971.500671,
                                  305.753815,
                                  128.754723,
                                  164.33805300000003,
                                  101.888176
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P6",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  819.198303,
                                  1112.855957,
                                  383.997009,
                                  104.74063899999999,
                                  161.37306999999998,
                                  91.213814
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P7",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  850.527832,
                                  1071.306396,
                                  516.794067,
                                  106.60515599999997,
                                  165.611931,
                                  73.13571899999998
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P8",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  900.804077,
                                  954.781006,
                                  453.522919,
                                  125.79915999999997,
                                  165.77408099999997,
                                  81.871918
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P9",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  994.298218,
                                  871.410645,
                                  482.000793,
                                  140.904305,
                                  163.45023500000002,
                                  77.862601999999981
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P10",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  1034.242432,
                                  838.0,
                                  353.618866,
                                  152.718267,
                                  163.568754,
                                  95.378822
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P11",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  894.485535,
                                  971.500671,
                                  305.754791,
                                  128.754589,
                                  164.33809,
                                  101.88819100000002
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P12",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  819.196777,
                                  1112.856445,
                                  383.997986,
                                  104.74047100000004,
                                  161.37308500000006,
                                  91.213753
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M2_P13",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  898.210999,
                                  951.496887,
                                  388.447662,
                                  128.07278799999997,
                                  165.775993,
                                  90.558968
                                ],
                                "Convention": 1
                              }
                            }
                          ],
                          "ToolTag": "Flange",
                          "FrameTag": "World",
                          "MdescrTag": "Mdescr_3"
                        }
                      ]
                    },
                    "Id": 2,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                "Order": 2,
                "Name": "JOB---> TRUE",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": true,
                    "Id": 11,
                    "Name": "InPose",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": "JOB-SOLAR",
                    "Id": 8,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
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
            "Name": "[MACRO] RESULTAT",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                "Order": 0,
                "Name": "WHILE JOB != TRUE",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoCore.Values.BooleanOperator, AkeoCore",
                    "Order": 0,
                    "Name": "Test JOBS",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "FirstValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": true,
                        "Id": 40,
                        "Name": "FirstValue",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          3
                        ]
                      },
                      "SecondValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": true,
                        "Id": 41,
                        "Name": "SecondValue",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          4
                        ]
                      },
                      "Operator": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": 0,
                        "Id": 42,
                        "Name": "Operator",
                        "TypeName": "AkeoCore.Values.BoolOperator, AkeoCore",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ResultValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "CurrentValue": true,
                        "Id": 43,
                        "Name": "ResultValue",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                    "Order": 1,
                    "Name": "CONDITION JOBS --> ",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                        "Order": 1,
                        "Name": "JOBS == TRUE",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                            "Order": 0,
                            "Name": "LOOP EXIT",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "InPose": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "CurrentValue": false,
                                "Id": 47,
                                "Name": "InPose",
                                "TypeName": "System.Boolean, mscorlib",
                                "PortType": 2,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "CurrentValue": "LoopCondition",
                                "Id": 48,
                                "Name": "GlobalPosition",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "Behavior": 0,
                                "ProducerIDs": []
                              }
                            }
                          },
                          {
                            "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                            "Order": 1,
                            "Name": "Message: TERMINE ! ",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {
                              "UserMessage": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "CurrentValue": "Les deux Trajectoires sont terminée ",
                                "Id": 49,
                                "Name": "UserMessage",
                                "TypeName": "System.String, mscorlib",
                                "PortType": 2,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "ButtonLayout": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "CurrentValue": 0,
                                "Id": 50,
                                "Name": "ButtonLayout",
                                "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                "PortType": 2,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Icon": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "CurrentValue": 3,
                                "Id": 51,
                                "Name": "Icon",
                                "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                "PortType": 2,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "UserResult": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                "CurrentValue": 1,
                                "Id": 52,
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
                        "CurrentValue": true,
                        "Id": 44,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          43
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": 0,
                        "Id": 45,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": true,
                        "Id": 46,
                        "Name": "Value",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  }
                ],
                "Ports": {
                  "LoopCondition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": false,
                    "Id": 38,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": 1695939,
                    "Id": 39,
                    "Name": "LoopIterator",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
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
      "JOB-SOLAR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": true,
        "Id": 3,
        "Name": "JOB-SOLAR",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "JOB-AGILUS": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": true,
        "Id": 4,
        "Name": "JOB-AGILUS",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      }
    }
  },
  "MaxId": 52
}