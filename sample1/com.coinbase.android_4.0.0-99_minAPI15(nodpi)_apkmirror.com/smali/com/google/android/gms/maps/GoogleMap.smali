.class public final Lcom/google/android/gms/maps/GoogleMap;
.super Ljava/lang/Object;


# instance fields
.field private final zzaBp:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMap;->zzaBp:Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;

    return-void
.end method
