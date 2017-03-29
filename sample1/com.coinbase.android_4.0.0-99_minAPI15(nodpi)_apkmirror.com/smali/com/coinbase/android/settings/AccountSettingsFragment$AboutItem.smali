.class Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;
.super Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AboutItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;
    .param p2, "x1"    # Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    const v1, 0x7f070176

    invoke-virtual {v0, v1}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 6

    .prologue
    .line 490
    const-string v2, ""

    .line 491
    .local v2, "versionName":Ljava/lang/String;
    const-string v0, ""

    .line 493
    .local v0, "buildName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    .line 494
    invoke-virtual {v4}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 495
    iget-object v3, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    .line 496
    invoke-virtual {v4}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 495
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 500
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;->mContext:Landroid/content/Context;

    const v5, 0x7f0700c3

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 497
    :catch_0
    move-exception v1

    .line 498
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Coinbase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coinbase/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
