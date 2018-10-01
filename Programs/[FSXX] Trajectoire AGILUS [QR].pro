{
  "Id": 0,
  "ReferenceName": "[FSXX] Trajectoire AGILUS [QR]",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "[FSXX] Trajectoire AGILUS [QR]",
    "IsAsync": false,
    "ComponentIDs": [],
    "ChildActions": [
      {
        "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
        "Order": 0,
        "Name": "IF DEBUG",
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
                "Name": "Protection",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Prop_Message": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": "Ne pas executer cette partie",
                    "Id": 108,
                    "Name": "Prop_Message",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Prop_ExceptionType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": 0,
                    "Id": 109,
                    "Name": "Prop_ExceptionType",
                    "TypeName": "AkeoSpineCore.Engine.CycleBehavior, AkeoSpineCore",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 1,
                "Name": "Pose approche plateau",
                "IsAsync": false,
                "ComponentIDs": [
                  4,
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -346.051788,
                                  278.161652,
                                  668.728699,
                                  37.054458999999781,
                                  -92.060753,
                                  -125.30641199999977
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
                    "Id": 97,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        -346.051788,
                        278.161652,
                        668.728699,
                        37.054458999999781,
                        -92.060753,
                        -125.30641199999977
                      ],
                      "Convention": 1
                    },
                    "Id": 98,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      60
                    ]
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 2,
                "Name": "Pose Secousse",
                "IsAsync": false,
                "ComponentIDs": [
                  4,
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                "AxisNumber": 0,
                                "_Pose": [
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0
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
                    "Id": 105,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": null,
                    "Id": 309,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.IPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      104
                    ]
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 3,
                "Name": "Secousse OSR",
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -218.122498,
                                  282.056091,
                                  773.14917,
                                  37.309509000000467,
                                  -92.077118000000013,
                                  -125.59253300000047
                                ],
                                "Convention": 1
                              }
                            },
                            {
                              "Label": "M1_I4",
                              "Position": {
                                "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                "AxisNumber": 0,
                                "_Pose": [
                                  -112.697388,
                                  -167.810959,
                                  -7.190969,
                                  -62.339767,
                                  -78.987206,
                                  -189.211792
                                ]
                              }
                            },
                            {
                              "Label": "M1_I3",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  -218.122498,
                                  282.056091,
                                  773.14917,
                                  37.309509000000467,
                                  -92.077118000000013,
                                  -125.59253300000047
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
                    "Id": 114,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I3": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        -218.122498,
                        282.056091,
                        773.14917,
                        37.309509000000467,
                        -92.077118000000013,
                        -125.59253300000047
                      ],
                      "Convention": 1
                    },
                    "Id": 308,
                    "Name": "M1_I3",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      60
                    ]
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        -218.122498,
                        282.056091,
                        773.14917,
                        37.309509000000467,
                        -92.077118000000013,
                        -125.59253300000047
                      ],
                      "Convention": 1
                    },
                    "Id": 306,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      60
                    ]
                  },
                  "M1_I4": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": null,
                    "Id": 392,
                    "Name": "M1_I4",
                    "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      104
                    ]
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 4,
                "Name": "Pose o",
                "IsAsync": false,
                "ComponentIDs": [
                  4,
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0
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
                    "Id": 94,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": null,
                    "Id": 99,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.IPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      20
                    ]
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 5,
                "Name": "pose x",
                "IsAsync": false,
                "ComponentIDs": [
                  4,
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0
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
                    "Id": 100,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": null,
                    "Id": 101,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.IPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      21
                    ]
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 6,
                "Name": "pose y",
                "IsAsync": false,
                "ComponentIDs": [
                  4,
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0,
                                  0.0
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
                    "Id": 102,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": null,
                    "Id": 103,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.IPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      22
                    ]
                  }
                }
              },
              {
                "$type": "AkeoCore.Mathematics.LinearAlgebra.FrameOnThreePoints, AkeoCore",
                "Order": 7,
                "Name": "compute Grid frame",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "Origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        -202.173431,
                        220.688141,
                        541.725891,
                        178.62846599999972,
                        -91.164345,
                        92.298859000000292
                      ],
                      "Convention": 1
                    },
                    "Id": 121,
                    "Name": "Origine",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      20
                    ]
                  },
                  "Point Direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        -203.322449,
                        530.698059,
                        540.179199,
                        178.08646999999974,
                        -91.164658000000031,
                        92.8409650000003
                      ],
                      "Convention": 1
                    },
                    "Id": 122,
                    "Name": "Point Direction 1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      21
                    ]
                  },
                  "Point Direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        -605.344116,
                        219.733109,
                        542.449341,
                        178.08645399999935,
                        -91.164658000000017,
                        92.840981000000667
                      ],
                      "Convention": 1
                    },
                    "Id": 123,
                    "Name": "Point Direction 2",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      22
                    ]
                  },
                  "Directions données": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": 0,
                    "Id": 124,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": 1.0,
                    "Id": 125,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": 1.0,
                    "Id": 126,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": 1.0,
                    "Id": 127,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        -202.173431,
                        220.688141,
                        541.725891,
                        179.71376548371637,
                        179.89786780047626,
                        -89.787642710896378
                      ],
                      "Convention": 0
                    },
                    "Id": 128,
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
                "Order": 8,
                "Name": "Enregistrement grid frame",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [],
                "Ports": {
                  "InPose": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        -202.173431,
                        220.688141,
                        541.725891,
                        179.71376548371637,
                        179.89786780047626,
                        -89.787642710896378
                      ],
                      "Convention": 0
                    },
                    "Id": 129,
                    "Name": "InPose",
                    "TypeName": "System.Object, mscorlib",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      128
                    ]
                  },
                  "GlobalPosition": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": "FRAME_PLATEAU",
                    "Id": 148,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Status.SetRobotFrame, AkeoRoboticist",
                "Order": 9,
                "Name": "[UPDATE] Frame Plateau",
                "IsAsync": false,
                "ComponentIDs": [
                  2
                ],
                "ChildActions": [],
                "Ports": {
                  "NewFrame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        -202.173431,
                        220.688141,
                        541.725891,
                        179.71376548371637,
                        179.89786780047626,
                        -89.787642710896378
                      ],
                      "Convention": 0
                    },
                    "Id": 239,
                    "Name": "NewFrame",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      154
                    ]
                  },
                  "FrameTag": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": "Frame_0",
                    "Id": 241,
                    "Name": "FrameTag",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "FrameType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "CurrentValue": 1,
                    "Id": 238,
                    "Name": "FrameType",
                    "TypeName": "AkeoRoboticist.Status.FrameType, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 10,
                "Name": "Pose Prise",
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  14.497929647791182,
                                  18.93683554147762,
                                  -0.18437204869735524,
                                  109.18803930639449,
                                  -88.118961962080988,
                                  70.763631344569987
                                ],
                                "Convention": 1
                              }
                            }
                          ],
                          "ToolTag": "Flange",
                          "FrameTag": "Frame_0",
                          "MdescrTag": "Mdescr_0"
                        }
                      ]
                    },
                    "Id": 377,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        14.497929647791182,
                        18.93683554147762,
                        -0.18437204869735524,
                        109.18803930639449,
                        -88.118961962080988,
                        70.763631344569987
                      ],
                      "Convention": 1
                    },
                    "Id": 378,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      155
                    ]
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 11,
                "Name": "Pose PointMilieux",
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                "AxisNumber": 0,
                                "_Pose": [
                                  -40.236568,
                                  -91.205734,
                                  123.297371,
                                  66.000244,
                                  -58.941689,
                                  -229.036804
                                ]
                              }
                            }
                          ],
                          "ToolTag": "Flange",
                          "FrameTag": "World",
                          "MdescrTag": "Mdescr_0"
                        }
                      ]
                    },
                    "Id": 320,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "AxisNumber": 0,
                      "_Pose": [
                        -40.236568,
                        -91.205734,
                        123.297371,
                        66.000244,
                        -58.941689,
                        -229.036804
                      ]
                    },
                    "Id": 384,
                    "Name": "M1_I1",
                    "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      383
                    ]
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 12,
                "Name": "Pose approche poste vision",
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  655.466736,
                                  356.622345,
                                  537.504395,
                                  21.151656999999791,
                                  -91.78466,
                                  -110.7397769999998
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
                    "Id": 324,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        655.466736,
                        356.622345,
                        537.504395,
                        21.151656999999791,
                        -91.78466,
                        -110.7397769999998
                      ],
                      "Convention": 1
                    },
                    "Id": 325,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      322
                    ]
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 13,
                "Name": "Pose approche Backlight",
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  654.733398,
                                  518.522278,
                                  466.185425,
                                  21.61834700000049,
                                  -91.792984000000018,
                                  -111.20670300000047
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
                    "Id": 326,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        654.733398,
                        518.522278,
                        466.185425,
                        21.61834700000049,
                        -91.792984000000018,
                        -111.20670300000047
                      ],
                      "Convention": 1
                    },
                    "Id": 327,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      317
                    ]
                  }
                }
              },
              {
                "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                "Order": 14,
                "Name": "Pose depose backlight",
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
                              "Label": "M1_I1",
                              "Position": {
                                "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                "_Pose": [
                                  654.733398,
                                  518.522278,
                                  422.015991,
                                  21.61834700000049,
                                  -91.792984000000018,
                                  -111.20670300000047
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
                    "Id": 157,
                    "Name": "ListMouvement",
                    "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                    "PortType": 2,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                    "CurrentValue": {
                      "_Pose": [
                        654.733398,
                        518.522278,
                        422.015991,
                        21.61834700000049,
                        -91.792984000000018,
                        -111.20670300000047
                      ],
                      "Convention": 1
                    },
                    "Id": 158,
                    "Name": "M1_I1",
                    "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                    "PortType": 0,
                    "Behavior": 0,
                    "ProducerIDs": [
                      323
                    ]
                  }
                }
              }
            ],
            "Ports": {
              "Pose O": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    -202.173431,
                    220.688141,
                    541.725891,
                    178.62846599999972,
                    -91.164345,
                    92.298859000000292
                  ],
                  "Convention": 1
                },
                "Id": 20,
                "Name": "Pose O",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Pose X": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    -203.322449,
                    530.698059,
                    540.179199,
                    178.08646999999974,
                    -91.164658000000031,
                    92.8409650000003
                  ],
                  "Convention": 1
                },
                "Id": 21,
                "Name": "Pose X",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Pose Y": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    -605.344116,
                    219.733109,
                    542.449341,
                    178.08645399999935,
                    -91.164658000000017,
                    92.840981000000667
                  ],
                  "Convention": 1
                },
                "Id": 22,
                "Name": "Pose Y",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
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
            "Id": 7,
            "Name": "ValueToTest",
            "TypeName": "System.IComparable, mscorlib",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              6
            ]
          },
          "Comparison": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "CurrentValue": 0,
            "Id": 8,
            "Name": "Comparison",
            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
            "PortType": 2,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Value": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "CurrentValue": true,
            "Id": 9,
            "Name": "Value",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
        "Order": 1,
        "Name": "Pose Approche Plateau",
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
                      "Label": "M1_I1",
                      "Position": {
                        "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "_Pose": [
                          -346.051788,
                          278.161652,
                          668.728699,
                          37.054458999999781,
                          -92.060753,
                          -125.30641199999977
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
            "Id": 245,
            "Name": "ListMouvement",
            "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
            "PortType": 2,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "M1_I1": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
            "CurrentValue": {
              "_Pose": [
                -346.051788,
                278.161652,
                668.728699,
                37.054458999999781,
                -92.060753,
                -125.30641199999977
              ],
              "Convention": 1
            },
            "Id": 246,
            "Name": "M1_I1",
            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              60
            ]
          }
        }
      },
      {
        "$type": "AkeoCore.Programming.Structures.Loop, AkeoCore",
        "Order": 2,
        "Name": "[Boucle principale]",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [
          {
            "$type": "AkeoRoboticist.Advanced.PalletisationGrid, AkeoRoboticist",
            "Order": 0,
            "Name": "Compute position depilage",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "Nb Along X": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 7,
                "Id": 217,
                "Name": "Nb Along X",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Step X": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 47.0,
                "Id": 218,
                "Name": "Step X",
                "TypeName": "System.Double, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Nb Along Y": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 9,
                "Id": 219,
                "Name": "Nb Along Y",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Step Y": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 47.0,
                "Id": 220,
                "Name": "Step Y",
                "TypeName": "System.Double, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Nb Along Z": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 1,
                "Id": 221,
                "Name": "Nb Along Z",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Step Z": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 100.0,
                "Id": 222,
                "Name": "Step Z",
                "TypeName": "System.Double, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "XY palletisation style": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 1,
                "Id": 223,
                "Name": "XY palletisation style",
                "TypeName": "AkeoRoboticist.Advanced.PalletisationStyle, AkeoRoboticist",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Z palletisation style": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 0,
                "Id": 224,
                "Name": "Z palletisation style",
                "TypeName": "AkeoRoboticist.Advanced.PalletisationStyle, AkeoRoboticist",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "First Teached Pose In Pallet Frame": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    14.497929647791182,
                    18.93683554147762,
                    -0.18437204869735524,
                    109.18803930639449,
                    -88.118961962080988,
                    70.763631344569987
                  ],
                  "Convention": 1
                },
                "Id": 225,
                "Name": "First Teached Pose In Pallet Frame",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  155
                ]
              },
              "Approch Offset In Pallet Frame": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    0.0,
                    0.0,
                    40.0,
                    0.0,
                    0.0,
                    0.0
                  ],
                  "Convention": 0
                },
                "Id": 226,
                "Name": "Approch Offset In Pallet Frame",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  159
                ]
              },
              "Part Index": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "CurrentValue": 0,
                "Id": 234,
                "Name": "Part Index",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  161
                ]
              },
              "Approch Pose In Pallet Frame": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    14.497929647791182,
                    18.93683554147762,
                    39.815627951302645,
                    109.18803930639454,
                    -88.118961962080988,
                    70.76363134456993
                  ],
                  "Convention": 1
                },
                "Id": 228,
                "Name": "Approch Pose In Pallet Frame",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "Placing Pose In Pallet Frame": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    14.497929647791182,
                    18.93683554147762,
                    -0.18437204869735524,
                    109.18803930639454,
                    -88.118961962080988,
                    70.76363134456993
                  ],
                  "Convention": 1
                },
                "Id": 229,
                "Name": "Placing Pose In Pallet Frame",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "Index Along X": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "CurrentValue": 0,
                "Id": 230,
                "Name": "Index Along X",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "Index Along Y": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "CurrentValue": 0,
                "Id": 231,
                "Name": "Index Along Y",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "Index Along Z": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "CurrentValue": 0,
                "Id": 232,
                "Name": "Index Along Z",
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
            "Name": "Save pose prise OSR",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "InPose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    14.497929647791182,
                    18.93683554147762,
                    -0.18437204869735524,
                    109.18803930639454,
                    -88.118961962080988,
                    70.76363134456993
                  ],
                  "Convention": 1
                },
                "Id": 289,
                "Name": "InPose",
                "TypeName": "System.Object, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  229
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": "POSE_PLATEAU_CurrentPriseOSR",
                "Id": 290,
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
            "Order": 2,
            "Name": "Save pose approche OSR",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "InPose": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    14.497929647791182,
                    18.93683554147762,
                    39.815627951302645,
                    109.18803930639454,
                    -88.118961962080988,
                    70.76363134456993
                  ],
                  "Convention": 1
                },
                "Id": 279,
                "Name": "InPose",
                "TypeName": "System.Object, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  228
                ]
              },
              "GlobalPosition": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": "POSE_PLATEAU_CurrentApprocheOSR",
                "Id": 288,
                "Name": "GlobalPosition",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoRoboticist.Status.SetRobotFrame, AkeoRoboticist",
            "Order": 3,
            "Name": "[UPDATE] Frame Plateau",
            "IsAsync": false,
            "ComponentIDs": [
              2
            ],
            "ChildActions": [],
            "Ports": {
              "NewFrame": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    -202.173431,
                    220.688141,
                    541.725891,
                    179.71376548371637,
                    179.89786780047626,
                    -89.787642710896378
                  ],
                  "Convention": 0
                },
                "Id": 242,
                "Name": "NewFrame",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  154
                ]
              },
              "FrameTag": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": "Frame_0",
                "Id": 243,
                "Name": "FrameTag",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "FrameType": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 1,
                "Id": 244,
                "Name": "FrameType",
                "TypeName": "AkeoRoboticist.Status.FrameType, AkeoRoboticist",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 4,
            "Name": "*OSR* Traj Prise",
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
                          "Label": "M1_I1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              14.497929647791182,
                              18.93683554147762,
                              39.815627951302645,
                              109.18803930639454,
                              -88.118961962080988,
                              70.76363134456993
                            ],
                            "Convention": 1
                          }
                        },
                        {
                          "Label": "M1_I2",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              14.497929647791182,
                              18.93683554147762,
                              -0.18437204869735524,
                              109.18803930639454,
                              -88.118961962080988,
                              70.76363134456993
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "Frame_0",
                      "MdescrTag": "Mdescr_0"
                    }
                  ]
                },
                "Id": 203,
                "Name": "ListMouvement",
                "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "M1_I1": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    14.497929647791182,
                    18.93683554147762,
                    39.815627951302645,
                    109.18803930639454,
                    -88.118961962080988,
                    70.76363134456993
                  ],
                  "Convention": 1
                },
                "Id": 204,
                "Name": "M1_I1",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  278
                ]
              },
              "M1_I2": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    14.497929647791182,
                    18.93683554147762,
                    -0.18437204869735524,
                    109.18803930639454,
                    -88.118961962080988,
                    70.76363134456993
                  ],
                  "Convention": 1
                },
                "Id": 235,
                "Name": "M1_I2",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  277
                ]
              }
            }
          },
          {
            "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
            "Order": 5,
            "Name": "[PLC] Aspiration ON",
            "IsAsync": false,
            "ComponentIDs": [
              2
            ],
            "ChildActions": [],
            "Ports": {
              "SetVariable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": {
                  "Tag": "VAR_2",
                  "Designation": "AspirationOSR",
                  "Index": 13,
                  "IO_Type": 1,
                  "Var_Type": 0
                },
                "Id": 269,
                "Name": "SetVariable",
                "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SetValue": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": true,
                "Id": 267,
                "Name": "SetValue",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Application.Wait, AkeoCore",
            "Order": 6,
            "Name": "WAIT 200ms",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [],
            "Ports": {
              "Delay_ms": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 200,
                "Id": 311,
                "Name": "Delay_ms",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
            "Order": 7,
            "Name": "*OSR* Remontée",
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
                          "Label": "M1_I1",
                          "Position": {
                            "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                            "_Pose": [
                              14.497929647791182,
                              18.93683554147762,
                              39.815627951302645,
                              109.18803930639454,
                              -88.118961962080988,
                              70.76363134456993
                            ],
                            "Convention": 1
                          }
                        }
                      ],
                      "ToolTag": "Flange",
                      "FrameTag": "Frame_0",
                      "MdescrTag": "Mdescr_3"
                    }
                  ]
                },
                "Id": 270,
                "Name": "ListMouvement",
                "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "M1_I1": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "CurrentValue": {
                  "_Pose": [
                    14.497929647791182,
                    18.93683554147762,
                    39.815627951302645,
                    109.18803930639454,
                    -88.118961962080988,
                    70.76363134456993
                  ],
                  "Convention": 1
                },
                "Id": 271,
                "Name": "M1_I1",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  278
                ]
              }
            }
          },
          {
            "$type": "AkeoAutomation.PLC.GetPLCInput, AkeoAutomation",
            "Order": 8,
            "Name": "[PLC] Get PresenceOSR",
            "IsAsync": false,
            "ComponentIDs": [
              2
            ],
            "ChildActions": [],
            "Ports": {
              "Variable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": {
                  "Tag": "VAR_1",
                  "Designation": "PresenceOSR",
                  "Index": 1,
                  "IO_Type": 0,
                  "Var_Type": 0
                },
                "Id": 275,
                "Name": "Variable",
                "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "ValueResult": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "CurrentValue": true,
                "Id": 273,
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
            "Order": 9,
            "Name": "--> PRESENCE OSR ?",
            "IsAsync": false,
            "ComponentIDs": [],
            "ChildActions": [
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 1,
                "Name": "Si Présence OSR --> ",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                    "Order": 0,
                    "Name": "[TRAJ] Plateau -> Backlight",
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
                                  "Label": "M1_I1",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      -346.051788,
                                      278.161652,
                                      668.728699,
                                      37.054458999999781,
                                      -92.060753,
                                      -125.30641199999977
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
                              "Label": "M2",
                              "Index": 0,
                              "Poses": [
                                {
                                  "Label": "M2_I2",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -23.194208,
                                      -101.880226,
                                      128.510895,
                                      78.906723,
                                      -71.487587,
                                      -239.64473
                                    ]
                                  }
                                },
                                {
                                  "Label": "M2_I3",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      521.14856,
                                      258.24826,
                                      544.230835,
                                      20.823059000000189,
                                      -91.781897999999984,
                                      -110.41452000000021
                                    ],
                                    "Convention": 1
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
                                  "Label": "M3_I2",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      654.733398,
                                      518.522278,
                                      466.185425,
                                      21.61834700000049,
                                      -91.792984000000018,
                                      -111.20670300000047
                                    ],
                                    "Convention": 1
                                  }
                                },
                                {
                                  "Label": "M3_I3",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      654.733398,
                                      518.522278,
                                      422.015991,
                                      21.61834700000049,
                                      -91.792984000000018,
                                      -111.20670300000047
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
                        "Id": 341,
                        "Name": "ListMouvement",
                        "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "M1_I1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            -346.051788,
                            278.161652,
                            668.728699,
                            37.054458999999781,
                            -92.060753,
                            -125.30641199999977
                          ],
                          "Convention": 1
                        },
                        "Id": 342,
                        "Name": "M1_I1",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          60
                        ]
                      },
                      "M2_I2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "AxisNumber": 0,
                          "_Pose": [
                            -23.194208,
                            -101.880226,
                            128.510895,
                            78.906723,
                            -71.487587,
                            -239.64473
                          ]
                        },
                        "Id": 385,
                        "Name": "M2_I2",
                        "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          383
                        ]
                      },
                      "M3_I3": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            654.733398,
                            518.522278,
                            422.015991,
                            21.61834700000049,
                            -91.792984000000018,
                            -111.20670300000047
                          ],
                          "Convention": 1
                        },
                        "Id": 379,
                        "Name": "M3_I3",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          323
                        ]
                      },
                      "M3_I2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            654.733398,
                            518.522278,
                            466.185425,
                            21.61834700000049,
                            -91.792984000000018,
                            -111.20670300000047
                          ],
                          "Convention": 1
                        },
                        "Id": 380,
                        "Name": "M3_I2",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          317
                        ]
                      },
                      "M2_I3": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            521.14856,
                            258.24826,
                            544.230835,
                            20.823059000000189,
                            -91.781897999999984,
                            -110.41452000000021
                          ],
                          "Convention": 1
                        },
                        "Id": 391,
                        "Name": "M2_I3",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          322
                        ]
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
                        "CurrentValue": {
                          "Tag": "VAR_2",
                          "Designation": "COL_AspirationMatrice",
                          "Index": 0,
                          "Path": "GVL.COL_AspirationMatrice",
                          "IO_Type": 1,
                          "Var_Type": 0
                        },
                        "Id": 365,
                        "Name": "SetVariable",
                        "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "SetValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": true,
                        "Id": 366,
                        "Name": "SetValue",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Application.Wait, AkeoCore",
                    "Order": 2,
                    "Name": "Wait 200ms",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "Delay_ms": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": 200,
                        "Id": 372,
                        "Name": "Delay_ms",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                    "Order": 3,
                    "Name": "[PLC] Aspiration OSR OFF",
                    "IsAsync": false,
                    "ComponentIDs": [
                      2
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "SetVariable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": {
                          "Tag": "VAR_2",
                          "Designation": "AspirationOSR",
                          "Index": 13,
                          "IO_Type": 1,
                          "Var_Type": 0
                        },
                        "Id": 400,
                        "Name": "SetVariable",
                        "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "SetValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": false,
                        "Id": 401,
                        "Name": "SetValue",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                    "Order": 4,
                    "Name": "[TRAJ] Free CAM FOV",
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
                                  "Label": "M1_I3",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      654.733398,
                                      518.522278,
                                      466.185425,
                                      21.61834700000049,
                                      -91.792984000000018,
                                      -111.20670300000047
                                    ],
                                    "Convention": 1
                                  }
                                },
                                {
                                  "Label": "M1_I2",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      521.14856,
                                      258.24826,
                                      544.230835,
                                      20.823059000000189,
                                      -91.781897999999984,
                                      -110.41452000000021
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
                        "Id": 346,
                        "Name": "ListMouvement",
                        "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "M1_I2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            521.14856,
                            258.24826,
                            544.230835,
                            20.823059000000189,
                            -91.781897999999984,
                            -110.41452000000021
                          ],
                          "Convention": 1
                        },
                        "Id": 347,
                        "Name": "M1_I2",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          322
                        ]
                      },
                      "M1_I3": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            654.733398,
                            518.522278,
                            466.185425,
                            21.61834700000049,
                            -91.792984000000018,
                            -111.20670300000047
                          ],
                          "Convention": 1
                        },
                        "Id": 374,
                        "Name": "M1_I3",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          317
                        ]
                      }
                    }
                  },
                  {
                    "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                    "Order": 5,
                    "Name": "[PLC] BacklightON",
                    "IsAsync": false,
                    "ComponentIDs": [
                      3
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "SetVariable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": {
                          "Tag": "VAR_1",
                          "Designation": "COL_BacklightON",
                          "Index": 0,
                          "Path": "GVL.COL_BacklightON",
                          "IO_Type": 1,
                          "Var_Type": 0
                        },
                        "Id": 363,
                        "Name": "SetVariable",
                        "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "SetValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": true,
                        "Id": 364,
                        "Name": "SetValue",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Application.Wait, AkeoCore",
                    "Order": 6,
                    "Name": "# PUT THE PHOTOOO #",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "Delay_ms": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": 500,
                        "Id": 371,
                        "Name": "Delay_ms",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                    "Order": 7,
                    "Name": "[PLC] BacklightOFF",
                    "IsAsync": false,
                    "ComponentIDs": [
                      3
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "SetVariable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": {
                          "Tag": "VAR_1",
                          "Designation": "VIS_BacklightON",
                          "Index": 0,
                          "Path": "GVL.COL_BacklightON",
                          "IO_Type": 1,
                          "Var_Type": 0
                        },
                        "Id": 359,
                        "Name": "SetVariable",
                        "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "SetValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": false,
                        "Id": 360,
                        "Name": "SetValue",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                    "Order": 8,
                    "Name": "[TRAJ] Prise OSR BCKLGHT",
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
                                  "Label": "M1_I3",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      654.733398,
                                      518.522278,
                                      466.185425,
                                      21.61834700000049,
                                      -91.792984000000018,
                                      -111.20670300000047
                                    ],
                                    "Convention": 1
                                  }
                                },
                                {
                                  "Label": "M1_I2",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      654.733398,
                                      518.522278,
                                      422.015991,
                                      21.61834700000049,
                                      -91.792984000000018,
                                      -111.20670300000047
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
                        "Id": 334,
                        "Name": "ListMouvement",
                        "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "M1_I2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            654.733398,
                            518.522278,
                            422.015991,
                            21.61834700000049,
                            -91.792984000000018,
                            -111.20670300000047
                          ],
                          "Convention": 1
                        },
                        "Id": 336,
                        "Name": "M1_I2",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          323
                        ]
                      },
                      "M1_I3": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            654.733398,
                            518.522278,
                            466.185425,
                            21.61834700000049,
                            -91.792984000000018,
                            -111.20670300000047
                          ],
                          "Convention": 1
                        },
                        "Id": 337,
                        "Name": "M1_I3",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          317
                        ]
                      }
                    }
                  },
                  {
                    "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                    "Order": 9,
                    "Name": "[PLC] Aspiration OSR ON",
                    "IsAsync": false,
                    "ComponentIDs": [
                      2
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "SetVariable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": {
                          "Tag": "VAR_2",
                          "Designation": "AspirationOSR",
                          "Index": 13,
                          "IO_Type": 1,
                          "Var_Type": 0
                        },
                        "Id": 403,
                        "Name": "SetVariable",
                        "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "SetValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": true,
                        "Id": 404,
                        "Name": "SetValue",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Application.Wait, AkeoCore",
                    "Order": 10,
                    "Name": "Wait 200ms",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "Delay_ms": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": 200,
                        "Id": 373,
                        "Name": "Delay_ms",
                        "TypeName": "System.Int64, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                    "Order": 11,
                    "Name": "[PLC] Stop Aspi Backlight",
                    "IsAsync": false,
                    "ComponentIDs": [
                      3
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "SetVariable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": {
                          "Tag": "VAR_2",
                          "Designation": "COL_AspirationMatrice",
                          "Index": 0,
                          "Path": "GVL.COL_AspirationMatrice",
                          "IO_Type": 1,
                          "Var_Type": 0
                        },
                        "Id": 361,
                        "Name": "SetVariable",
                        "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "SetValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": false,
                        "Id": 362,
                        "Name": "SetValue",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                    "Order": 12,
                    "Name": "[TRAJ] BackLight -> Plateau",
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
                                  "Label": "M1_I4",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      654.733398,
                                      518.522278,
                                      422.015991,
                                      21.61834700000049,
                                      -91.792984000000018,
                                      -111.20670300000047
                                    ],
                                    "Convention": 1
                                  }
                                },
                                {
                                  "Label": "M1_I3",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      654.733398,
                                      518.522278,
                                      466.185425,
                                      21.61834700000049,
                                      -91.792984000000018,
                                      -111.20670300000047
                                    ],
                                    "Convention": 1
                                  }
                                },
                                {
                                  "Label": "M1_I2",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      521.14856,
                                      258.24826,
                                      544.230835,
                                      20.823059000000189,
                                      -91.781897999999984,
                                      -110.41452000000021
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
                              "Label": "M2",
                              "Index": 0,
                              "Poses": [
                                {
                                  "Label": "M2_I1",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -23.194208,
                                      -101.880226,
                                      128.510895,
                                      78.906723,
                                      -71.487587,
                                      -239.64473
                                    ]
                                  }
                                },
                                {
                                  "Label": "M2_P5",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -46.625313,
                                      -75.998825,
                                      125.043411,
                                      52.159035,
                                      -63.111595,
                                      -121.223618
                                    ]
                                  }
                                },
                                {
                                  "Label": "M2_P6",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -46.625366,
                                      -63.827431,
                                      128.602081,
                                      47.630226,
                                      -72.282097,
                                      -16.685862
                                    ]
                                  }
                                },
                                {
                                  "Label": "M2_P7",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -54.853149,
                                      -61.092567,
                                      123.237633,
                                      39.964142,
                                      -67.854324,
                                      -15.78891
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
                        "Id": 394,
                        "Name": "ListMouvement",
                        "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "M1_I2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            521.14856,
                            258.24826,
                            544.230835,
                            20.823059000000189,
                            -91.781897999999984,
                            -110.41452000000021
                          ],
                          "Convention": 1
                        },
                        "Id": 395,
                        "Name": "M1_I2",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          322
                        ]
                      },
                      "M1_I3": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            654.733398,
                            518.522278,
                            466.185425,
                            21.61834700000049,
                            -91.792984000000018,
                            -111.20670300000047
                          ],
                          "Convention": 1
                        },
                        "Id": 396,
                        "Name": "M1_I3",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          317
                        ]
                      },
                      "M1_I4": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "_Pose": [
                            654.733398,
                            518.522278,
                            422.015991,
                            21.61834700000049,
                            -91.792984000000018,
                            -111.20670300000047
                          ],
                          "Convention": 1
                        },
                        "Id": 397,
                        "Name": "M1_I4",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          323
                        ]
                      },
                      "M2_I1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": {
                          "AxisNumber": 0,
                          "_Pose": [
                            -23.194208,
                            -101.880226,
                            128.510895,
                            78.906723,
                            -71.487587,
                            -239.64473
                          ]
                        },
                        "Id": 398,
                        "Name": "M2_I1",
                        "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          383
                        ]
                      }
                    }
                  },
                  {
                    "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                    "Order": 13,
                    "Name": "[TRAJ] ENCOLLAGE (factice)",
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
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      315.922455,
                                      683.874329,
                                      494.89917,
                                      99.4014050000007,
                                      90.927086,
                                      7.6550140000006666
                                    ],
                                    "Convention": 1
                                  }
                                },
                                {
                                  "Label": "M1_P2",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      280.448608,
                                      679.752869,
                                      494.89917,
                                      99.401413000002137,
                                      90.927086,
                                      7.6550140000021587
                                    ],
                                    "Convention": 1
                                  }
                                },
                                {
                                  "Label": "M1_P3",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      278.042358,
                                      720.126526,
                                      494.89917,
                                      99.401413000002137,
                                      90.927086,
                                      7.6550140000021587
                                    ],
                                    "Convention": 1
                                  }
                                },
                                {
                                  "Label": "M1_P4",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      313.175323,
                                      722.832458,
                                      494.89917,
                                      99.401413000002137,
                                      90.927086,
                                      7.6550140000021587
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
                        "Id": 399,
                        "Name": "ListMouvement",
                        "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                    "Order": 14,
                    "Name": "[TRAJ] Doseuse -> PPI-FULL",
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
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      282.611328,
                                      508.088226,
                                      457.595276,
                                      99.40139800000253,
                                      90.927085999999989,
                                      7.6550140000025184
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
                              "Label": "M2",
                              "Index": 0,
                              "Poses": [
                                {
                                  "Label": "M2_P1",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -8.873305,
                                      -82.04631,
                                      125.489952,
                                      84.243942,
                                      -84.369064,
                                      -138.281158
                                    ]
                                  }
                                },
                                {
                                  "Label": "M2_P2",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      99.347473,
                                      -66.595917,
                                      117.073227,
                                      98.997101,
                                      -96.049797,
                                      -219.389435
                                    ]
                                  }
                                },
                                {
                                  "Label": "M2_P3",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      86.605034,
                                      -4.655373,
                                      62.238724,
                                      88.906464,
                                      -87.996574,
                                      -211.828232
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
                                      123.380585,
                                      -729.964844,
                                      79.300705,
                                      29.438657999999318,
                                      -88.747916999999987,
                                      151.96493500000071
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
                        "Id": 402,
                        "Name": "ListMouvement",
                        "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                    "Order": 15,
                    "Name": "[PLC] Aspiration OSR OFF",
                    "IsAsync": false,
                    "ComponentIDs": [
                      2
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "SetVariable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": {
                          "Tag": "VAR_2",
                          "Designation": "AspirationOSR",
                          "Index": 13,
                          "IO_Type": 1,
                          "Var_Type": 0
                        },
                        "Id": 406,
                        "Name": "SetVariable",
                        "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "SetValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": false,
                        "Id": 407,
                        "Name": "SetValue",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      }
                    }
                  },
                  {
                    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                    "Order": 16,
                    "Name": "[MACRO] JETER OSR !",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [
                      {
                        "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                        "Order": 0,
                        "Name": "[TRAJ] Reprise",
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
                                        "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                        "_Pose": [
                                          123.380577,
                                          -729.964233,
                                          122.543564,
                                          29.472247999999958,
                                          -88.747429000000011,
                                          151.92527800000008
                                        ],
                                        "Convention": 1
                                      }
                                    },
                                    {
                                      "Label": "M1_P2",
                                      "Position": {
                                        "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                        "_Pose": [
                                          123.380577,
                                          -729.964294,
                                          78.073288,
                                          29.472250000000049,
                                          -88.747429000000011,
                                          151.92527799999996
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
                            "Id": 405,
                            "Name": "ListMouvement",
                            "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                            "PortType": 2,
                            "Behavior": 0,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                        "Order": 1,
                        "Name": "[PLC] Aspiration OSR ON",
                        "IsAsync": false,
                        "ComponentIDs": [
                          2
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "SetVariable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "CurrentValue": {
                              "Tag": "VAR_2",
                              "Designation": "AspirationOSR",
                              "Index": 13,
                              "IO_Type": 1,
                              "Var_Type": 0
                            },
                            "Id": 369,
                            "Name": "SetVariable",
                            "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                            "PortType": 2,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "SetValue": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "CurrentValue": true,
                            "Id": 370,
                            "Name": "SetValue",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 2,
                            "Behavior": 0,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                        "Order": 2,
                        "Name": "[TRAJ] PPI-Full -> Junk",
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
                                        "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                        "_Pose": [
                                          123.380577,
                                          -729.964294,
                                          140.910843,
                                          29.472250000000049,
                                          -88.747429000000011,
                                          151.92527799999996
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
                                  "Label": "M2",
                                  "Index": 0,
                                  "Poses": [
                                    {
                                      "Label": "M2_P1",
                                      "Position": {
                                        "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                        "AxisNumber": 0,
                                        "_Pose": [
                                          40.377831,
                                          -48.234406,
                                          151.8228,
                                          42.576488,
                                          -99.03878,
                                          -170.254211
                                        ]
                                      }
                                    },
                                    {
                                      "Label": "M2_P2",
                                      "Position": {
                                        "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                        "AxisNumber": 0,
                                        "_Pose": [
                                          -57.639664,
                                          -13.982903,
                                          131.828888,
                                          -61.271023,
                                          -102.371643,
                                          -204.31427
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
                            "Id": 408,
                            "Name": "ListMouvement",
                            "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
                            "PortType": 2,
                            "Behavior": 0,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                        "Order": 3,
                        "Name": "[PLC] Aspiration OSR OFF",
                        "IsAsync": false,
                        "ComponentIDs": [
                          2
                        ],
                        "ChildActions": [],
                        "Ports": {
                          "SetVariable": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "CurrentValue": {
                              "Tag": "VAR_2",
                              "Designation": "AspirationOSR",
                              "Index": 13,
                              "IO_Type": 1,
                              "Var_Type": 0
                            },
                            "Id": 367,
                            "Name": "SetVariable",
                            "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                            "PortType": 2,
                            "Behavior": 0,
                            "ProducerIDs": []
                          },
                          "SetValue": {
                            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                            "CurrentValue": false,
                            "Id": 368,
                            "Name": "SetValue",
                            "TypeName": "System.Boolean, mscorlib",
                            "PortType": 2,
                            "Behavior": 0,
                            "ProducerIDs": []
                          }
                        }
                      },
                      {
                        "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                        "Order": 4,
                        "Name": "[TRAJ] Junk -> Plateau",
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
                                        "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                        "_Pose": [
                                          240.600403,
                                          251.784592,
                                          565.723267,
                                          174.36266700000004,
                                          -91.716956999999979,
                                          4.3773799999999579
                                        ],
                                        "Convention": 1
                                      }
                                    },
                                    {
                                      "Label": "M1_P2",
                                      "Position": {
                                        "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                        "AxisNumber": 0,
                                        "_Pose": [
                                          -120.248695,
                                          -131.36264,
                                          143.273239,
                                          -67.115463,
                                          -31.167265,
                                          -113.935867
                                        ]
                                      }
                                    },
                                    {
                                      "Label": "M1_P3",
                                      "Position": {
                                        "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                        "_Pose": [
                                          -367.656769,
                                          202.596512,
                                          690.445679,
                                          36.608169999999951,
                                          -92.07943,
                                          -124.85865799999995
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
                            "Id": 329,
                            "Name": "ListMouvement",
                            "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
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
              },
              {
                "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
                "Order": 2,
                "Name": "Sinon",
                "IsAsync": false,
                "ComponentIDs": [],
                "ChildActions": [
                  {
                    "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                    "Order": 0,
                    "Name": "[PLC] Aspiration OFF",
                    "IsAsync": false,
                    "ComponentIDs": [
                      2
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "SetVariable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": {
                          "Tag": "VAR_2",
                          "Designation": "AspirationOSR",
                          "Index": 13,
                          "IO_Type": 1,
                          "Var_Type": 0
                        },
                        "Id": 299,
                        "Name": "SetVariable",
                        "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                        "PortType": 2,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "SetValue": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": false,
                        "Id": 300,
                        "Name": "SetValue",
                        "TypeName": "System.Boolean, mscorlib",
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
            "Ports": {
              "ValueToTest": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                "CurrentValue": true,
                "Id": 291,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  273
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 0,
                "Id": 292,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": true,
                "Id": 293,
                "Name": "Value",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
            "Order": 10,
            "Name": "[PLC] Aspiration OFF",
            "IsAsync": false,
            "ComponentIDs": [
              2
            ],
            "ChildActions": [],
            "Ports": {
              "SetVariable": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": {
                  "Tag": "VAR_2",
                  "Designation": "AspirationOSR",
                  "Index": 13,
                  "IO_Type": 1,
                  "Var_Type": 0
                },
                "Id": 312,
                "Name": "SetVariable",
                "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "SetValue": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": false,
                "Id": 313,
                "Name": "SetValue",
                "TypeName": "System.Boolean, mscorlib",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          },
          {
            "$type": "AkeoCore.Programming.Structures.If, AkeoCore",
            "Order": 11,
            "Name": "FIN DE BOUCLE",
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
                    "Name": "[UPDATE] Compteur OSR",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "InPose": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "CurrentValue": false,
                        "Id": 201,
                        "Name": "InPose",
                        "TypeName": "System.Object, mscorlib",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          200
                        ]
                      },
                      "GlobalPosition": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "CurrentValue": "LoopCondition",
                        "Id": 202,
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
                "CurrentValue": 48,
                "Id": 192,
                "Name": "ValueToTest",
                "TypeName": "System.IComparable, mscorlib",
                "PortType": 0,
                "Behavior": 0,
                "ProducerIDs": [
                  161
                ]
              },
              "Comparison": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 0,
                "Id": 193,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "CurrentValue": 62,
                "Id": 194,
                "Name": "Value",
                "TypeName": "System.Int64, mscorlib",
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
            "CurrentValue": true,
            "Id": 160,
            "Name": "LoopCondition",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "LoopIterator": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "CurrentValue": 0,
            "Id": 161,
            "Name": "LoopIterator",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
        "Order": 3,
        "Name": "Pose Approche Plateau",
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
                      "Label": "M1_I1",
                      "Position": {
                        "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "_Pose": [
                          -218.122498,
                          282.056061,
                          663.103394,
                          37.309325999999572,
                          -92.077132999999961,
                          -125.59234599999958
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
            "Id": 247,
            "Name": "ListMouvement",
            "TypeName": "AkeoRoboticist.Robots.Movements, AkeoRoboticist",
            "PortType": 2,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "M1_I1": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
            "CurrentValue": {
              "_Pose": [
                -218.122498,
                282.056061,
                663.103394,
                37.309325999999572,
                -92.077132999999961,
                -125.59234599999958
              ],
              "Convention": 1
            },
            "Id": 248,
            "Name": "M1_I1",
            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              60
            ]
          }
        }
      }
    ],
    "Ports": {
      "DEBUG": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": false,
        "Id": 6,
        "Name": "DEBUG",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_ApprochePlateau": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "_Pose": [
            -346.051788,
            278.161652,
            668.728699,
            37.054458999999781,
            -92.060753,
            -125.30641199999977
          ],
          "Convention": 1
        },
        "Id": 60,
        "Name": "POSE_WORLD_ApprochePlateau",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_PositionSecousse": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "AxisNumber": 0,
          "_Pose": [
            -112.697388,
            -167.810959,
            -7.190969,
            -62.339767,
            -78.987206,
            -189.211792
          ]
        },
        "Id": 104,
        "Name": "POSE_WORLD_PositionSecousse",
        "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "FRAME_PLATEAU": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "_Pose": [
            -202.173431,
            220.688141,
            541.725891,
            179.71376548371637,
            179.89786780047626,
            -89.787642710896378
          ],
          "Convention": 0
        },
        "Id": 154,
        "Name": "FRAME_PLATEAU",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_PLATEAU_PriseOSR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "_Pose": [
            14.497929647791182,
            18.93683554147762,
            -0.18437204869735524,
            109.18803930639449,
            -88.118961962080988,
            70.763631344569987
          ],
          "Convention": 1
        },
        "Id": 155,
        "Name": "POSE_PLATEAU_PriseOSR",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_PRISEOSR_ApprocheOSR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "_Pose": [
            0.0,
            0.0,
            40.0,
            0.0,
            0.0,
            0.0
          ],
          "Convention": 0
        },
        "Id": 159,
        "Name": "POSE_PRISEOSR_ApprocheOSR",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "FALSE": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": false,
        "Id": 200,
        "Name": "FALSE",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "TRUE": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": true,
        "Id": 254,
        "Name": "TRUE",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_PLATEAU_CurrentPriseOSR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "_Pose": [
            14.497929647791182,
            18.93683554147762,
            -0.18437204869735524,
            109.18803930639454,
            -88.118961962080988,
            70.76363134456993
          ],
          "Convention": 1
        },
        "Id": 277,
        "Name": "POSE_PLATEAU_CurrentPriseOSR",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_PLATEAU_CurrentApprocheOSR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "_Pose": [
            14.497929647791182,
            18.93683554147762,
            39.815627951302645,
            109.18803930639454,
            -88.118961962080988,
            70.76363134456993
          ],
          "Convention": 1
        },
        "Id": 278,
        "Name": "POSE_PLATEAU_CurrentApprocheOSR",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_ApprocheBackLight": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "_Pose": [
            654.733398,
            518.522278,
            466.185425,
            21.61834700000049,
            -91.792984000000018,
            -111.20670300000047
          ],
          "Convention": 1
        },
        "Id": 317,
        "Name": "POSE_WORLD_ApprocheBackLight",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_ApprochePosteVision": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "_Pose": [
            521.14856,
            258.24826,
            544.230835,
            20.823059000000189,
            -91.781897999999984,
            -110.41452000000021
          ],
          "Convention": 1
        },
        "Id": 322,
        "Name": "POSE_WORLD_ApprochePosteVision",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_DeposeBackLight": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "_Pose": [
            654.733398,
            518.522278,
            422.015991,
            21.61834700000049,
            -91.792984000000018,
            -111.20670300000047
          ],
          "Convention": 1
        },
        "Id": 323,
        "Name": "POSE_WORLD_DeposeBackLight",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_PointMilieux": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "_Pose": [
            295.157684,
            331.762726,
            663.103394,
            37.324859999999973,
            -92.077133,
            -125.59234600000002
          ],
          "Convention": 1
        },
        "Id": 376,
        "Name": "POSE_WORLD_PointMilieux",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_PTMilieux": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "CurrentValue": {
          "AxisNumber": 0,
          "_Pose": [
            -23.194208,
            -101.880226,
            128.510895,
            78.906723,
            -71.487587,
            -239.64473
          ]
        },
        "Id": 383,
        "Name": "POSE_WORLD_PTMilieux",
        "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
        "PortType": 2,
        "Behavior": 0,
        "ProducerIDs": []
      }
    }
  },
  "MaxId": 409
}