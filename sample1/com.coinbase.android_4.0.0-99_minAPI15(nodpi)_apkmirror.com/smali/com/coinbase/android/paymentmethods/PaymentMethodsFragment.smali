.class public Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;
.super Lroboguice/fragment/RoboFragment;
.source "PaymentMethodsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;,
        Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;,
        Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;,
        Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    }
.end annotation


# static fields
.field public static final INTENT_BANK_ACCOUNT:I = 0x2713

.field public static final INTENT_DEBIT_CARD:I = 0x2712

.field public static final INTENT_VERIFY:I = 0x2711


# instance fields
.field argumentsRead:Z

.field bankAccountButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01df
    .end annotation
.end field

.field cardButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01de
    .end annotation
.end field

.field coinbaseOverlay:Landroid/widget/FrameLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01db
    .end annotation
.end field

.field floatingActionButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/getbase/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mEmptyView:Landroid/widget/TextView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x1020004
    .end annotation
.end field

.field mListView:Landroid/widget/ListView;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x102000a
    .end annotation
.end field

.field mLoginManager:Lcom/coinbase/api/LoginManager;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mProgress:Landroid/view/View;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x102000d
    .end annotation
.end field

.field overlayLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d00c3
    .end annotation
.end field

.field paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01dc
    .end annotation
.end field

.field requiresBillingAddress:Z

.field requiresCDV:Z

.field requiresJumio:Z

.field sepaButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d01dd
    .end annotation
.end field

.field task:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    .line 210
    iput-boolean v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresCDV:Z

    .line 211
    iput-boolean v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresBillingAddress:Z

    .line 212
    iput-boolean v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresJumio:Z

    .line 213
    iput-boolean v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->argumentsRead:Z

    return-void
.end method

.method static synthetic access$000(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->addBankAccount()V

    return-void
.end method

.method static synthetic access$100(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->setUpAvailablePaymentMethods(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->setUpVerificationRequirements(Ljava/util/List;)V

    return-void
.end method

.method private addBankAccount()V
    .locals 4

    .prologue
    .line 344
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-static {v1}, Lcom/coinbase/android/utils/PaymentMethodUtils;->isUSUser(Lcom/coinbase/api/LoginManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/paymentmethods/AddPlaidAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x2713

    invoke-virtual {p0, v0, v1}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Add bank account from settings"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 350
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->task:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;->getPaymentMethods()V

    .line 354
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getAvailablePaymentMethods()V

    .line 355
    return-void
.end method

.method private setUpAvailablePaymentMethods(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;>;"
    const/4 v7, 0x0

    .line 415
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->coinbaseOverlay:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 416
    const/4 v3, 0x0

    .line 419
    .local v3, "showFab":Z
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->floatingActionButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 420
    .local v0, "fab":Lcom/getbase/floatingactionbutton/FloatingActionButton;
    iget-object v5, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v5, v0}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->removeButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V

    goto :goto_0

    .line 422
    .end local v0    # "fab":Lcom/getbase/floatingactionbutton/FloatingActionButton;
    :cond_0
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->floatingActionButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;

    .line 425
    .local v1, "paymentMethod":Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;
    invoke-virtual {v1}, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->fromString(Ljava/lang/String;)Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    move-result-object v2

    .line 427
    .local v2, "paymentMethodType":Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    sget-object v5, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$8;->$SwitchMap$com$coinbase$android$paymentmethods$PaymentMethodsFragment$PaymentMethodType:[I

    invoke-virtual {v2}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 430
    :pswitch_0
    iget-object v5, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->floatingActionButtons:Ljava/util/List;

    iget-object v6, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->cardButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    const/4 v3, 0x1

    .line 434
    goto :goto_1

    .line 437
    :pswitch_1
    iget-object v5, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->floatingActionButtons:Ljava/util/List;

    iget-object v6, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->bankAccountButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    const/4 v3, 0x1

    .line 440
    goto :goto_1

    .line 443
    :pswitch_2
    iget-object v5, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->floatingActionButtons:Ljava/util/List;

    iget-object v6, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->sepaButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    const/4 v3, 0x1

    .line 446
    goto :goto_1

    .line 453
    .end local v1    # "paymentMethod":Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;
    .end local v2    # "paymentMethodType":Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    :cond_1
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->floatingActionButtons:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 454
    .restart local v0    # "fab":Lcom/getbase/floatingactionbutton/FloatingActionButton;
    iget-object v5, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v5, v0}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->addButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V

    goto :goto_2

    .line 457
    .end local v0    # "fab":Lcom/getbase/floatingactionbutton/FloatingActionButton;
    :cond_2
    if-eqz v3, :cond_3

    .line 458
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v4, v7}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->setVisibility(I)V

    .line 463
    :goto_3
    return-void

    .line 461
    :cond_3
    iget-object v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->coinbaseOverlay:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setUpVerificationRequirements(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;>;"
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 466
    iput-boolean v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresCDV:Z

    .line 467
    iput-boolean v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresBillingAddress:Z

    .line 468
    iput-boolean v4, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresJumio:Z

    .line 470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;

    .line 471
    .local v0, "paymentMethod":Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;
    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->fromString(Ljava/lang/String;)Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    move-result-object v1

    .line 473
    .local v1, "paymentMethodType":Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    sget-object v5, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->DEBIT_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    if-eq v1, v5, :cond_1

    sget-object v5, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;->CREDIT_CARD:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;

    if-ne v1, v5, :cond_0

    .line 474
    :cond_1
    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->getVerifyRequirements()Ljava/util/List;

    move-result-object v3

    .line 476
    .local v3, "verifyRequirements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->CARDS_CDV:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    invoke-virtual {v5}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 477
    iput-boolean v6, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresCDV:Z

    .line 480
    :cond_2
    sget-object v5, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->FULL_ADDRESS:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;

    invoke-virtual {v5}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$VerifyRequirementType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 481
    iput-boolean v6, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresBillingAddress:Z

    .line 484
    :cond_3
    invoke-virtual {v0}, Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;->getRequirements()Ljava/util/List;

    move-result-object v2

    .line 486
    .local v2, "requirements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;->JUMIO:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;

    invoke-virtual {v5}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$RequirementType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 487
    iput-boolean v6, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->requiresJumio:Z

    goto :goto_0

    .line 491
    .end local v0    # "paymentMethod":Lcom/coinbase/api/internal/models/availablePaymentMethods/AvailablePaymentMethod;
    .end local v1    # "paymentMethodType":Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodType;
    .end local v2    # "requirements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "verifyRequirements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public getAvailablePaymentMethods()V
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mLoginManager:Lcom/coinbase/api/LoginManager;

    invoke-interface {v0}, Lcom/coinbase/api/LoginManager;->getClient()Lcom/coinbase/api/internal/CoinbaseInternal;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$7;

    invoke-direct {v2, p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$7;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/api/internal/CoinbaseInternal;->getAvailablePaymentMethods(Ljava/lang/String;Lretrofit/Callback;)Lretrofit/Call;

    .line 412
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 382
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 384
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 388
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lroboguice/fragment/RoboFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    const v0, 0x7f030079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPaymentMethodsUpdated(Lcom/coinbase/android/event/PaymentMethodsUpdatedEvent;)V
    .locals 0
    .param p1, "e"    # Lcom/coinbase/android/event/PaymentMethodsUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->refresh()V

    .line 378
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 371
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onResume()V

    .line 372
    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->refresh()V

    .line 373
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 359
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStart()V

    .line 360
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 365
    invoke-super {p0}, Lroboguice/fragment/RoboFragment;->onStop()V

    .line 366
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 226
    invoke-super {p0, p1, p2}, Lroboguice/fragment/RoboFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 228
    new-instance v0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mAdapter:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    .line 229
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->mAdapter:Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$PaymentMethodAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->overlayLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$1;

    invoke-direct {v1, p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$1;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    new-instance v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;

    invoke-direct {v1, p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$2;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->addOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->cardButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$3;

    invoke-direct {v1, p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$3;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->bankAccountButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$4;

    invoke-direct {v1, p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$4;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->sepaButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    new-instance v1, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$5;

    invoke-direct {v1, p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$5;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V

    invoke-virtual {v0, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->setVisibility(I)V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->floatingActionButtons:Ljava/util/List;

    .line 294
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->cardButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->removeButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V

    .line 295
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->bankAccountButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->removeButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V

    .line 296
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->paymentButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->sepaButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->removeButton(Lcom/getbase/floatingactionbutton/FloatingActionButton;)V

    .line 298
    new-instance v0, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;

    invoke-direct {v2, p0}, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment$6;-><init>(Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;-><init>(Landroid/content/Context;Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask$GetPaymentMethodsListener;)V

    iput-object v0, p0, Lcom/coinbase/android/paymentmethods/PaymentMethodsFragment;->task:Lcom/coinbase/android/paymentmethods/GetPaymentMethodsTask;

    .line 341
    return-void
.end method
