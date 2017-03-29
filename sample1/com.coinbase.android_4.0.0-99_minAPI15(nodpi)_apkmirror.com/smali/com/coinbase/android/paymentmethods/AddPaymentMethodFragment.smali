.class public Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;
.super Lroboguice/fragment/RoboFragment;
.source "AddPaymentMethodFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;
    }
.end annotation


# instance fields
.field mBus:Lcom/squareup/otto/Bus;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field mIbanInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0173
    .end annotation
.end field

.field mNameInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0172
    .end annotation
.end field

.field mSubmitButton:Landroid/widget/Button;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0175
    .end annotation
.end field

.field mSwiftInput:Landroid/widget/EditText;
    .annotation runtime Lroboguice/inject/InjectView;
        value = 0x7f0d0174
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lroboguice/fragment/RoboFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lroboguice/fragment/RoboFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v0

    const-string v1, "Event - Add sepa bank account screen"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 104
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->mNameInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->mIbanInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "iban":Ljava/lang/String;
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->mSwiftInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "swift":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701cf

    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701d0

    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 118
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0701d2

    invoke-virtual {p0, v1}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 123
    :cond_2
    new-instance v0, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;

    invoke-virtual {p0}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;-><init>(Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/AddPaymentMethodFragment$AddPaymentMethodTask;->execute()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    const v0, 0x7f030059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
