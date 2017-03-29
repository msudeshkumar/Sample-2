.class Lcom/coinbase/android/settings/Timezone;
.super Ljava/lang/Object;
.source "Timezone.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private displayText:Ljava/lang/String;

.field private timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;
    .param p2, "displayText"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p0, p2}, Lcom/coinbase/android/settings/Timezone;->setDisplayText(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/Timezone;->setTimezone(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/coinbase/android/settings/Timezone;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/coinbase/android/settings/Timezone;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayText"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/coinbase/android/settings/Timezone;->displayText:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/coinbase/android/settings/Timezone;->timezone:Ljava/lang/String;

    .line 31
    return-void
.end method
