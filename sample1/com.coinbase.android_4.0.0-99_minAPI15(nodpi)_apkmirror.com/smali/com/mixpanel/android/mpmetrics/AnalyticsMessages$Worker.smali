.class Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;
.super Ljava/lang/Object;
.source "AnalyticsMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;
    }
.end annotation


# instance fields
.field private mAveFlushFrequency:J

.field private mFlushCount:J

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLock:Ljava/lang/Object;

.field private mLastFlushTime:J

.field private mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;

.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;


# direct methods
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 195
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;

    .line 570
    iput-wide v2, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mFlushCount:J

    .line 571
    iput-wide v2, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mAveFlushFrequency:J

    .line 572
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mLastFlushTime:J

    .line 196
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->restartWorkerThread()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    .line 197
    return-void
.end method

.method static synthetic access$1300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)Lcom/mixpanel/android/mpmetrics/SystemInformation;
    .locals 1
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;Lcom/mixpanel/android/mpmetrics/SystemInformation;)Lcom/mixpanel/android/mpmetrics/SystemInformation;
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;
    .param p1, "x1"    # Lcom/mixpanel/android/mpmetrics/SystemInformation;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mSystemInformation:Lcom/mixpanel/android/mpmetrics/SystemInformation;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;)V
    .locals 0
    .param p0, "x0"    # Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->updateFlushFrequency()V

    return-void
.end method

.method private restartWorkerThread()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 219
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "com.mixpanel.android.AnalyticsWorker"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 220
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 221
    new-instance v0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker$AnalyticsMessageHandler;-><init>(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;Landroid/os/Looper;)V

    .line 222
    .local v0, "ret":Landroid/os/Handler;
    return-object v0
.end method

.method private updateFlushFrequency()V
    .locals 14

    .prologue
    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 553
    .local v4, "now":J
    iget-wide v10, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mFlushCount:J

    const-wide/16 v12, 0x1

    add-long v2, v10, v12

    .line 555
    .local v2, "newFlushCount":J
    iget-wide v10, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mLastFlushTime:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 556
    iget-wide v10, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mLastFlushTime:J

    sub-long v0, v4, v10

    .line 557
    .local v0, "flushInterval":J
    iget-wide v10, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mAveFlushFrequency:J

    iget-wide v12, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mFlushCount:J

    mul-long/2addr v10, v12

    add-long v8, v0, v10

    .line 558
    .local v8, "totalFlushTime":J
    div-long v10, v8, v2

    iput-wide v10, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mAveFlushFrequency:J

    .line 560
    iget-wide v10, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mAveFlushFrequency:J

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 561
    .local v6, "seconds":J
    iget-object v10, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Average send frequency approximately "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " seconds."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 564
    .end local v0    # "flushInterval":J
    .end local v6    # "seconds":J
    .end local v8    # "totalFlushTime":J
    :cond_0
    iput-wide v4, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mLastFlushTime:J

    .line 565
    iput-wide v2, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mFlushCount:J

    .line 566
    return-void
.end method


# virtual methods
.method public runMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->this$0:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead mixpanel worker dropping a message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->logAboutMessageToMixpanel(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->access$000(Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;Ljava/lang/String;)V

    .line 213
    :goto_0
    monitor-exit v1

    .line 214
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
