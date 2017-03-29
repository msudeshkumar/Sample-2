.class public final enum Lcom/coinbase/v1/entity/Report$TimeRange;
.super Ljava/lang/Enum;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/Report$TimeRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/Report$TimeRange;

.field public static final enum ALL:Lcom/coinbase/v1/entity/Report$TimeRange;

.field public static final enum CUSTOM:Lcom/coinbase/v1/entity/Report$TimeRange;

.field public static final enum LAST_FULL_MONTH:Lcom/coinbase/v1/entity/Report$TimeRange;

.field public static final enum LAST_FULL_YEAR:Lcom/coinbase/v1/entity/Report$TimeRange;

.field public static final enum MONTH_TO_DATE:Lcom/coinbase/v1/entity/Report$TimeRange;

.field public static final enum PAST_SEVEN:Lcom/coinbase/v1/entity/Report$TimeRange;

.field public static final enum PAST_THIRTY:Lcom/coinbase/v1/entity/Report$TimeRange;

.field public static final enum TODAY:Lcom/coinbase/v1/entity/Report$TimeRange;

.field public static final enum YEAR_TO_DATE:Lcom/coinbase/v1/entity/Report$TimeRange;

.field public static final enum YESTERDAY:Lcom/coinbase/v1/entity/Report$TimeRange;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    new-instance v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    const-string v1, "TODAY"

    const-string v2, "today"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/Report$TimeRange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->TODAY:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 57
    new-instance v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    const-string v1, "YESTERDAY"

    const-string v2, "yesterday"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/v1/entity/Report$TimeRange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->YESTERDAY:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 58
    new-instance v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    const-string v1, "PAST_SEVEN"

    const-string v2, "past_7"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/v1/entity/Report$TimeRange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->PAST_SEVEN:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 59
    new-instance v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    const-string v1, "PAST_THIRTY"

    const-string v2, "past_30"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/v1/entity/Report$TimeRange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->PAST_THIRTY:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 60
    new-instance v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    const-string v1, "MONTH_TO_DATE"

    const-string v2, "month_to_date"

    invoke-direct {v0, v1, v8, v2}, Lcom/coinbase/v1/entity/Report$TimeRange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->MONTH_TO_DATE:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 61
    new-instance v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    const-string v1, "LAST_FULL_MONTH"

    const/4 v2, 0x5

    const-string v3, "last_full_month"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Report$TimeRange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->LAST_FULL_MONTH:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 62
    new-instance v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    const-string v1, "YEAR_TO_DATE"

    const/4 v2, 0x6

    const-string v3, "year_to_date"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Report$TimeRange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->YEAR_TO_DATE:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 63
    new-instance v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    const-string v1, "LAST_FULL_YEAR"

    const/4 v2, 0x7

    const-string v3, "last_full_year"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Report$TimeRange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->LAST_FULL_YEAR:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 64
    new-instance v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    const-string v1, "ALL"

    const/16 v2, 0x8

    const-string v3, "all"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Report$TimeRange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->ALL:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 65
    new-instance v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    const-string v1, "CUSTOM"

    const/16 v2, 0x9

    const-string v3, "custom"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Report$TimeRange;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->CUSTOM:Lcom/coinbase/v1/entity/Report$TimeRange;

    .line 55
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/coinbase/v1/entity/Report$TimeRange;

    sget-object v1, Lcom/coinbase/v1/entity/Report$TimeRange;->TODAY:Lcom/coinbase/v1/entity/Report$TimeRange;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/v1/entity/Report$TimeRange;->YESTERDAY:Lcom/coinbase/v1/entity/Report$TimeRange;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/v1/entity/Report$TimeRange;->PAST_SEVEN:Lcom/coinbase/v1/entity/Report$TimeRange;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/v1/entity/Report$TimeRange;->PAST_THIRTY:Lcom/coinbase/v1/entity/Report$TimeRange;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/v1/entity/Report$TimeRange;->MONTH_TO_DATE:Lcom/coinbase/v1/entity/Report$TimeRange;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/v1/entity/Report$TimeRange;->LAST_FULL_MONTH:Lcom/coinbase/v1/entity/Report$TimeRange;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/v1/entity/Report$TimeRange;->YEAR_TO_DATE:Lcom/coinbase/v1/entity/Report$TimeRange;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coinbase/v1/entity/Report$TimeRange;->LAST_FULL_YEAR:Lcom/coinbase/v1/entity/Report$TimeRange;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/coinbase/v1/entity/Report$TimeRange;->ALL:Lcom/coinbase/v1/entity/Report$TimeRange;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/coinbase/v1/entity/Report$TimeRange;->CUSTOM:Lcom/coinbase/v1/entity/Report$TimeRange;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->$VALUES:[Lcom/coinbase/v1/entity/Report$TimeRange;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coinbase/v1/entity/Report$TimeRange;->_value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/Report$TimeRange;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/coinbase/v1/entity/Report$TimeRange;->values()[Lcom/coinbase/v1/entity/Report$TimeRange;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 76
    .local v0, "timerange":Lcom/coinbase/v1/entity/Report$TimeRange;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/Report$TimeRange;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    .end local v0    # "timerange":Lcom/coinbase/v1/entity/Report$TimeRange;
    :goto_1
    return-object v0

    .line 75
    .restart local v0    # "timerange":Lcom/coinbase/v1/entity/Report$TimeRange;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "timerange":Lcom/coinbase/v1/entity/Report$TimeRange;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/Report$TimeRange;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Report$TimeRange;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/Report$TimeRange;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/coinbase/v1/entity/Report$TimeRange;->$VALUES:[Lcom/coinbase/v1/entity/Report$TimeRange;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/Report$TimeRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/Report$TimeRange;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report$TimeRange;->_value:Ljava/lang/String;

    return-object v0
.end method
