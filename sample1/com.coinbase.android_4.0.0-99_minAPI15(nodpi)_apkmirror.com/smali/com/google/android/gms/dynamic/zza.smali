.class public abstract Lcom/google/android/gms/dynamic/zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamic/zza$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/dynamic/LifecycleDelegate;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzajh:Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zzaji:Landroid/os/Bundle;

.field private zzajj:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/dynamic/zza$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzajk:Lcom/google/android/gms/dynamic/zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/dynamic/zzf",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/dynamic/zza$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/dynamic/zza$1;-><init>(Lcom/google/android/gms/dynamic/zza;)V

    iput-object v0, p0, Lcom/google/android/gms/dynamic/zza;->zzajk:Lcom/google/android/gms/dynamic/zzf;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/dynamic/zza;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zza;->zzaji:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/dynamic/zza;Lcom/google/android/gms/dynamic/LifecycleDelegate;)Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zza;->zzajh:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/dynamic/zza;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza;->zzajj:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/dynamic/zza;)Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza;->zzajh:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    return-object v0
.end method


# virtual methods
.method public zzqj()Lcom/google/android/gms/dynamic/LifecycleDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza;->zzajh:Lcom/google/android/gms/dynamic/LifecycleDelegate;

    return-object v0
.end method
