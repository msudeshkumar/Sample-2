.class public final Lcom/google/android/gms/internal/zzpt$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzaHb:Ljava/lang/String;

.field private zzaJV:Z

.field private zzaJW:Z

.field private zzaJX:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzyc()Lcom/google/android/gms/internal/zzpt;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/zzpt;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzpt$zza;->zzaJV:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpt$zza;->zzaJW:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/zzpt$zza;->zzaHb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzpt$zza;->zzaJX:Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzpt;-><init>(ZZLjava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ServerAuthCodeCallbacks;Lcom/google/android/gms/internal/zzpt$1;)V

    return-object v0
.end method
