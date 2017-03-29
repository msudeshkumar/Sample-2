.class public Lcom/coinbase/v1/entity/ReportNode;
.super Ljava/lang/Object;
.source "ReportNode.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x377502660d7debd1L


# instance fields
.field private _Report:Lcom/coinbase/v1/entity/Report;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReport()Lcom/coinbase/v1/entity/Report;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/coinbase/v1/entity/ReportNode;->_Report:Lcom/coinbase/v1/entity/Report;

    return-object v0
.end method

.method public setReport(Lcom/coinbase/v1/entity/Report;)V
    .locals 0
    .param p1, "Report"    # Lcom/coinbase/v1/entity/Report;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/coinbase/v1/entity/ReportNode;->_Report:Lcom/coinbase/v1/entity/Report;

    .line 18
    return-void
.end method
