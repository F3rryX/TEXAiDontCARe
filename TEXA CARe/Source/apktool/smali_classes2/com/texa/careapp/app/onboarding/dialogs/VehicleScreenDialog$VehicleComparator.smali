.class Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleComparator;
.super Ljava/lang/Object;
.source "VehicleScreenDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VehicleComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/texa/careapp/model/VehicleModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;


# direct methods
.method private constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleComparator;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleComparator;-><init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/VehicleModel;)I
    .locals 0

    .line 130
    invoke-virtual {p1}, Lcom/texa/careapp/model/VehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/texa/careapp/model/VehicleModel;->getVehicleInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 128
    check-cast p1, Lcom/texa/careapp/model/VehicleModel;

    check-cast p2, Lcom/texa/careapp/model/VehicleModel;

    invoke-virtual {p0, p1, p2}, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleComparator;->compare(Lcom/texa/careapp/model/VehicleModel;Lcom/texa/careapp/model/VehicleModel;)I

    move-result p1

    return p1
.end method
