.class public Lcom/mixpanel/android/surveys/FadeOnPressButton;
.super Landroid/widget/Button;
.source "FadeOnPressButton.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private mIsFaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method private setAlphaBySDK(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->setAlpha(F)V

    .line 51
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 7

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->getDrawableState()[I

    move-result-object v5

    .line 34
    .local v5, "state":[I
    const/4 v3, 0x0

    .line 35
    .local v3, "isPressed":Z
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget v1, v0, v2

    .line 36
    .local v1, "i":I
    const v6, 0x10100a7

    if-ne v1, v6, :cond_3

    .line 37
    iget-boolean v6, p0, Lcom/mixpanel/android/surveys/FadeOnPressButton;->mIsFaded:Z

    if-nez v6, :cond_0

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {p0, v6}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->setAlphaBySDK(F)V

    .line 38
    :cond_0
    const/4 v3, 0x1

    .line 42
    .end local v1    # "i":I
    :cond_1
    iget-boolean v6, p0, Lcom/mixpanel/android/surveys/FadeOnPressButton;->mIsFaded:Z

    if-eqz v6, :cond_2

    if-nez v3, :cond_2

    .line 43
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {p0, v6}, Lcom/mixpanel/android/surveys/FadeOnPressButton;->setAlphaBySDK(F)V

    .line 44
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/mixpanel/android/surveys/FadeOnPressButton;->mIsFaded:Z

    .line 46
    :cond_2
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 47
    return-void

    .line 35
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
