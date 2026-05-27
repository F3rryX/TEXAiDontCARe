.class public Lcom/texa/careapp/emergency/EmergencyNumberModel;
.super Lcom/activeandroid/Model;
.source "EmergencyNumberModel.java"

# interfaces
.implements Lcom/texa/careapp/emergency/EmergencyNumber;


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "EmergencyNumbers"
.end annotation


# static fields
.field public static final COLUMN_COUNTRY:Ljava/lang/String; = "country"

.field public static final TABLE_EMERGENCY_NUMBERS:Ljava/lang/String; = "EmergencyNumbers"


# instance fields
.field private country:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "country"
    .end annotation
.end field

.field private type:Lcom/texa/careapp/emergency/ContactType;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static from(Ljava/lang/String;Lcom/texa/careapp/emergency/EmergencyNumberResponse;)Lcom/texa/careapp/emergency/EmergencyNumberModel;
    .locals 1

    .line 36
    new-instance v0, Lcom/texa/careapp/emergency/EmergencyNumberModel;

    invoke-direct {v0}, Lcom/texa/careapp/emergency/EmergencyNumberModel;-><init>()V

    .line 37
    invoke-virtual {v0, p0}, Lcom/texa/careapp/emergency/EmergencyNumberModel;->setCountry(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/texa/careapp/emergency/EmergencyNumberResponse;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/texa/careapp/emergency/EmergencyNumberModel;->setValue(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/texa/careapp/emergency/EmergencyNumberResponse;->getType()Lcom/texa/careapp/emergency/ContactType;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/texa/careapp/emergency/EmergencyNumberResponse;->getType()Lcom/texa/careapp/emergency/ContactType;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/texa/careapp/emergency/ContactType;->GENERAL:Lcom/texa/careapp/emergency/ContactType;

    :goto_0
    invoke-virtual {v0, p0}, Lcom/texa/careapp/emergency/EmergencyNumberModel;->setType(Lcom/texa/careapp/emergency/ContactType;)V

    return-object v0
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/texa/careapp/emergency/EmergencyNumberModel;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/texa/careapp/emergency/ContactType;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/texa/careapp/emergency/EmergencyNumberModel;->type:Lcom/texa/careapp/emergency/ContactType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/texa/careapp/emergency/EmergencyNumberModel;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/texa/careapp/emergency/EmergencyNumberModel;->country:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/texa/careapp/emergency/ContactType;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/texa/careapp/emergency/EmergencyNumberModel;->type:Lcom/texa/careapp/emergency/ContactType;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/texa/careapp/emergency/EmergencyNumberModel;->value:Ljava/lang/String;

    return-void
.end method
