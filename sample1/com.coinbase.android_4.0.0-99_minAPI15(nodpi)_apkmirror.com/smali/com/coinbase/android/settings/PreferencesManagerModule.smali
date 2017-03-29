.class public Lcom/coinbase/android/settings/PreferencesManagerModule;
.super Lcom/google/inject/AbstractModule;
.source "PreferencesManagerModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/google/inject/AbstractModule;-><init>()V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 2

    .prologue
    .line 8
    const-class v0, Lcom/coinbase/android/settings/PreferencesManager;

    invoke-virtual {p0, v0}, Lcom/coinbase/android/settings/PreferencesManagerModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/coinbase/android/settings/ProductionPreferencesManager;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 9
    return-void
.end method
