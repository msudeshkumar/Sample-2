.class public Lcom/coinbase/android/ui/SlidingDrawerFragment;
.super Lroboguice/fragment/RoboFragment;
.source "SlidingDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/ui/SlidingDrawerFragment$UpdateAvatarTask;,
        Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;,
        Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;
    }
.end annotation


# instance fields
.field ONE_BTC:Lorg/joda/money/BigMoneyProvider;

.field mAccountsAdapter:Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

.field protected mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mProfileView:Landroid/view/View;

.field mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 132
    const-string v0, "BTC"

    invoke-static {v0}, Lorg/joda/money/CurrencyUnit;->getInstance(Ljava/lang/String;)Lorg/joda/money/CurrencyUnit;

    move-result-object v0

    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Lorg/joda/money/BigMoney;->of(Lorg/joda/money/CurrencyUnit;Ljava/math/BigDecimal;)Lorg/joda/money/BigMoney;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->ONE_BTC:Lorg/joda/money/BigMoneyProvider;

    return-void
.end method

.method private createProfileView()V
    .locals 9

    .prologue
    const/16 v8, 0x40

    const/4 v7, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f030028

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mProfileView:Landroid/view/View;

    .line 147
    iget-object v4, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mProfileView:Landroid/view/View;

    const v5, 0x7f0d00fa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 149
    .local v3, "photo":Landroid/widget/ImageView;
    new-instance v4, Lcom/coinbase/android/ui/AvatarDrawable;

    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020139

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/coinbase/android/ui/AvatarDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 154
    invoke-direct {p0, v8, v0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->dpToPx(ILandroid/content/Context;)I

    move-result v4

    .line 155
    invoke-direct {p0, v8, v0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->dpToPx(ILandroid/content/Context;)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x18

    invoke-direct {p0, v4, v0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->dpToPx(ILandroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v4, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mProfileView:Landroid/view/View;

    const v5, 0x7f0d00f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 160
    .local v1, "drawerHeader":Landroid/widget/RelativeLayout;
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 163
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "drawerHeader":Landroid/widget/RelativeLayout;
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v4, Lcom/coinbase/android/ui/SlidingDrawerFragment$1;

    invoke-direct {v4, p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment$1;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v4, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mProfileView:Landroid/view/View;

    const v5, 0x7f0d00fb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 171
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "Roboto-Medium"

    invoke-static {v5, v6}, Lcom/coinbase/android/ui/FontManager;->getFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 173
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->refreshProfileView()V

    .line 174
    return-void
.end method

.method private dpToPx(ILandroid/content/Context;)I
    .locals 4
    .param p1, "dp"    # I
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x1

    int-to-float v2, p1

    .line 141
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 138
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method private updateSections()V
    .locals 9

    .prologue
    .line 276
    iget-object v2, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mAccountsAdapter:Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

    invoke-virtual {v2}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->clear()V

    .line 277
    iget-object v2, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v2}, Lcom/coinbase/api/LoginManager;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 278
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/v2/models/account/Data;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    .line 279
    .local v0, "account":Lcom/coinbase/v2/models/account/Data;
    iget-object v3, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mAccountsAdapter:Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

    new-instance v4, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;

    invoke-virtual {v0}, Lcom/coinbase/v2/models/account/Data;->getName()Ljava/lang/String;

    move-result-object v5

    .line 280
    invoke-static {v0}, Lcom/coinbase/android/utils/AccountUtils;->getAccountIcon(Lcom/coinbase/v2/models/account/Data;)I

    move-result v6

    new-instance v7, Lcom/coinbase/android/ui/Mintent;

    sget-object v8, Lcom/coinbase/android/utils/Section;->TRANSACTIONS:Lcom/coinbase/android/utils/Section;

    invoke-direct {v7, v8, v0}, Lcom/coinbase/android/ui/Mintent;-><init>(Lcom/coinbase/android/utils/Section;Ljava/lang/Object;)V

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;Ljava/lang/String;ILcom/coinbase/android/ui/Mintent;)V

    .line 279
    invoke-virtual {v3, v4}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 282
    .end local v0    # "account":Lcom/coinbase/v2/models/account/Data;
    :cond_0
    iget-object v2, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v2}, Lcom/commonsware/cwac/merge/MergeAdapter;->notifyDataSetChanged()V

    .line 283
    return-void
.end method


# virtual methods
.method public accountsUpdated(Lcom/coinbase/android/event/AccountsUpdatedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/coinbase/android/event/AccountsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->updateSections()V

    .line 272
    iget-object v0, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mAccountsAdapter:Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->notifyDataSetChanged()V

    .line 273
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 193
    const v8, 0x7f030084

    const/4 v9, 0x0

    invoke-virtual {p1, v8, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 194
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f0d0249

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 195
    .local v5, "listView":Landroid/widget/ListView;
    new-instance v8, Lcom/coinbase/android/ui/SlidingDrawerFragment$2;

    invoke-direct {v8, p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment$2;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    invoke-direct {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->createProfileView()V

    .line 211
    iget-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mProfileView:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 213
    new-instance v8, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v8}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 217
    new-instance v4, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f030051

    const v10, 0x7f0d009b

    invoke-direct {v4, p0, v8, v9, v10}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;Landroid/content/Context;II)V

    .line 218
    .local v4, "dashboardAdapater":Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;
    new-instance v8, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;

    const v9, 0x7f0702ee

    const v10, 0x7f020129

    sget-object v11, Lcom/coinbase/android/ui/Mintent;->CHARTS:Lcom/coinbase/android/ui/Mintent;

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;IILcom/coinbase/android/ui/Mintent;)V

    invoke-virtual {v4, v8}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->add(Ljava/lang/Object;)V

    .line 221
    const v8, 0x7f030050

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 222
    .local v6, "tradeHeader":Landroid/widget/TextView;
    const v8, 0x7f0702ef

    invoke-virtual {p0, v8}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v3, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f030051

    const v10, 0x7f0d009b

    invoke-direct {v3, p0, v8, v9, v10}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;Landroid/content/Context;II)V

    .line 224
    .local v3, "bitcoinOptionsAdapter":Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;
    new-instance v8, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;

    const v9, 0x7f070225

    const v10, 0x7f020126

    sget-object v11, Lcom/coinbase/android/ui/Mintent;->BUY:Lcom/coinbase/android/ui/Mintent;

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;IILcom/coinbase/android/ui/Mintent;)V

    invoke-virtual {v3, v8}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->add(Ljava/lang/Object;)V

    .line 226
    new-instance v8, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;

    const v9, 0x7f070227

    const v10, 0x7f020133

    sget-object v11, Lcom/coinbase/android/ui/Mintent;->SELL:Lcom/coinbase/android/ui/Mintent;

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;IILcom/coinbase/android/ui/Mintent;)V

    invoke-virtual {v3, v8}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->add(Ljava/lang/Object;)V

    .line 230
    const v8, 0x7f030050

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 231
    .local v0, "accountsHeader":Landroid/widget/TextView;
    const v8, 0x7f070064

    invoke-virtual {p0, v8}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    new-instance v8, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const v10, 0x7f030051

    const v11, 0x7f0d009b

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;Landroid/content/Context;II)V

    iput-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mAccountsAdapter:Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

    .line 235
    const v8, 0x7f030050

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    .local v2, "appSettingsHeader":Landroid/widget/TextView;
    const v8, 0x7f070181

    invoke-virtual {p0, v8}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    new-instance v1, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f030051

    const v10, 0x7f0d009b

    invoke-direct {v1, p0, v8, v9, v10}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;Landroid/content/Context;II)V

    .line 238
    .local v1, "appSettingsAdapter":Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;
    new-instance v8, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;

    const v9, 0x7f07021f

    const v10, 0x7f020136

    sget-object v11, Lcom/coinbase/android/ui/Mintent;->SETTINGS:Lcom/coinbase/android/ui/Mintent;

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;IILcom/coinbase/android/ui/Mintent;)V

    invoke-virtual {v1, v8}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->add(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/coinbase/android/googleappinvite/GoogleAppInviteUtils;->supportedGooglePlayServices(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 242
    new-instance v8, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;

    const v9, 0x7f070128

    const v10, 0x7f02012d

    sget-object v11, Lcom/coinbase/android/ui/Mintent;->INVITE_FRIENDS:Lcom/coinbase/android/ui/Mintent;

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;IILcom/coinbase/android/ui/Mintent;)V

    invoke-virtual {v1, v8}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->add(Ljava/lang/Object;)V

    .line 246
    :cond_0
    iget-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v8, v4}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    iget-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v8, v6}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 248
    iget-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v8, v3}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v8, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 250
    iget-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    iget-object v9, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mAccountsAdapter:Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

    invoke-virtual {v8, v9}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v8, v2}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 252
    iget-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v8, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addAdapter(Landroid/widget/ListAdapter;)V

    .line 254
    iget-object v8, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    return-object v7
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 295
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onPause()V

    .line 296
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 288
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 289
    invoke-direct {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->updateSections()V

    .line 290
    return-void
.end method

.method public refreshProfileView()V
    .locals 7

    .prologue
    .line 177
    iget-object v5, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mProfileView:Landroid/view/View;

    const v6, 0x7f0d00fb

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 178
    .local v3, "name":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mProfileView:Landroid/view/View;

    const v6, 0x7f0d00fc

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 180
    .local v0, "email":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 181
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "account_email"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "emailText":Ljava/lang/String;
    const-string v5, "account_full_name"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v1, 0x1

    .line 185
    .local v1, "emailChanged":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    new-instance v5, Lcom/coinbase/android/ui/SlidingDrawerFragment$UpdateAvatarTask;

    invoke-direct {v5, p0, v2}, Lcom/coinbase/android/ui/SlidingDrawerFragment$UpdateAvatarTask;-><init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/coinbase/android/ui/SlidingDrawerFragment$UpdateAvatarTask;->execute()V

    .line 189
    :cond_0
    return-void

    .line 184
    .end local v1    # "emailChanged":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sectionSelected(Lcom/coinbase/android/event/SectionSelectedEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/coinbase/android/event/SectionSelectedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mAccountsAdapter:Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListAdapter;->notifyDataSetChanged()V

    .line 267
    return-void
.end method

.method public userDataUpdated(Lcom/coinbase/android/event/UserDataUpdatedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/coinbase/android/event/UserDataUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->refreshProfileView()V

    .line 262
    return-void
.end method
