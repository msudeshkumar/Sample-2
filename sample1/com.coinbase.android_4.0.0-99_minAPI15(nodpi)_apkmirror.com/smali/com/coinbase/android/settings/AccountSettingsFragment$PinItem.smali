.class Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;
.super Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinItem"
.end annotation


# instance fields
.field mName:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f070044
    .end annotation
.end field

.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSwitchOn()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "enabled":Z
    sget-object v4, Lcom/coinbase/android/pin/PINManager;->KEYS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;->getCachedValue(Ljava/lang/String;Z)Z

    move-result v6

    or-int/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 472
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/pin/PINPromptActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;->isSwitchOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    const-string v1, "com.coinbase.android.pin.ACTION_PROMPT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    :goto_0
    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const/16 v2, 0x2711

    invoke-virtual {v1, v0, v2}, Lcom/coinbase/android/settings/AccountSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 478
    return-void

    .line 476
    :cond_0
    const-string v1, "com.coinbase.android.pin.ACTION_SET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public showSwitch()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x1

    return v0
.end method
