.class Lcom/coinbase/android/buysell/AbstractBuySellFragment$7;
.super Ljava/lang/Object;
.source "AbstractBuySellFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/buysell/AbstractBuySellFragment;->initializeAccountsSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$7;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$7;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    iget-object v0, p0, Lcom/coinbase/android/buysell/AbstractBuySellFragment$7;->this$0:Lcom/coinbase/android/buysell/AbstractBuySellFragment;

    # getter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mAccountsAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$800(Lcom/coinbase/android/buysell/AbstractBuySellFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v2/models/account/Data;

    # setter for: Lcom/coinbase/android/buysell/AbstractBuySellFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;
    invoke-static {v1, v0}, Lcom/coinbase/android/buysell/AbstractBuySellFragment;->access$702(Lcom/coinbase/android/buysell/AbstractBuySellFragment;Lcom/coinbase/v2/models/account/Data;)Lcom/coinbase/v2/models/account/Data;

    .line 700
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
