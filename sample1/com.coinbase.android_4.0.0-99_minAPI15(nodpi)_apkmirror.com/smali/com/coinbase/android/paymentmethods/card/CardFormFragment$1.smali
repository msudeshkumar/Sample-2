.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$1;
.super Ljava/lang/Object;
.source "CardFormFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 176
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 179
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$1;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->submitForm()V
    invoke-static {v0}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->access$000(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    .line 183
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
