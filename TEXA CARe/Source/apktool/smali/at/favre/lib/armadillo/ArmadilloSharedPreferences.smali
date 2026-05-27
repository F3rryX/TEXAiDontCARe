.class public interface abstract Lat/favre/lib/armadillo/ArmadilloSharedPreferences;
.super Ljava/lang/Object;
.source "ArmadilloSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# virtual methods
.method public abstract changePassword([C)V
.end method

.method public abstract changePassword([CLat/favre/lib/armadillo/KeyStretchingFunction;)V
.end method

.method public abstract close()V
.end method

.method public abstract isValidPassword()Z
.end method

.method public abstract registerOnSecurePreferenceChangeListener(Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;)V
.end method

.method public abstract unregisterOnSecurePreferenceChangeListener(Lat/favre/lib/armadillo/OnSecurePreferenceChangeListener;)V
.end method
