.class public Lcom/texa/carelib/communication/internal/TBUSEvent;
.super Ljava/util/EventObject;
.source "TBUSEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;,
        Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TBUSEvent"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mError:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

.field private mRequestMessage:Lcom/texa/carelib/communication/Message;

.field private mResponseMessage:Lcom/texa/carelib/communication/Message;

.field private final mType:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 58
    iput-object p2, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mType:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    .line 59
    sget-object p1, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;->NoError:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mError:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    .line 61
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mRequestMessage:Lcom/texa/carelib/communication/Message;

    return-void
.end method


# virtual methods
.method public getError()Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mError:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    return-object v0
.end method

.method public getRequestMessage()Lcom/texa/carelib/communication/Message;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mRequestMessage:Lcom/texa/carelib/communication/Message;

    return-object v0
.end method

.method public getResponseMessage()Lcom/texa/carelib/communication/Message;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    return-object v0
.end method

.method public getTBUSEventType()Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mType:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    return-object v0
.end method

.method public setError(Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mError:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    return-void
.end method

.method public setRequestMessage(Lcom/texa/carelib/communication/Message;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mRequestMessage:Lcom/texa/carelib/communication/Message;

    return-void
.end method

.method public setResponseMessage(Lcom/texa/carelib/communication/Message;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mType:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mType:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    sget-object v2, Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;->Error:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventType;

    if-ne v1, v2, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mError:Lcom/texa/carelib/communication/internal/TBUSEvent$TBUSEventError;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mRequestMessage:Lcom/texa/carelib/communication/Message;

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - mRequestMessage: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mRequestMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    if-eqz v1, :cond_2

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - mResponseMessage: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/texa/carelib/communication/internal/TBUSEvent;->mResponseMessage:Lcom/texa/carelib/communication/Message;

    invoke-virtual {v0}, Lcom/texa/carelib/communication/Message;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method
