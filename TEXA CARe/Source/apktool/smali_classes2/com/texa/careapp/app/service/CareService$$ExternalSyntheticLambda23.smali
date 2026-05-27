.class public final synthetic Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/service/CareService;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/service/CareService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda23;->f$0:Lcom/texa/careapp/app/service/CareService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda23;->f$0:Lcom/texa/careapp/app/service/CareService;

    invoke-virtual {v0}, Lcom/texa/careapp/app/service/CareService;->connectToDongle()V

    return-void
.end method
