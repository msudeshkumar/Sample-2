.class public Lcom/google/android/gms/cast/internal/zzl;
.super Ljava/lang/Object;


# static fields
.field private static zzUT:Z


# instance fields
.field protected final mTag:Ljava/lang/String;

.field private final zzUU:Z

.field private zzUV:Z

.field private zzUW:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/cast/internal/zzl;->zzUT:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/cast/internal/zzl;->zzmb()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/internal/zzl;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The log tag cannot be null or empty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzu;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzl;->mTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x17

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/cast/internal/zzl;->zzUU:Z

    iput-boolean p2, p0, Lcom/google/android/gms/cast/internal/zzl;->zzUV:Z

    iput-boolean v1, p0, Lcom/google/android/gms/cast/internal/zzl;->zzUW:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static zzmb()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/cast/internal/zzl;->zzUT:Z

    return v0
.end method
