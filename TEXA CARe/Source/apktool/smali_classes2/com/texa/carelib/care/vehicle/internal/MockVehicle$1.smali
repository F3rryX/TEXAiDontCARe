.class Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;
.super Ljava/util/TimerTask;
.source "MockVehicle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->onCommunicationStatusChanged(Lcom/texa/carelib/profile/events/CommunicationStatusChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;


# direct methods
.method constructor <init>(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 243
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$000(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v0

    const/16 v1, 0x64

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$002(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;I)I

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$000(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    rem-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$002(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;I)I

    .line 247
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$500(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v2}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    sget-object v4, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_REL:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v4}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v4

    sget-object v6, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v7, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v7}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$100(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    move-result-object v7

    iget-object v8, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$000(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$200(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;F)[B

    move-result-object v8

    iget-object v9, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v9}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$000(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$300(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;FI)[B

    move-result-object v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$400(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$000(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x50

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$602(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;I)I

    .line 250
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$500(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->FUEL_LEVEL_ABS:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    sget-object v5, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v6, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v6}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$100(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    move-result-object v6

    iget-object v7, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v7}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$600(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$200(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;F)[B

    move-result-object v7

    iget-object v8, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$600(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$300(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;FI)[B

    move-result-object v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$400(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$700(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    rem-int/lit16 v1, v1, 0xb4

    invoke-static {v0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$702(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;I)I

    .line 253
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$500(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->VEHICLE_SPEED:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    sget-object v5, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v6, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v6}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$100(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    move-result-object v6

    iget-object v7, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v7}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$700(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$200(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;F)[B

    move-result-object v7

    iget-object v8, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$700(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$300(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;FI)[B

    move-result-object v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$400(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$700(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x24

    invoke-static {v0, v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$802(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;I)I

    .line 256
    iget-object v0, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v0}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$500(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v1}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    sget-object v3, Lcom/texa/carelib/diagresources/DataID$Parameter;->ENGINE_RPM:Lcom/texa/carelib/diagresources/DataID$Parameter;

    invoke-virtual {v3}, Lcom/texa/carelib/diagresources/DataID$Parameter;->getId()J

    move-result-wide v3

    sget-object v5, Lcom/texa/carelib/care/vehicle/ValueDataType;->NUMERIC:Lcom/texa/carelib/care/vehicle/ValueDataType;

    iget-object v6, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v6}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$100(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;

    move-result-object v6

    iget-object v7, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v7}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$800(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$200(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;F)[B

    move-result-object v7

    iget-object v8, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v8}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$800(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9, v11}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$300(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;FI)[B

    move-result-object v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$400(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;JLcom/texa/carelib/care/vehicle/ValueDataType;Lcom/texa/carelib/care/vehicle/internal/VehicleValueParser;[B[BLjava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$500(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 262
    iget-object v2, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v2}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$900(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v2

    const-string v3, "onCommunicationStatusChanged"

    invoke-virtual {v2, v3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->lock(Ljava/lang/String;)Z

    .line 264
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 267
    iget-object v4, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-static {v4, v5}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$1000(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;Ljava/lang/Long;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 271
    :cond_2
    iget-object v4, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v4}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$1100(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;

    if-eqz v4, :cond_1

    .line 274
    invoke-virtual {v4}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;->getDateLastNotify()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-virtual {v5}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getDateLastUpdate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;

    invoke-virtual {v5}, Lcom/texa/carelib/care/vehicle/internal/DiaValueInfo;->getDateLastUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;->getDateLastNotify()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;->getTimeout()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 275
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;->setDateLastNotify(Ljava/util/Date;)Lcom/texa/carelib/care/vehicle/internal/MockVehicle$SubscriptionInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$900(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    .line 285
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-virtual {v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->getTripStatus()Lcom/texa/carelib/care/trips/TripStatus;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->updateParameters(Ljava/util/List;Lcom/texa/carelib/care/trips/TripStatus;)V

    return-void

    :catchall_0
    move-exception v0

    .line 282
    iget-object v1, p0, Lcom/texa/carelib/care/vehicle/internal/MockVehicle$1;->this$0:Lcom/texa/carelib/care/vehicle/internal/MockVehicle;

    invoke-static {v1}, Lcom/texa/carelib/care/vehicle/internal/MockVehicle;->access$900(Lcom/texa/carelib/care/vehicle/internal/MockVehicle;)Lcom/texa/carelib/core/utils/ReentrantLockWrapper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/texa/carelib/core/utils/ReentrantLockWrapper;->unlock(Ljava/lang/String;)Z

    throw v0
.end method
