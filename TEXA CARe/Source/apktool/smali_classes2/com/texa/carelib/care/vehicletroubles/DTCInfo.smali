.class public Lcom/texa/carelib/care/vehicletroubles/DTCInfo;
.super Ljava/lang/Object;
.source "DTCInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;
    }
.end annotation


# instance fields
.field private mDetail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "detail"
    .end annotation
.end field

.field private mHelp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "help"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/texa/carelib/care/vehicletroubles/DTCInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->mDetail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/texa/carelib/care/vehicletroubles/DTCInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->mHelp:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public builder()Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;
    .locals 1

    .line 104
    new-instance v0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;

    invoke-direct {v0, p0}, Lcom/texa/carelib/care/vehicletroubles/DTCInfo$Builder;-><init>(Lcom/texa/carelib/care/vehicletroubles/DTCInfo;)V

    return-object v0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->mDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getHelp()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->mHelp:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DTCInfo{mHelp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->mHelp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDetail=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/texa/carelib/care/vehicletroubles/DTCInfo;->mDetail:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
