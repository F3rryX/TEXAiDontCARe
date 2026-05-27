.class public final synthetic Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/care/eco_driving/RxObservableObject$Supplier;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/care/accessory/Accessory;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/care/accessory/Accessory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda10;->f$0:Lcom/texa/carelib/care/accessory/Accessory;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/texa/care/eco_driving/RxAccessory$$ExternalSyntheticLambda10;->f$0:Lcom/texa/carelib/care/accessory/Accessory;

    invoke-interface {v0}, Lcom/texa/carelib/care/accessory/Accessory;->getLastUnplugEventDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method
