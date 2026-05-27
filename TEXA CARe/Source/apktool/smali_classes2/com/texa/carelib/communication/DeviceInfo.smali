.class public Lcom/texa/carelib/communication/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/DeviceInfo$Builder;
    }
.end annotation


# static fields
.field public static final BOND_BONDED:I = 0xc

.field public static final BOND_BONDING:I = 0xb

.field public static final BOND_NONE:I = 0xa

.field public static final DEVICE_TYPE_BLUETOOTH_CLASSIC:I = 0x1

.field public static final DEVICE_TYPE_BLUETOOTH_DUAL:I = 0x3

.field public static final DEVICE_TYPE_BLUETOOTH_LE:I = 0x2

.field public static final DEVICE_TYPE_UNKNOWN:I


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

    .line 103
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/texa/carelib/communication/DeviceInfo;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/texa/carelib/core/utils/internal/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mName:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mName:Ljava/lang/String;

    .line 111
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    iput v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mBondState:I

    .line 112
    invoke-static {p1}, Lcom/texa/carelib/communication/internal/BluetoothDeviceCompat;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    iput p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mAddress:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mName:Ljava/lang/String;

    const/16 p1, 0xa

    .line 91
    iput p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mBondState:I

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mRSSI:Ljava/lang/Integer;

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mType:I

    .line 94
    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mLastConnectionDateTime:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$000(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/texa/carelib/communication/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/texa/carelib/communication/DeviceInfo;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mBondState:I

    return p0
.end method

.method static synthetic access$202(Lcom/texa/carelib/communication/DeviceInfo;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mBondState:I

    return p1
.end method

.method static synthetic access$300(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/lang/Integer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mRSSI:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/texa/carelib/communication/DeviceInfo;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mRSSI:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/texa/carelib/communication/DeviceInfo;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mType:I

    return p0
.end method

.method static synthetic access$402(Lcom/texa/carelib/communication/DeviceInfo;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mType:I

    return p1
.end method

.method static synthetic access$500(Lcom/texa/carelib/communication/DeviceInfo;)Ljava/util/Date;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mLastConnectionDateTime:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic access$502(Lcom/texa/carelib/communication/DeviceInfo;Ljava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mLastConnectionDateTime:Ljava/util/Date;

    return-object p1
.end method


# virtual methods
.method public builder()Lcom/texa/carelib/communication/DeviceInfo$Builder;
    .locals 1

    .line 132
    new-instance v0, Lcom/texa/carelib/communication/DeviceInfo$Builder;

    invoke-direct {v0, p0}, Lcom/texa/carelib/communication/DeviceInfo$Builder;-><init>(Lcom/texa/carelib/communication/DeviceInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 214
    :cond_0
    instance-of v0, p1, Lcom/texa/carelib/communication/DeviceInfo;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 218
    :cond_1
    check-cast p1, Lcom/texa/carelib/communication/DeviceInfo;

    .line 219
    iget-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/texa/carelib/communication/DeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBondState()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mBondState:I

    return v0
.end method

.method public getLastConnectionDateTime()Ljava/util/Date;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mLastConnectionDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRSSI()Ljava/lang/Integer;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mRSSI:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/texa/carelib/communication/DeviceInfo;->mAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInfo{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAddress=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/communication/DeviceInfo;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mBondState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mBondState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRSSI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mRSSI:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastConnectionDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/communication/DeviceInfo;->mLastConnectionDateTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
