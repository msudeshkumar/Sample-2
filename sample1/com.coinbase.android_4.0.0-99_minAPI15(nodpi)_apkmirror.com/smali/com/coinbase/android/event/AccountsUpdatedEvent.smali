.class public Lcom/coinbase/android/event/AccountsUpdatedEvent;
.super Ljava/lang/Object;
.source "AccountsUpdatedEvent.java"


# instance fields
.field public account:Lcom/coinbase/v2/models/account/Data;


# direct methods
.method public constructor <init>(Lcom/coinbase/v2/models/account/Data;)V
    .locals 0
    .param p1, "account"    # Lcom/coinbase/v2/models/account/Data;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/coinbase/android/event/AccountsUpdatedEvent;->account:Lcom/coinbase/v2/models/account/Data;

    .line 9
    return-void
.end method
