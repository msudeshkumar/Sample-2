.class public Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder;
.super Ljava/lang/Object;
.source "CurrencySelectorLayout$$ViewBinder.java"

# interfaces
.implements Lbutterknife/internal/ViewBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/coinbase/android/ui/CurrencySelectorLayout;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/internal/ViewBinder",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    .local p0, "this":Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder;, "Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Lbutterknife/internal/Finder;Lcom/coinbase/android/ui/CurrencySelectorLayout;Ljava/lang/Object;)Lbutterknife/Unbinder;
    .locals 1
    .param p1, "finder"    # Lbutterknife/internal/Finder;
    .param p3, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbutterknife/internal/Finder;",
            "TT;",
            "Ljava/lang/Object;",
            ")",
            "Lbutterknife/Unbinder;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder;, "Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder<TT;>;"
    .local p2, "target":Lcom/coinbase/android/ui/CurrencySelectorLayout;, "TT;"
    new-instance v0, Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder;

    invoke-direct {v0, p2, p1, p3}, Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder$InnerUnbinder;-><init>(Lcom/coinbase/android/ui/CurrencySelectorLayout;Lbutterknife/internal/Finder;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic bind(Lbutterknife/internal/Finder;Ljava/lang/Object;Ljava/lang/Object;)Lbutterknife/Unbinder;
    .locals 1

    .prologue
    .line 12
    .local p0, "this":Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder;, "Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder<TT;>;"
    check-cast p2, Lcom/coinbase/android/ui/CurrencySelectorLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coinbase/android/ui/CurrencySelectorLayout$$ViewBinder;->bind(Lbutterknife/internal/Finder;Lcom/coinbase/android/ui/CurrencySelectorLayout;Ljava/lang/Object;)Lbutterknife/Unbinder;

    move-result-object v0

    return-object v0
.end method
