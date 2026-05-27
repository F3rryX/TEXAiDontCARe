.class public Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$DeleteContact;
.super Ljava/lang/Object;
.source "ActivationServiceDeleteContactDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeleteContact"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;

.field uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$DeleteContact;->this$0:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$DeleteContact;->uuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceDeleteContactDialog$DeleteContact;->uuid:Ljava/lang/String;

    return-object v0
.end method
