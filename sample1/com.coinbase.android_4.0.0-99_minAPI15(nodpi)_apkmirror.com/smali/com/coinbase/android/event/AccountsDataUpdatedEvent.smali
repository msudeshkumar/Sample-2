.class public Lcom/coinbase/android/event/AccountsDataUpdatedEvent;
.super Ljava/lang/Object;
.source "AccountsDataUpdatedEvent.java"


# instance fields
.field public data:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/coinbase/android/event/AccountsDataUpdatedEvent;->data:Lorg/json/JSONObject;

    .line 11
    return-void
.end method
