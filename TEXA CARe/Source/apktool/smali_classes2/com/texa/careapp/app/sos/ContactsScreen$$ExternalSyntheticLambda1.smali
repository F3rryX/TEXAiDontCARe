.class public final synthetic Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/texa/careapp/app/sos/ContactsScreen;

.field public final synthetic f$1:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field public final synthetic f$2:Lcom/texa/carelib/core/utils/FirmwareVersion;

.field public final synthetic f$3:Lcom/texa/careapp/model/ServiceDataModel;


# direct methods
.method public synthetic constructor <init>(Lcom/texa/careapp/app/sos/ContactsScreen;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/careapp/model/ServiceDataModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    iput-object p2, p0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/core/utils/FirmwareVersion;

    iput-object p3, p0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;->f$2:Lcom/texa/carelib/core/utils/FirmwareVersion;

    iput-object p4, p0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;->f$3:Lcom/texa/careapp/model/ServiceDataModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;->f$0:Lcom/texa/careapp/app/sos/ContactsScreen;

    iget-object v1, p0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;->f$1:Lcom/texa/carelib/core/utils/FirmwareVersion;

    iget-object v2, p0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;->f$2:Lcom/texa/carelib/core/utils/FirmwareVersion;

    iget-object v3, p0, Lcom/texa/careapp/app/sos/ContactsScreen$$ExternalSyntheticLambda1;->f$3:Lcom/texa/careapp/model/ServiceDataModel;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/texa/careapp/app/sos/ContactsScreen;->lambda$manageBadge$5$com-texa-careapp-app-sos-ContactsScreen(Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/carelib/core/utils/FirmwareVersion;Lcom/texa/careapp/model/ServiceDataModel;Landroid/view/View;)V

    return-void
.end method
