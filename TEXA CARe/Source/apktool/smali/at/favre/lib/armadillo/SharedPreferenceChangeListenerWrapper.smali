.class final Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;
.super Ljava/lang/Object;
.source "SharedPreferenceChangeListenerWrapper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$KeyComparisonImpl;
    }
.end annotation


# instance fields
.field private final encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

.field private final securedPrefs:Landroid/content/SharedPreferences;

.field private final wrappedListener:Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;


# direct methods
.method constructor <init>(Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;Lat/favre/lib/armadillo/EncryptionProtocol;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;->wrappedListener:Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;

    .line 33
    iput-object p2, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    .line 34
    iput-object p3, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;->securedPrefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method getWrapped()Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;
    .locals 1

    .line 38
    iget-object v0, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;->wrappedListener:Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;

    return-object v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 45
    iget-object p1, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;->wrappedListener:Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;

    iget-object v0, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;->securedPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$KeyComparisonImpl;

    iget-object v2, p0, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper;->encryptionProtocol:Lat/favre/lib/armadillo/EncryptionProtocol;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3}, Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$KeyComparisonImpl;-><init>(Lat/favre/lib/armadillo/EncryptionProtocol;Ljava/lang/String;Lat/favre/lib/armadillo/SharedPreferenceChangeListenerWrapper$1;)V

    invoke-interface {p1, v0, v1}, Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;->onSecurePreferenceChanged(Landroid/content/SharedPreferences;Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener$DerivedKeyComparison;)V

    :cond_0
    return-void
.end method
