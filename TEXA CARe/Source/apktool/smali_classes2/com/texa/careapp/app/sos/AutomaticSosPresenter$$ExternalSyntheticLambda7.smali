.class public final synthetic Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/AutomaticSosPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda7;->f$0:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/sos/AutomaticSosPresenter$$ExternalSyntheticLambda7;->f$0:Lcom/texa/careapp/app/sos/AutomaticSosPresenter;

    check-cast p1, Landroid/location/Location;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/sos/AutomaticSosPresenter;->lambda$updateLocation$4$com-texa-careapp-app-sos-AutomaticSosPresenter(Landroid/location/Location;)V

    return-void
.end method
