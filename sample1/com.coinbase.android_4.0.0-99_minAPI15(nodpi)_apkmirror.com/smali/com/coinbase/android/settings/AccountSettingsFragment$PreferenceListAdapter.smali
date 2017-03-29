.class Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/settings/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferenceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/coinbase/android/settings/AccountSettingsFragment;[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;)V
    .locals 2
    .param p2, "preferences"    # [Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    .line 603
    iget-object v0, p1, Lcom/coinbase/android/settings/AccountSettingsFragment;->mParent:Landroid/app/Activity;

    const v1, 0x7f03001a

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 604
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 608
    move-object v5, p2

    .line 609
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;

    .line 611
    .local v0, "item":Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    if-nez v5, :cond_0

    .line 612
    iget-object v8, p0, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;->this$0:Lcom/coinbase/android/settings/AccountSettingsFragment;

    iget-object v8, v8, Lcom/coinbase/android/settings/AccountSettingsFragment;->mParent:Landroid/app/Activity;

    const v9, 0x7f03001a

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 615
    :cond_0
    const v8, 0x1020014

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 616
    .local v2, "text1":Landroid/widget/TextView;
    const v8, 0x1020015

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 618
    .local v3, "text2":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->getDisplayValue()Ljava/lang/String;

    move-result-object v4

    .line 621
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 623
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    :goto_0
    const v8, 0x7f0d009c

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    .line 629
    .local v1, "switchCompat":Landroid/support/v7/widget/SwitchCompat;
    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->showSwitch()Z

    move-result v8

    if-eqz v8, :cond_2

    :goto_1
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 630
    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->isSwitchOn()Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 631
    return-object v5

    .line 625
    .end local v1    # "switchCompat":Landroid/support/v7/widget/SwitchCompat;
    :cond_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .restart local v1    # "switchCompat":Landroid/support/v7/widget/SwitchCompat;
    :cond_2
    move v6, v7

    .line 629
    goto :goto_1
.end method
