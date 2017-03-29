.class public Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;
.super Lcom/getbase/floatingactionbutton/FloatingActionsMenu;
.source "CoinbaseFloatingActionMenu.java"


# instance fields
.field private mListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public addOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->mListener:Landroid/view/View$OnClickListener;

    .line 26
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->toggle()V

    .line 31
    iget-object v0, p0, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->mListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/coinbase/android/ui/CoinbaseFloatingActionMenu;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 33
    :cond_0
    return-void
.end method
