.class public abstract Lcom/texa/carelib/core/ObservableObjectBase;
.super Ljava/lang/Object;
.source "ObservableObjectBase.java"

# interfaces
.implements Lcom/texa/carelib/core/ObservableObject;


# instance fields
.field private final mPropertyChangeSupport:Ljava/beans/PropertyChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/texa/carelib/core/ObservableObjectBase;->mPropertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/texa/carelib/core/ObservableObjectBase;->mPropertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-object p1
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/texa/carelib/core/ObservableObjectBase;->mPropertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-object p2
.end method

.method public firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 4

    .line 60
    invoke-static {}, Lcom/texa/carelib/core/CarelibSchedulers;->mainThread()Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;

    move-result-object v0

    new-instance v1, Lcom/texa/carelib/core/ObservableObjectBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/texa/carelib/core/ObservableObjectBase$$ExternalSyntheticLambda0;-><init>(Lcom/texa/carelib/core/ObservableObjectBase;Ljava/beans/PropertyChangeEvent;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/texa/carelib/core/CarelibSchedulers$Scheduler;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/texa/carelib/core/ObservableObjectBase;->mPropertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;

    move-result-object v0

    return-object v0
.end method

.method getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/texa/carelib/core/ObservableObjectBase;->mPropertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$firePropertyChange$0$com-texa-carelib-core-ObservableObjectBase(Ljava/beans/PropertyChangeEvent;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/texa/carelib/core/ObservableObjectBase;->mPropertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    return-void
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/texa/carelib/core/ObservableObjectBase;->mPropertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    return-void
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/texa/carelib/core/ObservableObjectBase;->mPropertyChangeSupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1, p2}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    return-void
.end method
