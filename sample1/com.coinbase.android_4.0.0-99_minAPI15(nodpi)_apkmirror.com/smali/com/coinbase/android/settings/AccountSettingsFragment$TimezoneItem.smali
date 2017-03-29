.class public Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;
.super Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimezoneItem"
.end annotation


# instance fields
.field protected mName:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f07005d
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

.field protected timezones:[Lcom/coinbase/android/settings/Timezone;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 9
    .param p1, "this$0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    .line 181
    :try_start_0
    invoke-virtual {p1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "jsonString":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, "json":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Lcom/coinbase/android/settings/Timezone;

    iput-object v5, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->timezones:[Lcom/coinbase/android/settings/Timezone;

    .line 184
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 185
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    .line 186
    .local v4, "values":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->timezones:[Lcom/coinbase/android/settings/Timezone;

    new-instance v6, Lcom/coinbase/android/settings/Timezone;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/coinbase/android/settings/Timezone;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    .end local v2    # "json":Lorg/json/JSONArray;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "values":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "json":Lorg/json/JSONArray;
    .restart local v3    # "jsonString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getSelectedIndex()I
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->getDisplayValue()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "currentTimezone":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->timezones:[Lcom/coinbase/android/settings/Timezone;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 216
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->timezones:[Lcom/coinbase/android/settings/Timezone;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/coinbase/android/settings/Timezone;->getTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 215
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "account_time_zone"

    invoke-virtual {p0, v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->getCachedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isSwitchOn()Z
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->isSwitchOn()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 195
    new-instance v1, Lcom/coinbase/android/settings/ChangeTimezoneDialogFragment;

    invoke-direct {v1}, Lcom/coinbase/android/settings/ChangeTimezoneDialogFragment;-><init>()V

    .line 196
    .local v1, "dialog":Landroid/support/v4/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "ChooseTimezoneDialogFragment_Timezones"

    iget-object v3, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->timezones:[Lcom/coinbase/android/settings/Timezone;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 198
    const-string v2, "SpinnerDialogFragment_Selected_Index"

    invoke-direct {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    invoke-virtual {v1, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 200
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "change_timezone"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public bridge synthetic showSwitch()Z
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->showSwitch()Z

    move-result v0

    return v0
.end method
