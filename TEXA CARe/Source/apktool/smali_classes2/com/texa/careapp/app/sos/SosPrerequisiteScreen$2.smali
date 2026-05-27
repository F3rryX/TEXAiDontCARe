.class Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$2;
.super Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;
.source "SosPrerequisiteScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;->lambda$clickOnTermsOfService$4(Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

.field final synthetic val$service:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method constructor <init>(Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;Lcom/texa/careapp/model/ServiceDataModel;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$2;->this$0:Lcom/texa/careapp/app/sos/SosPrerequisiteScreen;

    iput-object p3, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$2;->val$service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-direct {p0, p2}, Lcom/texa/careapp/app/activationSosServices/AcceptationTermsSosServiceScreen;-><init>(Lcom/texa/careapp/model/ServiceDataModel;)V

    return-void
.end method


# virtual methods
.method public acceptedCondition()V
    .locals 2

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$2;->mTexaCareApiService:Lcom/texa/careapp/networking/TexaCareApiServiceUser;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$2;->val$service:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-interface {v0, v1}, Lcom/texa/careapp/networking/TexaCareApiServiceUser;->acceptTermsOfConditions(Lcom/texa/careapp/model/ServiceDataModel;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/sos/SosPrerequisiteScreen$2;->goBack()V

    return-void
.end method
