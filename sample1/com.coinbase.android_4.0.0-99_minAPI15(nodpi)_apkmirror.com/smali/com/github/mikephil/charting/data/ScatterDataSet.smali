.class public Lcom/github/mikephil/charting/data/ScatterDataSet;
.super Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.source "ScatterDataSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

.field private mShapeSize:F


# virtual methods
.method public getScatterShape()Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mScatterShape:Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    return-object v0
.end method

.method public getScatterShapeSize()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/github/mikephil/charting/data/ScatterDataSet;->mShapeSize:F

    return v0
.end method
