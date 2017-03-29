.class Lcom/coinbase/android/CoinbaseDrawerActivity$2;
.super Ljava/lang/Object;
.source "CoinbaseDrawerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/CoinbaseDrawerActivity;->setActionBarOverlayVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/CoinbaseDrawerActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/CoinbaseDrawerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/CoinbaseDrawerActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/coinbase/android/CoinbaseDrawerActivity$2;->this$0:Lcom/coinbase/android/CoinbaseDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity$2;->this$0:Lcom/coinbase/android/CoinbaseDrawerActivity;

    # getter for: Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbarOverlay:Landroid/view/View;
    invoke-static {v0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->access$000(Lcom/coinbase/android/CoinbaseDrawerActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/coinbase/android/CoinbaseDrawerActivity$2;->this$0:Lcom/coinbase/android/CoinbaseDrawerActivity;

    # getter for: Lcom/coinbase/android/CoinbaseDrawerActivity;->mToolbarOverlay:Landroid/view/View;
    invoke-static {v0}, Lcom/coinbase/android/CoinbaseDrawerActivity;->access$000(Lcom/coinbase/android/CoinbaseDrawerActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 154
    return-void
.end method
