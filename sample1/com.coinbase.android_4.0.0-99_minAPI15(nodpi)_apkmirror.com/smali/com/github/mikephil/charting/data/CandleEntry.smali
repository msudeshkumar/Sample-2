.class public Lcom/github/mikephil/charting/data/CandleEntry;
.super Lcom/github/mikephil/charting/data/Entry;
.source "CandleEntry.java"


# instance fields
.field private mClose:F

.field private mOpen:F

.field private mShadowHigh:F

.field private mShadowLow:F


# virtual methods
.method public getClose()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mClose:F

    return v0
.end method

.method public getHigh()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowHigh:F

    return v0
.end method

.method public getLow()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mShadowLow:F

    return v0
.end method

.method public getOpen()F
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleEntry;->mOpen:F

    return v0
.end method

.method public getVal()F
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    return v0
.end method
