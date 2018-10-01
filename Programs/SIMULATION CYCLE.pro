{
  "Id": 0,
  "ReferenceName": "SIMULATION CYCLE",
  "Main": {
    "$type": "AkeoCore.Programming.Structures.Macro, AkeoCore",
    "Order": 0,
    "Name": "SIMULATION CYCLE",
    "IsAsync": false,
    "ComponentIDs": [],
    "ChildActions": [
      {
        "$type": "AFF00138.Action.GetNextOSR, AFF00138",
        "Order": 0,
        "Name": "GetNext",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [],
        "Ports": {
          "CurrentFace": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
            "Id": 53,
            "Name": "CurrentFace",
            "TypeName": "AFF00138.Panneau.Face, AFF00138",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              3
            ]
          },
          "NomPanneau": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
            "Id": 54,
            "Name": "NomPanneau",
            "TypeName": "System.String, mscorlib",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              51
            ]
          },
          "NomSatellite": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
            "Id": 55,
            "Name": "NomSatellite",
            "TypeName": "System.String, mscorlib",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              52
            ]
          },
          "OSRType": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
            "Id": 56,
            "Name": "OSRType",
            "TypeName": "AFF00138.Panneau.OSR_Type, AFF00138",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              60
            ]
          },
          "NextOSR": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
            "Id": 57,
            "Name": "NextOSR",
            "TypeName": "AFF00138.Panneau.OSR, AFF00138",
            "PortType": 1,
            "Behavior": 1,
            "ProducerIDs": []
          },
          "NextOsrTrouver": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
            "Id": 58,
            "Name": "NextOsrTrouver",
            "TypeName": "System.Boolean, mscorlib",
            "PortType": 1,
            "Behavior": 1,
            "ProducerIDs": []
          },
          "CartPose": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoOutput, AkeoSpineCore",
            "Id": 59,
            "Name": "CartPose",
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
        "Name": "toto",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [],
        "Ports": {
          "InPose": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
            "Id": 42,
            "Name": "InPose",
            "TypeName": "AFF00138.Panneau.OSR, AFF00138",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              57
            ]
          },
          "GlobalPosition": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 45,
            "Name": "GlobalPosition",
            "TypeName": "System.String, mscorlib",
            "PortType": 2,
            "CurrentValue": "OsrCourant",
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      },
      {
        "$type": "AkeoCore.Values.WriteValue, AkeoCore",
        "Order": 2,
        "Name": "tata",
        "IsAsync": false,
        "ComponentIDs": [],
        "ChildActions": [],
        "Ports": {
          "InPose": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoInput, AkeoSpineCore",
            "Id": 46,
            "Name": "InPose",
            "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
            "PortType": 0,
            "Behavior": 0,
            "ProducerIDs": [
              59
            ]
          },
          "GlobalPosition": {
            "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
            "Id": 49,
            "Name": "GlobalPosition",
            "TypeName": "System.String, mscorlib",
            "PortType": 2,
            "CurrentValue": "Pose",
            "Behavior": 0,
            "ProducerIDs": []
          }
        }
      }
    ],
    "Ports": {
      "type_ref": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 1,
        "Name": "type_ref",
        "TypeName": "System.String, mscorlib",
        "PortType": 2,
        "CurrentValue": "maintenance",
        "Behavior": 0,
        "ProducerIDs": []
      },
      "FaceCourante": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 3,
        "Name": "FaceCourante",
        "TypeName": "AFF00138.Panneau.Face, AFF00138",
        "PortType": 2,
        "CurrentValue": 1,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "IsModeAutomatique": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 4,
        "Name": "IsModeAutomatique",
        "TypeName": "System.Boolean, mscorlib",
        "PortType": 2,
        "CurrentValue": true,
        "Behavior": 0,
        "ProducerIDs": []
      },
      "OsrCourant": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 12,
        "Name": "OsrCourant",
        "TypeName": "AFF00138.Panneau.OSR, AFF00138",
        "PortType": 2,
        "CurrentValue": {
          "IndexOSR": 741,
          "OSRId": 19560,
          "TypeFace": 1,
          "X": -1008.9000244140625,
          "Y": -1170.4000244140625,
          "Theta": 0.0,
          "TypeOSR": 0,
          "LotOSR": "",
          "NumeroArticle": "",
          "LotColleA": {
            "LotColeId": 0,
            "NumeroDeLot": "",
            "NumeroArticle": "",
            "ColleType": null,
            "DatePeremption": null,
            "Courant": false
          },
          "LotColleB": {
            "LotColeId": 0,
            "NumeroDeLot": "",
            "NumeroArticle": "",
            "ColleType": null,
            "DatePeremption": null,
            "Courant": false
          },
          "LotColleC": {
            "LotColeId": 0,
            "NumeroDeLot": "",
            "NumeroArticle": "",
            "ColleType": null,
            "DatePeremption": null,
            "Courant": false
          },
          "StatusOSR": 0,
          "StatusMessage": "",
          "DateTimePose": "0001-01-01T00:00:00",
          "TempLaserTracker": 0.0,
          "HydroLaserTracker": 0.0,
          "PressionApplication": 0.0,
          "DefautCollage": 0,
          "TempsCollage": "00:00:00",
          "PresenceDefautControleEntree": false,
          "DefautControleEntree": 0,
          "ControleAutomatiqueControleEntree": true,
          "NomUserControleEntree": "",
          "PathImageControleEntree": "",
          "PresenceDefautControleMotifColle": false,
          "DefautControleMotifColle": 0,
          "ControleAutomatiqueControleMotifColle": true,
          "NomUserControleMotifColle": "",
          "PathImageControleMotifCollee": "",
          "PresenceDefautControlePresenceColleEffecteur": false,
          "DefautControlePresenceColleEffecteur": 0,
          "ControleAutomatiqueControlePresenceColleEffecteur": true,
          "NomUserControlePresenceColleEffecteur": "",
          "PathImageControlePresenceColleEffecteur": "",
          "PresenceDefautControlePresenceCollePosteDeTransfert": false,
          "DefautControlePresenceCollePosteDeTransfert": 0,
          "ControleAutomatiqueControlePresenceCollePosteDeTransfert": true,
          "NomUserControlePresenceCollePosteDeTransfert": "",
          "PathImageControlePresenceCollePosteDeTransfert": "",
          "TempsCycle": "00:00:00",
          "CurrentUser": "",
          "IsSelectedForManualMode": false
        },
        "Behavior": 0,
        "ProducerIDs": []
      },
      "Pose": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 50,
        "Name": "Pose",
        "TypeName": "AkeoCore.Mathematics.CartesianPose, AkeoCore",
        "PortType": 2,
        "CurrentValue": {
          "_Pose": [
            -1008.9000244140625,
            -1170.4000244140625,
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
      "NomPanneau": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 51,
        "Name": "NomPanneau",
        "TypeName": "System.String, mscorlib",
        "PortType": 2,
        "CurrentValue": "P4",
        "Behavior": 0,
        "ProducerIDs": []
      },
      "NomSatellite": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 52,
        "Name": "NomSatellite",
        "TypeName": "System.String, mscorlib",
        "PortType": 2,
        "CurrentValue": "S4",
        "Behavior": 0,
        "ProducerIDs": []
      },
      "DemiOuPlein": {
        "$type": "AkeoSpineCore.Engine.AkeoIOPorts.AkeoProperty, AkeoSpineCore",
        "Id": 60,
        "Name": "DemiOuPlein",
        "TypeName": "AFF00138.Panneau.OSR_Type, AFF00138",
        "PortType": 2,
        "CurrentValue": 1,
        "Behavior": 0,
        "ProducerIDs": []
      }
    }
  },
  "MaxId": 60
}