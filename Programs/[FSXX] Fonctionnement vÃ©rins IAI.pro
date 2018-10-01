{
  "Id": 0,
  "ReferenceName": "[FSXX] Fonctionnement vérins IAI",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "[FSXX] Fonctionnement vérins IAI",
    "IsAsync": false,
    "ComponentIDs": [],
    "ChildActions": [
      {
        "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
        "Order": 0,
        "Name": "while true",
        "IsAsync": false,
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
                    "Id": 1799,
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
                    "Id": 1800,
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
                    "Id": 1801,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1800
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1802,
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
                        "Id": 1805,
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
                        "Id": 1806,
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
                        "Id": 1807,
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
                        "Id": 1808,
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
                        "Id": 1809,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1806
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1810,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1811,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1812,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1813,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1814,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1815,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1798
                        ]
                      },
                      "#2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1816,
                        "Name": "#2",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1808
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
                                "Id": 1820,
                                "Name": "InPose",
                                "TypeName": "System.Object, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1797
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1821,
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
                                "Id": 1822,
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
                                "Id": 1823,
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
                                "Id": 1824,
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
                        "Id": 1817,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1812
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1818,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1819,
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
                    "Id": 1803,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": true,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1804,
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
                        "Id": 1827,
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
                        "Id": 1828,
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
                        "Id": 1829,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1828
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1830,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1831,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "#0 = (#1 + 1)",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1832,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1833,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1834,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1835,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1798
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
                                "Id": 1839,
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
                                "Id": 1840,
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
                                        "Id": 1844,
                                        "Name": "UserMessage",
                                        "TypeName": "System.String, mscorlib",
                                        "PortType": 2,
                                        "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "ButtonLayout": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1845,
                                        "Name": "ButtonLayout",
                                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "Icon": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1846,
                                        "Name": "Icon",
                                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 1,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "UserResult": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                        "Id": 1847,
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
                                        "Id": 1848,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1849,
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
                                        "Id": 1851,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          1850
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1852,
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
                                    "Id": 1850,
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
                                "Id": 1841,
                                "Name": "ValueToTest",
                                "TypeName": "System.IComparable, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1840
                                ]
                              },
                              "Comparison": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1842,
                                "Name": "Comparison",
                                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Value": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1843,
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
                        "Id": 1836,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1832
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1837,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1838,
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
                    "Id": 1825,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1826,
                    "Name": "LoopIterator",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 519,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {
              "TRUE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1796,
                "Name": "TRUE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "FALSE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1797,
                "Name": "FALSE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "IAI Action Counter": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1798,
                "Name": "IAI Action Counter",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 58,
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
                    "Id": 1856,
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
                    "Id": 1857,
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
                    "Id": 1858,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1857
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1859,
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
                        "Id": 1862,
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
                        "Id": 1863,
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
                        "Id": 1864,
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
                        "Id": 1865,
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
                        "Id": 1866,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1863
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1867,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1868,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1869,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1870,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1871,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1872,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1855
                        ]
                      },
                      "#2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1873,
                        "Name": "#2",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1865
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
                                "Id": 1877,
                                "Name": "InPose",
                                "TypeName": "System.Object, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1854
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1878,
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
                                "Id": 1879,
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
                                "Id": 1880,
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
                                "Id": 1881,
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
                        "Id": 1874,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1869
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1875,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1876,
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
                    "Id": 1860,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1861,
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
                        "Id": 1884,
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
                        "Id": 1885,
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
                        "Id": 1886,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1885
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1887,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1888,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "#0 = (#1 + 1)",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1889,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1890,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1891,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1892,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1855
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
                                "Id": 1896,
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
                                "Id": 1897,
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
                                        "Id": 1901,
                                        "Name": "UserMessage",
                                        "TypeName": "System.String, mscorlib",
                                        "PortType": 2,
                                        "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "ButtonLayout": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1902,
                                        "Name": "ButtonLayout",
                                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "Icon": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1903,
                                        "Name": "Icon",
                                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 1,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "UserResult": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                        "Id": 1904,
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
                                        "Id": 1905,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1906,
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
                                        "Id": 1908,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          1907
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1909,
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
                                    "Id": 1907,
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
                                "Id": 1898,
                                "Name": "ValueToTest",
                                "TypeName": "System.IComparable, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1897
                                ]
                              },
                              "Comparison": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1899,
                                "Name": "Comparison",
                                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Value": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1900,
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
                        "Id": 1893,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1889
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1894,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1895,
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
                    "Id": 1882,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1883,
                    "Name": "LoopIterator",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 405,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {
              "TRUE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1853,
                "Name": "TRUE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "FALSE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1854,
                "Name": "FALSE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "IAI Action Counter": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1855,
                "Name": "IAI Action Counter",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 50,
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
                    "Id": 1913,
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
                    "Id": 1914,
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
                    "Id": 1915,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1914
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1916,
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
                        "Id": 1919,
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
                        "Id": 1920,
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
                        "Id": 1921,
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
                        "Id": 1922,
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
                        "Id": 1923,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1920
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1924,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1925,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1926,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1927,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1928,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1929,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1912
                        ]
                      },
                      "#2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1930,
                        "Name": "#2",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1922
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
                                "Id": 1934,
                                "Name": "InPose",
                                "TypeName": "System.Object, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1911
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1935,
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
                                "Id": 1936,
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
                                "Id": 1937,
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
                                "Id": 1938,
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
                        "Id": 1931,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1926
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1932,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1933,
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
                    "Id": 1917,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1918,
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
                        "Id": 1941,
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
                        "Id": 1942,
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
                        "Id": 1943,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1942
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1944,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1945,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "#0 = (#1 + 1)",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1946,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1947,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1948,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1949,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1912
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
                                "Id": 1953,
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
                                "Id": 1954,
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
                                        "Id": 1958,
                                        "Name": "UserMessage",
                                        "TypeName": "System.String, mscorlib",
                                        "PortType": 2,
                                        "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "ButtonLayout": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1959,
                                        "Name": "ButtonLayout",
                                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "Icon": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1960,
                                        "Name": "Icon",
                                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 1,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "UserResult": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                        "Id": 1961,
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
                                        "Id": 1962,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          1911
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1963,
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
                                        "Id": 1965,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          1964
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 1966,
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
                                    "Id": 1964,
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
                                "Id": 1955,
                                "Name": "ValueToTest",
                                "TypeName": "System.IComparable, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1954
                                ]
                              },
                              "Comparison": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1956,
                                "Name": "Comparison",
                                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Value": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1957,
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
                        "Id": 1950,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1946
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1951,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1952,
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
                    "Id": 1939,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1940,
                    "Name": "LoopIterator",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 563,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {
              "TRUE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1910,
                "Name": "TRUE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "FALSE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1911,
                "Name": "FALSE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "IAI Action Counter": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1912,
                "Name": "IAI Action Counter",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 57,
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
                    "Id": 1970,
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
                    "Id": 1971,
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
                    "Id": 1972,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1971
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1973,
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
                        "Id": 1976,
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
                        "Id": 1977,
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
                        "Id": 1978,
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
                        "Id": 1979,
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
                        "Id": 1980,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1977
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1981,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 3,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1982,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1983,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1984,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1985,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1986,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1969
                        ]
                      },
                      "#2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 1987,
                        "Name": "#2",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1979
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
                                "Id": 1991,
                                "Name": "InPose",
                                "TypeName": "System.Object, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  1968
                                ]
                              },
                              "GlobalPosition": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 1992,
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
                                "Id": 1993,
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
                                "Id": 1994,
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
                                "Id": 1995,
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
                        "Id": 1988,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1983
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1989,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1990,
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
                    "Id": 1974,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1975,
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
                        "Id": 1998,
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
                        "Id": 1999,
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
                        "Id": 2000,
                        "Name": "#0",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1999
                        ]
                      },
                      "Nb inputs": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 2001,
                        "Name": "Nb inputs",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "CurrentValue": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Evaluation String": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 2002,
                        "Name": "Evaluation String",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "#0 = (#1 + 1)",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Output Boolean": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 2003,
                        "Name": "Output Boolean",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Integer": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 2004,
                        "Name": "Output Integer",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "Output Double": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 2005,
                        "Name": "Output Double",
                        "TypeName": "System.Double, mscorlib",
                        "PortType": 1,
                        "Behavior": 1,
                        "ProducerIDs": []
                      },
                      "#1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 2006,
                        "Name": "#1",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          1969
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
                                "Id": 2010,
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
                                "Id": 2011,
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
                                        "Id": 2015,
                                        "Name": "UserMessage",
                                        "TypeName": "System.String, mscorlib",
                                        "PortType": 2,
                                        "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "ButtonLayout": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 2016,
                                        "Name": "ButtonLayout",
                                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "Icon": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 2017,
                                        "Name": "Icon",
                                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                        "PortType": 2,
                                        "CurrentValue": 1,
                                        "Behavior": 0,
                                        "ProducerIDs": []
                                      },
                                      "UserResult": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                        "Id": 2018,
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
                                        "Id": 2019,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          1968
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 2020,
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
                                        "Id": 2022,
                                        "Name": "InPose",
                                        "TypeName": "System.Object, mscorlib",
                                        "PortType": 0,
                                        "Behavior": 0,
                                        "ProducerIDs": [
                                          2021
                                        ]
                                      },
                                      "GlobalPosition": {
                                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                        "Id": 2023,
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
                                    "Id": 2021,
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
                                "Id": 2012,
                                "Name": "ValueToTest",
                                "TypeName": "System.IComparable, mscorlib",
                                "PortType": 0,
                                "Behavior": 0,
                                "ProducerIDs": [
                                  2011
                                ]
                              },
                              "Comparison": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 2013,
                                "Name": "Comparison",
                                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                                "PortType": 2,
                                "CurrentValue": 1,
                                "Behavior": 0,
                                "ProducerIDs": []
                              },
                              "Value": {
                                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                "Id": 2014,
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
                        "Id": 2007,
                        "Name": "ValueToTest",
                        "TypeName": "System.IComparable, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          2003
                        ]
                      },
                      "Comparison": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 2008,
                        "Name": "Comparison",
                        "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Value": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 2009,
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
                    "Id": 1996,
                    "Name": "LoopCondition",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 2,
                    "CurrentValue": false,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "LoopIterator": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1997,
                    "Name": "LoopIterator",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 510,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              }
            ],
            "Ports": {
              "TRUE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1967,
                "Name": "TRUE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": true,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "FALSE": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1968,
                "Name": "FALSE",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "IAI Action Counter": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1969,
                "Name": "IAI Action Counter",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 51,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "LoopCondition": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 789,
            "Name": "LoopCondition",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "LoopIterator": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 790,
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
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 1,
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
                "Id": 1542,
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
                "Id": 1543,
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
                "Id": 1544,
                "Name": "InPose",
                "TypeName": "System.Object, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  1543
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1545,
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
                    "Id": 1548,
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
                    "Id": 1549,
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
                    "Id": 1550,
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
                    "Id": 1551,
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
                    "Id": 1552,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1549
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1553,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 3,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1554,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1555,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1556,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1557,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1558,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1541
                    ]
                  },
                  "#2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1559,
                    "Name": "#2",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1551
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
                            "Id": 1563,
                            "Name": "InPose",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              1540
                            ]
                          },
                          "GlobalPosition": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1564,
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
                            "Id": 1565,
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
                            "Id": 1566,
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
                            "Id": 1567,
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
                    "Id": 1560,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1555
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1561,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1562,
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
                "Id": 1546,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1547,
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
                    "Id": 1570,
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
                    "Id": 1571,
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
                    "Id": 1572,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1571
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1573,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1574,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "#0 = (#1 + 1)",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1575,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1576,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1577,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1578,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1541
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
                            "Id": 1582,
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
                            "Id": 1583,
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
                                    "Id": 1587,
                                    "Name": "UserMessage",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ButtonLayout": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1588,
                                    "Name": "ButtonLayout",
                                    "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Icon": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1589,
                                    "Name": "Icon",
                                    "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "UserResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 1590,
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
                                    "Id": 1591,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      1540
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1592,
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
                                    "Id": 1594,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      1593
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1595,
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
                                "Id": 1593,
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
                            "Id": 1584,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              1583
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1585,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 1,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1586,
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
                    "Id": 1579,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1575
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1580,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1581,
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
                "Id": 1568,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1569,
                "Name": "LoopIterator",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 555,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "TRUE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1539,
            "Name": "TRUE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "FALSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1540,
            "Name": "FALSE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "IAI Action Counter": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1541,
            "Name": "IAI Action Counter",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 59,
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
                "Id": 1605,
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
                "Id": 1606,
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
                "Id": 1607,
                "Name": "InPose",
                "TypeName": "System.Object, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  1606
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1608,
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
                    "Id": 1611,
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
                    "Id": 1612,
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
                    "Id": 1613,
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
                    "Id": 1614,
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
                    "Id": 1615,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1612
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1616,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 3,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1617,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1618,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1619,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1620,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1621,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1604
                    ]
                  },
                  "#2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1622,
                    "Name": "#2",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1614
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
                            "Id": 1626,
                            "Name": "InPose",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              1603
                            ]
                          },
                          "GlobalPosition": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1627,
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
                            "Id": 1628,
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
                            "Id": 1629,
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
                            "Id": 1630,
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
                    "Id": 1623,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1618
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1624,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1625,
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
                "Id": 1609,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1610,
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
                    "Id": 1633,
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
                    "Id": 1634,
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
                    "Id": 1635,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1634
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1636,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1637,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "#0 = (#1 + 1)",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1638,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1639,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1640,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1641,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1604
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
                            "Id": 1645,
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
                            "Id": 1646,
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
                                    "Id": 1650,
                                    "Name": "UserMessage",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ButtonLayout": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1651,
                                    "Name": "ButtonLayout",
                                    "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Icon": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1652,
                                    "Name": "Icon",
                                    "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "UserResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 1653,
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
                                    "Id": 1654,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1655,
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
                                    "Id": 1657,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      1656
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1658,
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
                                "Id": 1656,
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
                            "Id": 1647,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              1646
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1648,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 1,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1649,
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
                    "Id": 1642,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1638
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1643,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1644,
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
                "Id": 1631,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1632,
                "Name": "LoopIterator",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 516,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "TRUE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1602,
            "Name": "TRUE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "FALSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1603,
            "Name": "FALSE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "IAI Action Counter": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1604,
            "Name": "IAI Action Counter",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 41,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 3,
        "Name": "[PUSH VERIN FULL]",
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
                "Id": 1666,
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
                "Id": 1667,
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
                "Id": 1668,
                "Name": "InPose",
                "TypeName": "System.Object, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  1667
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1669,
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
                    "Id": 1672,
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
                    "Id": 1673,
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
                    "Id": 1674,
                    "Name": "Variable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_10",
                      "Designation": "IAI_FULL_PUSH_Feedback",
                      "Index": 0,
                      "Path": "GVL.IAI_FULL_Actuator_Push_Started",
                      "IO_Type": 0,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "ValueResult": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1675,
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
                    "Id": 1676,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1673
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1677,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 3,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1678,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1679,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1680,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1681,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1682,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1665
                    ]
                  },
                  "#2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1683,
                    "Name": "#2",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1675
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
                            "Id": 1687,
                            "Name": "InPose",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              1664
                            ]
                          },
                          "GlobalPosition": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1688,
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
                            "Id": 1689,
                            "Name": "SetVariable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_5",
                              "Designation": "IAI_FULL_PUSH",
                              "Index": 0,
                              "Path": "GVL.IAI_FULL_Actuator_Push",
                              "IO_Type": 1,
                              "Var_Type": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "SetValue": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1690,
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
                            "Id": 1691,
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
                    "Id": 1684,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1679
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1685,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1686,
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
                "Id": 1670,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1671,
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
                    "Id": 1694,
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
                    "Id": 1695,
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
                    "Id": 1696,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1695
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1697,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1698,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "#0 = (#1 + 1)",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1699,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1700,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1701,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1702,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1665
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
                            "Id": 1706,
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
                            "Id": 1707,
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
                                    "Id": 1712,
                                    "Name": "UserMessage",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ButtonLayout": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1713,
                                    "Name": "ButtonLayout",
                                    "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Icon": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1714,
                                    "Name": "Icon",
                                    "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "UserResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 1715,
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
                                    "Id": 1716,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      1711
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1717,
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
                                "Id": 1711,
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
                                    "Id": 1719,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      1718
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1720,
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
                                "Id": 1718,
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
                            "Id": 1708,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              1707
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1709,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 1,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1710,
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
                    "Id": 1703,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1699
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1704,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1705,
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
                "Id": 1692,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1693,
                "Name": "LoopIterator",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 1740,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "TRUE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1663,
            "Name": "TRUE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "FALSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1664,
            "Name": "FALSE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "IAI Action Counter": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1665,
            "Name": "IAI Action Counter",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 42,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 4,
        "Name": "[POSE VERIN FULL]",
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
                "Id": 1724,
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
                "Id": 1725,
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
                "Id": 1726,
                "Name": "InPose",
                "TypeName": "System.Object, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  1725
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1727,
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
                    "Id": 1730,
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
                    "Id": 1731,
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
                    "Id": 1732,
                    "Name": "Variable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_11",
                      "Designation": "IAI_FULL_POSE_Feedback",
                      "Index": 0,
                      "Path": "GVL.IAI_FULL_Actuator_Pose_Started",
                      "IO_Type": 0,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "ValueResult": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1733,
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
                    "Id": 1734,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1731
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1735,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 3,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1736,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1737,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1738,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1739,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1740,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1723
                    ]
                  },
                  "#2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1741,
                    "Name": "#2",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1733
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
                            "Id": 1745,
                            "Name": "InPose",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              1722
                            ]
                          },
                          "GlobalPosition": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1746,
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
                            "Id": 1747,
                            "Name": "SetVariable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_6",
                              "Designation": "IAI_FULL_POSE",
                              "Index": 0,
                              "Path": "GVL.IAI_FULL_Actuator_Pose",
                              "IO_Type": 1,
                              "Var_Type": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "SetValue": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1748,
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
                            "Id": 1749,
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
                    "Id": 1742,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1737
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1743,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1744,
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
                "Id": 1728,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1729,
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
                    "Id": 1752,
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
                    "Id": 1753,
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
                    "Id": 1754,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1753
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1755,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1756,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "#0 = (#1 + 1)",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1757,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1758,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1759,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1760,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1723
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
                            "Id": 1764,
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
                            "Id": 1765,
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
                                    "Id": 1770,
                                    "Name": "UserMessage",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ButtonLayout": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1771,
                                    "Name": "ButtonLayout",
                                    "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Icon": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1772,
                                    "Name": "Icon",
                                    "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "UserResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 1773,
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
                                    "Id": 1774,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      1769
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1775,
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
                                "Id": 1769,
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
                                    "Id": 1777,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      1776
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 1778,
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
                                "Id": 1776,
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
                            "Id": 1766,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              1765
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1767,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 1,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1768,
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
                    "Id": 1761,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1757
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1762,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1763,
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
                "Id": 1750,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1751,
                "Name": "LoopIterator",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 492,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "TRUE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1721,
            "Name": "TRUE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "FALSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1722,
            "Name": "FALSE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "IAI Action Counter": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1723,
            "Name": "IAI Action Counter",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 77,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 5,
        "Name": "[RESET VERIN FULL]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
            "Order": 0,
            "Name": "[PLC] RESET Verin",
            "IsAsync": false,
            "ComponentIDs": [
              3
            ],
            "ChildActions": [],
            "Ports": {
              "SetVariable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1782,
                "Name": "SetVariable",
                "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                "PortType": 2,
                "CurrentValue": {
                  "Tag": "VAR_7",
                  "Designation": "IAI_FULL_RESET",
                  "Index": 0,
                  "Path": "GVL.IAI_FULL_Actuator_RESET",
                  "IO_Type": 1,
                  "Var_Type": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SetValue": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 1783,
                "Name": "SetValue",
                "TypeName": "System.ValueType, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  1779
                ]
              }
            }
          },
          {
            "$type": "AkeoCore.Application.Wait, AkeoCore",
            "Order": 1,
            "Name": "[WAIT] 1500ms",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "Delay_ms": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1784,
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
            "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
            "Order": 2,
            "Name": "[PLC] Lire code erreur",
            "IsAsync": false,
            "ComponentIDs": [
              3
            ],
            "ChildActions": [],
            "Ports": {
              "Variable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1785,
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
                "Id": 1786,
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
            "Order": 3,
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
                        "Id": 1791,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1792,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 1793,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 1,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 1794,
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
                    "Id": 1790,
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
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 2,
                "Name": "SI PAS D'ERREUR --> FIN BOUCLE",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "FALSE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1795,
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
                "Id": 1787,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  1786
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1788,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 1,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1789,
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
        "Ports": {
          "TRUE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1779,
            "Name": "TRUE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "FALSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1780,
            "Name": "FALSE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "IAI Action Counter": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1781,
            "Name": "IAI Action Counter",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 0,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 6,
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
                "Id": 1102,
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
                "Id": 1098,
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
                "Id": 1103,
                "Name": "InPose",
                "TypeName": "System.Object, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  1098
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1112,
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
                    "Id": 1309,
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
                    "Id": 1310,
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
                    "Id": 1307,
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
                    "Id": 1308,
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
                    "Id": 1300,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1310
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1301,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 3,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1302,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1303,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1304,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1305,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1306,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1096
                    ]
                  },
                  "#2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1319,
                    "Name": "#2",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1308
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
                            "Id": 1323,
                            "Name": "InPose",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              53
                            ]
                          },
                          "GlobalPosition": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1326,
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
                            "Id": 54,
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
                            "Id": 1529,
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
                            "Id": 1335,
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
                    "Id": 1320,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1303
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1321,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1322,
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
                "Id": 1298,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1299,
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
                    "Id": 1129,
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
                    "Id": 1130,
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
                    "Id": 1122,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1130
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1123,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1124,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "#0 = (#1 + 1)",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1125,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1126,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1127,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1128,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1096
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
                            "Id": 63,
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
                            "Id": 64,
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
                                    "Id": 68,
                                    "Name": "UserMessage",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ButtonLayout": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 69,
                                    "Name": "ButtonLayout",
                                    "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Icon": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 70,
                                    "Name": "Icon",
                                    "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "UserResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 71,
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
                                    "Id": 72,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      53
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 73,
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
                                    "Id": 75,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      74
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 76,
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
                                "Id": 74,
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
                            "Id": 65,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              64
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 66,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 1,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1662,
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
                    "Id": 60,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1125
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 61,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1599,
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
                "Id": 56,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 57,
                "Name": "LoopIterator",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 521,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "TRUE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 52,
            "Name": "TRUE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "FALSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 53,
            "Name": "FALSE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "IAI Action Counter": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1096,
            "Name": "IAI Action Counter",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 53,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 7,
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
                "Id": 1135,
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
                "Id": 1136,
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
                "Id": 1143,
                "Name": "InPose",
                "TypeName": "System.Object, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  1136
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1144,
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
                    "Id": 1360,
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
                    "Id": 1361,
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
                    "Id": 1362,
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
                    "Id": 1363,
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
                    "Id": 1364,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1361
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1365,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 3,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1366,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1367,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1368,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1369,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1370,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1131
                    ]
                  },
                  "#2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1371,
                    "Name": "#2",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1363
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
                            "Id": 1375,
                            "Name": "InPose",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              43
                            ]
                          },
                          "GlobalPosition": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1376,
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
                            "Id": 1377,
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
                            "Id": 1531,
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
                            "Id": 1379,
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
                    "Id": 1372,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1367
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1373,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1374,
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
                "Id": 1358,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1359,
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
                    "Id": 1175,
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
                    "Id": 1176,
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
                    "Id": 1154,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1176
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1155,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1156,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "#0 = (#1 + 1)",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1157,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1158,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1159,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1160,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1131
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
                            "Id": 1660,
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
                            "Id": 30,
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
                                    "Id": 44,
                                    "Name": "UserMessage",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ButtonLayout": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 45,
                                    "Name": "ButtonLayout",
                                    "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Icon": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 46,
                                    "Name": "Icon",
                                    "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "UserResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 47,
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
                                    "Id": 48,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 49,
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
                                    "Id": 39,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      41
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 40,
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
                                "Id": 41,
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
                            "Id": 36,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              30
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 37,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 1,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 38,
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
                    "Id": 33,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1157
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 34,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 35,
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
                "Id": 25,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 26,
                "Name": "LoopIterator",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 557,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "TRUE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 42,
            "Name": "TRUE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "FALSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 43,
            "Name": "FALSE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "IAI Action Counter": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1131,
            "Name": "IAI Action Counter",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 52,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 8,
        "Name": "[PUSH VERIN HALF]",
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
                "Id": 1137,
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
                "Id": 1138,
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
                "Id": 1145,
                "Name": "InPose",
                "TypeName": "System.Object, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  1138
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1146,
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
                    "Id": 1382,
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
                    "Id": 1383,
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
                    "Id": 1384,
                    "Name": "Variable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_33",
                      "Designation": "IAI_HALF_PUSH_Feedback",
                      "Index": 0,
                      "Path": "GVL.IAI_HALF_Actuator_Push_Started",
                      "IO_Type": 0,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "ValueResult": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1385,
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
                    "Id": 1386,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1383
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1387,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 3,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1388,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1389,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1390,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1391,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1392,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1132
                    ]
                  },
                  "#2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1393,
                    "Name": "#2",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1385
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
                            "Id": 1397,
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
                            "Id": 1398,
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
                            "Id": 1399,
                            "Name": "SetVariable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_28",
                              "Designation": "IAI_HALF_PUSH",
                              "Index": 0,
                              "Path": "GVL.IAI_HALF_Actuator_Push",
                              "IO_Type": 1,
                              "Var_Type": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "SetValue": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1537,
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
                            "Id": 1401,
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
                    "Id": 1394,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1389
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1395,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1396,
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
                "Id": 1380,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1381,
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
                    "Id": 1177,
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
                    "Id": 1178,
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
                    "Id": 1161,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1178
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1162,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1163,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "#0 = (#1 + 1)",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1164,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1165,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1166,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1167,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1132
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
                            "Id": 925,
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
                            "Id": 926,
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
                                    "Id": 931,
                                    "Name": "UserMessage",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ButtonLayout": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 932,
                                    "Name": "ButtonLayout",
                                    "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Icon": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 933,
                                    "Name": "Icon",
                                    "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "UserResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 934,
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
                                    "Id": 935,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      930
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 936,
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
                                "Id": 930,
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
                                    "Id": 938,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      937
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 939,
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
                                "Id": 937,
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
                            "Id": 927,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              926
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 928,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 1,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 929,
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
                    "Id": 922,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1164
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 923,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 924,
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
                "Id": 918,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 919,
                "Name": "LoopIterator",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 1690,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "TRUE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 913,
            "Name": "TRUE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "FALSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 914,
            "Name": "FALSE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "IAI Action Counter": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1132,
            "Name": "IAI Action Counter",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 25,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 9,
        "Name": "[POSE VERIN HALF]",
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
                "Id": 1139,
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
                "Id": 1140,
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
                "Id": 1149,
                "Name": "InPose",
                "TypeName": "System.Object, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  1140
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1150,
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
                    "Id": 1338,
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
                    "Id": 1339,
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
                    "Id": 1340,
                    "Name": "Variable",
                    "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                    "PortType": 2,
                    "CurrentValue": {
                      "Tag": "VAR_34",
                      "Designation": "IAI_HALF_POSE_Feedback",
                      "Index": 0,
                      "Path": "GVL.IAI_HALF_Actuator_Pose_Started",
                      "IO_Type": 0,
                      "Var_Type": 0
                    },
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "ValueResult": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1341,
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
                    "Id": 1342,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1339
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1343,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 3,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1344,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "(#0 = (#1 + 1)) OR #2",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1345,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1346,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1347,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1348,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1133
                    ]
                  },
                  "#2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1349,
                    "Name": "#2",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1341
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
                            "Id": 1353,
                            "Name": "InPose",
                            "TypeName": "System.Object, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              942
                            ]
                          },
                          "GlobalPosition": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1354,
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
                            "Id": 1355,
                            "Name": "SetVariable",
                            "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                            "PortType": 2,
                            "CurrentValue": {
                              "Tag": "VAR_29",
                              "Designation": "IAI_HALF_POSE",
                              "Index": 0,
                              "Path": "GVL.IAI_HALF_Actuator_Pose",
                              "IO_Type": 1,
                              "Var_Type": 0
                            },
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "SetValue": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 1538,
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
                            "Id": 1357,
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
                    "Id": 1350,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1345
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1351,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1352,
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
                "Id": 1336,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1337,
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
                    "Id": 1179,
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
                    "Id": 1180,
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
                    "Id": 1168,
                    "Name": "#0",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1180
                    ]
                  },
                  "Nb inputs": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1169,
                    "Name": "Nb inputs",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Evaluation String": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 1170,
                    "Name": "Evaluation String",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "#0 = (#1 + 1)",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Output Boolean": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1171,
                    "Name": "Output Boolean",
                    "TypeName": "System.Boolean, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Integer": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1172,
                    "Name": "Output Integer",
                    "TypeName": "System.Int64, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "Output Double": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "Id": 1173,
                    "Name": "Output Double",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 1,
                    "Behavior": 1,
                    "ProducerIDs": []
                  },
                  "#1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "Id": 1174,
                    "Name": "#1",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1133
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
                            "Id": 953,
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
                            "Id": 954,
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
                                    "Id": 959,
                                    "Name": "UserMessage",
                                    "TypeName": "System.String, mscorlib",
                                    "PortType": 2,
                                    "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "ButtonLayout": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 960,
                                    "Name": "ButtonLayout",
                                    "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "Icon": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 961,
                                    "Name": "Icon",
                                    "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                                    "PortType": 2,
                                    "CurrentValue": 1,
                                    "Behavior": 0,
                                    "ProducerIDs": []
                                  },
                                  "UserResult": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                                    "Id": 962,
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
                                    "Id": 963,
                                    "Name": "InPose",
                                    "TypeName": "System.Object, mscorlib",
                                    "PortType": 0,
                                    "Behavior": 0,
                                    "ProducerIDs": [
                                      958
                                    ]
                                  },
                                  "GlobalPosition": {
                                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                                    "Id": 964,
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
                                "Id": 958,
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
                                    "Id": 966,
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
                                    "Id": 967,
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
                                "Id": 965,
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
                            "Id": 955,
                            "Name": "ValueToTest",
                            "TypeName": "System.IComparable, mscorlib",
                            "PortType": 0,
                            "Behavior": 0,
                            "ProducerIDs": [
                              954
                            ]
                          },
                          "Comparison": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 956,
                            "Name": "Comparison",
                            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                            "PortType": 2,
                            "CurrentValue": 1,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "Value": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "Id": 957,
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
                    "Id": 950,
                    "Name": "ValueToTest",
                    "TypeName": "System.IComparable, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      1171
                    ]
                  },
                  "Comparison": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 951,
                    "Name": "Comparison",
                    "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Value": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 952,
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
                "Id": 946,
                "Name": "LoopCondition",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "CurrentValue": false,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "LoopIterator": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 947,
                "Name": "LoopIterator",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 856,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "TRUE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 941,
            "Name": "TRUE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "FALSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 942,
            "Name": "FALSE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "IAI Action Counter": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1133,
            "Name": "IAI Action Counter",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 31,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
        "Order": 10,
        "Name": "[RESET VERIN HALF]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
            "Order": 0,
            "Name": "[PLC] RESET Verin",
            "IsAsync": false,
            "ComponentIDs": [
              3
            ],
            "ChildActions": [],
            "Ports": {
              "SetVariable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 985,
                "Name": "SetVariable",
                "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                "PortType": 2,
                "CurrentValue": {
                  "Tag": "VAR_30",
                  "Designation": "IAI_HALF_PESET",
                  "Index": 0,
                  "Path": "GVL.IAI_HALF_Actuator_RESET",
                  "IO_Type": 1,
                  "Var_Type": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SetValue": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "Id": 806,
                "Name": "SetValue",
                "TypeName": "System.ValueType, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  803
                ]
              }
            }
          },
          {
            "$type": "AkeoCore.Application.Wait, AkeoCore",
            "Order": 1,
            "Name": "[WAIT] 1500ms",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "Delay_ms": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 1153,
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
            "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
            "Order": 2,
            "Name": "[PLC] Lire code erreur",
            "IsAsync": false,
            "ComponentIDs": [
              3
            ],
            "ChildActions": [],
            "Ports": {
              "Variable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 969,
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
                "Id": 970,
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
            "Order": 3,
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
                        "Id": 975,
                        "Name": "UserMessage",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "Erreur détectée lors du mouvement d'un vérin d'effecteur",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "ButtonLayout": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 976,
                        "Name": "ButtonLayout",
                        "TypeName": "AkeoSpineCore.View.MessageBoxButton, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 0,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Icon": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 977,
                        "Name": "Icon",
                        "TypeName": "AkeoSpineCore.View.IconType, AkeoSpineCore",
                        "PortType": 2,
                        "CurrentValue": 1,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "UserResult": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 978,
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
                    "Id": 974,
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
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 2,
                "Name": "SI PAS D'ERREUR --> FIN BOUCLE",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "FALSE": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 981,
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
                "Id": 971,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  970
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 972,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 1,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 973,
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
        "Ports": {
          "TRUE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 803,
            "Name": "TRUE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "FALSE": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 804,
            "Name": "FALSE",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": false,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "IAI Action Counter": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 1134,
            "Name": "IAI Action Counter",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 0,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      }
    ],
    "Ports": {
      "Violation Safe OP": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 1517,
        "Name": "Violation Safe OP",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "CurrentValue": false,
        "Behavior": 0,
        "ProducerIDs": []
      }
    }
  },
  "MaxId": 2023
}