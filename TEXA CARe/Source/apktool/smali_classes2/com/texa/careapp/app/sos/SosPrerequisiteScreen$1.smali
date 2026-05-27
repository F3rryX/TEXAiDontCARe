.class Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$1;
.super Landroid/content/BroadcastReceiver;
.source "SosPrerequisiteScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$1;->this$0:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$1;->this$0:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->access$000(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)Z

    .line 124
    iget-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$1;->this$0:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

    invoke-static {p1}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->access$100(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;)Z

    return-void
.end method
