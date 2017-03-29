.class Lcom/coinbase/android/ui/SlidingDrawerFragment$1;
.super Ljava/lang/Object;
.source "SlidingDrawerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/ui/SlidingDrawerFragment;->createProfileView()V
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
    .line 163
    iput-object p1, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$1;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/coinbase/android/ui/SlidingDrawerFragment$1;->this$0:Lcom/coinbase/android/ui/SlidingDrawerFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/SlidingDrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/CoinbaseDrawerActivity;

    sget-object v1, Lcom/coinbase/android/ui/Mintent;->SETTINGS:Lcom/coinbase/android/ui/Mintent;

    invoke-virtual {v0, v1}, Lcom/coinbase/android/CoinbaseDrawerActivity;->onDrawerItemClicked(Lcom/coinbase/android/ui/Mintent;)V

    .line 167
    return-void
.end method
