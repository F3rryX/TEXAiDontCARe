.class public Lcom/texa/carelib/care/featureverifier/FeatureNotSupportedException;
.super Lcom/texa/carelib/core/CareLibException;
.source "FeatureNotSupportedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Feature not supported."

    .line 15
    invoke-direct {p0, v0}, Lcom/texa/carelib/core/CareLibException;-><init>(Ljava/lang/String;)V

    return-void
.end method
