.class public Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;
.super Lcom/texa/careapp/base/BaseActivity;
.source "ActivationServiceContactActivity.java"


# static fields
.field public static final PICK_CONTACT:I = 0x65


# instance fields
.field private isSosLight:Z

.field protected mCareApplication:Lcom/texa/careapp/CareApplication;

.field protected mEventBus:Lorg/greenrobot/eventbus/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNavigator:Lcom/texa/care/navigation/Navigator;

.field mReadContactPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

.field mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field sosContactPickerScreen:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/texa/careapp/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->isSosLight:Z

    return-void
.end method

.method public static buildIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    .line 64
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getReadContactPermissionRequest()Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;
    .locals 2

    .line 126
    invoke-static {p0}, Lcom/texa/careapp/utils/permission/CorePermission;->with(Landroidx/appcompat/app/AppCompatActivity;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;

    move-result-object v0

    sget-object v1, Lcom/texa/careapp/utils/permission/CorePermission;->USE_CONTACTS:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionObject;->request([Ljava/lang/String;)Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    move-result-object v0

    iput-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mReadContactPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const-string v0, "data1"

    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    const/16 p2, 0x65

    if-eq p1, p2, :cond_0

    goto/16 :goto_4

    .line 135
    :cond_0
    new-instance p1, Lcom/texa/careapp/model/ContactModel;

    invoke-direct {p1}, Lcom/texa/careapp/model/ContactModel;-><init>()V

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 138
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 139
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p3, :cond_2

    :try_start_1
    const-string v2, "display_name"

    .line 141
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 142
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/texa/careapp/model/ContactModel;->setTitle(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/texa/careapp/model/ContactModel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 145
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/texa/careapp/model/ContactModel;->setUid(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mUserDataManager:Lcom/texa/careapp/utils/UserDataManager;

    invoke-virtual {v2}, Lcom/texa/careapp/utils/UserDataManager;->getUserCached()Lcom/texa/careapp/model/UserModel;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/texa/careapp/model/ContactModel;->setUser(Lcom/texa/careapp/model/UserModel;)V

    .line 147
    sget-object v2, Lcom/texa/careapp/emergency/ContactType;->USER_CELL_SOS:Lcom/texa/careapp/emergency/ContactType;

    invoke-virtual {v2}, Lcom/texa/careapp/emergency/ContactType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/texa/careapp/model/ContactModel;->setType(Ljava/lang/String;)V

    const-string v2, "_id"

    .line 148
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "data3"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "contact_id = ? "

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    aput-object v2, v7, p2

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_2

    .line 156
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    :cond_1
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 158
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 160
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/texa/careapp/model/ContactModel;->setPhoneNumber(Ljava/lang/String;)V

    .line 162
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    invoke-virtual {p1, v2}, Lcom/texa/careapp/model/ContactModel;->setPhoneNumbers(Ljava/util/List;)V

    .line 164
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v9, :cond_2

    .line 165
    invoke-virtual {p1, v1}, Lcom/texa/careapp/model/ContactModel;->setPhoneNumber(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, p3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, p3

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 174
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    const-string p3, "ERROR RETRIEVING CONTACT"

    new-array p2, p2, [Ljava/lang/Object;

    .line 171
    invoke-static {v0, p3, p2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    .line 174
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->sosContactPickerScreen:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

    invoke-virtual {p2, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;->setSosContact(Lcom/texa/careapp/model/ContactModel;)V

    goto :goto_4

    :goto_3
    if-eqz v1, :cond_4

    .line 174
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_4
    throw p1

    :cond_5
    :goto_4
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0}, Lcom/texa/care/navigation/Navigator;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/texa/careapp/app/activationSosServices/HaveToCheckConsistentData;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 98
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 70
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001d

    .line 71
    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->getCareApplication()Lcom/texa/careapp/CareApplication;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    .line 73
    invoke-virtual {p1}, Lcom/texa/careapp/CareApplication;->component()Lcom/texa/careapp/CareApplication$ApplicationComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/texa/careapp/CareApplication$ApplicationComponent;->inject(Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;)V

    .line 74
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/texa/careapp/app/activationSosServices/ActivationLightServiceScreen;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iput-boolean v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->isSosLight:Z

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 80
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 83
    :cond_1
    invoke-static {p0}, Lcom/texa/care/navigation/Navigator;->getInstanceFor(Landroid/app/Activity;)Lcom/texa/care/navigation/Navigator;

    move-result-object p1

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    const v0, 0x7f0a00d7

    .line 84
    invoke-virtual {p1, v0}, Lcom/texa/care/navigation/Navigator;->setContainerResId(I)V

    .line 85
    new-instance p1, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mCareApplication:Lcom/texa/careapp/CareApplication;

    iget-boolean v1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->isSosLight:Z

    invoke-direct {p1, v0, p0, v1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;-><init>(Lcom/texa/careapp/CareApplication;Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;Z)V

    iput-object p1, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->sosContactPickerScreen:Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactScreen;

    .line 86
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mNavigator:Lcom/texa/care/navigation/Navigator;

    invoke-virtual {v0, p1}, Lcom/texa/care/navigation/Navigator;->goTo(Lcom/texa/care/navigation/Screen;)V

    return-void
.end method

.method public onEvent(Lcom/texa/careapp/app/events/CloseActivityEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 203
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/CloseActivityEvent;->getActivity()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/events/CancelProgressEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->dismissProgressDialogScreen()V

    return-void
.end method

.method public onEventMainThread(Lcom/texa/careapp/app/events/ShowProgressEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 193
    invoke-virtual {p1}, Lcom/texa/careapp/app/events/ShowProgressEvent;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->createProgressDialogScreen(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 104
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 109
    invoke-super {p0, p1}, Lcom/texa/careapp/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mReadContactPermissionRequest:Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1, p2, p3}, Lcom/texa/careapp/utils/permission/CorePermission$PermissionRequestObject;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 188
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/texa/careapp/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/texa/careapp/base/BaseActivity;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/texa/careapp/app/activationSosServices/contact/ActivationServiceContactActivity;->mEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected requiresAuthentication()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
