.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$7;
.super Lcom/coinbase/android/paymentmethods/card/CardCDVDialogFragment;
.source "CardFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->submitForm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$7;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {p0}, Lcom/coinbase/android/paymentmethods/card/CardCDVDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserConfirm()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$7;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->paymentCardSetup()V
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->access$200(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    .line 262
    return-void
.end method
