.class public final enum Lcom/coinbase/api/internal/entity/Institution;
.super Ljava/lang/Enum;
.source "Institution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/api/internal/entity/Institution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/api/internal/entity/Institution;

.field public static final enum BANK_OF_AMERICA:Lcom/coinbase/api/internal/entity/Institution;

.field public static final enum CAPITAL_ONE_360:Lcom/coinbase/api/internal/entity/Institution;

.field public static final enum CHARLES_SCHWAB:Lcom/coinbase/api/internal/entity/Institution;

.field public static final enum CHASE:Lcom/coinbase/api/internal/entity/Institution;

.field public static final enum CITI:Lcom/coinbase/api/internal/entity/Institution;

.field public static final enum FIDELITY:Lcom/coinbase/api/internal/entity/Institution;

.field public static final enum USAA:Lcom/coinbase/api/internal/entity/Institution;

.field public static final enum US_BANK:Lcom/coinbase/api/internal/entity/Institution;

.field public static final enum WELLS_FARGO:Lcom/coinbase/api/internal/entity/Institution;


# instance fields
.field private _code:Ljava/lang/String;

.field private _name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 12
    new-instance v0, Lcom/coinbase/api/internal/entity/Institution;

    const-string v1, "BANK_OF_AMERICA"

    const-string v2, "Bank of Americal"

    const-string v3, "bofa"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/coinbase/api/internal/entity/Institution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/Institution;->BANK_OF_AMERICA:Lcom/coinbase/api/internal/entity/Institution;

    .line 13
    new-instance v0, Lcom/coinbase/api/internal/entity/Institution;

    const-string v1, "CAPITAL_ONE_360"

    const-string v2, "Capital One 360"

    const-string v3, "capone360"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/coinbase/api/internal/entity/Institution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/Institution;->CAPITAL_ONE_360:Lcom/coinbase/api/internal/entity/Institution;

    .line 14
    new-instance v0, Lcom/coinbase/api/internal/entity/Institution;

    const-string v1, "CHARLES_SCHWAB"

    const-string v2, "Charles Schwab"

    const-string v3, "schwab"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/coinbase/api/internal/entity/Institution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/Institution;->CHARLES_SCHWAB:Lcom/coinbase/api/internal/entity/Institution;

    .line 15
    new-instance v0, Lcom/coinbase/api/internal/entity/Institution;

    const-string v1, "CHASE"

    const-string v2, "Chase"

    const-string v3, "chase"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/coinbase/api/internal/entity/Institution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/Institution;->CHASE:Lcom/coinbase/api/internal/entity/Institution;

    .line 16
    new-instance v0, Lcom/coinbase/api/internal/entity/Institution;

    const-string v1, "CITI"

    const-string v2, "Citi"

    const-string v3, "citi"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/coinbase/api/internal/entity/Institution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/Institution;->CITI:Lcom/coinbase/api/internal/entity/Institution;

    .line 17
    new-instance v0, Lcom/coinbase/api/internal/entity/Institution;

    const-string v1, "FIDELITY"

    const/4 v2, 0x5

    const-string v3, "Fidelity"

    const-string v4, "fidelity"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coinbase/api/internal/entity/Institution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/Institution;->FIDELITY:Lcom/coinbase/api/internal/entity/Institution;

    .line 18
    new-instance v0, Lcom/coinbase/api/internal/entity/Institution;

    const-string v1, "US_BANK"

    const/4 v2, 0x6

    const-string v3, "US Bank"

    const-string v4, "us"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coinbase/api/internal/entity/Institution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/Institution;->US_BANK:Lcom/coinbase/api/internal/entity/Institution;

    .line 19
    new-instance v0, Lcom/coinbase/api/internal/entity/Institution;

    const-string v1, "USAA"

    const/4 v2, 0x7

    const-string v3, "USAA"

    const-string v4, "usaa"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coinbase/api/internal/entity/Institution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/Institution;->USAA:Lcom/coinbase/api/internal/entity/Institution;

    .line 20
    new-instance v0, Lcom/coinbase/api/internal/entity/Institution;

    const-string v1, "WELLS_FARGO"

    const/16 v2, 0x8

    const-string v3, "Wells Fargo"

    const-string v4, "wells"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/coinbase/api/internal/entity/Institution;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/Institution;->WELLS_FARGO:Lcom/coinbase/api/internal/entity/Institution;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/coinbase/api/internal/entity/Institution;

    sget-object v1, Lcom/coinbase/api/internal/entity/Institution;->BANK_OF_AMERICA:Lcom/coinbase/api/internal/entity/Institution;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/api/internal/entity/Institution;->CAPITAL_ONE_360:Lcom/coinbase/api/internal/entity/Institution;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/api/internal/entity/Institution;->CHARLES_SCHWAB:Lcom/coinbase/api/internal/entity/Institution;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/api/internal/entity/Institution;->CHASE:Lcom/coinbase/api/internal/entity/Institution;

    aput-object v1, v0, v8

    sget-object v1, Lcom/coinbase/api/internal/entity/Institution;->CITI:Lcom/coinbase/api/internal/entity/Institution;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/api/internal/entity/Institution;->FIDELITY:Lcom/coinbase/api/internal/entity/Institution;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/api/internal/entity/Institution;->US_BANK:Lcom/coinbase/api/internal/entity/Institution;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coinbase/api/internal/entity/Institution;->USAA:Lcom/coinbase/api/internal/entity/Institution;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/coinbase/api/internal/entity/Institution;->WELLS_FARGO:Lcom/coinbase/api/internal/entity/Institution;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/api/internal/entity/Institution;->$VALUES:[Lcom/coinbase/api/internal/entity/Institution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/coinbase/api/internal/entity/Institution;->_name:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/coinbase/api/internal/entity/Institution;->_code:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/Institution;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/coinbase/api/internal/entity/Institution;->values()[Lcom/coinbase/api/internal/entity/Institution;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 43
    .local v0, "institution":Lcom/coinbase/api/internal/entity/Institution;
    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/Institution;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    .end local v0    # "institution":Lcom/coinbase/api/internal/entity/Institution;
    :goto_1
    return-object v0

    .line 42
    .restart local v0    # "institution":Lcom/coinbase/api/internal/entity/Institution;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "institution":Lcom/coinbase/api/internal/entity/Institution;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/Institution;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/coinbase/api/internal/entity/Institution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/entity/Institution;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/api/internal/entity/Institution;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/coinbase/api/internal/entity/Institution;->$VALUES:[Lcom/coinbase/api/internal/entity/Institution;

    invoke-virtual {v0}, [Lcom/coinbase/api/internal/entity/Institution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/api/internal/entity/Institution;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Institution;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/Institution;->_code:Ljava/lang/String;

    return-object v0
.end method
