.class Lcom/coinbase/android/pricechart/ChartsFragment$2;
.super Ljava/lang/Object;
.source "ChartsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/pricechart/ChartsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/pricechart/ChartsFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/pricechart/ChartsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/pricechart/ChartsFragment;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/coinbase/android/pricechart/ChartsFragment$2;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/coinbase/android/pricechart/ChartsFragment$2;->this$0:Lcom/coinbase/android/pricechart/ChartsFragment;

    invoke-virtual {v0}, Lcom/coinbase/android/pricechart/ChartsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/MainActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coinbase/android/MainActivity;->switchTo(I)V

    .line 99
    return-void
.end method
