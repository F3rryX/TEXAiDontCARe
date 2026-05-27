.class public Lcom/texa/careapp/utils/VehiclesUsersEntity;
.super Ljava/lang/Object;
.source "VehiclesUsersEntity.java"


# instance fields
.field private hwid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "hwid"
    .end annotation
.end field

.field private uId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vehicle_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/texa/careapp/utils/VehiclesUsersEntity;->hwid:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/texa/careapp/utils/VehiclesUsersEntity;->uId:Ljava/lang/String;

    return-void
.end method
