.class Lcom/texa/careapp/app/sos/MechanicActivity$2;
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

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/MechanicActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/texa/careapp/app/sos/MechanicActivity$2;->this$0:Lcom/texa/careapp/app/sos/MechanicActivity;

    iput-object p2, p0, Lcom/texa/careapp/app/sos/MechanicActivity$2;->val$permissionType:Ljava/lang/String;

    iput-object p3, p0, Lcom/texa/careapp/app/sos/MechanicActivity$2;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Lcom/texa/careapp/utils/permission/Func;-><init>()V

    return-void
.end method


# virtual methods
.method protected call()V
    .locals 2

    .line 512
    sget-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_ACCESS_LOCATION:[Ljava/lang/String;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity$2;->val$permissionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity$2;->this$0:Lcom/texa/careapp/app/sos/MechanicActivity;

    invoke-static {v0}, Lcom/texa/careapp/app/sos/MechanicActivity;->access$000(Lcom/texa/careapp/app/sos/MechanicActivity;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    goto :goto_0

    .line 514
    :cond_0
    sget-object v0, Lcom/texa/careapp/utils/permission/CorePermission;->USE_PHONE:[Ljava/lang/String;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity$2;->val$permissionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/texa/careapp/app/sos/MechanicActivity$2;->this$0:Lcom/texa/careapp/app/sos/MechanicActivity;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/MechanicActivity$2;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/texa/careapp/app/sos/MechanicActivity;->access$100(Lcom/texa/careapp/app/sos/MechanicActivity;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
