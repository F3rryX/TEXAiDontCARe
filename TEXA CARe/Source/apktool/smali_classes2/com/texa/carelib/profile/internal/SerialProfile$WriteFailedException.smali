.class Lcom/texa/carelib/profile/internal/SerialProfile$WriteFailedException;
.super Lcom/texa/carelib/core/CareLibException;
.source "SerialProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/carelib/profile/internal/SerialProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteFailedException"
.end annotation


# instance fields
.field private final mData:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 598
    invoke-direct {p0}, Lcom/texa/carelib/core/CareLibException;-><init>()V

    .line 599
    iput-object p1, p0, Lcom/texa/carelib/profile/internal/SerialProfile$WriteFailedException;->mData:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/SerialProfile$WriteFailedException;->mData:[B

    return-object v0
.end method
