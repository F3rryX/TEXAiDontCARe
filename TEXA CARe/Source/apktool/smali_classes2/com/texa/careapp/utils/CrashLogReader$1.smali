.class Lcom/texa/careapp/utils/CrashLogReader$1;
.super Ljava/lang/Object;
.source "CrashLogReader.java"

# interfaces
.implements Lcom/texa/carelib/care/impacts/ImpactDataDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/utils/CrashLogReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/utils/CrashLogReader;


# direct methods
.method constructor <init>(Lcom/texa/careapp/utils/CrashLogReader;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/texa/careapp/utils/CrashLogReader$1;->this$0:Lcom/texa/careapp/utils/CrashLogReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImpactDataDownloadCompleted(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/texa/careapp/utils/CrashLogReader$1;->this$0:Lcom/texa/careapp/utils/CrashLogReader;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/CrashLogReader;->access$000(Lcom/texa/careapp/utils/CrashLogReader;Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadCompletedEvent;)V

    return-void
.end method

.method public onImpactDataDownloadProgressChanged(Lcom/texa/carelib/care/impacts/events/ImpactDataDownloadProgressChangedEvent;)V
    .locals 0

    return-void
.end method
