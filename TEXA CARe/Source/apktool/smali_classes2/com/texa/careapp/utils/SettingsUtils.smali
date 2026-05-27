.class public Lcom/texa/careapp/utils/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingUserItem(Landroid/content/Context;Lcom/texa/careapp/model/UserModel;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 6

    .line 64
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const v3, 0x7f110a7d

    .line 66
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Lcom/texa/careapp/model/UserModel;->getFirstName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/texa/careapp/model/UserModel;->getLastName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 66
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    :cond_0
    const v3, 0x7f1108aa

    .line 69
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    .line 71
    invoke-static {p1}, Lcom/texa/careapp/utils/SettingsUtils;->isInfoSet(Lcom/texa/careapp/model/UserModel;)Z

    move-result p0

    const p1, 0x7f08014c

    if-nez p0, :cond_1

    .line 72
    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 76
    invoke-virtual {v0, p1}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    .line 78
    :goto_0
    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    .line 79
    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    return-object v0
.end method

.method public static getSettingsAddVehicleItem(Landroid/content/Context;I)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 3

    .line 96
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 97
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    const/4 v2, 0x2

    .line 99
    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    const v2, 0x7f110c0e

    .line 100
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v2, 0x7f110c0f

    .line 101
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    const p0, 0x7f080130

    .line 102
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    .line 104
    sget-object p0, Lcom/texa/careapp/BuildConfig;->MAX_VEHICLE_TO_ADD:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p1, p0, :cond_0

    .line 105
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 107
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    :goto_0
    return-object v0
.end method

.method public static getSettingsCompanyInfoItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 3

    .line 162
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 163
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 164
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v2, 0x7f1108d3

    .line 165
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v2, 0x7f110cbc

    .line 166
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    const p0, 0x7f0800c9

    .line 168
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    const/4 p0, 0x6

    .line 169
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    return-object v0
.end method

.method public static getSettingsConfigurationTopHeader(Landroid/content/Context;)Lcom/texa/careapp/model/HeaderSettingsModel;
    .locals 2

    .line 227
    new-instance v0, Lcom/texa/careapp/model/HeaderSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/HeaderSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/HeaderSettingsModel;->isVisible(Z)V

    const v1, 0x7f1108da

    .line 229
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setTitle(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 230
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setType(I)V

    .line 231
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setHasImage(Z)V

    return-object v0
.end method

.method public static getSettingsFabricResetItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 3

    .line 250
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 251
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    const/4 v2, 0x0

    .line 252
    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 253
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v1, 0x7f110cec

    .line 254
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f110cbd

    .line 255
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    const/16 p0, 0xc

    .line 256
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    return-object v0
.end method

.method public static getSettingsGeneralSettingsItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 2

    .line 237
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 238
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v1, 0x7f110a86

    .line 241
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f1108a9

    .line 242
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    const p0, 0x7f0800c9

    .line 243
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    const/16 p0, 0xb

    .line 244
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    return-object v0
.end method

.method public static getSettingsInfoTopHeader(Landroid/content/Context;)Lcom/texa/careapp/model/HeaderSettingsModel;
    .locals 2

    .line 113
    new-instance v0, Lcom/texa/careapp/model/HeaderSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/HeaderSettingsModel;-><init>()V

    const v1, 0x7f110aa7

    .line 114
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setTitle(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 115
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setType(I)V

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/HeaderSettingsModel;->isVisible(Z)V

    .line 117
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setHasImage(Z)V

    return-object v0
.end method

.method public static getSettingsPrivacyPolicyItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 2

    .line 175
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 177
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v1, 0x7f110b7e

    .line 179
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f0800c9

    .line 180
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    const v1, 0x7f110cbe

    .line 181
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    const/4 p0, 0x7

    .line 182
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    return-object v0
.end method

.method public static getSettingsServicesContactsItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 3

    .line 24
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v2, 0x7f110c14

    .line 27
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v2, 0x7f110c13

    .line 28
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    const p0, 0x7f0800c9

    .line 30
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    const/16 p0, 0x12

    .line 31
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    return-object v0
.end method

.method public static getSettingsServicesItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 3

    .line 149
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 150
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v2, 0x7f110c26

    .line 152
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v2, 0x7f110c18

    .line 153
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    const/4 p0, 0x5

    .line 154
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    .line 155
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    const p0, 0x7f0800c9

    .line 156
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    return-object v0
.end method

.method public static getSettingsServicesTopHeader(Landroid/content/Context;)Lcom/texa/careapp/model/HeaderSettingsModel;
    .locals 2

    .line 36
    new-instance v0, Lcom/texa/careapp/model/HeaderSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/HeaderSettingsModel;-><init>()V

    const v1, 0x7f110c15

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setTitle(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 38
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setHasImage(Z)V

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/HeaderSettingsModel;->isVisible(Z)V

    .line 40
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setType(I)V

    return-object v0
.end method

.method public static getSettingsSwFwVersionItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 2

    .line 123
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v1, 0x7f110cc3

    .line 127
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f1108b2

    .line 128
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 129
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    return-object v0
.end method

.method public static getSettingsTermsSOSItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 2

    .line 201
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 202
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    .line 203
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 204
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v1, 0x7f110cc5

    .line 205
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f110cc0

    .line 206
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    const p0, 0x7f0800c9

    .line 207
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    const/16 p0, 0x9

    .line 208
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    return-object v0
.end method

.method public static getSettingsTermsServiceItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 2

    .line 188
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 189
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 190
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    .line 191
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v1, 0x7f110cc7

    .line 192
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f110cbf

    .line 193
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    const p0, 0x7f0800c9

    .line 194
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    const/16 p0, 0x8

    .line 195
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    return-object v0
.end method

.method public static getSettingsThirdPartsLicenseItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 2

    .line 214
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    .line 216
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 217
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v1, 0x7f110ccd

    .line 218
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f110ccc

    .line 219
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    const p0, 0x7f0800c9

    .line 220
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    const/16 p0, 0xa

    .line 221
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    return-object v0
.end method

.method public static getSettingsTroubleShootingItem(Landroid/content/Context;)Lcom/texa/careapp/model/ItemSettingsModel;
    .locals 3

    .line 135
    new-instance v0, Lcom/texa/careapp/model/ItemSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/ItemSettingsModel;-><init>()V

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setHasImage(Z)V

    .line 137
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->setType(I)V

    const v2, 0x7f110ba4

    .line 139
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/texa/careapp/model/ItemSettingsModel;->setTitle(Ljava/lang/String;)V

    const v2, 0x7f110931

    .line 140
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setSubtitle(Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 141
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setAction(I)V

    const p0, 0x7f0800c9

    .line 142
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/ItemSettingsModel;->setImage(I)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/ItemSettingsModel;->isVisible(Z)V

    return-object v0
.end method

.method public static getSettingsUserTopHeader(Landroid/content/Context;)Lcom/texa/careapp/model/HeaderSettingsModel;
    .locals 2

    .line 55
    new-instance v0, Lcom/texa/careapp/model/HeaderSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/HeaderSettingsModel;-><init>()V

    const v1, 0x7f110b76

    .line 56
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setTitle(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 57
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setHasImage(Z)V

    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/HeaderSettingsModel;->isVisible(Z)V

    .line 59
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setType(I)V

    return-object v0
.end method

.method public static getSettingsVehicleItem(Ljava/util/List;)Lcom/texa/careapp/model/VehicleListSettingsModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/texa/careapp/model/VehicleModel;",
            ">;)",
            "Lcom/texa/careapp/model/VehicleListSettingsModel;"
        }
    .end annotation

    .line 85
    new-instance v0, Lcom/texa/careapp/model/VehicleListSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/VehicleListSettingsModel;-><init>()V

    const/4 v1, 0x2

    .line 86
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleListSettingsModel;->setType(I)V

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleListSettingsModel;->setHasImage(Z)V

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleListSettingsModel;->setAction(I)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/texa/careapp/model/VehicleListSettingsModel;->isVisible(Z)V

    .line 90
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/VehicleListSettingsModel;->setVehicleModels(Ljava/util/List;)V

    return-object v0
.end method

.method public static getSettingsVehicleTopHeader(Landroid/content/Context;)Lcom/texa/careapp/model/HeaderSettingsModel;
    .locals 2

    .line 46
    new-instance v0, Lcom/texa/careapp/model/HeaderSettingsModel;

    invoke-direct {v0}, Lcom/texa/careapp/model/HeaderSettingsModel;-><init>()V

    const v1, 0x7f110afe

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setTitle(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 48
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->isVisible(Z)V

    const/4 p0, 0x0

    .line 49
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setHasImage(Z)V

    .line 50
    invoke-virtual {v0, p0}, Lcom/texa/careapp/model/HeaderSettingsModel;->setType(I)V

    return-object v0
.end method

.method public static isInfoSet(Lcom/texa/careapp/model/UserModel;)Z
    .locals 2

    if-eqz p0, :cond_6

    .line 264
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getCivicNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getCivicNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getUserCellPhoneContact()Lcom/texa/careapp/model/ContactModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/texa/careapp/model/ContactModel;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 276
    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/model/UserModel;->getLicenseExpireDate()Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_6

    :cond_5
    :goto_0
    return v1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method
