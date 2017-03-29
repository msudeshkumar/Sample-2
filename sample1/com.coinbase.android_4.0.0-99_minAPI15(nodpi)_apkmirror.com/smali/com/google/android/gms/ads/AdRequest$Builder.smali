.class public final Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzx$zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzx$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->zzF(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzx$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    return-object v0
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->zzE(Ljava/lang/String;)V

    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 2
    .param p2, "networkExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/ads/mediation/MediationAdapter;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_emulatorLiveAds"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->zzG(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->zzF(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/AdRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V

    return-object v0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "birthday"    # Ljava/util/Date;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->zza(Ljava/util/Date;)V

    return-object p0
.end method

.method public setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "gender"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->zzm(I)V

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->zza(Landroid/location/Location;)V

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .locals 1
    .param p1, "tagForChildDirectedTreatment"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zznL:Lcom/google/android/gms/ads/internal/client/zzx$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzx$zza;->zzk(Z)V

    return-object p0
.end method
