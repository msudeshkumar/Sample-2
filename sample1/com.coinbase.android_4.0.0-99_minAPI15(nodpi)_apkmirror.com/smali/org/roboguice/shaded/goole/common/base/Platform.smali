.class final Lorg/roboguice/shaded/goole/common/base/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final DEST_TL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Platform$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/base/Platform$1;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Platform;->DEST_TL:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static systemNanoTime()J
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
