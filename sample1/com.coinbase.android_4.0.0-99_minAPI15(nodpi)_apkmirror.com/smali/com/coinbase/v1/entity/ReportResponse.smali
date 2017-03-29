.class public Lcom/coinbase/v1/entity/ReportResponse;
.super Lcom/coinbase/v1/entity/Response;
.source "ReportResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x3e5dc502998590adL


# instance fields
.field private _report:Lcom/coinbase/v1/entity/Report;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/coinbase/v1/entity/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getReport()Lcom/coinbase/v1/entity/Report;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/coinbase/v1/entity/ReportResponse;->_report:Lcom/coinbase/v1/entity/Report;

    return-object v0
.end method

.method public setReport(Lcom/coinbase/v1/entity/Report;)V
    .locals 0
    .param p1, "report"    # Lcom/coinbase/v1/entity/Report;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/coinbase/v1/entity/ReportResponse;->_report:Lcom/coinbase/v1/entity/Report;

    .line 16
    return-void
.end method
