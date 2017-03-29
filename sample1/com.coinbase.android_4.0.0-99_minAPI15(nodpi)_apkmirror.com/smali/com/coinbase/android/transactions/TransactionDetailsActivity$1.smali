.class Lcom/coinbase/android/transactions/TransactionDetailsActivity$1;
.super Ljava/lang/Object;
.source "TransactionDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionDetailsActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionDetailsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionDetailsActivity;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionDetailsActivity$1;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/coinbase/android/transactions/TransactionDetailsActivity$1;->this$0:Lcom/coinbase/android/transactions/TransactionDetailsActivity;

    invoke-virtual {v0}, Lcom/coinbase/android/transactions/TransactionDetailsActivity;->finish()V

    .line 28
    return-void
.end method
