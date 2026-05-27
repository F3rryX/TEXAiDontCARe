.class public interface abstract Lcom/texa/carelib/profile/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;
.implements Lcom/texa/carelib/care/profile/CareProxy;


# static fields
.field public static final EXTRA_TRANSFER_BLOCK_COUNT:Ljava/lang/String; = "com.texa.carelib.profile.Profile#EXTRA_TRANSFER_BLOCK_COUNT"

.field public static final PROPERTY_READY:Ljava/lang/String; = "com.texa.carelib.profile.Profile#PROPERTY_READY"


# virtual methods
.method public abstract addProfileListener(Lcom/texa/carelib/profile/ProfileListener;)Lcom/texa/carelib/profile/ProfileListener;
.end method

.method public abstract addProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V
.end method

.method public abstract forceAuthentication(Lcom/texa/carelib/core/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/profile/events/AuthenticationCompletedEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/texa/carelib/core/CareLibException;
        }
    .end annotation
.end method

.method public abstract getArguments()Landroid/os/Bundle;
.end method

.method public abstract getCurrentDevice()Lcom/texa/carelib/communication/DeviceInfo;
.end method

.method public abstract getProfileDelegate()Lcom/texa/carelib/profile/ProfileDelegate;
.end method

.method public abstract getServiceProxy()Lcom/texa/carelib/webservices/ServiceProxy;
.end method

.method public abstract isReady()Z
.end method

.method public abstract removeProfileListener(Lcom/texa/carelib/profile/ProfileListener;)V
.end method

.method public abstract removeProfileModule(Lcom/texa/carelib/profile/ProfileSubModule;)V
.end method

.method public abstract setProfileDelegate(Lcom/texa/carelib/profile/ProfileDelegate;)V
.end method

.method public abstract setServiceProxy(Lcom/texa/carelib/webservices/ServiceProxy;)V
.end method

.method public abstract shutdown()V
.end method
