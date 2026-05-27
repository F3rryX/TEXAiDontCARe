.class public Lcom/texa/careapp/model/ServerLogModel;
.super Lcom/activeandroid/Model;
.source "ServerLogModel.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "LogDataForServer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/model/ServerLogModel$LogNote;,
        Lcom/texa/careapp/model/ServerLogModel$LogEvent;,
        Lcom/texa/careapp/model/ServerLogModel$ResultForLog;,
        Lcom/texa/careapp/model/ServerLogModel$Snapshot;
    }
.end annotation


# static fields
.field public static final COLUMN_SYNC_NEEDED:Ljava/lang/String; = "sync_needed"

.field private static final LOG_V:I = 0x1

.field public static final TABLE_LOG_DATA:Ljava/lang/String; = "LogDataForServer"


# instance fields
.field private appV:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private deviceM:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private eventT:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private fwV:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hwid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private logV:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private note:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private os:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rsl:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private snapshot:Lcom/texa/careapp/model/ServerLogModel$Snapshot;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private syncNeeded:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "sync_needed"
    .end annotation
.end field

.field private tst:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/texa/careapp/model/ServerLogModel;->logV:I

    .line 99
    iput-boolean v0, p0, Lcom/texa/careapp/model/ServerLogModel;->syncNeeded:Z

    return-void
.end method

.method public constructor <init>(Lcom/texa/careapp/model/ServerLogModel$LogEvent;Lcom/texa/careapp/model/ServerLogModel$ResultForLog;Ljava/lang/String;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput v0, p0, Lcom/texa/careapp/model/ServerLogModel;->logV:I

    .line 99
    iput-boolean v0, p0, Lcom/texa/careapp/model/ServerLogModel;->syncNeeded:Z

    .line 111
    invoke-virtual {p1}, Lcom/texa/careapp/model/ServerLogModel$LogEvent;->getValue()I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/model/ServerLogModel;->eventT:I

    .line 112
    iput-object p3, p0, Lcom/texa/careapp/model/ServerLogModel;->note:Ljava/lang/String;

    .line 113
    invoke-virtual {p2}, Lcom/texa/careapp/model/ServerLogModel$ResultForLog;->getValue()I

    move-result p1

    iput p1, p0, Lcom/texa/careapp/model/ServerLogModel;->rsl:I

    return-void
.end method


# virtual methods
.method public getAppV()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/texa/careapp/model/ServerLogModel;->appV:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/texa/careapp/model/ServerLogModel;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceM()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/texa/careapp/model/ServerLogModel;->deviceM:Ljava/lang/String;

    return-object v0
.end method

.method public getEventT()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/texa/careapp/model/ServerLogModel;->eventT:I

    return v0
.end method

.method public getFwV()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/texa/careapp/model/ServerLogModel;->fwV:Ljava/lang/String;

    return-object v0
.end method

.method public getHwid()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/texa/careapp/model/ServerLogModel;->hwid:Ljava/lang/String;

    return-object v0
.end method

.method public getLogV()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/texa/careapp/model/ServerLogModel;->logV:I

    return v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/texa/careapp/model/ServerLogModel;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/texa/careapp/model/ServerLogModel;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getRsl()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/texa/careapp/model/ServerLogModel;->rsl:I

    return v0
.end method

.method public getSnapshot()Lcom/texa/careapp/model/ServerLogModel$Snapshot;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/texa/careapp/model/ServerLogModel;->snapshot:Lcom/texa/careapp/model/ServerLogModel$Snapshot;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/texa/careapp/model/ServerLogModel;->status:I

    return v0
.end method

.method public getTst()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/texa/careapp/model/ServerLogModel;->tst:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/texa/careapp/model/ServerLogModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isSyncNeeded()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/texa/careapp/model/ServerLogModel;->syncNeeded:Z

    return v0
.end method

.method public setAppV(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/texa/careapp/model/ServerLogModel;->appV:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/texa/careapp/model/ServerLogModel;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceM(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/texa/careapp/model/ServerLogModel;->deviceM:Ljava/lang/String;

    return-void
.end method

.method public setEventT(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/texa/careapp/model/ServerLogModel;->eventT:I

    return-void
.end method

.method public setFwV(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/texa/careapp/model/ServerLogModel;->fwV:Ljava/lang/String;

    return-void
.end method

.method public setHwid(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/texa/careapp/model/ServerLogModel;->hwid:Ljava/lang/String;

    return-void
.end method

.method public setLogV(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/texa/careapp/model/ServerLogModel;->logV:I

    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/model/ServerLogModel;->note:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/texa/careapp/model/ServerLogModel;->os:Ljava/lang/String;

    return-void
.end method

.method public setRsl(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/texa/careapp/model/ServerLogModel;->rsl:I

    return-void
.end method

.method public setSnapshot(Lcom/texa/careapp/model/ServerLogModel$Snapshot;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/texa/careapp/model/ServerLogModel;->snapshot:Lcom/texa/careapp/model/ServerLogModel$Snapshot;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/texa/careapp/model/ServerLogModel;->status:I

    return-void
.end method

.method public setSyncNeeded(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/texa/careapp/model/ServerLogModel;->syncNeeded:Z

    return-void
.end method

.method public setTst(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/texa/careapp/model/ServerLogModel;->tst:J

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/texa/careapp/model/ServerLogModel;->userId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 117
    invoke-static {}, Lcom/texa/careapp/utils/Utils;->buildGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
