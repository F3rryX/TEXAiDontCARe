.class Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;
.super Ljava/lang/Object;
.source "SerialProfileCommandSubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageNotificationEvent"
.end annotation


# instance fields
.field private final mCommandId:I

.field private mConsumed:Z


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput p1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;->mCommandId:I

    const/4 p1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;->mConsumed:Z

    return-void
.end method


# virtual methods
.method getCommandId()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;->mCommandId:I

    return v0
.end method

.method isConsumed()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;->mConsumed:Z

    return v0
.end method

.method setConsumed()V
    .locals 1

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/texa/carelib/profile/internal/SerialProfileCommandSubscriptionController$MessageNotificationEvent;->mConsumed:Z

    return-void
.end method
