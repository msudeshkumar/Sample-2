.class public Lcom/coinbase/android/ui/MaterialProgressBar;
.super Landroid/widget/ImageView;
.source "MaterialProgressBar.java"


# instance fields
.field private mDrawable:Lcom/coinbase/android/ui/MaterialProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setupDrawable(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setupDrawable(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1}, Lcom/coinbase/android/ui/MaterialProgressBar;->setupDrawable(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private setupDrawable(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/coinbase/android/ui/MaterialProgressDrawable;

    invoke-direct {v0, p1, p0}, Lcom/coinbase/android/ui/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressBar;->mDrawable:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    .line 32
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressBar;->mDrawable:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, -0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->setColorSchemeColors([I)V

    .line 33
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressBar;->mDrawable:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    invoke-virtual {v0, v3}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 34
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressBar;->mDrawable:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->setAlpha(I)V

    .line 35
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressBar;->mDrawable:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    invoke-virtual {p0, v0}, Lcom/coinbase/android/ui/MaterialProgressBar;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    iget-object v0, p0, Lcom/coinbase/android/ui/MaterialProgressBar;->mDrawable:Lcom/coinbase/android/ui/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/coinbase/android/ui/MaterialProgressDrawable;->start()V

    .line 37
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 41
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/android/ui/MaterialProgressBar;->clearAnimation()V

    .line 47
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/android/ui/MaterialProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coinbase/android/ui/MaterialProgressBar;->setupDrawable(Landroid/content/Context;)V

    goto :goto_0
.end method
