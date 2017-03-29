.class Lcom/coinbase/android/transactions/TransactionsFragment$7;
.super Ljava/lang/Object;
.source "TransactionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/transactions/TransactionsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/transactions/TransactionsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transactions/TransactionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transactions/TransactionsFragment;

    .prologue
    .line 554
    iput-object p1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 557
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    if-nez v1, :cond_0

    .line 609
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mTransferButtonsContainer:Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;

    invoke-virtual {v1}, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->isExpanded()Z

    move-result v0

    .line 562
    .local v0, "expanded":Z
    if-eqz v0, :cond_4

    .line 563
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlay:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 564
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlay:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlay:Landroid/view/View;

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # getter for: Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlayClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$600(Lcom/coinbase/android/transactions/TransactionsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlay:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 568
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlay:Landroid/view/View;

    invoke-static {v1, v7, v3, v6}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    .line 570
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z
    invoke-static {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$700(Lcom/coinbase/android/transactions/TransactionsFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mDetailsOverlay:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 572
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mDetailsOverlay:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mDetailsOverlay:Landroid/view/View;

    iget-object v2, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # getter for: Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlayClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v2}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$600(Lcom/coinbase/android/transactions/TransactionsFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mDetailsOverlay:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 576
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mDetailsOverlay:Landroid/view/View;

    invoke-static {v1, v7, v3, v6}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    .line 579
    :cond_1
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mSelectedAccount:Lcom/coinbase/v2/models/account/Data;

    invoke-virtual {v1}, Lcom/coinbase/v2/models/account/Data;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/coinbase/v2/models/account/Data$Type;->FIAT:Lcom/coinbase/v2/models/account/Data$Type;

    invoke-virtual {v2}, Lcom/coinbase/v2/models/account/Data$Type;->toString()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 580
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Send request initiated"

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Property: Type: fiat"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 608
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    invoke-virtual {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/coinbase/android/CoinbaseDrawerActivity;

    invoke-virtual {v1, v0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->setActionBarOverlayVisibility(Z)V

    goto/16 :goto_0

    .line 583
    :cond_3
    invoke-static {}, Lcom/coinbase/android/utils/MixpanelTracking;->getInstance()Lcom/coinbase/android/utils/MixpanelTracking;

    move-result-object v1

    const-string v2, "Event - Send request initiated"

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Property: Type: crypto"

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/coinbase/android/utils/MixpanelTracking;->trackEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    .line 587
    :cond_4
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mOverlay:Landroid/view/View;

    new-instance v2, Lcom/coinbase/android/transactions/TransactionsFragment$7$1;

    invoke-direct {v2, p0}, Lcom/coinbase/android/transactions/TransactionsFragment$7$1;-><init>(Lcom/coinbase/android/transactions/TransactionsFragment$7;)V

    invoke-static {v1, v4, v3, v2}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    .line 602
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    # invokes: Lcom/coinbase/android/transactions/TransactionsFragment;->isLandscapeTablet()Z
    invoke-static {v1}, Lcom/coinbase/android/transactions/TransactionsFragment;->access$700(Lcom/coinbase/android/transactions/TransactionsFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 603
    iget-object v1, p0, Lcom/coinbase/android/transactions/TransactionsFragment$7;->this$0:Lcom/coinbase/android/transactions/TransactionsFragment;

    iget-object v1, v1, Lcom/coinbase/android/transactions/TransactionsFragment;->mDetailsOverlay:Landroid/view/View;

    invoke-static {v1, v4, v3, v6}, Lcom/coinbase/android/utils/Utils;->setAlpha(Landroid/view/View;FZLjava/lang/Runnable;)V

    goto :goto_1
.end method
