.class public Lcom/google/android/gms/maps/StreetViewPanorama;
.super Ljava/lang/Object;


# instance fields
.field private final zzaCj:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;)V
    .locals 1
    .param p1, "sv"    # Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama;->zzaCj:Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;

    return-void
.end method
