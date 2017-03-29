.class Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;
.super Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitcoinUnitsItem"
.end annotation


# instance fields
.field protected mName:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f070048
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    const-string v0, "btc"

    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v1}, Lcom/coinbase/api/LoginManager;->getBitcoinUnits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const v1, 0x7f070094

    invoke-virtual {v0, v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onClick()V
    .locals 5

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;->getDisplayValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "btc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 244
    .local v2, "selectedIndex":I
    :goto_0
    new-instance v1, Lcom/coinbase/android/settings/ChangeBitcoinUnitsDialogFragment;

    invoke-direct {v1}, Lcom/coinbase/android/settings/ChangeBitcoinUnitsDialogFragment;-><init>()V

    .line 245
    .local v1, "dialog":Landroid/support/v4/app/DialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "SpinnerDialogFragment_Selected_Index"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    invoke-virtual {v1, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 248
    iget-object v3, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "change_currency"

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 249
    return-void

    .line 243
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "dialog":Landroid/support/v4/app/DialogFragment;
    .end local v2    # "selectedIndex":I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
