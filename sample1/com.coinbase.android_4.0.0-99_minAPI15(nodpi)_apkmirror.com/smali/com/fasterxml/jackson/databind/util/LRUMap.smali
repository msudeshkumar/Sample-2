.class public Lcom/fasterxml/jackson/databind/util/LRUMap;
.super Ljava/util/LinkedHashMap;
.source "LRUMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected final transient _maxEntries:I

.field protected final transient _readLock:Ljava/util/concurrent/locks/Lock;

.field protected final transient _writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "initialEntries"    # I
    .param p2, "maxEntries"    # I

    .prologue
    .line 36
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 37
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 39
    .local v0, "rwl":Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_readLock:Ljava/util/concurrent/locks/Lock;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    .line 41
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 58
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_readLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 68
    :try_start_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 78
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
