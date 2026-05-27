.class final Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$KeyComparisonImpl;
.super Ljava/lang/Object;
.source "SharedPreferenceChangeListenerWrapper.java"

# interfaces
.implements Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener$DerivedKeyComparison;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyComparisonImpl"
.end annotation


# instance fields
.field private final derivedContentKey:Ljava/lang/String;

.field private final encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;


# direct methods
.method private constructor <init>(Lat/favre/lib/armadillo/EncryptionProtocol;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$KeyComparisonImpl;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    .line 18
    iput-object p2, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$KeyComparisonImpl;->derivedContentKey:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lat/favre/lib/armadillo/EncryptionProtocol;Ljava/lang/String;Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$KeyComparisonImpl;-><init>(Lat/favre/lib/armadillo/EncryptionProtocol;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isDerivedKeyEqualTo(Ljava/lang/String;)Z
    .locals 2

    .line 23
    iget-object v0, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$KeyComparisonImpl;->derivedContentKey:Ljava/lang/String;

    iget-object v1, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$KeyComparisonImpl;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    invoke-interface {v1, p1}, Lat/favre/lib/armadillo/EncryptionProtocol;->deriveContentKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
