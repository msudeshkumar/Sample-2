.class public Lcom/coinbase/android/utils/PlatformUtils;
.super Ljava/lang/Object;
.source "PlatformUtils.java"


# static fields
.field private static final SDK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/coinbase/android/utils/PlatformUtils;->SDK:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static hasFroyo()Z
    .locals 2

    .prologue
    .line 38
    sget v0, Lcom/coinbase/android/utils/PlatformUtils;->SDK:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasGingerbread()Z
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/coinbase/android/utils/PlatformUtils;->SDK:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasHoneycomb()Z
    .locals 2

    .prologue
    .line 30
    sget v0, Lcom/coinbase/android/utils/PlatformUtils;->SDK:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasIceCreamSandwich()Z
    .locals 2

    .prologue
    .line 26
    sget v0, Lcom/coinbase/android/utils/PlatformUtils;->SDK:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasJellybean()Z
    .locals 2

    .prologue
    .line 22
    sget v0, Lcom/coinbase/android/utils/PlatformUtils;->SDK:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasJellybeanMR1()Z
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/coinbase/android/utils/PlatformUtils;->SDK:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasKitKat()Z
    .locals 2

    .prologue
    .line 14
    sget v0, Lcom/coinbase/android/utils/PlatformUtils;->SDK:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
