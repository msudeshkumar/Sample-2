.class Lcom/coinbase/android/settings/AccountSettingsFragment$SignOutItem;
.super Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignOutItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$SignOutItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    .prologue
    .line 560
    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$SignOutItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$SignOutItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const v1, 0x7f07017f

    invoke-virtual {v0, v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 574
    new-instance v0, Lcom/coinbase/android/ui/SignOutFragment;

    invoke-direct {v0}, Lcom/coinbase/android/ui/SignOutFragment;-><init>()V

    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$SignOutItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "signOut"

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/ui/SignOutFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 575
    return-void
.end method
