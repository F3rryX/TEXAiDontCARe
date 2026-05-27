.class public Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;
.super Ljava/lang/Object;
.source "FirmwareUpdateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/update/FirmwareUpdateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FirmwareUpdateStatus"
.end annotation


# instance fields
.field private status:I

.field final synthetic this$0:Lcom/texa/careapp/app/update/FirmwareUpdateController;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/update/FirmwareUpdateController;I)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;->this$0:Lcom/texa/careapp/app/update/FirmwareUpdateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput p2, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;->status:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/texa/careapp/app/update/FirmwareUpdateController$FirmwareUpdateStatus;->status:I

    return v0
.end method
