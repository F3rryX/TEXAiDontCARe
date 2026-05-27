.class public Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;
.super Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;
.source "SerialDataManagerConfiguration.java"

# interfaces
.implements Lcom/texa/carelib/profile/internal/SerialProfileMessageReceiver;


# static fields
.field public static final TAG:Ljava/lang/String; = "SerialDataManagerConfiguration"


# instance fields
.field private final mProfile:Lcom/texa/carelib/profile/Profile;

.field private final mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/profile/Profile;Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V
    .locals 0

    .line 43
    invoke-direct {p0, p2}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;-><init>(Lcom/texa/carelib/care/featureverifier/FeatureVerifier;)V

    .line 45
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->mProfile:Lcom/texa/carelib/profile/Profile;

    .line 46
    instance-of p2, p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz p2, :cond_0

    .line 47
    check-cast p1, Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    :goto_0
    return-void
.end method

.method private handleGetDataManagerParameters(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 25

    move-object/from16 v1, p0

    if-nez p3, :cond_a

    .line 108
    invoke-static/range {p2 .. p2}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser;->parse(Lcom/texa/carelib/communication/Message;)Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;

    move-result-object v0

    .line 123
    sget-object v2, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->Default:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 126
    invoke-virtual {v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/parser/GetDataManagerParametersParser$GetDataManagerParametersResponse;->getData()Landroid/util/SparseArray;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 130
    :goto_0
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v0, v7, :cond_1

    .line 131
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 133
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 135
    sget-object v9, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->TAG:Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    if-eqz v7, :cond_0

    array-length v7, v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v8

    const-string v7, "Configuration %d length: %d"

    invoke-static {v9, v7, v10}, Lcom/texa/carelib/core/logging/CareLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v3

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object/from16 v19, v18

    move/from16 v20, v6

    const/4 v8, 0x0

    move-object/from16 v6, v19

    .line 138
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_8

    .line 140
    :try_start_0
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 142
    :try_start_1
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    const/high16 v20, 0x42c80000    # 100.0f

    packed-switch v5, :pswitch_data_0

    move-object/from16 v21, v2

    move-object/from16 p3, v3

    move-object/from16 v22, v4

    .line 222
    :try_start_2
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->TAG:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_c

    .line 212
    :pswitch_0
    :try_start_3
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v0, v20, v22

    if-nez v0, :cond_2

    .line 214
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->Default:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    :goto_3
    move-object v2, v0

    move-object/from16 v22, v4

    goto/16 :goto_d

    :cond_2
    const-wide/16 v22, 0x1

    cmp-long v0, v20, v22

    if-nez v0, :cond_3

    .line 216
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->AlwaysOn:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    goto :goto_3

    .line 218
    :cond_3
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->Unknown:Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v21, v2

    goto/16 :goto_e

    :pswitch_1
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 208
    :try_start_4
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p3

    move-object/from16 v19, v0

    goto/16 :goto_7

    :pswitch_2
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 204
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p3

    move-object/from16 v18, v0

    goto/16 :goto_7

    :pswitch_3
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 199
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    .line 200
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_6

    :pswitch_4
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    const/4 v2, 0x0

    .line 195
    aget-byte v0, v0, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v3, p3

    move-object v14, v0

    goto/16 :goto_7

    :pswitch_5
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 191
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p3

    move-object/from16 v16, v0

    goto/16 :goto_7

    :pswitch_6
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 187
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v3, p3

    move-object v15, v0

    goto/16 :goto_7

    :pswitch_7
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    const/4 v2, 0x0

    .line 183
    aget-byte v0, v0, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v3, p3

    move-object v13, v0

    goto/16 :goto_7

    :pswitch_8
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 179
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v2

    long-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    move-object/from16 v3, p3

    move-object v9, v0

    goto/16 :goto_7

    :pswitch_9
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 166
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, p3

    move-object v11, v0

    goto :goto_7

    :pswitch_a
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 170
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 171
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_6

    :pswitch_b
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 151
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v2

    long-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 152
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v0, v0, v20

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :goto_6
    move-object/from16 v3, p3

    goto :goto_7

    :pswitch_c
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 146
    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseData([B)J

    move-result-wide v2

    long-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 147
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    div-float v0, v0, v20

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_e

    :pswitch_d
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    const/4 v2, 0x0

    .line 175
    :try_start_6
    aget-byte v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->parseTimeZoneOffset(B)Ljava/lang/Integer;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v3, p3

    move-object v10, v0

    :goto_7
    move-object/from16 v22, v4

    :goto_8
    move-object/from16 v2, v21

    goto :goto_d

    :catch_2
    move-exception v0

    move-object/from16 v3, p3

    goto :goto_e

    :pswitch_e
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    .line 157
    :try_start_7
    array-length v2, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_7

    move/from16 v20, v2

    aget-byte v2, v0, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v22, v4

    const/16 v4, 0xff

    if-eq v4, v2, :cond_6

    .line 159
    :try_start_8
    invoke-static {v0}, Lcom/texa/carelib/core/utils/UUIDHelper;->fromByteArray([B)Ljava/util/UUID;

    move-result-object v7

    goto :goto_a

    :cond_6
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v20

    move-object/from16 v4, v22

    goto :goto_9

    :cond_7
    move-object/from16 v22, v4

    :goto_a
    move-object/from16 v3, p3

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v22, v4

    :goto_b
    move-object/from16 v3, p3

    goto :goto_f

    :goto_c
    const-string v2, "Unsupported data manager parameter: 0x%02X"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 222
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v20, 0x0

    aput-object v3, v4, v20

    invoke-static {v0, v2, v4}, Lcom/texa/carelib/core/logging/CareLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_a

    :goto_d
    move/from16 v20, v5

    const/16 v24, 0x0

    goto :goto_11

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 p3, v3

    :goto_e
    move-object/from16 v22, v4

    :goto_f
    move/from16 v20, v5

    goto :goto_10

    :catch_6
    move-exception v0

    move-object/from16 v21, v2

    move-object/from16 p3, v3

    move-object/from16 v22, v4

    .line 228
    :goto_10
    sget-object v2, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x0

    aput-object v23, v5, v24

    const-string v4, "An error is occurred with data manager parameter ID: %d"

    invoke-static {v2, v0, v4, v5}, Lcom/texa/carelib/core/logging/CareLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v2, v21

    :goto_11
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v22

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v21, v2

    move-object/from16 p3, v3

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    move-object/from16 v8, v18

    move-object/from16 v5, v19

    goto :goto_12

    :cond_9
    move-object v0, v3

    move-object v4, v0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    .line 233
    :goto_12
    invoke-super {v1, v3}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setAccelerationThreshold(Ljava/lang/Float;)V

    .line 234
    invoke-super {v1, v6}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setBrakeThreshold(Ljava/lang/Float;)V

    .line 235
    invoke-super {v1, v7}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->_setDriverID(Ljava/util/UUID;)V

    .line 236
    invoke-super {v1, v9}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setStartingOdometer(Ljava/lang/Float;)V

    .line 237
    invoke-super {v1, v10}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTimeZoneOffset(Ljava/lang/Integer;)V

    .line 238
    invoke-super {v1, v11}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setRPMThreshold(Ljava/lang/Integer;)V

    .line 239
    invoke-super {v1, v12}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTemperatureThreshold(Ljava/lang/Integer;)V

    .line 240
    invoke-super {v1, v13}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setSOSEnabled(Ljava/lang/Boolean;)V

    .line 241
    invoke-super {v1, v15}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTripNumberDevice(Ljava/lang/Long;)V

    .line 242
    invoke-super {v1, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTripNumberVehicle(Ljava/lang/Integer;)V

    .line 243
    invoke-super {v1, v14}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setSOSEnabledLowPowerMode(Ljava/lang/Boolean;)V

    .line 244
    invoke-super {v1, v4}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setAccelerationMaxRange(Ljava/lang/Integer;)V

    .line 245
    invoke-super {v1, v5}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setDrivingTimeLowRPMMaxThreshold(Ljava/lang/Integer;)V

    .line 246
    invoke-super {v1, v8}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setDrivingTimeLowRPMMinThreshold(Ljava/lang/Integer;)V

    .line 247
    invoke-super {v1, v2}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->_setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSetDataManagerParameter(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->loadConfigurationValues()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private sendMessage(Lcom/texa/carelib/communication/Message;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->mSerialProfileProxy:Lcom/texa/carelib/profile/internal/SerialProfileProxy;

    if-eqz v0, :cond_0

    .line 576
    invoke-interface {v0, p1}, Lcom/texa/carelib/profile/internal/SerialProfileProxy;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic _setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->_setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V

    return-void
.end method

.method public bridge synthetic getAccelerationMaxRange()Ljava/lang/Integer;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getAccelerationMaxRange()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAccelerationThreshold()Ljava/lang/Float;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getAccelerationThreshold()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBrakeThreshold()Ljava/lang/Float;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getBrakeThreshold()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDriverID()Ljava/util/UUID;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getDriverID()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDrivingTimeLowRPMMaxThreshold()Ljava/lang/Integer;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getDrivingTimeLowRPMMaxThreshold()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDrivingTimeLowRPMMinThreshold()Ljava/lang/Integer;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getDrivingTimeLowRPMMinThreshold()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLedBehaviour()Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getLedBehaviour()Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;

    move-result-object v0

    return-object v0
.end method

.method public getProfile()Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->mProfile:Lcom/texa/carelib/profile/Profile;

    return-object v0
.end method

.method public bridge synthetic getRPMThreshold()Ljava/lang/Integer;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getRPMThreshold()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStartingOdometer()Ljava/lang/Float;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getStartingOdometer()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTemperatureThreshold()Ljava/lang/Integer;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getTemperatureThreshold()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeZoneOffset()Ljava/lang/Integer;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getTimeZoneOffset()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripNumberDevice()Ljava/lang/Long;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getTripNumberDevice()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTripNumberVehicle()Ljava/lang/Integer;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->getTripNumberVehicle()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isSOSEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->isSOSEnabled()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isSOSEnabledLowPowerMode()Ljava/lang/Boolean;
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->isSOSEnabledLowPowerMode()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public loadConfigurationValues()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "loadCrashConfigurationValues"

    invoke-static {v0, v2, v1}, Lcom/texa/carelib/core/logging/CareLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 71
    :cond_0
    new-instance v0, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {v0}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw v0
.end method

.method public loadInfo()V
    .locals 0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->loadConfigurationValues()V
    :try_end_0
    .catch Lcom/texa/carelib/core/CareLibException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public bridge synthetic onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V

    return-void
.end method

.method public onMessageReceived(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V
    .locals 2

    .line 80
    invoke-virtual {p2}, Lcom/texa/carelib/communication/Message;->getCommandID()I

    move-result v0

    const/16 v1, 0x52

    if-eq v0, v1, :cond_1

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->handleGetDataManagerParameters(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->handleSetDataManagerParameter(Ljava/lang/Object;Lcom/texa/carelib/communication/Message;Lcom/texa/carelib/core/CareError;)V

    :goto_0
    return-void
.end method

.method protected parseData([B)J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 266
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 267
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method protected parseTimeZoneOffset(B)Ljava/lang/Integer;
    .locals 2

    and-int/lit16 p1, p1, 0xff

    .line 253
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x80

    if-eq v1, v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 258
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setAccelerationMaxRange(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 475
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 476
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0xb

    .line 478
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    mul-int/lit8 p1, p1, 0xa

    .line 479
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedShort(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 480
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {p1, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 472
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 468
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setAccelerationThreshold(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 283
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 284
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    .line 285
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    .line 287
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedShort(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 289
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {p1, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 280
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 276
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setBrakeThreshold(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 302
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 303
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 304
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    .line 306
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedShort(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 307
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v0, 0x52

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 299
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 295
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setDriverID(Ljava/util/UUID;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 321
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    if-eqz p1, :cond_0

    .line 324
    invoke-static {p1, v0}, Lcom/texa/carelib/core/utils/UUIDHelper;->toByteArray(Ljava/util/UUID;[B)V

    :cond_0
    const/16 p1, 0x11

    .line 327
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 328
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    .line 329
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 330
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 331
    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 317
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 313
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setDrivingTimeLowRPMMaxThreshold(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 503
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 511
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 512
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0xd

    .line 514
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 515
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedShort(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 516
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {p1, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 508
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 504
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setDrivingTimeLowRPMMinThreshold(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 485
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 493
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 494
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    .line 496
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedShort(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 498
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {p1, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 490
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 486
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setLedBehaviour(Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 544
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 548
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 553
    sget-object v1, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration$1;->$SwitchMap$com$texa$carelib$care$datamanagerconfiguration$LedBehaviour:[I

    invoke-virtual {p1}, Lcom/texa/carelib/care/datamanagerconfiguration/LedBehaviour;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 559
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_1
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 565
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 566
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0xe

    .line 567
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 568
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 570
    new-instance v0, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {v0}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    :cond_2
    return-void

    .line 549
    :cond_3
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 545
    :cond_4
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setRPMThreshold(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 344
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x5

    .line 345
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 346
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedShort(Ljava/nio/ByteBuffer;Ljava/lang/Integer;)Z

    .line 348
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {p1, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 341
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 337
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setSOSEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 419
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 420
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x7

    .line 421
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 423
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 425
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 428
    :goto_0
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {p1, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 416
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 412
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setSOSEnabledLowPowerMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 529
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 530
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    .line 531
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 533
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 536
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 539
    :goto_0
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {p1, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 526
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 522
    :cond_2
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setStartingOdometer(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 361
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 362
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    .line 363
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 365
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v1, p1

    .line 366
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedInt(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Z

    .line 367
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {p1, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 358
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 354
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setTemperatureThreshold(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 380
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 381
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    .line 382
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    .line 384
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 386
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {p1, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 377
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 373
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setTimeZoneOffset(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 399
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 400
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 401
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 405
    div-int/lit16 p1, p1, 0x3e8

    div-int/lit8 p1, p1, 0x3c

    div-int/lit8 p1, p1, 0x3c

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 406
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 v1, 0x52

    invoke-virtual {p1, v1}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 396
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 392
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public bridge synthetic setTimeZoneOffset(Ljava/lang/Integer;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/DataManagerConfigurationBase;->setTimeZoneOffset(Ljava/lang/Integer;)V

    return-void
.end method

.method public setTripNumberDevice(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 432
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 440
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 441
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    .line 443
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 444
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedInt(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Z

    .line 445
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 p2, 0x52

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 437
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 433
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method

.method public setTripNumberVehicle(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->getFeatureVerifier()Lcom/texa/carelib/care/featureverifier/FeatureVerifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/texa/carelib/care/featureverifier/FeatureVerifier;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 457
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 458
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0x9

    .line 460
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 461
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/texa/carelib/core/utils/internal/ByteBufferUtils;->putUnsignedInt(Ljava/nio/ByteBuffer;Ljava/lang/Long;)Z

    .line 462
    new-instance p1, Lcom/texa/carelib/communication/Message$Builder;

    invoke-direct {p1}, Lcom/texa/carelib/communication/Message$Builder;-><init>()V

    const/16 p2, 0x52

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setCommandID(I)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/texa/carelib/communication/Message$Builder;->setPayload([B)Lcom/texa/carelib/communication/Message$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/texa/carelib/communication/Message$Builder;->build()Lcom/texa/carelib/communication/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/texa/carelib/care/datamanagerconfiguration/internal/SerialDataManagerConfiguration;->sendMessage(Lcom/texa/carelib/communication/Message;)V

    return-void

    .line 454
    :cond_0
    new-instance p1, Lcom/texa/carelib/core/DongleNotAuthenticatedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotAuthenticatedException;-><init>()V

    throw p1

    .line 450
    :cond_1
    new-instance p1, Lcom/texa/carelib/core/DongleNotConnectedException;

    invoke-direct {p1}, Lcom/texa/carelib/core/DongleNotConnectedException;-><init>()V

    throw p1
.end method
