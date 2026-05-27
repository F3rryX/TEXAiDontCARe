.class public Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;
.super Ljava/lang/Object;
.source "VehicleScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VehicleSelectedEvent"
.end annotation


# instance fields
.field private plate:Ljava/lang/String;

.field private selectionModel:Lcom/texa/careapp/model/SelectionModel;

.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;

.field private userVehicle:Lcom/texa/careapp/model/VehicleModel;

.field private vehicle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;Ljava/lang/String;Ljava/lang/String;Lcom/texa/careapp/model/SelectionModel;Lcom/texa/careapp/model/VehicleModel;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->vehicle:Ljava/lang/String;

    .line 250
    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->plate:Ljava/lang/String;

    .line 251
    iput-object p4, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->selectionModel:Lcom/texa/careapp/model/SelectionModel;

    .line 252
    iput-object p5, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->userVehicle:Lcom/texa/careapp/model/VehicleModel;

    return-void
.end method


# virtual methods
.method public getPlate()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->plate:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionModel()Lcom/texa/careapp/model/SelectionModel;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->selectionModel:Lcom/texa/careapp/model/SelectionModel;

    return-object v0
.end method

.method public getUserVehicle()Lcom/texa/careapp/model/VehicleModel;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->userVehicle:Lcom/texa/careapp/model/VehicleModel;

    return-object v0
.end method

.method public getVehicle()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/VehicleScreenDialog$VehicleSelectedEvent;->vehicle:Ljava/lang/String;

    return-object v0
.end method
