.class Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$PickContactNumber;
.super Ljava/lang/Object;
.source "ActivationServiceSelectContactNumberDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PickContactNumber"
.end annotation


# instance fields
.field sosContact:Lcom/texa/careapp/model/ContactModel;

.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;Lcom/texa/careapp/model/ContactModel;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$PickContactNumber;->this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$PickContactNumber;->sosContact:Lcom/texa/careapp/model/ContactModel;

    return-void
.end method


# virtual methods
.method getSosContact()Lcom/texa/careapp/model/ContactModel;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceSelectContactNumberDialog$PickContactNumber;->sosContact:Lcom/texa/careapp/model/ContactModel;

    return-object v0
.end method
