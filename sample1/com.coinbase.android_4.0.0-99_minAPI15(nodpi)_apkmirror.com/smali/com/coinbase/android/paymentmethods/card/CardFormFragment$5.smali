.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$5;
.super Ljava/lang/Object;
.source "CardFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 221
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$5;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->submitForm()V
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->access$000(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    .line 225
    return-void
.end method
