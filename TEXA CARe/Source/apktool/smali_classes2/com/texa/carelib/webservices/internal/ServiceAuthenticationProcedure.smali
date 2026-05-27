.class public interface abstract Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedure;
.super Ljava/lang/Object;
.source "ServiceAuthenticationProcedure.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# static fields
.field public static final PROPERTY_STATUS:Ljava/lang/String; = "com.texa.carelib.webservices.ServiceAuthenticationProcedure#PROPERTY_STATUS"


# virtual methods
.method public abstract authenticate(Lcom/texa/carelib/webservices/TexaServiceDelegate;Lcom/texa/carelib/core/Callback;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/texa/carelib/webservices/TexaServiceDelegate;",
            "Lcom/texa/carelib/core/Callback<",
            "Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureCompletedEvent;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getStatus()Lcom/texa/carelib/webservices/internal/ServiceAuthenticationProcedureStatus;
.end method
