{
  "Id": 0,
  "ReferenceName": "[XX] SOLAR Prise OSR",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "[XX] SOLAR Prise OSR",
    "IsAsync": false,
    "ComponentIDs": [],
    "ChildActions": [
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 0,
        "Name": "[SOLAR HOMING]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "HOME",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 202,
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
                          "Label": "M1_P2",
                          "Position": {
                            "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "AxisNumber": 0,
                            "_Pose": [
                              -46.408428,
                              -52.511448,
                              131.790695,
                              -45.167732,
                              -83.034645,
                              82.383942
                            ]
                          }
                        },
                        {
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "AxisNumber": 0,
                            "_Pose": [
                              -69.580742,
                              -44.052696,
                              136.875229,
                              -68.824364,
                              -88.968849,
                              72.875603
                            ]
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
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 1,
        "Name": "[SOLAR PICKING]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRANSI-Verticale",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 140,
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
                            "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "AxisNumber": 0,
                            "_Pose": [
                              -65.014755,
                              -79.479675,
                              139.464523,
                              -180.511505,
                              -30.134811,
                              190.95813
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
              }
            }
          },
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 1,
            "Name": "[TRAJ] GO to Pick",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 141,
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
                          "Label": "M1_P2",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              418.519775,
                              1324.640625,
                              512.548218,
                              74.818886,
                              179.970845,
                              -0.27102700000000063
                            ],
                            "Convention": 1
                          }
                        },
                        {
                          "Label": "M1_P4",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              418.580078,
                              1571.328857,
                              512.047241,
                              74.816817999999984,
                              179.98627100000002,
                              -0.27278100000000433
                            ],
                            "Convention": 1
                          }
                        },
                        {
                          "Label": "M1_P3",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              417.837982,
                              1571.27417,
                              353.377319,
                              74.814438000000024,
                              179.988065,
                              -0.27241499999998775
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
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 2,
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
                    "Id": 208,
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
                    "Id": 209,
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
                    "Id": 210,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      209
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 211,
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
                        "Id": 214,
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
                        "Id": 215,
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
                        "Id": 216,
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
                        "Id": 217,
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
                        "Id": 218,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          215
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 219,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 220,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 221,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 222,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 223,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 224,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          207
                        ]
                      },
                      "#2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 225,
                        "Name": "#2",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          217
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
                                "Id": 229,
                                "Name": "InPose",
                                "TypeName": "System.Object, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  206
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 230,
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
                                "Id": 231,
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
                                "Id": 232,
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
                                "Id": 233,
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
                        "Id": 226,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          221
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 227,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 228,
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
                    "Id": 212,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 213,
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
                        "Id": 236,
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
                        "Id": 237,
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
                        "Id": 238,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          237
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 239,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 240,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "#0 = (#1 + 1)",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 241,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 242,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 243,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 244,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          207
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
                                "Id": 248,
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
                                "Id": 249,
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
                                        "Id": 253,
                                        "Name": "UserMessage",
                                        "TypeName": "System.String, mscorlib",
                                        "PortType": 2,
                                        "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "ButtonLayout": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 254,
                                        "Name": "ButtonLayout",
                                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "Icon": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 255,
                                        "Name": "Icon",
                                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 1,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "UserResult": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                        "Id": 256,
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
                                        "Id": 257,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 258,
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
                                        "Id": 260,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          259
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 261,
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
                                    "Id": 259,
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
                                "Id": 250,
                                "Name": "ValueToTest",
                                "TypeName": "System.IComparable, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  249
                                ]
                              },
                              "Comparison": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 251,
                                "Name": "Comparison",
                                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Value": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 252,
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
                        "Id": 245,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          241
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 246,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 247,
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
                    "Id": 234,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 235,
                    "Name": "LoopIterator",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 525,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {
              "TRUE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 205,
                "Name": "TRUE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "FALSE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 206,
                "Name": "FALSE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "IAI Action Counter": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 207,
                "Name": "IAI Action Counter",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 79,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 3,
            "Name": "[TRAJ] PICK OSR",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 169,
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
                              417.848175,
                              1571.265747,
                              328.693024,
                              74.814444999999978,
                              179.987895,
                              -0.27243000000001277
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
              3
            ],
            "ChildActions": [],
            "Ports": {
              "SetVariable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 170,
                "Name": "SetVariable",
                "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                "PortType": 2,
                "CurrentValue": {
                  "Tag": "VAR_13",
                  "Designation": "SOL_AspiFULL",
                  "Index": 0,
                  "Path": "GVL.SOL_AspirationOSR_Full",
                  "IO_Type": 1,
                  "Var_Type": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SetValue": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 171,
                "Name": "SetValue",
                "TypeName": "System.ValueType, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  76
                ]
              }
            }
          },
          {
            "$type": "AkeoCore.Application.Wait, AkeoCore",
            "Order": 5,
            "Name": "wait 250",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "Delay_ms": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 172,
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
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 6,
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
                    "Id": 265,
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
                    "Id": 266,
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
                    "Id": 267,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      266
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 268,
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
                        "Id": 271,
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
                        "Id": 272,
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
                        "Id": 273,
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
                        "Id": 274,
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
                        "Id": 275,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          272
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 276,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 277,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 278,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 279,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 280,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 281,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          264
                        ]
                      },
                      "#2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 282,
                        "Name": "#2",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          274
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
                                "Id": 286,
                                "Name": "InPose",
                                "TypeName": "System.Object, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  263
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 287,
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
                                "Id": 288,
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
                                "Id": 289,
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
                                "Id": 290,
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
                        "Id": 283,
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
                        "Id": 284,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 285,
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
                    "Id": 269,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 270,
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
                        "Id": 293,
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
                        "Id": 294,
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
                        "Id": 295,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          294
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 296,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 297,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "#0 = (#1 + 1)",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 298,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 299,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 300,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 301,
                        "Name": "#1",
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
                                "Id": 305,
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
                                "Id": 306,
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
                                        "Id": 310,
                                        "Name": "UserMessage",
                                        "TypeName": "System.String, mscorlib",
                                        "PortType": 2,
                                        "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "ButtonLayout": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 311,
                                        "Name": "ButtonLayout",
                                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "Icon": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 312,
                                        "Name": "Icon",
                                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 1,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "UserResult": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                        "Id": 313,
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
                                        "Id": 314,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          263
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 315,
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
                                        "Id": 317,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          316
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 318,
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
                                    "Id": 316,
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
                                "Id": 307,
                                "Name": "ValueToTest",
                                "TypeName": "System.IComparable, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  306
                                ]
                              },
                              "Comparison": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 308,
                                "Name": "Comparison",
                                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Value": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 309,
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
                        "Id": 302,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          298
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 303,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 304,
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
                    "Id": 291,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 292,
                    "Name": "LoopIterator",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 526,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {
              "TRUE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 262,
                "Name": "TRUE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "FALSE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 263,
                "Name": "FALSE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "IAI Action Counter": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 264,
                "Name": "IAI Action Counter",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 80,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 7,
            "Name": "TRANSI-Verticale",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 200,
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
                            "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "AxisNumber": 0,
                            "_Pose": [
                              -65.014755,
                              -79.479675,
                              139.464523,
                              -180.511505,
                              -30.134811,
                              190.95813
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
              }
            }
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 2,
        "Name": "[SOLAR CONTROL]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "TRANSI-Horizontale",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 137,
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
                              534.937134,
                              982.268372,
                              173.479477,
                              90.102219000000019,
                              165.48576700000004,
                              87.708473000000012
                            ],
                            "Convention": 1
                          }
                        },
                        {
                          "Label": "M1_P2",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              921.608459,
                              918.564148,
                              175.250427,
                              179.373643,
                              164.998749,
                              88.417656
                            ],
                            "Convention": 1
                          }
                        },
                        {
                          "Label": "M1_P3",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              920.348389,
                              1309.270996,
                              -7.271551,
                              179.92350400000004,
                              165.049499,
                              90.391997999999987
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
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
            "Order": 1,
            "Name": "[SORTIR VERIN FULL]",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                "Order": 0,
                "Name": "[PLC] Sortir Verin",
                "IsAsync": false,
                "ComponentIDs": [
                  3
                ],
                "ChildActions": [],
                "Ports": {
                  "SetVariable": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 85,
                    "Name": "SetVariable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_4",
                      "Designation": "IAI_FULL_OUT",
                      "Index": 0,
                      "Path": "MAIN.IAI_FULL_HOOK.IAI_FULL_Actuator_Out",
                      "IO_Type": 1,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "SetValue": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 86,
                    "Name": "SetValue",
                    "TypeName": "System.ValueType, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      83
                    ]
                  }
                }
              },
              {
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 1,
                "Name": "[DELAIS] 10ms",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 87,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 10,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                "Order": 2,
                "Name": "[BOUCLE] ATTENTE FIN D'ACTION",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                    "Order": 1,
                    "Name": "[PLC] Lire Action EnCours",
                    "IsAsync": false,
                    "ComponentIDs": [
                      3
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Variable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 90,
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
                        "Id": 91,
                        "Name": "ValueResult",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
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
                                "Id": 95,
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
                                "Id": 96,
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
                                        "Id": 100,
                                        "Name": "UserMessage",
                                        "TypeName": "System.String, mscorlib",
                                        "PortType": 2,
                                        "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "ButtonLayout": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 101,
                                        "Name": "ButtonLayout",
                                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "Icon": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 102,
                                        "Name": "Icon",
                                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 1,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "UserResult": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                        "Id": 103,
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
                                        "Id": 104,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 105,
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
                                        "Id": 107,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          106
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 108,
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
                                    "Id": 106,
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
                                "Id": 97,
                                "Name": "ValueToTest",
                                "TypeName": "System.IComparable, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  96
                                ]
                              },
                              "Comparison": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 98,
                                "Name": "Comparison",
                                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Value": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 99,
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
                        "Id": 92,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          91
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 93,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 94,
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
                  "LoopCondition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 88,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 89,
                    "Name": "LoopIterator",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 704,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 3,
                "Name": "[DELAIS] 50ms",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 109,
                    "Name": "Delay_ms",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 50,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {
              "TRUE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 83,
                "Name": "TRUE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "FALSE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 84,
                "Name": "FALSE",
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
            "Order": 2,
            "Name": "Wait PHOTO",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "Delay_ms": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 201,
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
            "Name": "[RENTRER VERIN FULL]",
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
                    "Id": 112,
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
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 113,
                    "Name": "SetValue",
                    "TypeName": "System.ValueType, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      110
                    ]
                  }
                }
              },
              {
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 1,
                "Name": "[DELAIS] 200ms",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 114,
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
                "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
                "Order": 2,
                "Name": "[BOUCLE] ATTENTE FIN D'ACTION",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
                    "Order": 1,
                    "Name": "[PLC] Lire Action EnCours",
                    "IsAsync": false,
                    "ComponentIDs": [
                      3
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "Variable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 117,
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
                        "Id": 118,
                        "Name": "ValueResult",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
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
                                "Id": 122,
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
                                "Id": 123,
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
                                        "Id": 127,
                                        "Name": "UserMessage",
                                        "TypeName": "System.String, mscorlib",
                                        "PortType": 2,
                                        "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "ButtonLayout": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 128,
                                        "Name": "ButtonLayout",
                                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "Icon": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 129,
                                        "Name": "Icon",
                                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 1,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "UserResult": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                        "Id": 130,
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
                                        "Id": 131,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          111
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 132,
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
                                        "Id": 134,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          133
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 135,
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
                                    "Id": 133,
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
                                "Id": 124,
                                "Name": "ValueToTest",
                                "TypeName": "System.IComparable, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  123
                                ]
                              },
                              "Comparison": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 125,
                                "Name": "Comparison",
                                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Value": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 126,
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
                        "Id": 119,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          118
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 120,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 121,
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
                  "LoopCondition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 115,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 116,
                    "Name": "LoopIterator",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 445,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoCore.Application.Wait, AkeoCore",
                "Order": 3,
                "Name": "[DELAIS] 200ms",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Delay_ms": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 136,
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
            "Ports": {
              "TRUE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 110,
                "Name": "TRUE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "FALSE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 111,
                "Name": "FALSE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 4,
            "Name": "TRANSI-HOME",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 16,
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
                            "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "AxisNumber": 0,
                            "_Pose": [
                              -39.095963,
                              -42.614044,
                              129.486359,
                              50.799019,
                              -86.626122,
                              72.608879
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
        "Name": "[SOLAR PLACING]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 0,
            "Name": "Pannel Approach",
            "IsAsync": false,
            "ComponentIDs": [
              5
            ],
            "ChildActions": [],
            "Ports": {
              "ListMouvement": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 15,
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
                          "Label": "M1_P2",
                          "Position": {
                            "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "AxisNumber": 0,
                            "_Pose": [
                              -46.40834,
                              -52.511372,
                              131.790665,
                              -45.167484,
                              -83.034698,
                              82.383858
                            ]
                          }
                        },
                        {
                          "Label": "M1_P1",
                          "Position": {
                            "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                            "AxisNumber": 0,
                            "_Pose": [
                              -5.689127,
                              -57.889782,
                              146.879669,
                              -4.027824,
                              -89.625038,
                              74.873642
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
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {}
      },
      {
        "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
        "Order": 4,
        "Name": "[PLC] Aspiration OFF",
        "IsAsync": false,
        "ComponentIDs": [
          3
        ],
        "ChildActions": [],
        "Ports": {
          "SetVariable": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 203,
            "Name": "SetVariable",
            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
            "PortType": 2,
            "CurrentValue": {
              "Tag": "VAR_13",
              "Designation": "SOL_AspiFULL",
              "Index": 0,
              "Path": "GVL.SOL_AspirationOSR_Full",
              "IO_Type": 1,
              "Var_Type": 0
            },
            "Behavior": 0,
            "ProducerIDs": []
          },
          "SetValue": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
            "Id": 204,
            "Name": "SetValue",
            "TypeName": "System.ValueType, mscorlib",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              77
            ]
          }
        }
      }
    ],
    "Ports": {
      "SOLAR HOME": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 11,
        "Name": "SOLAR HOME",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            534.94,
            982.27,
            173.48,
            -89.9,
            14.51,
            -92.29
          ],
          "Convention": 1
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "SOLAR PASSAGE": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 12,
        "Name": "SOLAR PASSAGE",
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
      "TRUE": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 76,
        "Name": "TRUE",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "CurrentValue": true,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "FALSE": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 77,
        "Name": "FALSE",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "CurrentValue": false,
        "Behavior": 0,
        "ProducerIDs": []
      }
    }
  },
  "MaxId": 318
}