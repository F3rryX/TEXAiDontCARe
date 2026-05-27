.class public final synthetic Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/texa/carelib/core/Callback;


# instance fields
.field public final synthetic f$0:Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;

    return-void
.end method


# virtual methods
.method public final onCompleted(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator$$ExternalSyntheticLambda0;->f$0:Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;

    check-cast p1, Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;

    invoke-static {v0, p1}, Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;->$r8$lambda$UmEXCmVblU-JGwM22OyP-zOARfQ(Lcom/texa/carelib/tools/integrator/FactoryResetIntegrator;Lcom/texa/carelib/care/accessory/events/FactoryResetCompletedEvent;)V

    return-void
.end method
