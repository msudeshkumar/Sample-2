.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$3;
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
    .line 203
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/coinbase/android/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    const-string v1, "com.coinbase.MainActivity.ACTION_BUY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$3;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method
