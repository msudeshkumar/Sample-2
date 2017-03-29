.class public final Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;
.super Ljava/lang/Object;


# static fields
.field private static zzaCP:Lcom/google/android/gms/maps/model/internal/zzd;


# direct methods
.method public static zza(Lcom/google/android/gms/maps/model/internal/zzd;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->zzaCP:Lcom/google/android/gms/maps/model/internal/zzd;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/internal/zzd;

    sput-object v0, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->zzaCP:Lcom/google/android/gms/maps/model/internal/zzd;

    goto :goto_0
.end method
