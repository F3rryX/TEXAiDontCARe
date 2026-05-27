.class public final synthetic Lcom/texa/carelib/core/ObservableObjectBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/core/ObservableObjectBase;

.field public final synthetic f$1:Ljava/beans/PropertyChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/core/ObservableObjectBase;Ljava/beans/PropertyChangeEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/core/ObservableObjectBase$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/core/ObservableObjectBase;

    iput-object p2, p0, Lcom/texa/carelib/core/ObservableObjectBase$$ExternalSyntheticLambda0;->f$1:Ljava/beans/PropertyChangeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/texa/carelib/core/ObservableObjectBase$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/core/ObservableObjectBase;

    iget-object v1, p0, Lcom/texa/carelib/core/ObservableObjectBase$$ExternalSyntheticLambda0;->f$1:Ljava/beans/PropertyChangeEvent;

    invoke-virtual {v0, v1}, Lcom/texa/carelib/core/ObservableObjectBase;->lambda$firePropertyChange$0$com-texa-carelib-core-ObservableObjectBase(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method
