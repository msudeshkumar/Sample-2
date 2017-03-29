.class public Lcom/coinbase/android/settings/AccountSettingsFragment;
.super Lroboguice/fragment/RoboFragment;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/coinbase/android/CoinbaseFragment;
.implements Lcom/coinbase/android/ui/SignOutFragment$SignOutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$ShareItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$SignOutItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$ContactSupportItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$HelpItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$IdentityVerificationItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$PaymentMethodsItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$ManageAccountsItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$EmailItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$NameItem;,
        Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    }
.end annotation


# static fields
.field private static final REQUEST_PIN:I = 0x2711


# instance fields
.field mAccountAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

.field mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field mAppAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mParent:Landroid/app/Activity;

.field mPersonalAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

.field mPinItem:I

.field protected mPinManager:Lcom/coinbase/android/pin/PINManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mTimer:Ljava/util/Timer;

.field mTitle:Ljava/lang/String;
    .annotation runtime Lroboguice/inject/InjectResource;
        value = 0x7f07021f
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 636
    const/4 v0, -0x1

    iput v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mPinItem:I

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/settings/AccountSettingsFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/coinbase/android/settings/AccountSettingsFragment;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private editItem(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 697
    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    .line 698
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 699
    check-cast v0, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;

    .line 700
    .local v0, "item":Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;->onClick()V

    .line 702
    .end local v0    # "item":Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public getTitle()Landroid/text/SpannableStringBuilder;
    .locals 2

    .prologue
    .line 781
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public nativeCurrencySelected(Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;)V
    .locals 5
    .param p1, "fragment"    # Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 725
    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mParent:Landroid/app/Activity;

    const v3, 0x7f0701d3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 727
    invoke-static {}, Lcom/coinbase/api/internal/CoinbaseInternal;->getInstance()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    iget-object v1, p1, Lcom/coinbase/android/settings/ChangeNativeCurrencyDialogFragment;->selectedCurrency:Ljava/lang/String;

    new-instance v2, Lcom/coinbase/android/settings/AccountSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$1;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->updateUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 764
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 786
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 790
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v9}, Lcom/coinbase/api/LoginManager;->getAllowedPaymentMethods()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    .line 791
    invoke-interface {v9}, Lcom/coinbase/api/LoginManager;->getAllowedPaymentMethods()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 792
    const/4 v9, 0x7

    new-array v1, v9, [Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;

    const/4 v9, 0x0

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$ManageAccountsItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$ManageAccountsItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    const/4 v9, 0x4

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$PaymentMethodsItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$PaymentMethodsItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    const/4 v9, 0x5

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    const/4 v9, 0x6

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$IdentityVerificationItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$IdentityVerificationItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    .line 811
    .local v1, "accountItems":[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    :goto_0
    const/4 v9, 0x6

    new-array v3, v9, [Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;

    const/4 v9, 0x0

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$AboutItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v3, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$PinItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v3, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$HelpItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$HelpItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v3, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$ShareItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$ShareItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v3, v9

    const/4 v9, 0x4

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$ContactSupportItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$ContactSupportItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v3, v9

    const/4 v9, 0x5

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$SignOutItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$SignOutItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v3, v9

    .line 820
    .local v3, "appItems":[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    const/4 v9, 0x3

    new-array v6, v9, [Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;

    const/4 v9, 0x0

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$NameItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$NameItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v6, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$EmailItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$EmailItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v6, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;

    invoke-direct {v10, p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$TimezoneItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    aput-object v10, v6, v9

    .line 826
    .local v6, "personalItems":[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 828
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f03001c

    iget-object v10, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 830
    .local v5, "personalHeader":Landroid/widget/TextView;
    const v9, 0x7f0701d7

    invoke-virtual {p0, v9}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    const v9, 0x7f03001c

    iget-object v10, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 834
    .local v0, "accountHeader":Landroid/widget/TextView;
    const v9, 0x7f07004e

    invoke-virtual {p0, v9}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    const v9, 0x7f03001c

    iget-object v10, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 838
    .local v2, "appHeader":Landroid/widget/TextView;
    const v9, 0x7f070084

    invoke-virtual {p0, v9}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    const v9, 0x7f03001b

    iget-object v10, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 843
    .local v7, "sectionDividerOne":Landroid/view/View;
    const v9, 0x7f03001b

    iget-object v10, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 846
    .local v8, "sectionDividerTwo":Landroid/view/View;
    new-instance v9, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-direct {v9, p0, v1}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;)V

    iput-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAccountAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    .line 847
    new-instance v9, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-direct {v9, p0, v3}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;)V

    iput-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAppAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    .line 848
    new-instance v9, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-direct {v9, p0, v6}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;)V

    iput-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mPersonalAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    .line 850
    new-instance v9, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v9}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 851
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v9, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 852
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    iget-object v10, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mPersonalAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-virtual {v9, v10}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 853
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v9, v7}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 854
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v9, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 855
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    iget-object v10, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAccountAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-virtual {v9, v10}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 856
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v9, v8}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 857
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v9, v2}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 858
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    iget-object v10, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAppAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-virtual {v9, v10}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 860
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 861
    iget-object v9, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 862
    return-void

    .line 802
    .end local v0    # "accountHeader":Landroid/widget/TextView;
    .end local v1    # "accountItems":[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    .end local v2    # "appHeader":Landroid/widget/TextView;
    .end local v3    # "appItems":[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "personalHeader":Landroid/widget/TextView;
    .end local v6    # "personalItems":[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    .end local v7    # "sectionDividerOne":Landroid/view/View;
    .end local v8    # "sectionDividerTwo":Landroid/view/View;
    :cond_0
    const/4 v9, 0x5

    new-array v1, v9, [Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;

    const/4 v9, 0x0

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$BitcoinUnitsItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    const/4 v9, 0x1

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$LimitsItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    const/4 v9, 0x2

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$ManageAccountsItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$ManageAccountsItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$PhoneNumberItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    const/4 v9, 0x4

    new-instance v10, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/coinbase/android/settings/AccountSettingsFragment$NativeCurrencyItem;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;Lcom/coinbase/android/settings/AccountSettingsFragment$1;)V

    aput-object v10, v1, v9

    .restart local v1    # "accountItems":[Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListItem;
    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 908
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 909
    new-instance v0, Lcom/coinbase/android/pin/PINSettingDialogFragment;

    invoke-direct {v0}, Lcom/coinbase/android/pin/PINSettingDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "pin"

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/pin/PINSettingDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 912
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lroboguice/fragment/RoboFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 913
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 687
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onAttach(Landroid/app/Activity;)V

    .line 688
    iput-object p1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mParent:Landroid/app/Activity;

    .line 689
    return-void
.end method

.method public onConfirmSignOut()V
    .locals 4

    .prologue
    .line 883
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 884
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mTimer:Ljava/util/Timer;

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 887
    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mParent:Landroid/app/Activity;

    const v3, 0x7f070203

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/coinbase/android/settings/AccountSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/settings/AccountSettingsFragment$2;-><init>(Lcom/coinbase/android/settings/AccountSettingsFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 900
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 661
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onCreate(Landroid/os/Bundle;)V

    .line 662
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 663
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 673
    const v1, 0x7f030056

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 674
    .local v0, "view":Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mListView:Landroid/widget/ListView;

    .line 675
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 667
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onDestroy()V

    .line 668
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 669
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 693
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/coinbase/android/settings/AccountSettingsFragment;->editItem(I)V

    .line 694
    return-void
.end method

.method public onPINPromptSuccessfulReturn()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 773
    iget v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mPinItem:I

    if-eq v0, v1, :cond_0

    .line 774
    iget v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mPinItem:I

    invoke-direct {p0, v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->editItem(I)V

    .line 775
    iput v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mPinItem:I

    .line 777
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 872
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 873
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAccountAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    if-eqz v0, :cond_0

    .line 874
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->userDataUpdated(Lcom/coinbase/android/event/UserDataUpdatedEvent;)V

    .line 875
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 866
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 867
    invoke-virtual {p0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->refresh()V

    .line 868
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 879
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 880
    return-void
.end method

.method public onSwitchedTo()V
    .locals 0

    .prologue
    .line 769
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 680
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 682
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/coinbase/android/settings/AccountSettingsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 683
    return-void
.end method

.method public receiveAddressUpdated(Lcom/coinbase/android/event/ReceiveAddressUpdatedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/coinbase/android/event/ReceiveAddressUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Receive address updated, refreshing list adapter"

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAccountAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;->notifyDataSetChanged()V

    .line 720
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAppAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;->notifyDataSetChanged()V

    .line 721
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 705
    new-instance v0, Lcom/coinbase/android/settings/RefreshSettingsTask;

    iget-object v1, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mParent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/coinbase/android/settings/RefreshSettingsTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/coinbase/android/settings/RefreshSettingsTask;->execute()V

    .line 706
    return-void
.end method

.method public shouldShowKeyboard()Z
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x0

    return v0
.end method

.method public userDataUpdated(Lcom/coinbase/android/event/UserDataUpdatedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/coinbase/android/event/UserDataUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 710
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User data updated, refreshing list adapter"

    invoke-static {v0, v1}, Lcom/coinbase/android/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAccountAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;->notifyDataSetChanged()V

    .line 712
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mAppAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;->notifyDataSetChanged()V

    .line 713
    iget-object v0, p0, Lcom/coinbase/android/settings/AccountSettingsFragment;->mPersonalAdapter:Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/settings/AccountSettingsFragment$PreferenceListAdapter;->notifyDataSetChanged()V

    .line 714
    return-void
.end method
