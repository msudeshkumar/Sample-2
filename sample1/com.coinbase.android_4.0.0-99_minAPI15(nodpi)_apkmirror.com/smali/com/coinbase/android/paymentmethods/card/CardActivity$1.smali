.class Lcom/coinbase/android/paymentmethods/card/CardActivity$1;
.super Ljava/lang/Object;
.source "CardActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coinbase/android/paymentmethods/card/CardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;


# direct methods
.method constructor <init>(Lcom/coinbase/android/paymentmethods/card/CardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/paymentmethods/card/CardActivity;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$1;->this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 4

    .prologue
    .line 54
    iget-object v3, p0, Lcom/coinbase/android/paymentmethods/card/CardActivity$1;->this$0:Lcom/coinbase/android/paymentmethods/card/CardActivity;

    invoke-virtual {v3}, Lcom/coinbase/android/paymentmethods/card/CardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 55
    .local v2, "manager":Landroid/support/v4/app/FragmentManager;
    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 57
    .local v0, "backStackEntryCount":I
    if-gez v0, :cond_1

    .line 65
    .end local v0    # "backStackEntryCount":I
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local v0    # "backStackEntryCount":I
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    .line 61
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 62
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onResume()V

    goto :goto_0
.end method
