.class public Lcom/coinbase/android/event/BusModule;
.super Lcom/google/inject/AbstractModule;
.source "BusModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/inject/AbstractModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 2

    .prologue
    .line 10
    const-class v0, Lcom/squareup/otto/Bus;

    invoke-virtual {p0, v0}, Lcom/coinbase/android/event/BusModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/inject/Scopes;->SINGLETON:Lcom/google/inject/Scope;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->in(Lcom/google/inject/Scope;)V

    .line 11
    return-void
.end method
