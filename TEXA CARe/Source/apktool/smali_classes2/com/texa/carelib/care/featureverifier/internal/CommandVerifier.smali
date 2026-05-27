.class public interface abstract Lcom/texa/carelib/care/featureverifier/internal/CommandVerifier;
.super Ljava/lang/Object;
.source "CommandVerifier.java"


# static fields
.field public static final PROPERTY_SUPPORTED_COMMANDS:Ljava/lang/String; = "com.texa.carelib.care.featureverifier.internal.CommandVerifier#PROPERTY_SUPPORTED_COMMANDS"


# virtual methods
.method public abstract getSupportedCommands()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCommandSupported(I)Z
.end method

.method public abstract isReady()Z
.end method
