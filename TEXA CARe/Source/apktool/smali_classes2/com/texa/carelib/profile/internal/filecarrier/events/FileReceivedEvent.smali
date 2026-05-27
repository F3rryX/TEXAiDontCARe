.class public Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;
.super Lcom/texa/carelib/core/events/ErrorEventBase;
.source "FileReceivedEvent.java"


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/io/File;Lcom/texa/carelib/core/CareError;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p3}, Lcom/texa/carelib/core/events/ErrorEventBase;-><init>(Ljava/lang/Object;Lcom/texa/carelib/core/CareError;)V

    .line 31
    iput-object p2, p0, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->mFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/texa/carelib/profile/internal/filecarrier/events/FileReceivedEvent;->mFile:Ljava/io/File;

    return-object v0
.end method
