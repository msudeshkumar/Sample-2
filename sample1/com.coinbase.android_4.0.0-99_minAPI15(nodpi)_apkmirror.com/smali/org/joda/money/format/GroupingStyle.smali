.class public final enum Lorg/joda/money/format/GroupingStyle;
.super Ljava/lang/Enum;
.source "GroupingStyle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/joda/money/format/GroupingStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/joda/money/format/GroupingStyle;

.field public static final enum BEFORE_DECIMAL_POINT:Lorg/joda/money/format/GroupingStyle;

.field public static final enum FULL:Lorg/joda/money/format/GroupingStyle;

.field public static final enum NONE:Lorg/joda/money/format/GroupingStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lorg/joda/money/format/GroupingStyle;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/joda/money/format/GroupingStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joda/money/format/GroupingStyle;->NONE:Lorg/joda/money/format/GroupingStyle;

    .line 34
    new-instance v0, Lorg/joda/money/format/GroupingStyle;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3}, Lorg/joda/money/format/GroupingStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joda/money/format/GroupingStyle;->FULL:Lorg/joda/money/format/GroupingStyle;

    .line 38
    new-instance v0, Lorg/joda/money/format/GroupingStyle;

    const-string v1, "BEFORE_DECIMAL_POINT"

    invoke-direct {v0, v1, v4}, Lorg/joda/money/format/GroupingStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/joda/money/format/GroupingStyle;->BEFORE_DECIMAL_POINT:Lorg/joda/money/format/GroupingStyle;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/joda/money/format/GroupingStyle;

    sget-object v1, Lorg/joda/money/format/GroupingStyle;->NONE:Lorg/joda/money/format/GroupingStyle;

    aput-object v1, v0, v2

    sget-object v1, Lorg/joda/money/format/GroupingStyle;->FULL:Lorg/joda/money/format/GroupingStyle;

    aput-object v1, v0, v3

    sget-object v1, Lorg/joda/money/format/GroupingStyle;->BEFORE_DECIMAL_POINT:Lorg/joda/money/format/GroupingStyle;

    aput-object v1, v0, v4

    sput-object v0, Lorg/joda/money/format/GroupingStyle;->$VALUES:[Lorg/joda/money/format/GroupingStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/joda/money/format/GroupingStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lorg/joda/money/format/GroupingStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/joda/money/format/GroupingStyle;

    return-object v0
.end method

.method public static values()[Lorg/joda/money/format/GroupingStyle;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lorg/joda/money/format/GroupingStyle;->$VALUES:[Lorg/joda/money/format/GroupingStyle;

    invoke-virtual {v0}, [Lorg/joda/money/format/GroupingStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/money/format/GroupingStyle;

    return-object v0
.end method
