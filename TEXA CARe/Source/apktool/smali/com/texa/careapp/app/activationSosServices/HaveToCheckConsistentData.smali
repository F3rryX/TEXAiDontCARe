.class public Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;
.super Ljava/lang/Object;
.source "HaveToCheckConsistentData.java"


# instance fields
.field haveToCheck:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;->haveToCheck:Z

    return-void
.end method


# virtual methods
.method public isHaveToCheck()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;->haveToCheck:Z

    return v0
.end method
