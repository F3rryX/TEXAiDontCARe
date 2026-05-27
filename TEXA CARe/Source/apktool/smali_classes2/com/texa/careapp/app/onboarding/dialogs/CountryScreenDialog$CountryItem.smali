.class public Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;
.super Ljava/lang/Object;
.source "CountryScreenDialog.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CountryItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;

.field value:Ljava/lang/String;

.field visualValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->this$0:Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->visualValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 164
    instance-of p1, p1, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    return p1
.end method

.method public compareTo(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;)I
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getVisualValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getVisualValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 164
    check-cast p1, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    invoke-virtual {p0, p1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->compareTo(Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 164
    :cond_0
    instance-of v1, p1, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;

    invoke-virtual {p1, p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getVisualValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getVisualValue()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getValue()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVisualValue()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->visualValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 164
    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getVisualValue()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x3b

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getValue()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x3b

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->value:Ljava/lang/String;

    return-void
.end method

.method public setVisualValue(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->visualValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountryScreenDialog.CountryItem(visualValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getVisualValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/texa/careapp/app/onboarding/dialogs/CountryScreenDialog$CountryItem;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
