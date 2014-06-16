.class public Lcom/vpon/utility/AdOnJsonUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWebviewATSReqJson(Landroid/content/Context;DDFLjava/lang/String;)Lorg/json/JSONObject;
    .locals 23
    .parameter "context"
    .parameter "lat"
    .parameter "lon"
    .parameter "locationAccuracy"
    .parameter "goalId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    const-string v2, ""

    .line 21
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/PhoneStateUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/PhoneStateUtils;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-static {}, Lcom/vpon/utility/PhoneStateUtils;->getSdkOsVersion()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/PhoneStateUtils;->getWifiAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 26
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/PhoneStateUtils;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 27
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/PhoneStateUtils;->getOpenUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/PhoneStateUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 31
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/CellTowerUtil;->getCellId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 32
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/CellTowerUtil;->getLac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 33
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/CellTowerUtil;->getMnc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 34
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/CellTowerUtil;->getMcc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 35
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/CellTowerUtil;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 37
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/NetworkInfomation;->getNetworkInfomation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 39
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/PhoneStateUtils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v16

    .line 41
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    .line 42
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    .line 43
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 45
    invoke-static/range {p0 .. p0}, Lcom/vpon/utility/PhoneStateUtils;->getPureWifiAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 47
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 48
    const-string v21, "method"

    const-string v22, "Activation"

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v21, "imei"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v3, "licensekey"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v2, "screenHeight"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v2, "screenWidth"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v2, "sdkName"

    const-string v3, "Android"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v2, "sdkVersion"

    const-string v3, "1.0.0"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v2, "deviceName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v2, "deviceOsName"

    const-string v3, "Android"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v2, "deviceOsVersion"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v2, "deviceFullName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v2, "macId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v2, "backupId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v2, "androidId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v2, "networkInfo"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "density"

    move/from16 v0, v17

    float-to-double v3, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 69
    const-string v2, "macAddress"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v2, "SDK"

    const-string v3, "Using real location gps address"

    invoke-static {v2, v3}, Lcom/vpon/utility/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "lat"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v2, "lon"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v2, "locationAccuracy"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v2, "SDK"

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vpon/utility/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "SDK"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vpon/utility/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v2, "SDK"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vpon/utility/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "cellId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v2, "lac"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v2, "mcc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v2, "mnc"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v2, "networkOperatorName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v2, "goalId"

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v2, "appPackageNmae"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    return-object v20
.end method
