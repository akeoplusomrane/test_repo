{
  "Id": 0,
  "ReferenceName": "[FS11] Vision Backlight",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "[FS11] Vision Backlight",
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
                    "Id": 108,
                    "Name": "Prop_Message",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Ne pas executer cette partie",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Prop_ExceptionType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 109,
                    "Name": "Prop_ExceptionType",
                    "TypeName": "AkeoSpineCore.Engine.CycleBehavior, AkeoSpineCore",
                    "PortType": 2,
                    "CurrentValue": 0,
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
                    "Id": 97,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                    "Id": 105,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                    "Id": 114,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I3": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                    "Id": 94,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                    "Id": 100,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                    "Id": 102,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                    "Id": 124,
                    "Name": "Directions données",
                    "TypeName": "AkeoSpineCore.Tools.LinearAlgebra.CoordFrameAxis, AkeoCore",
                    "PortType": 2,
                    "CurrentValue": 0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling origine": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 125,
                    "Name": "Scaling origine",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 126,
                    "Name": "Scaling point direction 1",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Scaling point direction 2": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 127,
                    "Name": "Scaling point direction 2",
                    "TypeName": "System.Double, mscorlib",
                    "PortType": 2,
                    "CurrentValue": 1.0,
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "Result Frame": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
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
                    "Id": 148,
                    "Name": "GlobalPosition",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "FRAME_PLATEAU",
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
                    "Id": 241,
                    "Name": "FrameTag",
                    "TypeName": "System.String, mscorlib",
                    "PortType": 2,
                    "CurrentValue": "Frame_0",
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "FrameType": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                    "Id": 238,
                    "Name": "FrameType",
                    "TypeName": "AkeoRoboticist.Status.FrameType, AkeoRoboticist",
                    "PortType": 2,
                    "CurrentValue": 1,
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
                    "Id": 377,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                    "Id": 320,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                    "Id": 324,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                    "Id": 326,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                    "Id": 157,
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
                    "Behavior": 0,
                    "ProducerIDs": []
                  },
                  "M1_I1": {
                    "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                "Id": 20,
                "Name": "Pose O",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
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
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Pose X": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 21,
                "Name": "Pose X",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
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
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Pose Y": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 22,
                "Name": "Pose Y",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 2,
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
            "Id": 8,
            "Name": "Comparison",
            "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
            "PortType": 2,
            "CurrentValue": 0,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "Value": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 9,
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
            "Id": 245,
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
            "Behavior": 0,
            "ProducerIDs": []
          },
          "M1_I1": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                "Id": 217,
                "Name": "Nb Along X",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 7,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Step X": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 218,
                "Name": "Step X",
                "TypeName": "System.Double, mscorlib",
                "PortType": 2,
                "CurrentValue": 47.0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Nb Along Y": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 219,
                "Name": "Nb Along Y",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 9,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Step Y": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 220,
                "Name": "Step Y",
                "TypeName": "System.Double, mscorlib",
                "PortType": 2,
                "CurrentValue": 47.0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Nb Along Z": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 221,
                "Name": "Nb Along Z",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 1,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Step Z": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 222,
                "Name": "Step Z",
                "TypeName": "System.Double, mscorlib",
                "PortType": 2,
                "CurrentValue": 100.0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "XY palletisation style": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 223,
                "Name": "XY palletisation style",
                "TypeName": "AkeoRoboticist.Advanced.PalletisationStyle, AkeoRoboticist",
                "PortType": 2,
                "CurrentValue": 1,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Z palletisation style": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 224,
                "Name": "Z palletisation style",
                "TypeName": "AkeoRoboticist.Advanced.PalletisationStyle, AkeoRoboticist",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "First Teached Pose In Pallet Frame": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                "Id": 228,
                "Name": "Approch Pose In Pallet Frame",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "Placing Pose In Pallet Frame": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 229,
                "Name": "Placing Pose In Pallet Frame",
                "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "Index Along X": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 230,
                "Name": "Index Along X",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "Index Along Y": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                "Id": 231,
                "Name": "Index Along Y",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 1,
                "Behavior": 1,
                "ProducerIDs": []
              },
              "Index Along Z": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
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
                "Id": 290,
                "Name": "GlobalPosition",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "POSE_PLATEAU_CurrentPriseOSR",
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
                "Id": 288,
                "Name": "GlobalPosition",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "POSE_PLATEAU_CurrentApprocheOSR",
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
                "Id": 243,
                "Name": "FrameTag",
                "TypeName": "System.String, mscorlib",
                "PortType": 2,
                "CurrentValue": "Frame_0",
                "Behavior": 0,
                "ProducerIDs": []
              },
              "FrameType": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 244,
                "Name": "FrameType",
                "TypeName": "AkeoRoboticist.Status.FrameType, AkeoRoboticist",
                "PortType": 2,
                "CurrentValue": 1,
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
                "Id": 203,
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
                              108.49792964779118,
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
                              108.49792964779118,
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
                "Behavior": 0,
                "ProducerIDs": []
              },
              "M1_I1": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                "Id": 269,
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
                "Id": 267,
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
                "Id": 270,
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
                              108.49792964779118,
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
                "Behavior": 0,
                "ProducerIDs": []
              },
              "M1_I1": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                "Id": 275,
                "Name": "Variable",
                "TypeName": "AkeoRoboticist.Robots.RobotMappingVar, AkeoRoboticist",
                "PortType": 2,
                "CurrentValue": {
                  "Tag": "VAR_1",
                  "Designation": "PresenceOSR",
                  "Index": 1,
                  "IO_Type": 0,
                  "Var_Type": 0
                },
                "Behavior": 0,
                "ProducerIDs": []
              },
              "ValueResult": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
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
                        "Id": 341,
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
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "M1_I1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                        "Id": 365,
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
                        "Id": 366,
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
                    "Order": 2,
                    "Name": "Wait 200ms",
                    "IsAsync": false,
                    "ComponentIDs": [],
                    "ChildActions": [],
                    "Ports": {
                      "Delay_ms": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 372,
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
                        "Id": 400,
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
                        "Id": 401,
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
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "M1_I2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                        "Id": 363,
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
                        "Id": 364,
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
                    "Order": 6,
                    "Name": "[CAM-BL] Snap",
                    "IsAsync": false,
                    "ComponentIDs": [
                      6
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "SaveOption": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 420,
                        "Name": "SaveOption",
                        "TypeName": "System.Boolean, mscorlib",
                        "PortType": 2,
                        "CurrentValue": true,
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "SavePath": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 421,
                        "Name": "SavePath",
                        "TypeName": "System.String, mscorlib",
                        "PortType": 2,
                        "CurrentValue": "C:\\acq\\CAM_BL\\OSR FULL",
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "Image": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
                        "Id": 422,
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
                        "Id": 359,
                        "Name": "SetVariable",
                        "TypeName": "AkeoAutomation.PLC.ADSMappingVar, AkeoAutomation",
                        "PortType": 2,
                        "CurrentValue": {
                          "Tag": "VAR_1",
                          "Designation": "VIS_BacklightON",
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
                        "Id": 360,
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
                        "Id": 334,
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
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "M1_I2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                        "Id": 412,
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
                        "Id": 413,
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
                    "$type": "AkeoAutomation.PLC.SetPLCOutput, AkeoAutomation",
                    "Order": 10,
                    "Name": "[PLC] Stop Aspi Backlight",
                    "IsAsync": false,
                    "ComponentIDs": [
                      3
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "SetVariable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 361,
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
                        "Id": 362,
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
                    "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                    "Order": 11,
                    "Name": "[TRAJ] BackLight -> Plateau",
                    "IsAsync": false,
                    "ComponentIDs": [
                      2
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "ListMouvement": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 414,
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
                                  "Label": "M2_P3",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -42.871071,
                                      -114.680099,
                                      129.991425,
                                      75.622749,
                                      -51.04887,
                                      -247.464127
                                    ]
                                  }
                                },
                                {
                                  "Label": "M2_P2",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -107.0103,
                                      -123.928635,
                                      134.300507,
                                      -53.628162,
                                      -19.064552,
                                      -125.917984
                                    ]
                                  }
                                },
                                {
                                  "Label": "M2_P1",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -150.019196,
                                      -90.703629,
                                      121.944016,
                                      -71.129997,
                                      -63.960537,
                                      -124.298088
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
                                  "Label": "M3_I1",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      108.49792964779118,
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
                                  "Label": "M3_I2",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      108.49792964779118,
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
                        "Behavior": 0,
                        "ProducerIDs": []
                      },
                      "M1_I2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 415,
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
                        "Id": 416,
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
                        "Id": 417,
                        "Name": "M1_I4",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          323
                        ]
                      },
                      "M3_I1": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 418,
                        "Name": "M3_I1",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          278
                        ]
                      },
                      "M3_I2": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 419,
                        "Name": "M3_I2",
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
                    "Order": 12,
                    "Name": "[PLC] Aspiration OSR OFF",
                    "IsAsync": false,
                    "ComponentIDs": [
                      2
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "SetVariable": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 403,
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
                        "Id": 404,
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
                    "$type": "AkeoRoboticist.Motion.RobotTrajectory, AkeoRoboticist",
                    "Order": 13,
                    "Name": "[TRAJ] Plateau -> HOME",
                    "IsAsync": false,
                    "ComponentIDs": [
                      2
                    ],
                    "ChildActions": [],
                    "Ports": {
                      "ListMouvement": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                        "Id": 394,
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
                                  "Label": "M1_I4",
                                  "Position": {
                                    "$type": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                                    "_Pose": [
                                      108.49792964779118,
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
                              "MdescrTag": "Mdescr_0"
                            },
                            {
                              "Label": "M2",
                              "Index": 0,
                              "Poses": [
                                {
                                  "Label": "M2_P3",
                                  "Position": {
                                    "$type": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
                                    "AxisNumber": 0,
                                    "_Pose": [
                                      -150.019196,
                                      -90.703629,
                                      121.944016,
                                      -71.129997,
                                      -63.960537,
                                      -124.298088
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
                      },
                      "M1_I4": {
                        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
                        "Id": 397,
                        "Name": "M1_I4",
                        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
                        "PortType": 0,
                        "Behavior": 0,
                        "ProducerIDs": [
                          278
                        ]
                      }
                    }
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
                        "Id": 299,
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
                        "Id": 300,
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
              }
            ],
            "Ports": {
              "ValueToTest": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                "Id": 292,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 293,
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
                "Id": 312,
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
                "Id": 313,
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
                        "Id": 202,
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
                "ChildActions": [],
                "Ports": {}
              }
            ],
            "Ports": {
              "ValueToTest": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
                "Id": 193,
                "Name": "Comparison",
                "TypeName": "AkeoCore.Programming.Structures.Comparison, AkeoCore",
                "PortType": 2,
                "CurrentValue": 0,
                "Behavior": 0,
                "ProducerIDs": []
              },
              "Value": {
                "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
                "Id": 194,
                "Name": "Value",
                "TypeName": "System.Int64, mscorlib",
                "PortType": 2,
                "CurrentValue": 62,
                "Behavior": 0,
                "ProducerIDs": []
              }
            }
          }
        ],
        "Ports": {
          "LoopCondition": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 160,
            "Name": "LoopCondition",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 2,
            "CurrentValue": true,
            "Behavior": 0,
            "ProducerIDs": []
          },
          "LoopIterator": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 161,
            "Name": "LoopIterator",
            "TypeName": "System.Int64, mscorlib",
            "PortType": 2,
            "CurrentValue": 0,
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
            "Id": 247,
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
            "Behavior": 0,
            "ProducerIDs": []
          },
          "M1_I1": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
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
        "Id": 6,
        "Name": "DEBUG",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "CurrentValue": false,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_ApprochePlateau": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 60,
        "Name": "POSE_WORLD_ApprochePlateau",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
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
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_PositionSecousse": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 104,
        "Name": "POSE_WORLD_PositionSecousse",
        "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
        "PortType": 2,
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
        "Behavior": 0,
        "ProducerIDs": []
      },
      "FRAME_PLATEAU": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 154,
        "Name": "FRAME_PLATEAU",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
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
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_PLATEAU_PriseOSR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 155,
        "Name": "POSE_PLATEAU_PriseOSR",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
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
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_PRISEOSR_ApprocheOSR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 159,
        "Name": "POSE_PRISEOSR_ApprocheOSR",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
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
        "Behavior": 0,
        "ProducerIDs": []
      },
      "FALSE": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 200,
        "Name": "FALSE",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "CurrentValue": false,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "TRUE": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 254,
        "Name": "TRUE",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "CurrentValue": true,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_PLATEAU_CurrentPriseOSR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 277,
        "Name": "POSE_PLATEAU_CurrentPriseOSR",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            108.49792964779118,
            18.93683554147762,
            -0.18437204869735524,
            109.18803930639454,
            -88.118961962080988,
            70.76363134456993
          ],
          "Convention": 1
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_PLATEAU_CurrentApprocheOSR": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 278,
        "Name": "POSE_PLATEAU_CurrentApprocheOSR",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            108.49792964779118,
            18.93683554147762,
            39.815627951302645,
            109.18803930639454,
            -88.118961962080988,
            70.76363134456993
          ],
          "Convention": 1
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_ApprocheBackLight": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 317,
        "Name": "POSE_WORLD_ApprocheBackLight",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
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
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_ApprochePosteVision": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 322,
        "Name": "POSE_WORLD_ApprochePosteVision",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
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
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_DeposeBackLight": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 323,
        "Name": "POSE_WORLD_DeposeBackLight",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
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
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_PointMilieux": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 376,
        "Name": "POSE_WORLD_PointMilieux",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
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
        "Behavior": 0,
        "ProducerIDs": []
      },
      "POSE_WORLD_PTMilieux": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 383,
        "Name": "POSE_WORLD_PTMilieux",
        "TypeName": "AkeoRoboticist.Robots.JointPose, AkeoRoboticist",
        "PortType": 2,
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
        "Behavior": 0,
        "ProducerIDs": []
      }
    }
  },
  "MaxId": 425
}