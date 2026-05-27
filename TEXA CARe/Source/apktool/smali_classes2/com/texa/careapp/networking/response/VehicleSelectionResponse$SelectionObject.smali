.class public Lcom/texa/careapp/networking/response/VehicleSelectionResponse$SelectionObject;
.super Ljava/lang/Object;
.source "VehicleSelectionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/networking/response/VehicleSelectionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionObject"
.end annotation


# instance fields
.field private selections:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/texa/careapp/networking/response/VehicleSelectionResponse;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/networking/response/VehicleSelectionResponse;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$SelectionObject;->this$0:Lcom/texa/careapp/networking/response/VehicleSelectionResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/texa/careapp/networking/response/VehicleSelectionResponse$Selection;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/texa/careapp/networking/response/VehicleSelectionResponse$SelectionObject;->selections:Ljava/util/List;

    return-object v0
.end method
