.class Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$3;
.super Ljava/lang/Object;
.source "PlaidAccountLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity$3;->this$0:Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/paymentmethods/PlaidAccountLoginActivity;->hideRoutingDetails()V

    .line 192
    return-void
.end method
