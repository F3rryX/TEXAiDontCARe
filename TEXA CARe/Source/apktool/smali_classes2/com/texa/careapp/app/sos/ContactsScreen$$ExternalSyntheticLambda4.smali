.class public final synthetic Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/ContactsScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/ContactsScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda4;->f$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    check-cast p1, Lcom/texa/careapp/networking/response/CustomerResponse;

    invoke-virtual {v0, p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->lambda$getMechanicData$2$com-texa-careapp-app-sos-ContactsScreen(Lcom/texa/careapp/networking/response/CustomerResponse;)V

    return-void
.end method
