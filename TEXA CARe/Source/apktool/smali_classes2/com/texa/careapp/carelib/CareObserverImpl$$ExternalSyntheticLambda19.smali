.class public final synthetic Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda19;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda19;-><init>()V

    sput-object v0, Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda19;->INSTANCE:Lcom/texa/careapp/carelib/CareObserverImpl$$ExternalSyntheticLambda19;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/beans/PropertyChangeEvent;

    invoke-static {p1}, Lcom/texa/careapp/carelib/CareObserverImpl;->lambda$createTripStopObservable$5(Ljava/beans/PropertyChangeEvent;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
