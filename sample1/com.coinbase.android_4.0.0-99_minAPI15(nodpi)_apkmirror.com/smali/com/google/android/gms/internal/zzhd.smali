.class public Lcom/google/android/gms/internal/zzhd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgd;
.end annotation


# instance fields
.field final zzFE:Ljava/lang/String;

.field zzFQ:J

.field zzFR:J

.field zzFS:I

.field zzFT:I

.field zzFU:I

.field private final zzqt:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhd;->zzFQ:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhd;->zzFR:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzhd;->zzFS:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhd;->zzqt:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/zzhd;->zzFT:I

    iput v1, p0, Lcom/google/android/gms/internal/zzhd;->zzFU:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhd;->zzFE:Ljava/lang/String;

    return-void
.end method

.method public static zzE(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "Theme.Translucent"

    const-string v3, "style"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaA(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaA(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "Fail to fetch AdActivity theme"

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaC(Ljava/lang/String;)V

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaA(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;J)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd;->zzqt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhd;->zzFR:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzhd;->zzFR:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhd;->zzFR:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhd;->zzFQ:J

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->extras:Landroid/os/Bundle;

    const-string v2, "gw"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/zzhd;->zzFQ:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/zzhd;->zzFS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzhd;->zzFS:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public zzd(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd;->zzqt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhd;->zzFE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhd;->zzFR:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzhd;->zzFQ:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "preqs"

    iget v3, p0, Lcom/google/android/gms/internal/zzhd;->zzFS:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pclick"

    iget v3, p0, Lcom/google/android/gms/internal/zzhd;->zzFT:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pimp"

    iget v3, p0, Lcom/google/android/gms/internal/zzhd;->zzFU:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "support_transparent_background"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzhd;->zzE(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzfP()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd;->zzqt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzhd;->zzFU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzhd;->zzFU:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzfQ()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhd;->zzqt:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzhd;->zzFT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzhd;->zzFT:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzgg()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzhd;->zzFR:J

    return-wide v0
.end method
