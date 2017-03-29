.class public Lcom/coinbase/android/settings/ChangeTimezoneDialogFragment;
.super Lcom/coinbase/android/dialog/SpinnerDialogFragment;
.source "ChangeTimezoneDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coinbase/android/dialog/SpinnerDialogFragment",
        "<",
        "Lcom/coinbase/android/settings/Timezone;",
        ">;"
    }
.end annotation


# static fields
.field public static final TIMEZONES:Ljava/lang/String; = "ChooseTimezoneDialogFragment_Timezones"


# instance fields
.field protected mTimezones:[Lcom/coinbase/android/settings/Timezone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getOptionDisplayText(Lcom/coinbase/android/settings/Timezone;)Ljava/lang/String;
    .locals 1
    .param p1, "option"    # Lcom/coinbase/android/settings/Timezone;

    .prologue
    .line 18
    invoke-virtual {p1}, Lcom/coinbase/android/settings/Timezone;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOptionDisplayText(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    check-cast p1, Lcom/coinbase/android/settings/Timezone;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/ChangeTimezoneDialogFragment;->getOptionDisplayText(Lcom/coinbase/android/settings/Timezone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()[Lcom/coinbase/android/settings/Timezone;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/coinbase/android/settings/ChangeTimezoneDialogFragment;->mTimezones:[Lcom/coinbase/android/settings/Timezone;

    return-object v0
.end method

.method public bridge synthetic getOptions()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/coinbase/android/settings/ChangeTimezoneDialogFragment;->getOptions()[Lcom/coinbase/android/settings/Timezone;

    move-result-object v0

    return-object v0
.end method

.method public onChosenValue(Lcom/coinbase/android/settings/Timezone;)V
    .locals 5
    .param p1, "newValue"    # Lcom/coinbase/android/settings/Timezone;

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/coinbase/android/settings/Timezone;->getTimezone()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "timezone":Ljava/lang/String;
    new-instance v2, Lcom/coinbase/v1/entity/User;

    invoke-direct {v2}, Lcom/coinbase/v1/entity/User;-><init>()V

    .line 31
    .local v2, "user":Lcom/coinbase/v1/entity/User;
    invoke-virtual {v2, v1}, Lcom/coinbase/v1/entity/User;->setTimeZone(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/coinbase/android/settings/UpdateUserTask;

    invoke-virtual {p0}, Lcom/coinbase/android/settings/ChangeTimezoneDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "account_time_zone"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/coinbase/android/settings/UpdateUserTask;-><init>(Landroid/content/Context;Lcom/coinbase/v1/entity/User;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v0, "task":Lcom/coinbase/android/settings/UpdateUserTask;
    invoke-virtual {v0}, Lcom/coinbase/android/settings/UpdateUserTask;->execute()V

    .line 34
    return-void
.end method

.method public bridge synthetic onChosenValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p1, Lcom/coinbase/android/settings/Timezone;

    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/ChangeTimezoneDialogFragment;->onChosenValue(Lcom/coinbase/android/settings/Timezone;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/coinbase/android/settings/ChangeTimezoneDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ChooseTimezoneDialogFragment_Timezones"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/settings/Timezone;

    check-cast v0, [Lcom/coinbase/android/settings/Timezone;

    iput-object v0, p0, Lcom/coinbase/android/settings/ChangeTimezoneDialogFragment;->mTimezones:[Lcom/coinbase/android/settings/Timezone;

    .line 40
    invoke-super {p0, p1}, Lcom/coinbase/android/dialog/SpinnerDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
