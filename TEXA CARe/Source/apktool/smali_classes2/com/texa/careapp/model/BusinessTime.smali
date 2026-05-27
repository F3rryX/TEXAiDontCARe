.class public Lcom/texa/careapp/model/BusinessTime;
.super Lcom/activeandroid/Model;
.source "BusinessTime.java"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "MechanicBusinessTime"
.end annotation


# static fields
.field public static final COLUMN_ID_BUSINESS_TIME:Ljava/lang/String; = "uuid"

.field public static final COLUMN_ID_MECHANIC:Ljava/lang/String; = "Mechanic"

.field public static final TABLE_MECHANIC_BUSINESS_TIME:Ljava/lang/String; = "MechanicBusinessTime"


# instance fields
.field public am_pm:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public close_time:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private mechanicModel:Lcom/texa/careapp/model/MechanicModel;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "Mechanic"
        onDelete = .enum Lcom/activeandroid/annotation/Column$ForeignKeyAction;->CASCADE:Lcom/activeandroid/annotation/Column$ForeignKeyAction;
        uniqueGroups = {
            "key"
        }
    .end annotation
.end field

.field public open_time:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uuid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "uuid"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field

.field public week_day:Ljava/lang/Integer;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 25
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/model/BusinessTime;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAm_pm()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/careapp/model/BusinessTime;->am_pm:Ljava/lang/Integer;

    return-object v0
.end method

.method public getClose_time()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/texa/careapp/model/BusinessTime;->close_time:Ljava/lang/String;

    return-object v0
.end method

.method public getMechanicModel()Lcom/texa/careapp/model/MechanicModel;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/texa/careapp/model/BusinessTime;->mechanicModel:Lcom/texa/careapp/model/MechanicModel;

    return-object v0
.end method

.method public getOpen_time()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/model/BusinessTime;->open_time:Ljava/lang/String;

    return-object v0
.end method

.method public getWeek_day()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/texa/careapp/model/BusinessTime;->week_day:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAm_pm(Ljava/lang/Integer;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/texa/careapp/model/BusinessTime;->am_pm:Ljava/lang/Integer;

    return-void
.end method

.method public setClose_time(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/texa/careapp/model/BusinessTime;->close_time:Ljava/lang/String;

    return-void
.end method

.method public setMechanicModel(Lcom/texa/careapp/model/MechanicModel;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/texa/careapp/model/BusinessTime;->mechanicModel:Lcom/texa/careapp/model/MechanicModel;

    return-void
.end method

.method public setOpen_time(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/model/BusinessTime;->open_time:Ljava/lang/String;

    return-void
.end method

.method public setWeek_day(Ljava/lang/Integer;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/texa/careapp/model/BusinessTime;->week_day:Ljava/lang/Integer;

    return-void
.end method
