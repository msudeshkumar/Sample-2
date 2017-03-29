.class public Lcom/coinbase/android/utils/KochavaTracking;
.super Ljava/lang/Object;
.source "KochavaTracking.java"


# static fields
.field public static final KOCHAVA_SIGNUP:Ljava/lang/String; = "Signup"

.field public static final KOCHAVA_TRANSFER:Ljava/lang/String; = "Transfer"

.field private static volatile sInstance:Lcom/coinbase/android/utils/KochavaTracking;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/coinbase/android/utils/KochavaTracking;->sInstance:Lcom/coinbase/android/utils/KochavaTracking;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/coinbase/android/utils/KochavaTracking;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/coinbase/android/utils/KochavaTracking;->sInstance:Lcom/coinbase/android/utils/KochavaTracking;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/coinbase/android/utils/KochavaTracking;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/coinbase/android/utils/KochavaTracking;->sInstance:Lcom/coinbase/android/utils/KochavaTracking;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/coinbase/android/utils/KochavaTracking;

    invoke-direct {v0}, Lcom/coinbase/android/utils/KochavaTracking;-><init>()V

    sput-object v0, Lcom/coinbase/android/utils/KochavaTracking;->sInstance:Lcom/coinbase/android/utils/KochavaTracking;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/coinbase/android/utils/KochavaTracking;->sInstance:Lcom/coinbase/android/utils/KochavaTracking;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public initializeKochava(Landroid/content/Context;)Lcom/kochava/android/tracker/Feature;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "datamap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "kochava_app_id"

    const-string v2, "kocoinbase----production553ec3be25c13"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "currency"

    const-string v2, "USD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v1, Lcom/kochava/android/tracker/Feature;

    invoke-direct {v1, p1, v0}, Lcom/kochava/android/tracker/Feature;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    return-object v1
.end method
