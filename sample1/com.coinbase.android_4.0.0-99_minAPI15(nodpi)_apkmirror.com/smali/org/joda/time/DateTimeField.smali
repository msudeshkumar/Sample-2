.class public abstract Lorg/joda/time/DateTimeField;
.super Ljava/lang/Object;
.source "DateTimeField.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(JI)J
.end method

.method public abstract add(JJ)J
.end method

.method public abstract get(J)I
.end method

.method public abstract getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getAsShortText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getAsText(ILjava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getAsText(JLjava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getAsText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getDifference(JJ)I
.end method

.method public abstract getDifferenceAsLong(JJ)J
.end method

.method public abstract getDurationField()Lorg/joda/time/DurationField;
.end method

.method public abstract getLeapDurationField()Lorg/joda/time/DurationField;
.end method

.method public abstract getMaximumTextLength(Ljava/util/Locale;)I
.end method

.method public abstract getMaximumValue()I
.end method

.method public abstract getMaximumValue(J)I
.end method

.method public abstract getMaximumValue(Lorg/joda/time/ReadablePartial;)I
.end method

.method public abstract getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
.end method

.method public abstract getMinimumValue()I
.end method

.method public abstract getMinimumValue(Lorg/joda/time/ReadablePartial;)I
.end method

.method public abstract getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRangeDurationField()Lorg/joda/time/DurationField;
.end method

.method public abstract getType()Lorg/joda/time/DateTimeFieldType;
.end method

.method public abstract isLeap(J)Z
.end method

.method public abstract isSupported()Z
.end method

.method public abstract remainder(J)J
.end method

.method public abstract roundCeiling(J)J
.end method

.method public abstract roundFloor(J)J
.end method

.method public abstract roundHalfCeiling(J)J
.end method

.method public abstract roundHalfEven(J)J
.end method

.method public abstract roundHalfFloor(J)J
.end method

.method public abstract set(JI)J
.end method

.method public abstract set(JLjava/lang/String;Ljava/util/Locale;)J
.end method
