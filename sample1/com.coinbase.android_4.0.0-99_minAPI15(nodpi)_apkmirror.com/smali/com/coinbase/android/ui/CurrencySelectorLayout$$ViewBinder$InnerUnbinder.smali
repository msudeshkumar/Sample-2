.class public Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder;
.super Ljava/lang/Object;
.source "CurrencySelectorLayout$$ViewBinder.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InnerUnbinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/coinbase/android/ui/CurrencySelectorLayout;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/coinbase/android/ui/CurrencySelectorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/coinbase/android/ui/CurrencySelectorLayout;Lbutterknife/internal/Finder;Ljava/lang/Object;)V
    .locals 3
    .param p2, "finder"    # Lbutterknife/internal/Finder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lbutterknife/internal/Finder;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder;, "Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder<TT;>;"
    .local p1, "target":Lcom/coinbase/android/ui/CurrencySelectorLayout;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder;->target:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    .line 24
    const v0, 0x7f0d013d

    const-string v1, "field \'mBitcoinCurrencyButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mBitcoinCurrencyButton:Landroid/widget/Button;

    .line 25
    const v0, 0x7f0d013e

    const-string v1, "field \'mEthereumCurrencyButton\'"

    const-class v2, Landroid/widget/Button;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mEthereumCurrencyButton:Landroid/widget/Button;

    .line 26
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder;, "Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder<TT;>;"
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder;->target:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    .line 31
    .local v0, "target":Lcom/coinbase/android/ui/CurrencySelectorLayout;, "TT;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    iput-object v1, v0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mBitcoinCurrencyButton:Landroid/widget/Button;

    .line 34
    iput-object v1, v0, Lcom/coinbase/android/ui/CurrencySelectorLayout;->mEthereumCurrencyButton:Landroid/widget/Button;

    .line 36
    iput-object v1, p0, Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder;->target:Lcom/coinbase/android/ui/CurrencySelectorLayout;

    .line 37
    return-void
.end method
