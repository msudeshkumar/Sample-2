.class final Lcom/github/mikephil/charting/animation/Easing$EasingFunctions$19;
.super Ljava/lang/Object;
.source "Easing.java"

# interfaces
.implements Lcom/github/mikephil/charting/animation/EasingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/animation/Easing$EasingFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 408
    div-float v0, p1, v5

    .line 409
    .local v0, "position":F
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 411
    const/high16 v1, -0x41000000    # -0.5f

    mul-float v2, v0, v0

    sub-float v2, v4, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v2, v4

    mul-float/2addr v1, v2

    .line 413
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    mul-float v1, v0, v0

    sub-float v1, v4, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v1, v4

    mul-float/2addr v1, v5

    goto :goto_0
.end method
