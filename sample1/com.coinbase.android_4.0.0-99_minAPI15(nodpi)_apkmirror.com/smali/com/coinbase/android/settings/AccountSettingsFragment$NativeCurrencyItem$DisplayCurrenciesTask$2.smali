.class Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask$2;
.super Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;


# direct methods
.method constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;)V
    .locals 0
    .param p1, "this$2"    # Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask$2;->this$2:Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem$DisplayCurrenciesTask;

    invoke-direct {p0}, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 3
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 363
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "Coinbase"

    const-string v2, "Tried to show Currencies after onSaveInstanceState"

    invoke-static {v1, v2}, Lcom/coinbase/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
