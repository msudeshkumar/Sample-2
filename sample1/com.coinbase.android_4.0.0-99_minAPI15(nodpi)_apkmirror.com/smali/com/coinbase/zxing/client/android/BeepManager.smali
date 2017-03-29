.class final Lcom/coinbase/zxing/client/android/BeepManager;
.super Ljava/lang/Object;
.source "BeepManager.java"


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final activity:Landroid/app/Activity;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/coinbase/zxing/client/android/BeepManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coinbase/zxing/client/android/BeepManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coinbase/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 51
    invoke-virtual {p0}, Lcom/coinbase/zxing/client/android/BeepManager;->updatePrefs()V

    .line 52
    return-void
.end method

.method private static buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .locals 8
    .param p0, "activity"    # Landroid/content/Context;

    .prologue
    .line 89
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 90
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 92
    new-instance v1, Lcom/coinbase/zxing/client/android/BeepManager$1;

    invoke-direct {v1}, Lcom/coinbase/zxing/client/android/BeepManager$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coinbase/zxing/client/android/R$raw;->beep:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 101
    .local v6, "file":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 102
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 103
    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 104
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-object v0

    .line 105
    :catch_0
    move-exception v7

    .line 106
    .local v7, "ioe":Ljava/io/IOException;
    sget-object v1, Lcom/coinbase/zxing/client/android/BeepManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static shouldBeep(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "activity"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string v2, "preferences_play_beep"

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 78
    .local v1, "shouldPlayBeep":Z
    if-eqz v1, :cond_0

    .line 80
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 81
    .local v0, "audioService":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 85
    .end local v0    # "audioService":Landroid/media/AudioManager;
    :cond_0
    return v1
.end method


# virtual methods
.method playBeepSoundAndVibrate()V
    .locals 4

    .prologue
    .line 67
    iget-boolean v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 70
    :cond_0
    iget-boolean v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->vibrate:Z

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 72
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 74
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    return-void
.end method

.method updatePrefs()V
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->playBeep:Z

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->vibrate:Z

    .line 58
    iget-boolean v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->playBeep:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 62
    iget-object v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/coinbase/zxing/client/android/BeepManager;->buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/coinbase/zxing/client/android/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 64
    :cond_0
    return-void
.end method
