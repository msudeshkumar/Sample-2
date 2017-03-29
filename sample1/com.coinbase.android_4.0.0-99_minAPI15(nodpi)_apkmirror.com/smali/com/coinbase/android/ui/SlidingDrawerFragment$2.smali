.class Lcom/coinbase/android/ui/SlidingDrawerFragment$2;
.super Ljava/lang/Object;
.source "SlidingDrawerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/ui/SlidingDrawerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/ui/SlidingDrawerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/ui/SlidingDrawerFragment;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$2;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 198
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$2;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    iget-object v2, v2, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$2;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    iget-object v2, v2, Lcom/coinbase/android/ui/SlidingDrawerFragment;->mergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Lcom/commonsware/cwac/merge/MergeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 200
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 201
    check-cast v0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;

    .line 202
    .local v0, "fragment":Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;
    iget-object v2, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$2;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/coinbase/android/CoinbaseDrawerActivity;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$2;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    invoke-virtual {v2}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/coinbase/android/CoinbaseDrawerActivity;

    iget-object v3, v0, Lcom/coinbase/android/ui/SlidingDrawerFragment$SectionsListItem;->mintent:Lcom/coinbase/android/ui/Mintent;

    invoke-virtual {v2, v3}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onDrawerItemClicked(Lcom/coinbase/android/ui/Mintent;)V

    goto :goto_0
.end method
