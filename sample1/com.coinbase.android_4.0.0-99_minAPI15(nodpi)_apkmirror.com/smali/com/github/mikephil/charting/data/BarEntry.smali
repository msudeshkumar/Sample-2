.class public Lcom/github/mikephil/charting/data/BarEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "BarEntry.java"


# instance fields
.field private mNegativeSum:F

.field private mPositiveSum:F

.field private mVals:[F


# virtual methods
.method public getNegativeSum()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mNegativeSum:F

    return v0
.end method

.method public getPositiveSum()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mPositiveSum:F

    return v0
.end method

.method public getVal()F
    .locals 1

    .prologue
    .line 109
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    return v0
.end method

.method public getVals()[F
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/github/mikephil/charting/data/BarEntry;->mVals:[F

    return-object v0
.end method
