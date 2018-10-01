{
  "Id": 0,
  "ReferenceName": "L.O.L",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "L.O.L",
    "IsAsync": false,
    "ComponentIDs": [],
    "ChildActions": [
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 0,
        "Name": "BISOUS Agilus :)",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "GO -> BISOUS",
            "IsAsync": false,
            "ComponentIDs": [
              2
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 21,
                "Name": "ListMouvement",
                "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                "PortType": 2,
                "CurrentValue": {
                  "Moves": [
                    {
                      "Label": "M2",
                      "Index": 0,
                      "Poses": [
                        {
                          "Label": "M2_P1",
                          "Position": {
                            "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "AxisNumber": 0,
                            "_Pose": [
                              100.196655,
                              -58.299984,
                              126.100273,
                              80.27449,
                              -78.700546,
                              -201.390854
                            ]
                          }
                        },
                        {
                          "Label": "M2_P2",
                          "Position": {
                            "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "AxisNumber": 0,
                            "_Pose": [
                              86.359123,
                              -56.183556,
                              79.254814,
                              79.363464,
                              -59.765968,
                              -201.550766
                            ]
                          }
                        },
                        {
                          "Label": "M2_P3",
                          "Position": {
                            "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "AxisNumber": 0,
                            "_Pose": [
                              90.631836,
                              -36.702621,
                              56.334248,
                              49.861874,
                              -76.614006,
                              -188.963821
                            ]
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "World",
                      "MdescrTag": "Mdescr_1"
                    },
                    {
                      "Label": "M3",
                      "Index": 0,
                      "Poses": [
                        {
                          "Label": "M3_P1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              48.468388,
                              -856.504272,
                              587.779968,
                              84.156662,
                              -35.022057000000011,
                              51.223331
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
            "Name": "*LE BISOUS*",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 0,
                "Name": "[PLC] Aspiration ON",
                "IsAsync": false,
                "ComponentIDs": [
                  2
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 15,
                    "Name": "SetVariable",
                    "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_2",
                      "Designation": "AspirationOSR",
                      "Index": 13,
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 16,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 1,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 17,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 2,
                "Name": "[PLC] Aspiration OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  2
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 19,
                    "Name": "SetVariable",
                    "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_2",
                      "Designation": "AspirationOSR",
                      "Index": 13,
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 20,
                    "Name": "SetValue",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 3,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 18,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 4,
                "Name": "[PLC] Aspiration ON",
                "IsAsync": false,
                "ComponentIDs": [
                  2
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 12,
                    "Name": "SetVariable",
                    "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_2",
                      "Designation": "AspirationOSR",
                      "Index": 13,
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 13,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 5,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 14,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 6,
                "Name": "[PLC] Aspiration OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  2
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 7,
                    "Name": "SetVariable",
                    "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_2",
                      "Designation": "AspirationOSR",
                      "Index": 13,
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 8,
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
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 2,
            "Name": "BISOUS -> OUT",
            "IsAsync": true,
            "ComponentIDs": [
              2
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1,
                "Name": "ListMouvement",
                "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                "PortType": 2,
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
                              53.29686,
                              -792.917053,
                              632.09259,
                              84.156670000000034,
                              -35.022060000000025,
                              51.223323999999991
                            ],
                            "Convention": 1
                          }
                        },
                        {
                          "Label": "M2_P2",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              301.22171,
                              -454.512695,
                              575.644653,
                              52.252593999999966,
                              -70.925133000000017,
                              92.202538000000047
                            ],
                            "Convention": 1
                          }
                        },
                        {
                          "Label": "M2_P3",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              427.96637,
                              -310.889038,
                              492.270264,
                              45.889255999999911,
                              -86.766746999999981,
                              135.11746200000007
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
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 3,
            "Name": "YOUHOU !!!!!",
            "IsAsync": true,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 0,
                "Name": "[SORTIR VERIN FULL]",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                    "Order": 0,
                    "Name": "[PLC] Lecture Compteur IAI",
                    "IsAsync": false,
                    "ComponentIDs": [
                      3
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Variable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 255,
                        "Name": "Variable",
                        "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                        "PortType": 2,
                        "CurrentValue": {
                          "Tag": "VAR_18",
                          "Designation": "IAI_FULL_Counter",
                          "Index": 0,
                          "Path": "GVL.IAI_FULL_Actuator_Counter",
                          "IO_Type": 0,
                          "Var_Type": 2
                        },
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ValueResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 256,
                        "Name": "ValueResult",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 1,
                    "Name": "[SAVE] Enregistrer Compteur",
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
                          256
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 258,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "IAI Action Counter",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                    "Order": 2,
                    "Name": "[BOUCLE] Start Motion",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 0,
                        "Name": "[PLC] Lire Compteur Verin",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 261,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_18",
                              "Designation": "IAI_FULL_Counter",
                              "Index": 0,
                              "Path": "GVL.IAI_FULL_Actuator_Counter",
                              "IO_Type": 0,
                              "Var_Type": 8
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 262,
                            "Name": "ValueResult",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 1,
                        "Name": "[PLC] Lire Mouvent Lancé",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 263,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_9",
                              "Designation": "IAI_FULL_OUT_Feedback",
                              "Index": 0,
                              "Path": "GVL.IAI_FULL_Actuator_Out_Started",
                              "IO_Type": 0,
                              "Var_Type": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 264,
                            "Name": "ValueResult",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Values.EvaluateExpression, AkeoCore",
                        "Order": 2,
                        "Name": "[COMPUTE] Evaluer fin action ",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "#0": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 265,
                            "Name": "#0",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              262
                            ]
                          },
                          "Nb inputs": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 266,
                            "Name": "Nb inputs",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 3,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Evaluation String": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 267,
                            "Name": "Evaluation String",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Output Boolean": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 268,
                            "Name": "Output Boolean",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Integer": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 269,
                            "Name": "Output Integer",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Double": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 270,
                            "Name": "Output Double",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "#1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 271,
                            "Name": "#1",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              254
                            ]
                          },
                          "#2": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 272,
                            "Name": "#2",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              264
                            ]
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                        "Order": 3,
                        "Name": "[CONDITION] Mouvement lancé ?",
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
                                "Name": "FIN DE BOUCLE",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 276,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      253
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 277,
                                    "Name": "GlobalPosition",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "LoopCondition",
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
                                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                                "Order": 0,
                                "Name": "[PLC] Mouvement Verin",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  3
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "SetVariable": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 278,
                                    "Name": "SetVariable",
                                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                                    "PortType": 2,
                                    "CurrentValue": {
                                      "Tag": "VAR_4",
                                      "Designation": "IAI_FULL_OUT",
                                      "Index": 0,
                                      "Path": "GVL.IAI_FULL_Actuator_Out",
                                      "IO_Type": 1,
                                      "Var_Type": 0
                                    },
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "SetValue": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 279,
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
                                "$type": "AkeoCore.Application.Wait, AkeoCore",
                                "Order": 1,
                                "Name": "[WAIT] 200ms",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "Delay_ms": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 280,
                                    "Name": "Delay_ms",
                                    "TypeName": "System.Int64, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 200,
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
                            "Id": 273,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              268
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 274,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 275,
                            "Name": "Value",
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
                      "LoopCondition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 259,
                        "Name": "LoopCondition",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": false,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "LoopIterator": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 260,
                        "Name": "LoopIterator",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                    "Order": 3,
                    "Name": "[BOUCLE] ATTENTE FIN D'ACTION",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 0,
                        "Name": "[PLC] Lire Compteur Verin",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 283,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_18",
                              "Designation": "IAI_FULL_Counter",
                              "Index": 0,
                              "Path": "GVL.IAI_FULL_Actuator_Counter",
                              "IO_Type": 0,
                              "Var_Type": 8
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 284,
                            "Name": "ValueResult",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Values.EvaluateExpression, AkeoCore",
                        "Order": 1,
                        "Name": "[COMPUTE] Evaluer fin action ",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "#0": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 285,
                            "Name": "#0",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              284
                            ]
                          },
                          "Nb inputs": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 286,
                            "Name": "Nb inputs",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 2,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Evaluation String": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 287,
                            "Name": "Evaluation String",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "#0 = (#1 + 1)",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Output Boolean": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 288,
                            "Name": "Output Boolean",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Integer": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 289,
                            "Name": "Output Integer",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Double": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 290,
                            "Name": "Output Double",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "#1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 291,
                            "Name": "#1",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              254
                            ]
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                        "Order": 2,
                        "Name": "[TEST] Action terminée",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                            "Order": 1,
                            "Name": "SI ACTION TERMINEE --> CHECK ERREUR",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [
                              {
                                "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                                "Order": 0,
                                "Name": "[PLC] Lire code erreur",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  3
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "Variable": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 295,
                                    "Name": "Variable",
                                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                                    "PortType": 2,
                                    "CurrentValue": {
                                      "Tag": "VAR_12",
                                      "Designation": "IAI_FULL_ErrorCode",
                                      "Index": 0,
                                      "Path": "GVL.IAI_FULL_Actuator_ErrorCode",
                                      "IO_Type": 0,
                                      "Var_Type": 7
                                    },
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ValueResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 296,
                                    "Name": "ValueResult",
                                    "TypeName": "System.Int64, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                                "Order": 1,
                                "Name": "[TEST] ERREUR A FIN D'ACTION",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "SI ERREUR DETECTEE --> POPUP",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                                        "Order": 0,
                                        "Name": "[POPUP] ERREUR IAI",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "UserMessage": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 300,
                                            "Name": "UserMessage",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "ButtonLayout": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 301,
                                            "Name": "ButtonLayout",
                                            "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                            "PortType": 2,
                                            "CurrentValue": 0,
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Icon": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 302,
                                            "Name": "Icon",
                                            "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                            "PortType": 2,
                                            "CurrentValue": 1,
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "UserResult": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                            "Id": 303,
                                            "Name": "UserResult",
                                            "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                                            "PortType": 1,
                                            "Behavior": 1,
                                            "ProducerIDs": []
                                          }
                                        }
                                      },
                                      {
                                        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                        "Order": 1,
                                        "Name": "[FIN DE BOUCLE]",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "InPose": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                            "Id": 304,
                                            "Name": "InPose",
                                            "TypeName": "System.Object, mscorlib",
                                            "PortType": 0,
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "GlobalPosition": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 305,
                                            "Name": "GlobalPosition",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "LoopCondition",
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
                                    "Name": "SI PAS D'ERREUR --> FIN BOUCLE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                        "Order": 0,
                                        "Name": "[FIN DE BOUCLE]",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "InPose": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                            "Id": 307,
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
                                            "Id": 308,
                                            "Name": "GlobalPosition",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "LoopCondition",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          }
                                        }
                                      }
                                    ],
                                    "Ports": {
                                      "FALSE": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 306,
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
                                    "Id": 297,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      296
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 298,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 299,
                                    "Name": "Value",
                                    "TypeName": "System.Int64, mscorlib",
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
                            "Name": "SI ACTION TJ EN COURS --> VOID",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {}
                          }
                        ],
                        "Ports": {
                          "ValueToTest": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 292,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              288
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 293,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 294,
                            "Name": "Value",
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
                      "LoopCondition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 281,
                        "Name": "LoopCondition",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": false,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "LoopIterator": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 282,
                        "Name": "LoopIterator",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 460,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  }
                ],
                "Ports": {
                  "TRUE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 252,
                    "Name": "TRUE",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": true,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "FALSE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 253,
                    "Name": "FALSE",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "IAI Action Counter": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 254,
                    "Name": "IAI Action Counter",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 22,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 1,
                "Name": "[SORTIR VERIN HALF]",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                    "Order": 0,
                    "Name": "[PLC] Lecture Compteur IAI",
                    "IsAsync": false,
                    "ComponentIDs": [
                      3
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Variable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 312,
                        "Name": "Variable",
                        "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                        "PortType": 2,
                        "CurrentValue": {
                          "Tag": "VAR_36",
                          "Designation": "IAI_HALF_Counter",
                          "Index": 0,
                          "Path": "GVL.IAI_HALF_Actuator_Counter",
                          "IO_Type": 0,
                          "Var_Type": 8
                        },
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ValueResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 313,
                        "Name": "ValueResult",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 1,
                    "Name": "[SAVE] Enregistrer Compteur",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 314,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          313
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 315,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "IAI Action Counter",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                    "Order": 2,
                    "Name": "[BOUCLE] Start Motion",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 0,
                        "Name": "[PLC] Lire Compteur Verin",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 318,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_36",
                              "Designation": "IAI_HALF_Counter",
                              "Index": 0,
                              "Path": "GVL.IAI_HALF_Actuator_Counter",
                              "IO_Type": 0,
                              "Var_Type": 8
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 319,
                            "Name": "ValueResult",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 1,
                        "Name": "[PLC] Lire Mouvent Lancé",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 320,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_32",
                              "Designation": "IAI_HALF_OUT_Feedback",
                              "Index": 0,
                              "Path": "GVL.IAI_HALF_Actuator_Out_Started",
                              "IO_Type": 0,
                              "Var_Type": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 321,
                            "Name": "ValueResult",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Values.EvaluateExpression, AkeoCore",
                        "Order": 2,
                        "Name": "[COMPUTE] Evaluer fin action ",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "#0": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 322,
                            "Name": "#0",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              319
                            ]
                          },
                          "Nb inputs": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 323,
                            "Name": "Nb inputs",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 3,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Evaluation String": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 324,
                            "Name": "Evaluation String",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Output Boolean": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 325,
                            "Name": "Output Boolean",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Integer": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 326,
                            "Name": "Output Integer",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Double": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 327,
                            "Name": "Output Double",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "#1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 328,
                            "Name": "#1",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              311
                            ]
                          },
                          "#2": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 329,
                            "Name": "#2",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              321
                            ]
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                        "Order": 3,
                        "Name": "[CONDITION] Mouvement lancé ?",
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
                                "Name": "FIN DE BOUCLE",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 333,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      310
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 334,
                                    "Name": "GlobalPosition",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "LoopCondition",
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
                                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                                "Order": 0,
                                "Name": "[PLC] Mouvement Verin",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  3
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "SetVariable": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 335,
                                    "Name": "SetVariable",
                                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                                    "PortType": 2,
                                    "CurrentValue": {
                                      "Tag": "VAR_27",
                                      "Designation": "IAI_HALF_OUT",
                                      "Index": 0,
                                      "Path": "GVL.IAI_HALF_Actuator_Out",
                                      "IO_Type": 1,
                                      "Var_Type": 0
                                    },
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "SetValue": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 336,
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
                                "$type": "AkeoCore.Application.Wait, AkeoCore",
                                "Order": 1,
                                "Name": "[WAIT] 200ms",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "Delay_ms": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 337,
                                    "Name": "Delay_ms",
                                    "TypeName": "System.Int64, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 200,
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
                            "Id": 330,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              325
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 331,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 332,
                            "Name": "Value",
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
                      "LoopCondition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 316,
                        "Name": "LoopCondition",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": false,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "LoopIterator": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 317,
                        "Name": "LoopIterator",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                    "Order": 3,
                    "Name": "[BOUCLE] ATTENTE FIN D'ACTION",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 0,
                        "Name": "[PLC] Lire Compteur Verin",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 340,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_36",
                              "Designation": "IAI_HALF_Counter",
                              "Index": 0,
                              "Path": "GVL.IAI_HALF_Actuator_Counter",
                              "IO_Type": 0,
                              "Var_Type": 8
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 341,
                            "Name": "ValueResult",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Values.EvaluateExpression, AkeoCore",
                        "Order": 1,
                        "Name": "[COMPUTE] Evaluer fin action ",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "#0": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 342,
                            "Name": "#0",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              341
                            ]
                          },
                          "Nb inputs": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 343,
                            "Name": "Nb inputs",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 2,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Evaluation String": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 344,
                            "Name": "Evaluation String",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "#0 = (#1 + 1)",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Output Boolean": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 345,
                            "Name": "Output Boolean",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Integer": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 346,
                            "Name": "Output Integer",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Double": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 347,
                            "Name": "Output Double",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "#1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 348,
                            "Name": "#1",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              311
                            ]
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                        "Order": 2,
                        "Name": "[TEST] Action terminée",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                            "Order": 1,
                            "Name": "SI ACTION TERMINEE --> CHECK ERREUR",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [
                              {
                                "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                                "Order": 0,
                                "Name": "[PLC] Lire code erreur",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  3
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "Variable": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 352,
                                    "Name": "Variable",
                                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                                    "PortType": 2,
                                    "CurrentValue": {
                                      "Tag": "VAR_35",
                                      "Designation": "IAI_HALF_ErrorCode",
                                      "Index": 0,
                                      "Path": "GVL.IAI_HALF_Actuator_ErrorCode",
                                      "IO_Type": 0,
                                      "Var_Type": 7
                                    },
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ValueResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 353,
                                    "Name": "ValueResult",
                                    "TypeName": "System.Int64, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                                "Order": 1,
                                "Name": "[TEST] ERREUR A FIN D'ACTION",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "SI ERREUR DETECTEE --> POPUP",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                                        "Order": 0,
                                        "Name": "[POPUP] ERREUR IAI",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "UserMessage": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 357,
                                            "Name": "UserMessage",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "ButtonLayout": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 358,
                                            "Name": "ButtonLayout",
                                            "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                            "PortType": 2,
                                            "CurrentValue": 0,
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Icon": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 359,
                                            "Name": "Icon",
                                            "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                            "PortType": 2,
                                            "CurrentValue": 1,
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "UserResult": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                            "Id": 360,
                                            "Name": "UserResult",
                                            "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                                            "PortType": 1,
                                            "Behavior": 1,
                                            "ProducerIDs": []
                                          }
                                        }
                                      },
                                      {
                                        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                        "Order": 1,
                                        "Name": "[FIN DE BOUCLE]",
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
                                            "ProducerIDs": []
                                          },
                                          "GlobalPosition": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 362,
                                            "Name": "GlobalPosition",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "LoopCondition",
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
                                    "Name": "SI PAS D'ERREUR --> FIN BOUCLE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                        "Order": 0,
                                        "Name": "[FIN DE BOUCLE]",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "InPose": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                            "Id": 364,
                                            "Name": "InPose",
                                            "TypeName": "System.Object, mscorlib",
                                            "PortType": 0,
                                            "Behavior": 0,
                                            "ProducerIDs": [
                                              363
                                            ]
                                          },
                                          "GlobalPosition": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 365,
                                            "Name": "GlobalPosition",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "LoopCondition",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          }
                                        }
                                      }
                                    ],
                                    "Ports": {
                                      "FALSE": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 363,
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
                                    "Id": 354,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      353
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 355,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 356,
                                    "Name": "Value",
                                    "TypeName": "System.Int64, mscorlib",
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
                            "Name": "SI ACTION TJ EN COURS --> VOID",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {}
                          }
                        ],
                        "Ports": {
                          "ValueToTest": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 349,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              345
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 350,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 351,
                            "Name": "Value",
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
                      "LoopCondition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 338,
                        "Name": "LoopCondition",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": false,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "LoopIterator": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 339,
                        "Name": "LoopIterator",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 545,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  }
                ],
                "Ports": {
                  "TRUE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 309,
                    "Name": "TRUE",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": true,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "FALSE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 310,
                    "Name": "FALSE",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "IAI Action Counter": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 311,
                    "Name": "IAI Action Counter",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 22,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 2,
                "Name": "[RENTRER VERIN FULL]",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                    "Order": 0,
                    "Name": "[PLC] Lecture Compteur IAI",
                    "IsAsync": false,
                    "ComponentIDs": [
                      3
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Variable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 369,
                        "Name": "Variable",
                        "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                        "PortType": 2,
                        "CurrentValue": {
                          "Tag": "VAR_18",
                          "Designation": "IAI_FULL_Counter",
                          "Index": 0,
                          "Path": "GVL.IAI_FULL_Actuator_Counter",
                          "IO_Type": 0,
                          "Var_Type": 2
                        },
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ValueResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 370,
                        "Name": "ValueResult",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 1,
                    "Name": "[SAVE] Enregistrer Compteur",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 371,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          370
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 372,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "IAI Action Counter",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                    "Order": 2,
                    "Name": "[BOUCLE] Start Motion",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 0,
                        "Name": "[PLC] Lire Compteur Verin",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 375,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_18",
                              "Designation": "IAI_FULL_Counter",
                              "Index": 0,
                              "Path": "GVL.IAI_FULL_Actuator_Counter",
                              "IO_Type": 0,
                              "Var_Type": 8
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 376,
                            "Name": "ValueResult",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 1,
                        "Name": "[PLC] Lire Mouvent Lancé",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 377,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_8",
                              "Designation": "IAI_FULL_IN_Feedback",
                              "Index": 0,
                              "Path": "GVL.IAI_FULL_Actuator_In_Started",
                              "IO_Type": 0,
                              "Var_Type": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 378,
                            "Name": "ValueResult",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Values.EvaluateExpression, AkeoCore",
                        "Order": 2,
                        "Name": "[COMPUTE] Evaluer fin action ",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "#0": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 379,
                            "Name": "#0",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              376
                            ]
                          },
                          "Nb inputs": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 380,
                            "Name": "Nb inputs",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 3,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Evaluation String": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 381,
                            "Name": "Evaluation String",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Output Boolean": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 382,
                            "Name": "Output Boolean",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Integer": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 383,
                            "Name": "Output Integer",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Double": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 384,
                            "Name": "Output Double",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "#1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 385,
                            "Name": "#1",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              368
                            ]
                          },
                          "#2": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 386,
                            "Name": "#2",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              378
                            ]
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                        "Order": 3,
                        "Name": "[CONDITION] Mouvement lancé ?",
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
                                "Name": "FIN DE BOUCLE",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 390,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      367
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 391,
                                    "Name": "GlobalPosition",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "LoopCondition",
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
                                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                                "Order": 0,
                                "Name": "[PLC] Rentrer Verin",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  3
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "SetVariable": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 392,
                                    "Name": "SetVariable",
                                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                                    "PortType": 2,
                                    "CurrentValue": {
                                      "Tag": "VAR_3",
                                      "Designation": "IAI_FULL_IN",
                                      "Index": 0,
                                      "Path": "GVL.IAI_FULL_Actuator_In",
                                      "IO_Type": 1,
                                      "Var_Type": 0
                                    },
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "SetValue": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 393,
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
                                "$type": "AkeoCore.Application.Wait, AkeoCore",
                                "Order": 1,
                                "Name": "[WAIT] 200ms",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "Delay_ms": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 394,
                                    "Name": "Delay_ms",
                                    "TypeName": "System.Int64, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 200,
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
                            "Id": 387,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              382
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 388,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 389,
                            "Name": "Value",
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
                      "LoopCondition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 373,
                        "Name": "LoopCondition",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": false,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "LoopIterator": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 374,
                        "Name": "LoopIterator",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                    "Order": 3,
                    "Name": "[BOUCLE] ATTENTE FIN D'ACTION",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 0,
                        "Name": "[PLC] Lire Compteur Verin",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 397,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_18",
                              "Designation": "IAI_FULL_Counter",
                              "Index": 0,
                              "Path": "GVL.IAI_FULL_Actuator_Counter",
                              "IO_Type": 0,
                              "Var_Type": 8
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 398,
                            "Name": "ValueResult",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Values.EvaluateExpression, AkeoCore",
                        "Order": 1,
                        "Name": "[COMPUTE] Evaluer fin action ",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "#0": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 399,
                            "Name": "#0",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              398
                            ]
                          },
                          "Nb inputs": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 400,
                            "Name": "Nb inputs",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 2,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Evaluation String": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 401,
                            "Name": "Evaluation String",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "#0 = (#1 + 1)",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Output Boolean": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 402,
                            "Name": "Output Boolean",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Integer": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 403,
                            "Name": "Output Integer",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Double": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 404,
                            "Name": "Output Double",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "#1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 405,
                            "Name": "#1",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              368
                            ]
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                        "Order": 2,
                        "Name": "[TEST] Action terminée",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                            "Order": 1,
                            "Name": "SI ACTION TERMINEE --> CHECK ERREUR",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [
                              {
                                "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                                "Order": 0,
                                "Name": "[PLC] Lire code erreur",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  3
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "Variable": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 409,
                                    "Name": "Variable",
                                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                                    "PortType": 2,
                                    "CurrentValue": {
                                      "Tag": "VAR_12",
                                      "Designation": "IAI_FULL_ErrorCode",
                                      "Index": 0,
                                      "Path": "GVL.IAI_FULL_Actuator_ErrorCode",
                                      "IO_Type": 0,
                                      "Var_Type": 7
                                    },
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ValueResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 410,
                                    "Name": "ValueResult",
                                    "TypeName": "System.Int64, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                                "Order": 1,
                                "Name": "[TEST] ERREUR A FIN D'ACTION",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "SI ERREUR DETECTEE --> POPUP",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                                        "Order": 0,
                                        "Name": "[POPUP] ERREUR IAI",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "UserMessage": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 414,
                                            "Name": "UserMessage",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "ButtonLayout": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 415,
                                            "Name": "ButtonLayout",
                                            "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                            "PortType": 2,
                                            "CurrentValue": 0,
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Icon": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 416,
                                            "Name": "Icon",
                                            "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                            "PortType": 2,
                                            "CurrentValue": 1,
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "UserResult": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                            "Id": 417,
                                            "Name": "UserResult",
                                            "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                                            "PortType": 1,
                                            "Behavior": 1,
                                            "ProducerIDs": []
                                          }
                                        }
                                      },
                                      {
                                        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                        "Order": 1,
                                        "Name": "[FIN DE BOUCLE]",
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
                                              367
                                            ]
                                          },
                                          "GlobalPosition": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 419,
                                            "Name": "GlobalPosition",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "LoopCondition",
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
                                    "Name": "SI PAS D'ERREUR --> FIN BOUCLE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                        "Order": 0,
                                        "Name": "[FIN DE BOUCLE]",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "InPose": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                            "Id": 421,
                                            "Name": "InPose",
                                            "TypeName": "System.Object, mscorlib",
                                            "PortType": 0,
                                            "Behavior": 0,
                                            "ProducerIDs": [
                                              420
                                            ]
                                          },
                                          "GlobalPosition": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 422,
                                            "Name": "GlobalPosition",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "LoopCondition",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          }
                                        }
                                      }
                                    ],
                                    "Ports": {
                                      "FALSE": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 420,
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
                                    "Id": 411,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      410
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 412,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 413,
                                    "Name": "Value",
                                    "TypeName": "System.Int64, mscorlib",
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
                            "Name": "SI ACTION TJ EN COURS --> VOID",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {}
                          }
                        ],
                        "Ports": {
                          "ValueToTest": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 406,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              402
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 407,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 408,
                            "Name": "Value",
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
                      "LoopCondition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 395,
                        "Name": "LoopCondition",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": false,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "LoopIterator": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 396,
                        "Name": "LoopIterator",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 560,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  }
                ],
                "Ports": {
                  "TRUE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 366,
                    "Name": "TRUE",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": true,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "FALSE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 367,
                    "Name": "FALSE",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "IAI Action Counter": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 368,
                    "Name": "IAI Action Counter",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 23,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 3,
                "Name": "[RENTRER VERIN HALF]",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                    "Order": 0,
                    "Name": "[PLC] Lecture Compteur IAI",
                    "IsAsync": false,
                    "ComponentIDs": [
                      3
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Variable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 426,
                        "Name": "Variable",
                        "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                        "PortType": 2,
                        "CurrentValue": {
                          "Tag": "VAR_36",
                          "Designation": "IAI_HALF_Counter",
                          "Index": 0,
                          "Path": "GVL.IAI_HALF_Actuator_Counter",
                          "IO_Type": 0,
                          "Var_Type": 8
                        },
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ValueResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 427,
                        "Name": "ValueResult",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                    "Order": 1,
                    "Name": "[SAVE] Enregistrer Compteur",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 428,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          427
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 429,
                        "Name": "GlobalPosition",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "IAI Action Counter",
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                    "Order": 2,
                    "Name": "[BOUCLE] Start Motion",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 0,
                        "Name": "[PLC] Lire Compteur Verin",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 432,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_36",
                              "Designation": "IAI_HALF_Counter",
                              "Index": 0,
                              "Path": "GVL.IAI_HALF_Actuator_Counter",
                              "IO_Type": 0,
                              "Var_Type": 8
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 433,
                            "Name": "ValueResult",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 1,
                        "Name": "[PLC] Lire Mouvent Lancé",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 434,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_31",
                              "Designation": "IAI_HALF_IN_Feedback",
                              "Index": 0,
                              "Path": "GVL.IAI_HALF_Actuator_In_Started",
                              "IO_Type": 0,
                              "Var_Type": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 435,
                            "Name": "ValueResult",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Values.EvaluateExpression, AkeoCore",
                        "Order": 2,
                        "Name": "[COMPUTE] Evaluer fin action ",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "#0": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 436,
                            "Name": "#0",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              433
                            ]
                          },
                          "Nb inputs": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 437,
                            "Name": "Nb inputs",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 3,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Evaluation String": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 438,
                            "Name": "Evaluation String",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Output Boolean": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 439,
                            "Name": "Output Boolean",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Integer": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 440,
                            "Name": "Output Integer",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Double": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 441,
                            "Name": "Output Double",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "#1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 442,
                            "Name": "#1",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              425
                            ]
                          },
                          "#2": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 443,
                            "Name": "#2",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              435
                            ]
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                        "Order": 3,
                        "Name": "[CONDITION] Mouvement lancé ?",
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
                                "Name": "FIN DE BOUCLE",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "InPose": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                    "Id": 447,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      424
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 448,
                                    "Name": "GlobalPosition",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "LoopCondition",
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
                                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                                "Order": 0,
                                "Name": "[PLC] Rentrer Verin",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  3
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "SetVariable": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 449,
                                    "Name": "SetVariable",
                                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                                    "PortType": 2,
                                    "CurrentValue": {
                                      "Tag": "VAR_26",
                                      "Designation": "IAI_HALF_IN",
                                      "Index": 0,
                                      "Path": "GVL.IAI_HALF_Actuator_In",
                                      "IO_Type": 1,
                                      "Var_Type": 0
                                    },
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "SetValue": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 450,
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
                                "$type": "AkeoCore.Application.Wait, AkeoCore",
                                "Order": 1,
                                "Name": "[WAIT] 200ms",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [],
                                "Ports": {
                                  "Delay_ms": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 451,
                                    "Name": "Delay_ms",
                                    "TypeName": "System.Int64, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": 200,
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
                            "Id": 444,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              439
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 445,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 446,
                            "Name": "Value",
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
                      "LoopCondition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 430,
                        "Name": "LoopCondition",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": false,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "LoopIterator": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 431,
                        "Name": "LoopIterator",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                    "Order": 3,
                    "Name": "[BOUCLE] ATTENTE FIN D'ACTION",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                        "Order": 0,
                        "Name": "[PLC] Lire Compteur Verin",
                        "IsAsync": false,
                        "ComponentIDs": [
                          3
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "Variable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 454,
                            "Name": "Variable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_36",
                              "Designation": "IAI_HALF_Counter",
                              "Index": 0,
                              "Path": "GVL.IAI_HALF_Actuator_Counter",
                              "IO_Type": 0,
                              "Var_Type": 8
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "ValueResult": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 455,
                            "Name": "ValueResult",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Values.EvaluateExpression, AkeoCore",
                        "Order": 1,
                        "Name": "[COMPUTE] Evaluer fin action ",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [],
                        "Ports": {
                          "#0": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 456,
                            "Name": "#0",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              455
                            ]
                          },
                          "Nb inputs": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 457,
                            "Name": "Nb inputs",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 2,
                            "CurrentValue": 2,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Evaluation String": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 458,
                            "Name": "Evaluation String",
                            "TypeName": "System.String, mscorlib",
                            "PortType": 2,
                            "CurrentValue": "#0 = (#1 + 1)",
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Output Boolean": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 459,
                            "Name": "Output Boolean",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Integer": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 460,
                            "Name": "Output Integer",
                            "TypeName": "System.Int64, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "Output Double": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                            "Id": 461,
                            "Name": "Output Double",
                            "TypeName": "System.Double, mscorlib",
                            "PortType": 1,
                            "Behavior": 1,
                            "ProducerIDs": []
                          },
                          "#1": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 462,
                            "Name": "#1",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              425
                            ]
                          }
                        }
                      },
                      {
                        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                        "Order": 2,
                        "Name": "[TEST] Action terminée",
                        "IsAsync": false,
                        "ComponentIDs": [],
                        "ChildActions": [
                          {
                            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                            "Order": 1,
                            "Name": "SI ACTION TERMINEE --> CHECK ERREUR",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [
                              {
                                "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                                "Order": 0,
                                "Name": "[PLC] Lire code erreur",
                                "IsAsync": false,
                                "ComponentIDs": [
                                  3
                                ],
                                "ChildActions": [],
                                "Ports": {
                                  "Variable": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 466,
                                    "Name": "Variable",
                                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                                    "PortType": 2,
                                    "CurrentValue": {
                                      "Tag": "VAR_35",
                                      "Designation": "IAI_HALF_ErrorCode",
                                      "Index": 0,
                                      "Path": "GVL.IAI_HALF_Actuator_ErrorCode",
                                      "IO_Type": 0,
                                      "Var_Type": 0
                                    },
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ValueResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 467,
                                    "Name": "ValueResult",
                                    "TypeName": "System.Int64, mscorlib",
                                    "PortType": 1,
                                    "Behavior": 1,
                                    "ProducerIDs": []
                                  }
                                }
                              },
                              {
                                "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
                                "Order": 1,
                                "Name": "[TEST] ERREUR A FIN D'ACTION",
                                "IsAsync": false,
                                "ComponentIDs": [],
                                "ChildActions": [
                                  {
                                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                                    "Order": 1,
                                    "Name": "SI ERREUR DETECTEE --> POPUP",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Programming.User.Popup, AkeoCore",
                                        "Order": 0,
                                        "Name": "[POPUP] ERREUR IAI",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "UserMessage": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 471,
                                            "Name": "UserMessage",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "ButtonLayout": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 472,
                                            "Name": "ButtonLayout",
                                            "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                            "PortType": 2,
                                            "CurrentValue": 0,
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "Icon": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 473,
                                            "Name": "Icon",
                                            "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                            "PortType": 2,
                                            "CurrentValue": 1,
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          },
                                          "UserResult": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                            "Id": 474,
                                            "Name": "UserResult",
                                            "TypeName": "AkeoSpineCore.View.MessageBoxResult, AkeoSpineCore",
                                            "PortType": 1,
                                            "Behavior": 1,
                                            "ProducerIDs": []
                                          }
                                        }
                                      },
                                      {
                                        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                        "Order": 1,
                                        "Name": "[FIN DE BOUCLE]",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "InPose": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                            "Id": 475,
                                            "Name": "InPose",
                                            "TypeName": "System.Object, mscorlib",
                                            "PortType": 0,
                                            "Behavior": 0,
                                            "ProducerIDs": [
                                              424
                                            ]
                                          },
                                          "GlobalPosition": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 476,
                                            "Name": "GlobalPosition",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "LoopCondition",
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
                                    "Name": "SI PAS D'ERREUR --> FIN BOUCLE",
                                    "IsAsync": false,
                                    "ComponentIDs": [],
                                    "ChildActions": [
                                      {
                                        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
                                        "Order": 0,
                                        "Name": "[FIN DE BOUCLE]",
                                        "IsAsync": false,
                                        "ComponentIDs": [],
                                        "ChildActions": [],
                                        "Ports": {
                                          "InPose": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                                            "Id": 478,
                                            "Name": "InPose",
                                            "TypeName": "System.Object, mscorlib",
                                            "PortType": 0,
                                            "Behavior": 0,
                                            "ProducerIDs": [
                                              477
                                            ]
                                          },
                                          "GlobalPosition": {
                                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                            "Id": 479,
                                            "Name": "GlobalPosition",
                                            "TypeName": "System.String, mscorlib",
                                            "PortType": 2,
                                            "CurrentValue": "LoopCondition",
                                            "Behavior": 0,
                                            "ProducerIDs": []
                                          }
                                        }
                                      }
                                    ],
                                    "Ports": {
                                      "FALSE": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 477,
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
                                    "Id": 468,
                                    "Name": "ValueToTest",
                                    "TypeName": "System.IComparable, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      467
                                    ]
                                  },
                                  "Comparison": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 469,
                                    "Name": "Comparison",
                                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Value": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 470,
                                    "Name": "Value",
                                    "TypeName": "System.Int64, mscorlib",
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
                            "Name": "SI ACTION TJ EN COURS --> VOID",
                            "IsAsync": false,
                            "ComponentIDs": [],
                            "ChildActions": [],
                            "Ports": {}
                          }
                        ],
                        "Ports": {
                          "ValueToTest": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                            "Id": 463,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              459
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 464,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 0,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 465,
                            "Name": "Value",
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
                      "LoopCondition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 452,
                        "Name": "LoopCondition",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": false,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "LoopIterator": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 453,
                        "Name": "LoopIterator",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 506,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  }
                ],
                "Ports": {
                  "TRUE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 423,
                    "Name": "TRUE",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": true,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "FALSE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 424,
                    "Name": "FALSE",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "IAI Action Counter": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 425,
                    "Name": "IAI Action Counter",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 23,
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
            "Name": "LUMIERES !!",
            "IsAsync": true,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 0,
                "Name": "RingLIGH ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 522,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 523,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 1,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 524,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 2,
                "Name": "RingLIGH OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 525,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 526,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 3,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 527,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 4,
                "Name": "RingLIGH ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 528,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 529,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 5,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 530,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 6,
                "Name": "RingLIGH OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 531,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 532,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 7,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 533,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 8,
                "Name": "RingLIGH ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 534,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 535,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 9,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 536,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 10,
                "Name": "RingLIGH OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 537,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 538,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 11,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 539,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 12,
                "Name": "RingLIGH ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 540,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 541,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 13,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 542,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 14,
                "Name": "RingLIGH ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 543,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 544,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 15,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 545,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 16,
                "Name": "RingLIGH OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 546,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 547,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 17,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 548,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 18,
                "Name": "RingLIGH OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 549,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 550,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 19,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 551,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 20,
                "Name": "RingLIGH ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 552,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 553,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 21,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 554,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 22,
                "Name": "RingLIGH OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 555,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 556,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 23,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 557,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 24,
                "Name": "RingLIGH ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 558,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 559,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 25,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 560,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 100,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 26,
                "Name": "RingLIGH OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 561,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_23",
                      "Designation": "VIS_EclairageON",
                      "Index": 0,
                      "Path": "GVL.VIS_EclairageON",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 562,
                    "Name": "SetValue",
                    "TypeName": "System.Int64, mscorlib",
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
            "Order": 5,
            "Name": "SONO !!",
            "IsAsync": true,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 0,
                "Name": "Sono ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 568,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_22",
                      "Designation": "CEL_Verine_Buzzer",
                      "Index": 0,
                      "Path": "GVL.CEL_VerineBUZZER",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 569,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 1,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 576,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 200,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 2,
                "Name": "Sono OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 572,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_22",
                      "Designation": "CEL_Verine_Buzzer",
                      "Index": 0,
                      "Path": "GVL.CEL_VerineBUZZER",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 573,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 3,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 563,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 200,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 4,
                "Name": "Sono ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 570,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_22",
                      "Designation": "CEL_Verine_Buzzer",
                      "Index": 0,
                      "Path": "GVL.CEL_VerineBUZZER",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 571,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 5,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 577,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 200,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 6,
                "Name": "Sono ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 579,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_22",
                      "Designation": "CEL_Verine_Buzzer",
                      "Index": 0,
                      "Path": "GVL.CEL_VerineBUZZER",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 580,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 7,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 581,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 200,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 8,
                "Name": "Sono OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 574,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_22",
                      "Designation": "CEL_Verine_Buzzer",
                      "Index": 0,
                      "Path": "GVL.CEL_VerineBUZZER",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 575,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 9,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 582,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 200,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 10,
                "Name": "Sono ON",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 566,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_22",
                      "Designation": "CEL_Verine_Buzzer",
                      "Index": 0,
                      "Path": "GVL.CEL_VerineBUZZER",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 567,
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
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 11,
                "Name": "Wait 100",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 578,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 200,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 12,
                "Name": "Sono OFF",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 564,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_22",
                      "Designation": "CEL_Verine_Buzzer",
                      "Index": 0,
                      "Path": "GVL.CEL_VerineBUZZER",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 565,
                    "Name": "SetValue",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 0,
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
        "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
        "Order": 1,
        "Name": "while true",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [],
        "Ports": {
          "LoopCondition": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 22,
            "Name": "LoopCondition",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "LoopIterator": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 23,
            "Name": "LoopIterator",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 8,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoVision2D.CameraSnap, AkeoVision2D",
        "Order": 2,
        "Name": "SNAP Test",
        "IsAsync": false,
        "ComponentIDs": [
          12
        ],
        "ChildActions": [],
        "Ports": {
          "SaveOption": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 583,
            "Name": "SaveOption",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "SavePath": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 587,
            "Name": "SavePath",
            "TypeName": "System.String, mscorlib",
            "PortType": 2,
            "CurrentValue": "",
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Image": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
            "Id": 585,
            "Name": "Image",
            "TypeName": "AkeoVision2D.AkeoImage, AkeoVision2D",
            "PortType": 1,
            "Behavior": 1,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoVision2D.Utils.WriteImages, AkeoVision2D",
        "Order": 3,
        "Name": "write Image",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [],
        "Ports": {
          "ImagePath": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 588,
            "Name": "ImagePath",
            "TypeName": "System.String, mscorlib",
            "PortType": 2,
            "CurrentValue": "C:\\AKEOPLUS\\Acquisitions\\COM_SOL\\test",
            "Behavior": 0,
            "ProducerIDs": []
          },
          "ImageExt": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 589,
            "Name": "ImageExt",
            "TypeName": "System.String, mscorlib",
            "PortType": 2,
            "CurrentValue": ".bmp",
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Image": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
            "Id": 590,
            "Name": "Image",
            "TypeName": "AkeoVision2D.AkeoImage, AkeoVision2D",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              585
            ]
          }
        }
      }
    ],
    "Ports": {}
  },
  "MaxId": 590
}