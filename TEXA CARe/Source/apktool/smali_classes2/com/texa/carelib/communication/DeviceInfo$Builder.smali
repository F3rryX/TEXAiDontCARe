.class public Lcom/texa/carelib/communication/DeviceInfo$Builder;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/communication/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBondState:I

.field private mLastConnectionDateTime:Ljava/util/Date;

.field private mName:Ljava/lang/String;

.field private mRSSI:Ljava/lang/Integer;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 253
    new-instance v0, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/texa/carelib/communication/DeviceInfo;)V
    .locals 1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-static {p1}, Lcom/texa/carelib/communication/DeviceInfo;->access$000(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mName:Ljava/lang/String;

    .line 263
    invoke-static {p1}, Lcom/texa/carelib/communication/DeviceInfo;->access$100(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mAddress:Ljava/lang/String;

    .line 264
    invoke-static {p1}, Lcom/texa/carelib/communication/DeviceInfo;->access$200(Lcom/texa/carelib/communication/DeviceInfo;)I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mBondState:I

    .line 265
    invoke-static {p1}, Lcom/texa/carelib/communication/DeviceInfo;->access$300(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mRSSI:Ljava/lang/Integer;

    .line 266
    invoke-static {p1}, Lcom/texa/carelib/communication/DeviceInfo;->access$400(Lcom/texa/carelib/communication/DeviceInfo;)I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mType:I

    .line 267
    invoke-static {p1}, Lcom/texa/carelib/communication/DeviceInfo;->access$500(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mLastConnectionDateTime:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 244
    new-instance v0, Lcom/texa/carelib/communication/DeviceInfo;

    invoke-direct {v0, p1}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/texa/carelib/communication/DeviceInfo;
    .locals 2

    .line 277
    new-instance v0, Lcom/texa/carelib/communication/DeviceInfo;

    iget-object v1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mAddress:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/DeviceInfo;->access$002(Lcom/texa/carelib/communication/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget v1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mBondState:I

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/DeviceInfo;->access$202(Lcom/texa/carelib/communication/DeviceInfo;I)I

    .line 280
    iget-object v1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mRSSI:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/DeviceInfo;->access$302(Lcom/texa/carelib/communication/DeviceInfo;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 281
    iget v1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mType:I

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/DeviceInfo;->access$402(Lcom/texa/carelib/communication/DeviceInfo;I)I

    .line 282
    iget-object v1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mLastConnectionDateTime:Ljava/util/Date;

    invoke-static {v0, v1}, Lcom/texa/carelib/communication/DeviceInfo;->access$502(Lcom/texa/carelib/communication/DeviceInfo;Ljava/util/Date;)Ljava/util/Date;

    return-object v0
.end method

.method public setBondState(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;
    .locals 0

    .line 312
    iput p1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mBondState:I

    return-object p0
.end method

.method public setLastConnectionDateTime(Ljava/util/Date;)Lcom/texa/carelib/communication/DeviceInfo$Builder;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mLastConnectionDateTime:Ljava/util/Date;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/texa/carelib/communication/DeviceInfo$Builder;
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setRSSI(Ljava/lang/Integer;)Lcom/texa/carelib/communication/DeviceInfo$Builder;
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mRSSI:Ljava/lang/Integer;

    return-object p0
.end method

.method public setType(I)Lcom/texa/carelib/communication/DeviceInfo$Builder;
    .locals 0

    .line 344
    iput p1, p0, Lcom/texa/carelib/communication/DeviceInfo$Builder;->mType:I

    return-object p0
.end method
