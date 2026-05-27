.class interface abstract Lat/favre/lib/armadillo/EncryptionProtocol;
.super Ljava/lang/Object;
.source "EncryptionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/favre/lib/armadillo/EncryptionProtocol$Factory;
    }
.end annotation


# virtual methods
.method public abstract decrypt(Ljava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/EncryptionProtocolException;
        }
    .end annotation
.end method

.method public abstract decrypt(Ljava/lang/String;[C[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/EncryptionProtocolException;
        }
    .end annotation
.end method

.method public abstract deobfuscatePassword(Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;)[C
.end method

.method public abstract deriveContentKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encrypt(Ljava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/EncryptionProtocolException;
        }
    .end annotation
.end method

.method public abstract encrypt(Ljava/lang/String;[C[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lat/favre/lib/armadillo/EncryptionProtocolException;
        }
    .end annotation
.end method

.method public abstract getKeyStretchingFunction()Lat/favre/lib/armadillo/KeyStretchingFunction;
.end method

.method public abstract obfuscatePassword([C)Lat/favre/lib/armadillo/ByteArrayRuntimeObfuscator;
.end method

.method public abstract setKeyStretchingFunction(Lat/favre/lib/armadillo/KeyStretchingFunction;)V
.end method

.method public abstract wipeDerivedPasswordCache()V
.end method
