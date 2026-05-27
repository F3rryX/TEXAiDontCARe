.class public Lcom/texa/careapp/networking/response/UserResponse;
.super Ljava/lang/Object;
.source "UserResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/careapp/networking/response/UserResponse$UserData;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UserResponse"


# instance fields
.field public userData:Lcom/texa/careapp/networking/response/UserResponse$UserData;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
