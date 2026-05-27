.class Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;
.super Ljava/lang/Object;
.source "OnBoardingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/OnBoardingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WritingPermissionEvent"
.end annotation


# instance fields
.field private status:Z

.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/onboarding/OnBoardingActivity;Z)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;->this$0:Lcom/texa/careapp/app/onboarding/OnBoardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput-boolean p2, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;->status:Z

    return-void
.end method


# virtual methods
.method public isStatus()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/texa/careapp/app/onboarding/OnBoardingActivity$WritingPermissionEvent;->status:Z

    return v0
.end method
