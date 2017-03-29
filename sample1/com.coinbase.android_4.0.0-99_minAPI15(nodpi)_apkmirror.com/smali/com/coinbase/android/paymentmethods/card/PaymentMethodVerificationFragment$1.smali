.class Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$1;
.super Ljava/lang/Object;
.source "PaymentMethodVerificationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 97
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    sget-object v4, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->NEW:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    iget-object v3, v3, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->status:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    sget-object v4, Lcom/coinbase/api/internal/entity/JumioProfile$Status;->FAILED:Lcom/coinbase/api/internal/entity/JumioProfile$Status;

    if-ne v3, v4, :cond_1

    .line 98
    :cond_0
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 99
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "SHOULD_NAVIGATE_TO_DEBIT"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/coinbase/android/identityVerification/IdentityVerificationActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->IDENTITY_VERIFICATION_SKIP_SELECTOR:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 105
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    invoke-virtual {v3, v1}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->startActivity(Landroid/content/Intent;)V

    .line 106
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;

    invoke-virtual {v3}, Lcom/coinbase/android/paymentmethods/card/PaymentMethodVerificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 108
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method
