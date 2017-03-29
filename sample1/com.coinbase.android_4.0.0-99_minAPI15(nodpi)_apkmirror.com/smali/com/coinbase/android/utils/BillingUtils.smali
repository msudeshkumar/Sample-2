.class public Lcom/coinbase/android/utils/BillingUtils;
.super Ljava/lang/Object;
.source "BillingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddressLine(Lcom/coinbase/api/internal/models/billingAddress/Data;)Ljava/lang/String;
    .locals 3
    .param p0, "billingAddress"    # Lcom/coinbase/api/internal/models/billingAddress/Data;

    .prologue
    .line 18
    const-string v0, ""

    .line 20
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getLine1()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getLine1()Ljava/lang/String;

    move-result-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getLine2()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getLine2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getLine3()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getLine3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_2
    return-object v0
.end method

.method public static getCityStateZip(Lcom/coinbase/api/internal/models/billingAddress/Data;)Ljava/lang/String;
    .locals 3
    .param p0, "billingAddress"    # Lcom/coinbase/api/internal/models/billingAddress/Data;

    .prologue
    .line 33
    const-string v0, ""

    .line 35
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getCity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/coinbase/api/internal/models/billingAddress/Data;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_2
    return-object v0
.end method

.method public static getFullAddress(Lcom/coinbase/api/internal/models/billingAddress/Data;)Ljava/lang/String;
    .locals 2
    .param p0, "billingAddress"    # Lcom/coinbase/api/internal/models/billingAddress/Data;

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/coinbase/android/utils/BillingUtils;->getAddressLine(Lcom/coinbase/api/internal/models/billingAddress/Data;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/coinbase/android/utils/BillingUtils;->getCityStateZip(Lcom/coinbase/api/internal/models/billingAddress/Data;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showProgressBar(Landroid/content/Context;ZLandroid/widget/ProgressBar;Landroid/widget/FrameLayout;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "show"    # Z
    .param p2, "progressBar"    # Landroid/widget/ProgressBar;
    .param p3, "overlayLayout"    # Landroid/widget/FrameLayout;

    .prologue
    const/4 v2, 0x0

    .line 52
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 53
    invoke-virtual {p3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 54
    const-string v3, "alpha"

    const/4 v1, 0x1

    new-array v4, v1, [F

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    aput v1, v4, v2

    invoke-static {p3, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 55
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 56
    new-instance v1, Lcom/coinbase/android/utils/BillingUtils$1;

    invoke-direct {v1, p3, p1}, Lcom/coinbase/android/utils/BillingUtils$1;-><init>(Landroid/widget/FrameLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 77
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 78
    return-void

    .line 52
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    :cond_0
    const/16 v1, 0x8

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
