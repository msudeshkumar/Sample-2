.class public Lcom/coinbase/v1/entity/RecurringPayment;
.super Ljava/lang/Object;
.source "RecurringPayment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/v1/entity/RecurringPayment$StartType;,
        Lcom/coinbase/v1/entity/RecurringPayment$Status;
    }
.end annotation


# static fields
.field public static final INDEFINITE:Ljava/lang/Integer;

.field private static final serialVersionUID:J = 0x6bd3a67b09c70927L


# instance fields
.field private _amount:Lorg/joda/money/Money;

.field private _button:Lcom/coinbase/v1/entity/Button;

.field private _createdAt:Lorg/joda/time/DateTime;

.field private _custom:Ljava/lang/String;

.field private _description:Ljava/lang/String;

.field private _from:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field private _lastRun:Lorg/joda/time/DateTime;

.field private _nextRun:Lorg/joda/time/DateTime;

.field private _notes:Ljava/lang/String;

.field private _repeat:Lcom/coinbase/v1/entity/Button$Repeat;

.field private _startType:Lcom/coinbase/v1/entity/RecurringPayment$StartType;

.field private _status:Lcom/coinbase/v1/entity/RecurringPayment$Status;

.field private _times:Ljava/lang/Integer;

.field private _timesRun:Ljava/lang/Integer;

.field private _to:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/coinbase/v1/entity/RecurringPayment;->INDEFINITE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Lorg/joda/money/Money;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_amount:Lorg/joda/money/Money;

    return-object v0
.end method

.method public getButton()Lcom/coinbase/v1/entity/Button;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_button:Lcom/coinbase/v1/entity/Button;

    return-object v0
.end method

.method public getCreatedAt()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_createdAt:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getCustom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_custom:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_description:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_from:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRun()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_lastRun:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getNextRun()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_nextRun:Lorg/joda/time/DateTime;

    return-object v0
.end method

.method public getNotes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_notes:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeat()Lcom/coinbase/v1/entity/Button$Repeat;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_repeat:Lcom/coinbase/v1/entity/Button$Repeat;

    return-object v0
.end method

.method public getStartType()Lcom/coinbase/v1/entity/RecurringPayment$StartType;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_startType:Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    return-object v0
.end method

.method public getStatus()Lcom/coinbase/v1/entity/RecurringPayment$Status;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_status:Lcom/coinbase/v1/entity/RecurringPayment$Status;

    return-object v0
.end method

.method public getTimes()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_times:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTimesRun()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_timesRun:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_to:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Lorg/joda/money/Money;)V
    .locals 0
    .param p1, "amount"    # Lorg/joda/money/Money;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_amount:Lorg/joda/money/Money;

    .line 162
    return-void
.end method

.method public setButton(Lcom/coinbase/v1/entity/Button;)V
    .locals 0
    .param p1, "button"    # Lcom/coinbase/v1/entity/Button;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_button:Lcom/coinbase/v1/entity/Button;

    .line 202
    return-void
.end method

.method public setCreatedAt(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "createdAt"    # Lorg/joda/time/DateTime;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_createdAt:Lorg/joda/time/DateTime;

    .line 178
    return-void
.end method

.method public setCustom(Ljava/lang/String;)V
    .locals 0
    .param p1, "custom"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_custom:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_description:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_from:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_id:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setLastRun(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "lastRun"    # Lorg/joda/time/DateTime;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_lastRun:Lorg/joda/time/DateTime;

    .line 130
    return-void
.end method

.method public setNextRun(Lorg/joda/time/DateTime;)V
    .locals 0
    .param p1, "nextRun"    # Lorg/joda/time/DateTime;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_nextRun:Lorg/joda/time/DateTime;

    .line 138
    return-void
.end method

.method public setNotes(Ljava/lang/String;)V
    .locals 0
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_notes:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setRepeat(Lcom/coinbase/v1/entity/Button$Repeat;)V
    .locals 0
    .param p1, "repeat"    # Lcom/coinbase/v1/entity/Button$Repeat;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_repeat:Lcom/coinbase/v1/entity/Button$Repeat;

    .line 122
    return-void
.end method

.method public setStartType(Lcom/coinbase/v1/entity/RecurringPayment$StartType;)V
    .locals 0
    .param p1, "startType"    # Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_startType:Lcom/coinbase/v1/entity/RecurringPayment$StartType;

    .line 210
    return-void
.end method

.method public setStatus(Lcom/coinbase/v1/entity/RecurringPayment$Status;)V
    .locals 0
    .param p1, "status"    # Lcom/coinbase/v1/entity/RecurringPayment$Status;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_status:Lcom/coinbase/v1/entity/RecurringPayment$Status;

    .line 186
    return-void
.end method

.method public setTimes(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "times"    # Ljava/lang/Integer;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_times:Ljava/lang/Integer;

    .line 114
    return-void
.end method

.method public setTimesRun(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "timesRun"    # Ljava/lang/Integer;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_timesRun:Ljava/lang/Integer;

    .line 106
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/coinbase/v1/entity/RecurringPayment;->_to:Ljava/lang/String;

    .line 90
    return-void
.end method
