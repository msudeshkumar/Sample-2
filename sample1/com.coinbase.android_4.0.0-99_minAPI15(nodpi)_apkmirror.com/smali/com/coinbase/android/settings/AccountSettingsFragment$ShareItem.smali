.class Lcom/coinbase/android/settings/AccountSettingsFragment$ShareItem;
.super Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$ShareItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$ShareItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$ShareItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const v1, 0x7f07017e

    invoke-virtual {v0, v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick()V
    .locals 4

    .prologue
    .line 591
    invoke-super {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->onClick()V

    .line 592
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 593
    .local v0, "shareIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$ShareItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const v3, 0x7f0701fe

    invoke-virtual {v2, v3}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$ShareItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$ShareItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const v3, 0x7f0701fd

    invoke-virtual {v2, v3}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coinbase/android/settings/AccountSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 597
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Share Coinbase"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 598
    return-void
.end method
