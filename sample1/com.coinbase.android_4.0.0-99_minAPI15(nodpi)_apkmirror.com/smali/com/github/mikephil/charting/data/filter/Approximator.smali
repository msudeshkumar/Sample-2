.class public Lcom/github/mikephil/charting/data/filter/Approximator;
.super Ljava/lang/Object;
.source "Approximator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;
    }
.end annotation


# instance fields
.field private mDeltaRatio:F

.field private mScaleRatio:F

.field private mTolerance:D

.field private mType:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->DOUGLAS_PEUCKER:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mType:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mTolerance:D

    .line 23
    iput v2, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mScaleRatio:F

    .line 24
    iput v2, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mDeltaRatio:F

    .line 41
    sget-object v0, Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;->NONE:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/filter/Approximator;->mType:Lcom/github/mikephil/charting/data/filter/Approximator$ApproximatorType;

    .line 42
    return-void
.end method
