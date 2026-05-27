.class public Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$PlateConfirmedEvent;
.super Ljava/lang/Object;
.source "PlateValidationScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlateConfirmedEvent"
.end annotation


# instance fields
.field public mVehicleDataModelResponseEntity:Lcom/texa/careapp/model/VehicleDataModelResponseEntity;

.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;Lcom/texa/careapp/model/VehicleDataModelResponseEntity;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$PlateConfirmedEvent;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/dialogs/PlateValidationScreenDialog$PlateConfirmedEvent;->mVehicleDataModelResponseEntity:Lcom/texa/careapp/model/VehicleDataModelResponseEntity;

    return-void
.end method
