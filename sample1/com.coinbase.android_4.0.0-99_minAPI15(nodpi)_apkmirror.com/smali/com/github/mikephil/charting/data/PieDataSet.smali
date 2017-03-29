.class public Lcom/github/mikephil/charting/data/PieDataSet;
.super Lcom/github/mikephil/charting/data/DataSet;
.source "PieDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/DataSet",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private mShift:F

.field private mSliceSpace:F


# virtual methods
.method public getSelectionShift()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mShift:F

    return v0
.end method

.method public getSliceSpace()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->mSliceSpace:F

    return v0
.end method
