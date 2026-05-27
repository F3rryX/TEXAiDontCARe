.class public abstract Lat/favre/lib/armadillo/SimpleRecoveryPolicy;
.super Ljava/lang/Object;
.source "SimpleRecoveryPolicy.java"

# interfaces
.implements Lat/favre/lib/armadillo/RecoveryPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/armadillo/SimpleRecoveryPolicy$Default;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBrokenContent(Lat/favre/lib/armadillo/EncryptionProtocolException;Ljava/lang/String;Ljava/lang/String;ZLat/favre/lib/armadillo/ArmadilloSharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/SecureSharedPreferenceCryptoException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lat/favre/lib/armadillo/SimpleRecoveryPolicy;->shouldRemoveBrokenContent()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 33
    invoke-interface {p5}, Lat/favre/lib/armadillo/ArmadilloSharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lat/favre/lib/armadillo/SimpleRecoveryPolicy;->shouldThrowRuntimeException()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 36
    :cond_1
    new-instance p3, Lat/favre/lib/armadillo/SecureSharedPreferenceCryptoException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "could not decrypt "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lat/favre/lib/armadillo/SecureSharedPreferenceCryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method abstract shouldRemoveBrokenContent()Z
.end method

.method abstract shouldThrowRuntimeException()Z
.end method
