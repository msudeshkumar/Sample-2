.class public Lroboguice/util/LnImpl;
.super Ljava/lang/Object;
.source "LnImpl.java"

# interfaces
.implements Lroboguice/util/LnInterface;


# instance fields
.field protected minimumLogLevel:I

.field protected packageName:Ljava/lang/String;

.field protected tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x2

    iput v0, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lroboguice/util/LnImpl;->tag:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Application;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v2, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    .line 14
    const-string v3, ""

    iput-object v3, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    .line 15
    const-string v3, ""

    iput-object v3, p0, Lroboguice/util/LnImpl;->tag:Ljava/lang/String;

    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 26
    .local v1, "flags":I
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_0

    :goto_0
    iput v2, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    .line 27
    iget-object v2, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lroboguice/util/LnImpl;->tag:Ljava/lang/String;

    .line 29
    const-string v2, "Configuring Logging, minimum log level is %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    invoke-static {v5}, Lroboguice/util/Ln;->logLevelToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lroboguice/util/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v1    # "flags":I
    :goto_1
    return-void

    .line 26
    .restart local v1    # "flags":I
    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    .line 31
    .end local v1    # "flags":I
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    const-string v3, "Error configuring logger"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 34
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x3

    .line 72
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 73
    const/4 v2, 0x0

    .line 77
    :goto_0
    return v2

    .line 75
    :cond_0
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public d(Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x3

    .line 67
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "s1"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x3

    .line 82
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 83
    const/4 v2, 0x0

    .line 87
    :goto_0
    return v2

    .line 85
    :cond_0
    invoke-static {p2}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p3}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v4, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x6

    .line 157
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 158
    const/4 v2, 0x0

    .line 162
    :goto_0
    return v2

    .line 160
    :cond_0
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public e(Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x6

    .line 142
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "s1"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x6

    .line 147
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 148
    const/4 v2, 0x0

    .line 152
    :goto_0
    return v2

    .line 150
    :cond_0
    invoke-static {p2}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p3}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v4, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method protected varargs formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 232
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_0

    .line 235
    .end local p1    # "s":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "s":Ljava/lang/String;
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getLoggingLevel()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    const/4 v0, 0x6

    .line 219
    .local v0, "skipDepth":I
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v1, v2, v3

    .line 221
    .local v1, "trace":Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lroboguice/util/LnImpl;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    .end local v1    # "trace":Ljava/lang/StackTraceElement;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lroboguice/util/LnImpl;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x4

    .line 107
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 108
    const/4 v2, 0x0

    .line 112
    :goto_0
    return v2

    .line 110
    :cond_0
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public i(Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x4

    .line 92
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "s1"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x4

    .line 97
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 98
    const/4 v2, 0x0

    .line 102
    :goto_0
    return v2

    .line 100
    :cond_0
    invoke-static {p2}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p3}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v4, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public isDebugEnabled()Z
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVerboseEnabled()Z
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logLevelToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "loglevel"    # I

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 192
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 179
    :pswitch_0
    const-string v0, "VERBOSE"

    goto :goto_0

    .line 181
    :pswitch_1
    const-string v0, "DEBUG"

    goto :goto_0

    .line 183
    :pswitch_2
    const-string v0, "INFO"

    goto :goto_0

    .line 185
    :pswitch_3
    const-string v0, "WARN"

    goto :goto_0

    .line 187
    :pswitch_4
    const-string v0, "ERROR"

    goto :goto_0

    .line 189
    :pswitch_5
    const-string v0, "ASSERT"

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public println(ILjava/lang/String;)I
    .locals 2
    .param p1, "priority"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lroboguice/util/LnImpl;->processMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected processMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 213
    const-string v0, "%s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 214
    :cond_0
    return-object p1
.end method

.method public setLoggingLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 204
    iput p1, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    .line 205
    return-void
.end method

.method public varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x2

    .line 47
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 48
    const/4 v2, 0x0

    .line 52
    :goto_0
    return v2

    .line 50
    :cond_0
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public v(Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x2

    .line 42
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "s1"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x2

    .line 57
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 58
    const/4 v2, 0x0

    .line 62
    :goto_0
    return v2

    .line 60
    :cond_0
    invoke-static {p2}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p3}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v4, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x5

    .line 132
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 133
    const/4 v2, 0x0

    .line 137
    :goto_0
    return v2

    .line 135
    :cond_0
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public w(Ljava/lang/Throwable;)I
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x5

    .line 117
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "s1"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x5

    .line 122
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v2

    if-le v2, v4, :cond_0

    .line 123
    const/4 v2, 0x0

    .line 127
    :goto_0
    return v2

    .line 125
    :cond_0
    invoke-static {p2}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, p3}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v4, v0}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
