.class public Lcom/texa/careapp/model/UserScheduleModel;
.super Lcom/activeandroid/Model;
.source "UserScheduleModel.java"

# interfaces
.implements Lcom/texa/careapp/model/IScheduleModel;


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "UserSchedule"
.end annotation


# static fields
.field public static final COLUMN_USER:Ljava/lang/String; = "User"

.field public static final TABLE_USER_SCHEDULE:Ljava/lang/String; = "UserSchedule"


# instance fields
.field private archived:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private deletable:Z

.field private expireDate:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private expireOdo:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private refreshable:Z

.field private startOdo:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private type:Lcom/texa/careapp/model/ScheduleType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private user:Lcom/texa/careapp/model/UserModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "User"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->deletable:Z

    .line 63
    iput-boolean v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->refreshable:Z

    return-void
.end method


# virtual methods
.method public archive()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->archived:Z

    return-void
.end method

.method public compareByDate(Ljava/util/Date;)I
    .locals 7

    .line 74
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    return v0

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/texa/careapp/model/UserScheduleModel;->expireDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    return v0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->expireDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    return v1
.end method

.method public daysToExpire()J
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->expireDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/texa/careapp/utils/Utils;->daysToExpire(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDesciption()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserScheduleModel;->getUser()Lcom/texa/careapp/model/UserModel;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 137
    :cond_0
    invoke-virtual {v0}, Lcom/texa/careapp/model/UserModel;->formatName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpireDate()Ljava/util/Date;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->expireDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExpireOdo()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->expireOdo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getExpiringStatus()I
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserScheduleModel;->getExpireOdo()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/model/UserScheduleModel;->getExpireDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/16 v0, 0x1e

    .line 128
    invoke-virtual {p0, v0}, Lcom/texa/careapp/model/UserScheduleModel;->getExpiringStatusByDays(I)I

    move-result v0

    return v0
.end method

.method public getExpiringStatusByDays(I)I
    .locals 1

    .line 110
    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/UserScheduleModel;->getLimitDate(I)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/UserScheduleModel;->compareByDate(Ljava/util/Date;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 111
    sget p1, Lcom/texa/careapp/Constants;->LIMIT_DAYS_FOR_FAR_SCHEDULE:I

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/UserScheduleModel;->getLimitDate(I)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/UserScheduleModel;->compareByDate(Ljava/util/Date;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 115
    :cond_1
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Lcom/texa/careapp/model/UserScheduleModel;->compareByDate(Ljava/util/Date;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getLimitDate(I)Ljava/util/Date;
    .locals 2

    .line 104
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 105
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 106
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getStartOdo()Ljava/lang/Integer;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->startOdo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Lcom/texa/careapp/model/ScheduleType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->type:Lcom/texa/careapp/model/ScheduleType;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/texa/careapp/model/UserModel;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->user:Lcom/texa/careapp/model/UserModel;

    return-object v0
.end method

.method public isArchived()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->archived:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->deletable:Z

    return v0
.end method

.method public isExpired()Z
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserScheduleModel;->getExpiringStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRefreshable()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/texa/careapp/model/UserScheduleModel;->refreshable:Z

    return v0
.end method

.method public setArchived(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/texa/careapp/model/UserScheduleModel;->archived:Z

    return-void
.end method

.method public setDeletable(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/texa/careapp/model/UserScheduleModel;->deletable:Z

    return-void
.end method

.method public setExpireDate(Ljava/util/Date;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/texa/careapp/model/UserScheduleModel;->expireDate:Ljava/util/Date;

    return-void
.end method

.method public setExpireOdo(Ljava/lang/Integer;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/texa/careapp/model/UserScheduleModel;->expireOdo:Ljava/lang/Integer;

    return-void
.end method

.method public setRefreshable(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/texa/careapp/model/UserScheduleModel;->refreshable:Z

    return-void
.end method

.method public setStartOdo(Ljava/lang/Integer;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/texa/careapp/model/UserScheduleModel;->startOdo:Ljava/lang/Integer;

    return-void
.end method

.method public setType(Lcom/texa/careapp/model/ScheduleType;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/texa/careapp/model/UserScheduleModel;->type:Lcom/texa/careapp/model/ScheduleType;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/model/UserScheduleModel;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/texa/careapp/model/UserModel;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/model/UserScheduleModel;->user:Lcom/texa/careapp/model/UserModel;

    return-void
.end method
