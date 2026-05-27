.class public final synthetic Lcom/texa/careapp/fcm/FcmManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/fcm/FcmManager;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/fcm/FcmManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/fcm/FcmManager$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/fcm/FcmManager;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/fcm/FcmManager$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/fcm/FcmManager;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/fcm/FcmManager;->lambda$getNotificationToken$0$com-texa-careapp-fcm-FcmManager(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
