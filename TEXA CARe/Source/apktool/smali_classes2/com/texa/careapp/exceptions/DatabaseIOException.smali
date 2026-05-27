.class public Lcom/texa/careapp/exceptions/DatabaseIOException;
.super Ljava/lang/Exception;
.source "DatabaseIOException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Could not save to database."

    .line 12
    invoke-direct {p0, v0}, Lcom/texa/careapp/exceptions/DatabaseIOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
