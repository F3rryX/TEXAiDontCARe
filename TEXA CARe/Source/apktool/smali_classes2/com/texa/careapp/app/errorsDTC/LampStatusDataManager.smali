.class public Lcom/texa/careapp/app/errorsDTC/LampStatusDataManager;
.super Ljava/lang/Object;
.source "LampStatusDataManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LampStatusDataManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteAll()V
    .locals 2

    .line 46
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public deleteLampStatus(Ljava/lang/Long;)V
    .locals 3

    .line 25
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "dataId = ? "

    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    return-void
.end method

.method public getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllLampsActive()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "status = ? "

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllLampsActive(Lcom/texa/careapp/model/VehicleModel;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/careapp/model/VehicleModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/app/errorsDTC/LampStatus;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance p1, Lcom/activeandroid/query/Select;

    invoke-direct {p1}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v0, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {p1, v0}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "status = ? "

    invoke-virtual {p1, v0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLampStatus(Ljava/lang/Long;)Lcom/texa/careapp/app/errorsDTC/LampStatus;
    .locals 3

    .line 19
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "dataId = ? "

    .line 20
    invoke-virtual {v0, p1, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object p1

    check-cast p1, Lcom/texa/careapp/app/errorsDTC/LampStatus;

    return-object p1
.end method
