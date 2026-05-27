.class public final synthetic Lcom/texa/careapp/utils/CrashLogReader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/CrashLogReader;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/CrashLogReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/CrashLogReader$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/utils/CrashLogReader;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/CrashLogReader$$ExternalSyntheticLambda0;->f$0:Lcom/texa/careapp/utils/CrashLogReader;

    check-cast p1, Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/utils/CrashLogReader;->lambda$saveCrashLog$0$com-texa-careapp-utils-CrashLogReader(Lcom/texa/carelib/care/impacts/events/ImpactDataErasedEvent;)V

    return-void
.end method
