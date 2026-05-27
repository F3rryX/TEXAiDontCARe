.class Lcom/texa/careapp/app/sos/MechanicActivity$1;
.super Lcom/texa/careapp/utils/permission/Func;
.source "MechanicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/sos/MechanicActivity;->requestPermission(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/sos/MechanicActivity;

.field final synthetic val$permissionType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/MechanicActivity;Ljava/lang/String;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity$1;->this$0:Lcom/texa/careapp/app/sos/MechanicActivity;

    iput-object p2, p0, Lcom/texa/careapp/app/sos/MechanicActivity$1;->val$permissionType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/texa/careapp/utils/permission/Func;-><init>()V

    return-void
.end method


# virtual methods
.method protected call()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 521
    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity$1;->val$permissionType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Permission %s not provided"

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
