.class public Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem$$ViewBinder$InnerUnbinder;
.super Ljava/lang/Object;
.source "CreatePriceAlertAdapter$ViewHolderItem$$ViewBinder.java"

# interfaces
.implements Lbutterknife/Unbinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem$$ViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "InnerUnbinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;",
        ">",
        "Ljava/lang/Object;",
        "Lbutterknife/Unbinder;"
    }
.end annotation


# instance fields
.field protected target:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;Lbutterknife/internal/Finder;Ljava/lang/Object;)V
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
    .line 23
    .local p0, "this":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem$$ViewBinder$InnerUnbinder;, "Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem$$ViewBinder$InnerUnbinder<TT;>;"
    .local p1, "target":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem$$ViewBinder$InnerUnbinder;->target:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;

    .line 26
    const v0, 0x7f0d02c8

    const-string v1, "field \'parentLayout\'"

    const-class v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->parentLayout:Landroid/widget/RelativeLayout;

    .line 27
    const v0, 0x7f0d02c9

    const-string v1, "field \'priceLayout\'"

    const-class v2, Landroid/widget/TextView;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->priceLayout:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0d02ca

    const-string v1, "field \'topFirst\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topFirst:Landroid/widget/FrameLayout;

    .line 29
    const v0, 0x7f0d02cb

    const-string v1, "field \'topSecond\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topSecond:Landroid/widget/FrameLayout;

    .line 30
    const v0, 0x7f0d02cc

    const-string v1, "field \'topThird\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topThird:Landroid/widget/FrameLayout;

    .line 31
    const v0, 0x7f0d02cd

    const-string v1, "field \'topFourth\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topFourth:Landroid/widget/FrameLayout;

    .line 32
    const v0, 0x7f0d02ce

    const-string v1, "field \'bottomFirst\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomFirst:Landroid/widget/FrameLayout;

    .line 33
    const v0, 0x7f0d02cf

    const-string v1, "field \'bottomSecond\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomSecond:Landroid/widget/FrameLayout;

    .line 34
    const v0, 0x7f0d02d0

    const-string v1, "field \'bottomThird\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomThird:Landroid/widget/FrameLayout;

    .line 35
    const v0, 0x7f0d02d1

    const-string v1, "field \'bottomFourth\'"

    const-class v2, Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3, v0, v1, v2}, Lbutterknife/internal/Finder;->findRequiredViewAsType(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomFourth:Landroid/widget/FrameLayout;

    .line 36
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem$$ViewBinder$InnerUnbinder;, "Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem$$ViewBinder$InnerUnbinder<TT;>;"
    const/4 v1, 0x0

    .line 40
    iget-object v0, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem$$ViewBinder$InnerUnbinder;->target:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;

    .line 41
    .local v0, "target":Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;, "TT;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bindings already cleared."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    :cond_0
    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->parentLayout:Landroid/widget/RelativeLayout;

    .line 44
    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->priceLayout:Landroid/widget/TextView;

    .line 45
    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topFirst:Landroid/widget/FrameLayout;

    .line 46
    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topSecond:Landroid/widget/FrameLayout;

    .line 47
    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topThird:Landroid/widget/FrameLayout;

    .line 48
    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->topFourth:Landroid/widget/FrameLayout;

    .line 49
    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomFirst:Landroid/widget/FrameLayout;

    .line 50
    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomSecond:Landroid/widget/FrameLayout;

    .line 51
    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomThird:Landroid/widget/FrameLayout;

    .line 52
    iput-object v1, v0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;->bottomFourth:Landroid/widget/FrameLayout;

    .line 54
    iput-object v1, p0, Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem$$ViewBinder$InnerUnbinder;->target:Lcom/coinbase/android/notifications/priceAlerts/create/CreatePriceAlertAdapter$ViewHolderItem;

    .line 55
    return-void
.end method
