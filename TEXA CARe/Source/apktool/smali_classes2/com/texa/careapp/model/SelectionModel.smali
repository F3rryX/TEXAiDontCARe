.class public Lcom/texa/careapp/model/SelectionModel;
.super Lcom/activeandroid/Model;
.source "SelectionModel.java"

# interfaces
.implements Lcom/texa/careapp/app/onboarding/IVehicleModel;


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "selection"
.end annotation


# static fields
.field private static final BRAND:Ljava/lang/String; = "brand"

.field private static final BRAND_ID:Ljava/lang/String; = "brandId"

.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final MODEL:Ljava/lang/String; = "model"

.field private static final SELECTION_ID:Ljava/lang/String; = "selectionId"

.field public static final TABLE_NAME:Ljava/lang/String; = "selection"


# instance fields
.field private brand:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "brand"
    .end annotation
.end field

.field private brandId:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "brandId"
    .end annotation
.end field

.field private description:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "description"
    .end annotation
.end field

.field private model:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "model"
    .end annotation
.end field

.field private selectionId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "selectionId"
        onUniqueConflict = .enum Lcom/activeandroid/annotation/Column$ConflictAction;->REPLACE:Lcom/activeandroid/annotation/Column$ConflictAction;
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static getSelections(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/SelectionModel;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 57
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v0}, Lcom/activeandroid/query/Select;->distinct()Lcom/activeandroid/query/Select;

    move-result-object v0

    const-class v1, Lcom/texa/careapp/model/SelectionModel;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "description LIKE ?"

    .line 58
    invoke-virtual {v0, p0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string v0, "description"

    .line 59
    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->groupBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    const-string v0, "description ASC"

    .line 60
    invoke-virtual {p0, v0}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/careapp/model/SelectionModel;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getBrandId()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/texa/careapp/model/SelectionModel;->brandId:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/careapp/model/SelectionModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/texa/careapp/model/SelectionModel;->getBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderId()J
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/texa/careapp/model/SelectionModel;->getBrandId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/texa/careapp/model/SelectionModel;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getVehicleInfo()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/texa/careapp/model/SelectionModel;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVehiclePlate()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/texa/careapp/model/SelectionModel;->brand:Ljava/lang/String;

    return-void
.end method

.method public setBrandId(J)V
    .locals 0

    .line 47
    iput-wide p1, p0, Lcom/texa/careapp/model/SelectionModel;->brandId:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/texa/careapp/model/SelectionModel;->description:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/texa/careapp/model/SelectionModel;->model:Ljava/lang/String;

    return-void
.end method

.method public setSelectionId(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/texa/careapp/model/SelectionModel;->selectionId:Ljava/lang/String;

    return-void
.end method
