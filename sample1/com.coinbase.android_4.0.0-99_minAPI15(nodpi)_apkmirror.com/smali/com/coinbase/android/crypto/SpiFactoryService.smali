.class public Lcom/coinbase/android/crypto/SpiFactoryService;
.super Ljava/security/Provider$Service;
.source "SpiFactoryService.java"


# instance fields
.field private factory:Lcom/coinbase/android/crypto/SpiFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coinbase/android/crypto/SpiFactory",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/coinbase/android/crypto/SpiFactory;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/coinbase/android/crypto/SpiFactory",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p5, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "factory":Lcom/coinbase/android/crypto/SpiFactory;, "Lcom/coinbase/android/crypto/SpiFactory<*>;"
    invoke-direct/range {p0 .. p6}, Ljava/security/Provider$Service;-><init>(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 23
    iput-object p7, p0, Lcom/coinbase/android/crypto/SpiFactoryService;->factory:Lcom/coinbase/android/crypto/SpiFactory;

    .line 24
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "constructorParameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/coinbase/android/crypto/SpiFactoryService;->factory:Lcom/coinbase/android/crypto/SpiFactory;

    invoke-interface {v0, p1}, Lcom/coinbase/android/crypto/SpiFactory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
