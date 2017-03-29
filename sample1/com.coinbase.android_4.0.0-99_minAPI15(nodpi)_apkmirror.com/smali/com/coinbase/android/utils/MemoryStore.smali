.class public Lcom/coinbase/android/utils/MemoryStore;
.super Ljava/lang/Object;
.source "MemoryStore.java"


# annotations
.annotation runtime Lcom/google/inject/Singleton;
.end annotation


# instance fields
.field private requestedIntent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestedIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/coinbase/android/utils/MemoryStore;->requestedIntent:Ljava/lang/String;

    return-object v0
.end method

.method public setRequestedIntent(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestedIntent"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/coinbase/android/utils/MemoryStore;->requestedIntent:Ljava/lang/String;

    .line 23
    return-void
.end method
