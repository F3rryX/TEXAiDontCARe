.class public Lcom/texa/carelib/profile/ProfileFactory;
.super Ljava/lang/Object;
.source "ProfileFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProfile(Lcom/texa/carelib/profile/ProfileType;Lcom/texa/carelib/profile/ProfileDelegate;Lcom/texa/carelib/communication/Communication;)Lcom/texa/carelib/profile/Profile;
    .locals 1

    .line 28
    sget-object v0, Lcom/texa/carelib/profile/ProfileFactory$1;->$SwitchMap$com$texa$carelib$profile$ProfileType:[I

    invoke-virtual {p0}, Lcom/texa/carelib/profile/ProfileType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 34
    new-instance p0, Lcom/texa/carelib/profile/internal/MockProfile;

    invoke-direct {p0, p2}, Lcom/texa/carelib/profile/internal/MockProfile;-><init>(Lcom/texa/carelib/communication/Communication;)V

    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid profile type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_1
    new-instance p0, Lcom/texa/carelib/profile/internal/SerialProfile;

    invoke-direct {p0, p2}, Lcom/texa/carelib/profile/internal/SerialProfile;-><init>(Lcom/texa/carelib/communication/Communication;)V

    .line 42
    :goto_0
    invoke-interface {p0, p1}, Lcom/texa/carelib/profile/Profile;->setProfileDelegate(Lcom/texa/carelib/profile/ProfileDelegate;)V

    return-object p0
.end method
