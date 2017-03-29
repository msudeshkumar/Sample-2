.class public final enum Lcom/coinbase/v1/entity/Report$Repeat;
.super Ljava/lang/Enum;
.source "Report.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/Report;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Repeat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/Report$Repeat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/Report$Repeat;

.field public static final enum BIWEEKLY:Lcom/coinbase/v1/entity/Report$Repeat;

.field public static final enum DAILY:Lcom/coinbase/v1/entity/Report$Repeat;

.field public static final enum MONTHLY:Lcom/coinbase/v1/entity/Report$Repeat;

.field public static final enum NEVER:Lcom/coinbase/v1/entity/Report$Repeat;

.field public static final enum QUARTERLY:Lcom/coinbase/v1/entity/Report$Repeat;

.field public static final enum WEEKLY:Lcom/coinbase/v1/entity/Report$Repeat;

.field public static final enum YEARLY:Lcom/coinbase/v1/entity/Report$Repeat;


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

    .line 85
    new-instance v0, Lcom/coinbase/v1/entity/Report$Repeat;

    const-string v1, "NEVER"

    const-string v2, "never"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/Report$Repeat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$Repeat;->NEVER:Lcom/coinbase/v1/entity/Report$Repeat;

    .line 86
    new-instance v0, Lcom/coinbase/v1/entity/Report$Repeat;

    const-string v1, "DAILY"

    const-string v2, "daily"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/v1/entity/Report$Repeat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$Repeat;->DAILY:Lcom/coinbase/v1/entity/Report$Repeat;

    .line 87
    new-instance v0, Lcom/coinbase/v1/entity/Report$Repeat;

    const-string v1, "WEEKLY"

    const-string v2, "weekly"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/v1/entity/Report$Repeat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$Repeat;->WEEKLY:Lcom/coinbase/v1/entity/Report$Repeat;

    .line 88
    new-instance v0, Lcom/coinbase/v1/entity/Report$Repeat;

    const-string v1, "BIWEEKLY"

    const-string v2, "every_two_weeks"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/v1/entity/Report$Repeat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$Repeat;->BIWEEKLY:Lcom/coinbase/v1/entity/Report$Repeat;

    .line 89
    new-instance v0, Lcom/coinbase/v1/entity/Report$Repeat;

    const-string v1, "MONTHLY"

    const-string v2, "monthly"

    invoke-direct {v0, v1, v8, v2}, Lcom/coinbase/v1/entity/Report$Repeat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$Repeat;->MONTHLY:Lcom/coinbase/v1/entity/Report$Repeat;

    .line 90
    new-instance v0, Lcom/coinbase/v1/entity/Report$Repeat;

    const-string v1, "QUARTERLY"

    const/4 v2, 0x5

    const-string v3, "quarterly"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Report$Repeat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$Repeat;->QUARTERLY:Lcom/coinbase/v1/entity/Report$Repeat;

    .line 91
    new-instance v0, Lcom/coinbase/v1/entity/Report$Repeat;

    const-string v1, "YEARLY"

    const/4 v2, 0x6

    const-string v3, "yearly"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Report$Repeat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Report$Repeat;->YEARLY:Lcom/coinbase/v1/entity/Report$Repeat;

    .line 84
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/coinbase/v1/entity/Report$Repeat;

    sget-object v1, Lcom/coinbase/v1/entity/Report$Repeat;->NEVER:Lcom/coinbase/v1/entity/Report$Repeat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/v1/entity/Report$Repeat;->DAILY:Lcom/coinbase/v1/entity/Report$Repeat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/v1/entity/Report$Repeat;->WEEKLY:Lcom/coinbase/v1/entity/Report$Repeat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/v1/entity/Report$Repeat;->BIWEEKLY:Lcom/coinbase/v1/entity/Report$Repeat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/v1/entity/Report$Repeat;->MONTHLY:Lcom/coinbase/v1/entity/Report$Repeat;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/v1/entity/Report$Repeat;->QUARTERLY:Lcom/coinbase/v1/entity/Report$Repeat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/v1/entity/Report$Repeat;->YEARLY:Lcom/coinbase/v1/entity/Report$Repeat;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/v1/entity/Report$Repeat;->$VALUES:[Lcom/coinbase/v1/entity/Report$Repeat;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coinbase/v1/entity/Report$Repeat;->_value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/Report$Repeat;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/coinbase/v1/entity/Report$Repeat;->values()[Lcom/coinbase/v1/entity/Report$Repeat;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 102
    .local v0, "repeat":Lcom/coinbase/v1/entity/Report$Repeat;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/Report$Repeat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    .end local v0    # "repeat":Lcom/coinbase/v1/entity/Report$Repeat;
    :goto_1
    return-object v0

    .line 101
    .restart local v0    # "repeat":Lcom/coinbase/v1/entity/Report$Repeat;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "repeat":Lcom/coinbase/v1/entity/Report$Repeat;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/Report$Repeat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    const-class v0, Lcom/coinbase/v1/entity/Report$Repeat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Report$Repeat;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/Report$Repeat;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/coinbase/v1/entity/Report$Repeat;->$VALUES:[Lcom/coinbase/v1/entity/Report$Repeat;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/Report$Repeat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/Report$Repeat;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/coinbase/v1/entity/Report$Repeat;->_value:Ljava/lang/String;

    return-object v0
.end method
