.class Lcom/coinbase/android/transactions/TransactionDetailsFragment$5;
.super Ljava/lang/Object;
.source "TransactionDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionDetailsFragment;->fillViewsForTransaction(Lcom/coinbase/v2/models/transactions/Data;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

.field final synthetic val$moneyAmount:Lorg/joda/money/BigMoney;

.field final synthetic val$tx:Lcom/coinbase/v2/models/transactions/Data;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/v2/models/transactions/Data;Lorg/joda/money/BigMoney;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$5;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    iput-object p2, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$5;->val$tx:Lcom/coinbase/v2/models/transactions/Data;

    iput-object p3, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$5;->val$moneyAmount:Lorg/joda/money/BigMoney;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$5;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsFragment;

    sget-object v1, Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;->CANCEL:Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$5;->val$tx:Lcom/coinbase/v2/models/transactions/Data;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/transactions/Data;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coinbase/android/transactions/TransactionDetailsFragment$5;->val$moneyAmount:Lorg/joda/money/BigMoney;

    invoke-virtual {v3}, Lorg/joda/money/BigMoney;->isNegative()Z

    move-result v3

    # invokes: Lcom/coinbase/android/transactions/TransactionDetailsFragment;->takeAction(Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/coinbase/android/transactions/TransactionDetailsFragment;->access$600(Lcom/coinbase/android/transactions/TransactionDetailsFragment;Lcom/coinbase/android/transactions/TransactionDetailsFragment$ActionType;Ljava/lang/String;Z)V

    .line 498
    return-void
.end method
