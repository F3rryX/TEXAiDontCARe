.class public Lcom/texa/careapp/app/events/AcceptTermOfServiceAndPrivacyPolicyEvent;
.super Ljava/lang/Object;
.source "AcceptTermOfServiceAndPrivacyPolicyEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AcceptTermOfServiceAndPrivacyPolicyEvent"


# instance fields
.field private action:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/texa/careapp/app/events/AcceptTermOfServiceAndPrivacyPolicyEvent;->action:I

    .line 13
    iput p1, p0, Lcom/texa/careapp/app/events/AcceptTermOfServiceAndPrivacyPolicyEvent;->action:I

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/texa/careapp/app/events/AcceptTermOfServiceAndPrivacyPolicyEvent;->action:I

    return v0
.end method
