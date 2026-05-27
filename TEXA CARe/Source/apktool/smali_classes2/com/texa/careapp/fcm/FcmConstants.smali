.class public Lcom/texa/careapp/fcm/FcmConstants;
.super Ljava/lang/Object;
.source "FcmConstants.java"


# static fields
.field public static final ACI_SUBSCRIPTION:Ljava/lang/String; = "aci_subscription"

.field public static final BATTERY_STATE:Ljava/lang/String; = "battery_state"

.field public static final DRIVERS_LICENSE:Ljava/lang/String; = "driver_license"

.field public static final EXHAUST_GAS_CONTROL:Ljava/lang/String; = "exhaust_gas_control"

.field public static final HIGHWAY_PASS:Ljava/lang/String; = "highway_pass"

.field public static final ID_NEED_TO_SW_UPDATE:I = 0x0

.field public static final ID_NOTIFICATION_BATTERY:I = 0x67

.field public static final ID_NOTIFICATION_SUBSCRIPTION_TERMINATED:I = 0xc8

.field public static final ID_REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE:I = 0x12c

.field public static final ID_SERVICE_RENEW:I = 0x12d

.field public static final ID_SERVICE_SOS_INFO_ALERT_NOTIFICATION:I = 0x12e

.field public static final ID_SERVICE_SOS_PURCHASED_BY_CUSTOMER:I = 0x12f

.field public static final INSTALLMENT_FIRE_THEFT_INSURANCE:Ljava/lang/String; = "installment_fire_theft_insurance"

.field public static final INSTALLMENT_INSURANCE:Ljava/lang/String; = "installment_insurance"

.field public static final INSTALLMENT_RENT_GARAGE:Ljava/lang/String; = "installment_rent_garage"

.field public static final INSTALLMENT_VEHICLE:Ljava/lang/String; = "installment_vehicle"

.field public static final NEED_TO_SW_UPDATE:Ljava/lang/String; = "need_to_sw_update"

.field public static final NOTIFICATION_ALLARM_STATE:Ljava/lang/String; = "alarm_state"

.field public static final NOTIFICATION_ALLARM_TYPE:Ljava/lang/String; = "alarm_type"

.field public static final NOTIFICATION_ALLARM_VALUE:Ljava/lang/String; = "alarm_value"

.field public static final NOTIFICATION_MESSAGE:Ljava/lang/String; = "Body"

.field public static final NOTIFICATION_OBJ:Ljava/lang/String; = "obj"

.field public static final NOTIFICATION_TIME:Ljava/lang/String; = "send_time"

.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "notification_type"

.field public static final NOTIFICATION_USER_ID:Ljava/lang/String; = "user_id"

.field public static final NOTIFICATION_VEHICLE_ID:Ljava/lang/String; = "vehicle_id"

.field public static final REMEMBER_TO_ACCEPT_TERMS_OF_SERVICE:Ljava/lang/String; = "remember_to_accept_terms_of_service"

.field public static final RESTRICTED_AREA_PASS:Ljava/lang/String; = "restricted_area_pass"

.field public static final SERVICE_RENEW:Ljava/lang/String; = "service_renew"

.field public static final SERVICE_SOS_INFO_ALERT_NOTIFICATION:Ljava/lang/String; = "service_sos_infp_alert_notification"

.field public static final SERVICE_SOS_PURCHASED_BY_CUSTOMER:Ljava/lang/String; = "service_sos_purchased_by_customer"

.field public static final SERVICE_SUBSCRIPTION_TERMINATED:Ljava/lang/String; = "service_subscription_terminated"

.field public static final SUBSCRIPTION_PARKING:Ljava/lang/String; = "subscription_parking"

.field public static final TYRES_FITTING:Ljava/lang/String; = "tyres_fitting"

.field public static final TYRES_SWAP:Ljava/lang/String; = "tyres_swap"

.field public static final VEHICLE_FIRE_THEFT_INSURANCE:Ljava/lang/String; = "vehicle_fire_theft_insurance"

.field public static final VEHICLE_INSPECTION:Ljava/lang/String; = "vehicle_inspection"

.field public static final VEHICLE_INSPECTION_GPL:Ljava/lang/String; = "vehicle_inspection_gpl"

.field public static final VEHICLE_INSPECTION_METHANE:Ljava/lang/String; = "vehicle_inspection_methane"

.field public static final VEHICLE_INSURANCE:Ljava/lang/String; = "vehicle_insurance"

.field public static final VEHICLE_SERVICE_DATE:Ljava/lang/String; = "vehicle_service_date"

.field public static final VEHICLE_SERVICE_ODOMETER:Ljava/lang/String; = "vehicle_service_odometer"

.field public static final VEHICLE_TAX:Ljava/lang/String; = "vehicle_tax"

.field public static final VEHICLE_WARRANTY_DATE:Ljava/lang/String; = "vehicle_warranty_date"

.field public static final VEHICLE_WARRANTY_ODOMETER:Ljava/lang/String; = "vehicle_warranty_odometer"

.field public static notificationId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "need_to_sw_update"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "driver_license"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vehicle_tax"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vehicle_insurance"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vehicle_inspection"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vehicle_service_date"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vehicle_service_odometer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tyres_swap"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "tyres_fitting"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vehicle_fire_theft_insurance"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vehicle_inspection_gpl"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vehicle_inspection_methane"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "aci_subscription"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exhaust_gas_control"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "subscription_parking"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "installment_rent_garage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "installment_insurance"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "installment_fire_theft_insurance"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "installment_vehicle"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "highway_pass"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restricted_area_pass"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vehicle_warranty_date"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vehicle_warranty_odometer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "battery_state"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "remember_to_accept_terms_of_service"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "service_renew"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "service_sos_infp_alert_notification"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0x12f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "service_sos_purchased_by_customer"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/texa/careapp/fcm/FcmConstants;->notificationId:Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "service_subscription_terminated"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
