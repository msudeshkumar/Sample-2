.class public Lorg/joda/time/IllegalFieldValueException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalFieldValueException.java"


# instance fields
.field private final iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

.field private final iDurationFieldType:Lorg/joda/time/DurationFieldType;

.field private final iFieldName:Ljava/lang/String;

.field private final iLowerBound:Ljava/lang/Number;

.field private iMessage:Ljava/lang/String;

.field private final iNumberValue:Ljava/lang/Number;

.field private final iStringValue:Ljava/lang/String;

.field private final iUpperBound:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, v1}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 110
    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    .line 111
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    .line 113
    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    .line 115
    iput-object p4, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    .line 116
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/Number;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, v1, v1, p3}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 131
    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    .line 132
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    .line 134
    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    .line 136
    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    .line 137
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public constructor <init>(Lorg/joda/time/DateTimeFieldType;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/joda/time/IllegalFieldValueException;->createMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iDateTimeFieldType:Lorg/joda/time/DateTimeFieldType;

    .line 191
    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iDurationFieldType:Lorg/joda/time/DurationFieldType;

    .line 192
    invoke-virtual {p1}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iFieldName:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lorg/joda/time/IllegalFieldValueException;->iStringValue:Ljava/lang/String;

    .line 194
    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iNumberValue:Ljava/lang/Number;

    .line 195
    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iLowerBound:Ljava/lang/Number;

    .line 196
    iput-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iUpperBound:Ljava/lang/Number;

    .line 197
    invoke-super {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    .line 198
    return-void
.end method

.method private static createMessage(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    if-nez p2, :cond_2

    .line 45
    if-nez p3, :cond_1

    .line 46
    const-string v1, "is not supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :goto_0
    if-eqz p4, :cond_0

    .line 60
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 48
    :cond_1
    const-string v1, "must not be larger than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 50
    :cond_2
    if-nez p3, :cond_3

    .line 51
    const-string v1, "must not be smaller than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 53
    :cond_3
    const-string v1, "must be in the range ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static createMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x22

    .line 74
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 76
    if-nez p1, :cond_0

    .line 77
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :goto_0
    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    return-object v0
.end method

.method public prependMessage(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 324
    iput-object p1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    if-eqz p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/IllegalFieldValueException;->iMessage:Ljava/lang/String;

    goto :goto_0
.end method
