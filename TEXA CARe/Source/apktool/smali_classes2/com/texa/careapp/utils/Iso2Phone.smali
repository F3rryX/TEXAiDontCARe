.class public Lcom/texa/careapp/utils/Iso2Phone;
.super Ljava/lang/Object;
.source "Iso2Phone.java"


# static fields
.field private static country2phone:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AF"

    const-string v2, "+93"

    .line 24
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AL"

    const-string v2, "+355"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "DZ"

    const-string v2, "+213"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AD"

    const-string v2, "+376"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AO"

    const-string v2, "+244"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AG"

    const-string v2, "+1-268"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AR"

    const-string v2, "+54"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AM"

    const-string v2, "+374"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AU"

    const-string v2, "+61"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AT"

    const-string v3, "+43"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AZ"

    const-string v3, "+994"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BS"

    const-string v5, "+1-242"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BH"

    const-string v5, "+973"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BD"

    const-string v5, "+880"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BB"

    const-string v5, "+1-246"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BY"

    const-string v5, "+375"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BE"

    const-string v5, "+32"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BZ"

    const-string v5, "+501"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BJ"

    const-string v5, "+229"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BT"

    const-string v5, "+975"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BO"

    const-string v5, "+591"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BA"

    const-string v5, "+387"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BW"

    const-string v5, "+267"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BR"

    const-string v5, "+55"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BN"

    const-string v5, "+673"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BG"

    const-string v5, "+359"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BF"

    const-string v5, "+226"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "BI"

    const-string v5, "+257"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "KH"

    const-string v5, "+855"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CM"

    const-string v5, "+237"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CA"

    const-string v5, "+1"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CV"

    const-string v6, "+238"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CF"

    const-string v6, "+236"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "TD"

    const-string v6, "+235"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CL"

    const-string v6, "+56"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CN"

    const-string v6, "+86"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CO"

    const-string v6, "+57"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "KM"

    const-string v6, "+269"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CD"

    const-string v6, "+243"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CG"

    const-string v6, "+242"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CR"

    const-string v6, "+506"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CI"

    const-string v6, "+225"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "HR"

    const-string v6, "+385"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CU"

    const-string v6, "+53"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v4, "CY"

    const-string v6, "+357"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "CZ"

    const-string v8, "+420"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "DK"

    const-string v8, "+45"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "DJ"

    const-string v8, "+253"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "DM"

    const-string v8, "+1-767"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "DO"

    const-string v8, "+1-809and1-829"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "EC"

    const-string v8, "+593"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "EG"

    const-string v8, "+20"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "SV"

    const-string v8, "+503"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "GQ"

    const-string v8, "+240"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "ER"

    const-string v8, "+291"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "EE"

    const-string v8, "+372"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "ET"

    const-string v8, "+251"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "FJ"

    const-string v8, "+679"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "FI"

    const-string v8, "+358"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "FR"

    const-string v8, "+33"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "GA"

    const-string v8, "+241"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "GM"

    const-string v8, "+220"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v7, "GE"

    const-string v8, "+995"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "DE"

    const-string v10, "+49"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "GH"

    const-string v10, "+233"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "GR"

    const-string v10, "+30"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "GD"

    const-string v10, "+1-473"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "GT"

    const-string v10, "+502"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "GN"

    const-string v10, "+224"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "GW"

    const-string v10, "+245"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "GY"

    const-string v10, "+592"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "HT"

    const-string v10, "+509"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "HN"

    const-string v10, "+504"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "HU"

    const-string v10, "+36"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "IS"

    const-string v10, "+354"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "IN"

    const-string v10, "+91"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "ID"

    const-string v10, "+62"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "IR"

    const-string v10, "+98"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "IQ"

    const-string v10, "+964"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "IE"

    const-string v10, "+353"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "IL"

    const-string v10, "+972"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "IT"

    const-string v10, "+39"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "JM"

    const-string v10, "+1-876"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "JP"

    const-string v10, "+81"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "JO"

    const-string v10, "+962"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "KZ"

    const-string v10, "+7"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "KE"

    const-string v11, "+254"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "KI"

    const-string v11, "+686"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "KP"

    const-string v11, "+850"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "KR"

    const-string v11, "+82"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "KW"

    const-string v11, "+965"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "KG"

    const-string v11, "+996"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "LA"

    const-string v11, "+856"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "LV"

    const-string v11, "+371"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "LB"

    const-string v11, "+961"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "LS"

    const-string v11, "+266"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "LR"

    const-string v11, "+231"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "LY"

    const-string v11, "+218"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "LI"

    const-string v11, "+423"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "LT"

    const-string v11, "+370"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "LU"

    const-string v11, "+352"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MK"

    const-string v11, "+389"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MG"

    const-string v11, "+261"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MW"

    const-string v11, "+265"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MY"

    const-string v11, "+60"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MV"

    const-string v11, "+960"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "ML"

    const-string v11, "+223"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MT"

    const-string v11, "+356"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MH"

    const-string v11, "+692"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MR"

    const-string v11, "+222"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MU"

    const-string v11, "+230"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MX"

    const-string v11, "+52"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "FM"

    const-string v11, "+691"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v9, "MD"

    const-string v11, "+373"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "MC"

    const-string v12, "+377"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "MN"

    const-string v12, "+976"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "ME"

    const-string v12, "+382"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "MA"

    const-string v12, "+212"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "MZ"

    const-string v13, "+258"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "MM"

    const-string v13, "+95"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "NA"

    const-string v13, "+264"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "NR"

    const-string v13, "+674"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "NP"

    const-string v13, "+977"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "NL"

    const-string v13, "+31"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "NZ"

    const-string v13, "+64"

    invoke-interface {v0, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "NI"

    const-string v14, "+505"

    invoke-interface {v0, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "NE"

    const-string v14, "+227"

    invoke-interface {v0, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "NG"

    const-string v14, "+234"

    invoke-interface {v0, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "NO"

    const-string v14, "+47"

    invoke-interface {v0, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "OM"

    const-string v15, "+968"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "PK"

    const-string v15, "+92"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "PW"

    const-string v15, "+680"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "PA"

    const-string v15, "+507"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "PG"

    const-string v15, "+675"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "PY"

    const-string v15, "+595"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "PE"

    const-string v15, "+51"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "PH"

    const-string v15, "+63"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "PL"

    const-string v15, "+48"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "PT"

    const-string v15, "+351"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "QA"

    const-string v15, "+974"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "RO"

    const-string v15, "+40"

    invoke-interface {v0, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v11, "RU"

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "RW"

    const-string v11, "+250"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "KN"

    const-string v11, "+1-869"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "LC"

    const-string v11, "+1-758"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "VC"

    const-string v11, "+1-784"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "WS"

    const-string v11, "+685"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "SM"

    const-string v11, "+378"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "ST"

    const-string v11, "+239"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "SA"

    const-string v11, "+966"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "SN"

    const-string v11, "+221"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "RS"

    const-string v11, "+381"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "SC"

    const-string v15, "+248"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "SL"

    const-string v15, "+232"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "SG"

    const-string v15, "+65"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "SK"

    const-string v15, "+421"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "SI"

    const-string v15, "+386"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "SB"

    const-string v15, "+677"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v10, "SO"

    const-string v15, "+252"

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    move-object/from16 v16, v13

    const-string v13, "ZA"

    move-object/from16 v17, v12

    const-string v12, "+27"

    invoke-interface {v0, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "ES"

    const-string v13, "+34"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "LK"

    const-string v13, "+94"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "SD"

    const-string v13, "+249"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "SR"

    const-string v13, "+597"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "SZ"

    const-string v13, "+268"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "SE"

    const-string v13, "+46"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "CH"

    const-string v13, "+41"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "SY"

    const-string v13, "+963"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TJ"

    const-string v13, "+992"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TZ"

    const-string v13, "+255"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TH"

    const-string v13, "+66"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TL"

    const-string v13, "+670"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TG"

    const-string v13, "+228"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TO"

    const-string v13, "+676"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TT"

    const-string v13, "+1-868"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TN"

    const-string v13, "+216"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TR"

    const-string v13, "+90"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TM"

    const-string v13, "+993"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "TV"

    const-string v13, "+688"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "UG"

    const-string v13, "+256"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "UA"

    const-string v13, "+380"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "AE"

    const-string v13, "+971"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "GB"

    const-string v13, "+44"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v12, "US"

    invoke-interface {v0, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "UY"

    const-string v12, "+598"

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "UZ"

    const-string v12, "+998"

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "VU"

    const-string v12, "+678"

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "VA"

    const-string v12, "+379"

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "VE"

    const-string v12, "+58"

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "VN"

    const-string v12, "+84"

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "YE"

    const-string v12, "+967"

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "ZM"

    const-string v12, "+260"

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "ZW"

    const-string v12, "+263"

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "TW"

    const-string v12, "+886"

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "+90-392"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "+373-533"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "CX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "CC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "NF"

    const-string v2, "+672"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "NC"

    const-string v3, "+687"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "PF"

    const-string v3, "+689"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "YT"

    const-string v3, "+262"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "GP"

    const-string v4, "+590"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "PM"

    const-string v7, "+508"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "WF"

    const-string v7, "+681"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "CK"

    const-string v7, "+682"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "NU"

    const-string v7, "+683"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "TK"

    const-string v7, "+690"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "GG"

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "IM"

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "JE"

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "AI"

    const-string v7, "+1-264"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "BM"

    const-string v7, "+1-441"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "IO"

    const-string v7, "+246"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, ""

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "VG"

    const-string v6, "+1-284"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "KY"

    const-string v6, "+1-345"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "FK"

    const-string v6, "+500"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "GI"

    const-string v6, "+350"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "MS"

    const-string v6, "+1-664"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "SH"

    const-string v6, "+290"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "TC"

    const-string v7, "+1-649"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "MP"

    const-string v7, "+1-670"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "PR"

    const-string v7, "+1-787and1-939"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "AS"

    const-string v7, "+1-684"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "GU"

    const-string v7, "+1-671"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "VI"

    const-string v7, "+1-340"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "HK"

    const-string v7, "+852"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "MO"

    const-string v7, "+853"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "FO"

    const-string v7, "+298"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "GL"

    const-string v7, "+299"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v5, "GF"

    const-string v7, "+594"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "MQ"

    const-string v5, "+596"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "RE"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AX"

    const-string v3, "+358-18"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AW"

    const-string v3, "+297"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AN"

    const-string v3, "+599"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "SJ"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AC"

    const-string v3, "+247"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "TA"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "CS"

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "PS"

    const-string v3, "+970"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "EH"

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "AQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "CW"

    const-string v2, "+599"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "PN"

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "MF"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "BL"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "SX"

    const-string v2, "+1-721"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    const-string v1, "SS"

    const-string v2, "+211"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    return-object v0
.end method

.method public static getPhone(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/texa/careapp/utils/Iso2Phone;->country2phone:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
