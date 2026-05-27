.class public final synthetic Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/service/CareService;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/service/CareService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda8;->f$0:Lcom/texa/careapp/app/service/CareService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/texa/careapp/app/service/CareService$$ExternalSyntheticLambda8;->f$0:Lcom/texa/careapp/app/service/CareService;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/texa/careapp/app/service/CareService;->$r8$lambda$drF9NESNdj2rkvIo5DENfme9FnA(Lcom/texa/careapp/app/service/CareService;J)V

    return-void
.end method
