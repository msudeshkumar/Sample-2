.class Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;
.super Ljava/lang/Object;
.source "CardFormFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpireTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Lcom/coinbase/android/paymentmethods/card/CardFormFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment;
    .param p2, "x1"    # Lcom/coinbase/android/paymentmethods/card/CardFormFragment$1;

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;-><init>(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/card/CardFormFragment$ExpireTextWatcher;->this$0:Lcom/coinbase/android/paymentmethods/card/CardFormFragment;

    # invokes: Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->formatExpireDateString(Landroid/text/Editable;)V
    invoke-static {v0, p1}, Lcom/coinbase/android/paymentmethods/card/CardFormFragment;->access$300(Lcom/coinbase/android/paymentmethods/card/CardFormFragment;Landroid/text/Editable;)V

    .line 286
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 276
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 281
    return-void
.end method
