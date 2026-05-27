.class public final synthetic Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/utils/MechanicDataManager;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/utils/MechanicDataManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda7;->f$0:Lcom/texa/careapp/utils/MechanicDataManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/texa/careapp/utils/MechanicDataManager$$ExternalSyntheticLambda7;->f$0:Lcom/texa/careapp/utils/MechanicDataManager;

    check-cast p1, Lcom/texa/careapp/networking/response/CustomerResponse;

    invoke-static {v0, p1}, Lcom/texa/careapp/utils/MechanicDataManager;->$r8$lambda$Q9NuyefTIeeRu4hBJKza0pWhdNI(Lcom/texa/careapp/utils/MechanicDataManager;Lcom/texa/careapp/networking/response/CustomerResponse;)Z

    move-result p1

    return p1
.end method
