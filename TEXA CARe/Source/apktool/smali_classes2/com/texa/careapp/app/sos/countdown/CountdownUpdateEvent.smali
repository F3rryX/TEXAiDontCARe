.class public Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;
.super Ljava/lang/Object;
.source "CountdownUpdateEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CountdownUpdateEvent"


# instance fields
.field private count:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;->count:I

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .line 17
    iput p1, p0, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;->count:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountdownUpdateEvent{count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/texa/careapp/app/sos/countdown/CountdownUpdateEvent;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
