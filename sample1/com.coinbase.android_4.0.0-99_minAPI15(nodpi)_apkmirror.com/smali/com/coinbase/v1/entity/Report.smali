.class public Lcom/coinbase/v1/entity/Report;
.super Ljava/lang/Object;
.source "Report.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/Report$StartType;,
        Lcom/coinbase/v1/entity/Report$Repeat;,
        Lcom/coinbase/v1/entity/Report$TimeRange;,
        Lcom/coinbase/v1/entity/Report$Status;,
        Lcom/coinbase/v1/entity/Report$Type;
    }
.end annotation


# static fields
.field public static final INFINITE:Ljava/lang/Integer;

.field private static final serialVersionUID:J = -0x7571318c2929fe9fL


# instance fields
.field private callbackUrl:Ljava/lang/String;

.field private createdAt:Lorg/joda/time/DateTime;

.field private email:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private lastRun:Lorg/joda/time/DateTime;

.field private nextRun:Lorg/joda/time/DateTime;

.field private nextRunDate:Ljava/lang/String;

.field private nextRunTime:Ljava/lang/String;

.field private repeat:Lcom/coinbase/v1/entity/Report$Repeat;

.field private startType:Lcom/coinbase/v1/entity/Report$StartType;

.field private status:Lcom/coinbase/v1/entity/Report$Status;

.field private timeRange:Lcom/coinbase/v1/entity/Report$TimeRange;

.field private timeRangeEnd:Ljava/lang/String;

.field private timeRangeEndDateTime:Lorg/joda/time/DateTime;

.field private timeRangeStart:Ljava/lang/String;

.field private timeRangeStartDateTime:Lorg/joda/time/DateTime;

.field private times:Ljava/lang/Integer;

.field private timesRun:Ljava/lang/Integer;

.field private type:Lcom/coinbase/v1/entity/Report$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/coinbase/v1/entity/Report;->INFINITE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInfinite()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/coinbase/v1/entity/Report;->INFINITE:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRun()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->lastRun:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getNextRun()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->nextRun:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getNextRunDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->nextRunDate:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRunTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->nextRunTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeat()Lcom/coinbase/v1/entity/Report$Repeat;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->repeat:Lcom/coinbase/v1/entity/Report$Repeat;

    return-object v0
.end method

.method public getStartType()Lcom/coinbase/v1/entity/Report$StartType;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->startType:Lcom/coinbase/v1/entity/Report$StartType;

    return-object v0
.end method

.method public getStatus()Lcom/coinbase/v1/entity/Report$Status;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->status:Lcom/coinbase/v1/entity/Report$Status;

    return-object v0
.end method

.method public getTimeRange()Lcom/coinbase/v1/entity/Report$TimeRange;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->timeRange:Lcom/coinbase/v1/entity/Report$TimeRange;

    return-object v0
.end method

.method public getTimeRangeEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->timeRangeEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeRangeStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->timeRangeStart:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->times:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimesRun()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->timesRun:Ljava/lang/Integer;

    return-object v0
.end method

.method public getType()Lcom/coinbase/v1/entity/Report$Type;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report;->type:Lcom/coinbase/v1/entity/Report$Type;

    return-object v0
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "callbackUrl"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->callbackUrl:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setCreatedAt(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "createdAt"    # Lorg/joda/time/DateTime;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->createdAt:Lorg/joda/time/DateTime;

    .line 163
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->email:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->id:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setLastRun(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "time"    # Lorg/joda/time/DateTime;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->lastRun:Lorg/joda/time/DateTime;

    .line 245
    return-void
.end method

.method public setNextRun(Lorg/joda/time/DateTime;)V
    .locals 1
    .param p1, "time"    # Lorg/joda/time/DateTime;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->nextRun:Lorg/joda/time/DateTime;

    .line 240
    const-string v0, "MM/dd/YYYY"

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/v1/entity/Report;->nextRunDate:Ljava/lang/String;

    .line 241
    const-string v0, "HH:mm"

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/v1/entity/Report;->nextRunTime:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setRepeat(Lcom/coinbase/v1/entity/Report$Repeat;)V
    .locals 0
    .param p1, "repeat"    # Lcom/coinbase/v1/entity/Report$Repeat;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->repeat:Lcom/coinbase/v1/entity/Report$Repeat;

    .line 222
    return-void
.end method

.method public setStartType(Lcom/coinbase/v1/entity/Report$StartType;)V
    .locals 0
    .param p1, "startType"    # Lcom/coinbase/v1/entity/Report$StartType;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->startType:Lcom/coinbase/v1/entity/Report$StartType;

    .line 216
    return-void
.end method

.method public setStatus(Lcom/coinbase/v1/entity/Report$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/coinbase/v1/entity/Report$Status;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->status:Lcom/coinbase/v1/entity/Report$Status;

    .line 169
    return-void
.end method

.method public setTimeRange(Lcom/coinbase/v1/entity/Report$TimeRange;)V
    .locals 0
    .param p1, "timeRange"    # Lcom/coinbase/v1/entity/Report$TimeRange;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->timeRange:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 210
    return-void
.end method

.method public setTimeRangeEnd(Lorg/joda/time/DateTime;)V
    .locals 1
    .param p1, "timeRangeEnd"    # Lorg/joda/time/DateTime;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->timeRangeEndDateTime:Lorg/joda/time/DateTime;

    .line 182
    const-string v0, "MM/dd/YYYY"

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/v1/entity/Report;->timeRangeEnd:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setTimeRangeStart(Lorg/joda/time/DateTime;)V
    .locals 1
    .param p1, "timeRangeStart"    # Lorg/joda/time/DateTime;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->timeRangeStartDateTime:Lorg/joda/time/DateTime;

    .line 175
    const-string v0, "MM/dd/YYYY"

    invoke-virtual {p1, v0}, Lorg/joda/time/DateTime;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coinbase/v1/entity/Report;->timeRangeStart:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setTimes(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "times"    # Ljava/lang/Integer;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->times:Ljava/lang/Integer;

    .line 228
    return-void
.end method

.method public setTimesRun(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "timesRun"    # Ljava/lang/Integer;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->timesRun:Ljava/lang/Integer;

    .line 254
    return-void
.end method

.method public setType(Lcom/coinbase/v1/entity/Report$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/coinbase/v1/entity/Report$Type;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/coinbase/v1/entity/Report;->type:Lcom/coinbase/v1/entity/Report$Type;

    .line 192
    return-void
.end method
