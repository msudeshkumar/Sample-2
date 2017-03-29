.class public final enum Lcom/coinbase/v1/entity/Button$Style;
.super Ljava/lang/Enum;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/Button$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/Button$Style;

.field public static final enum BUY_NOW_LARGE:Lcom/coinbase/v1/entity/Button$Style;

.field public static final enum BUY_NOW_SMALL:Lcom/coinbase/v1/entity/Button$Style;

.field public static final enum CUSTOM_LARGE:Lcom/coinbase/v1/entity/Button$Style;

.field public static final enum CUSTOM_SMALL:Lcom/coinbase/v1/entity/Button$Style;

.field public static final enum DONATION_LARGE:Lcom/coinbase/v1/entity/Button$Style;

.field public static final enum DONATION_SMALL:Lcom/coinbase/v1/entity/Button$Style;

.field public static final enum NONE:Lcom/coinbase/v1/entity/Button$Style;

.field public static final enum SUBSCRIPTION_LARGE:Lcom/coinbase/v1/entity/Button$Style;

.field public static final enum SUBSCRIPTION_SMALL:Lcom/coinbase/v1/entity/Button$Style;


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

    .line 61
    new-instance v0, Lcom/coinbase/v1/entity/Button$Style;

    const-string v1, "BUY_NOW_LARGE"

    const-string v2, "buy_now_large"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/Button$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Button$Style;->BUY_NOW_LARGE:Lcom/coinbase/v1/entity/Button$Style;

    .line 62
    new-instance v0, Lcom/coinbase/v1/entity/Button$Style;

    const-string v1, "BUY_NOW_SMALL"

    const-string v2, "buy_now_small"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/v1/entity/Button$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Button$Style;->BUY_NOW_SMALL:Lcom/coinbase/v1/entity/Button$Style;

    .line 63
    new-instance v0, Lcom/coinbase/v1/entity/Button$Style;

    const-string v1, "DONATION_LARGE"

    const-string v2, "donation_large"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/v1/entity/Button$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Button$Style;->DONATION_LARGE:Lcom/coinbase/v1/entity/Button$Style;

    .line 64
    new-instance v0, Lcom/coinbase/v1/entity/Button$Style;

    const-string v1, "DONATION_SMALL"

    const-string v2, "donation_small"

    invoke-direct {v0, v1, v7, v2}, Lcom/coinbase/v1/entity/Button$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Button$Style;->DONATION_SMALL:Lcom/coinbase/v1/entity/Button$Style;

    .line 65
    new-instance v0, Lcom/coinbase/v1/entity/Button$Style;

    const-string v1, "SUBSCRIPTION_LARGE"

    const-string v2, "subscription_large"

    invoke-direct {v0, v1, v8, v2}, Lcom/coinbase/v1/entity/Button$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Button$Style;->SUBSCRIPTION_LARGE:Lcom/coinbase/v1/entity/Button$Style;

    .line 66
    new-instance v0, Lcom/coinbase/v1/entity/Button$Style;

    const-string v1, "SUBSCRIPTION_SMALL"

    const/4 v2, 0x5

    const-string v3, "subscription_small"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Button$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Button$Style;->SUBSCRIPTION_SMALL:Lcom/coinbase/v1/entity/Button$Style;

    .line 67
    new-instance v0, Lcom/coinbase/v1/entity/Button$Style;

    const-string v1, "CUSTOM_LARGE"

    const/4 v2, 0x6

    const-string v3, "custom_large"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Button$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Button$Style;->CUSTOM_LARGE:Lcom/coinbase/v1/entity/Button$Style;

    .line 68
    new-instance v0, Lcom/coinbase/v1/entity/Button$Style;

    const-string v1, "CUSTOM_SMALL"

    const/4 v2, 0x7

    const-string v3, "custom_small"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Button$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Button$Style;->CUSTOM_SMALL:Lcom/coinbase/v1/entity/Button$Style;

    .line 69
    new-instance v0, Lcom/coinbase/v1/entity/Button$Style;

    const-string v1, "NONE"

    const/16 v2, 0x8

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/coinbase/v1/entity/Button$Style;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/Button$Style;->NONE:Lcom/coinbase/v1/entity/Button$Style;

    .line 60
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/coinbase/v1/entity/Button$Style;

    sget-object v1, Lcom/coinbase/v1/entity/Button$Style;->BUY_NOW_LARGE:Lcom/coinbase/v1/entity/Button$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/v1/entity/Button$Style;->BUY_NOW_SMALL:Lcom/coinbase/v1/entity/Button$Style;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/v1/entity/Button$Style;->DONATION_LARGE:Lcom/coinbase/v1/entity/Button$Style;

    aput-object v1, v0, v6

    sget-object v1, Lcom/coinbase/v1/entity/Button$Style;->DONATION_SMALL:Lcom/coinbase/v1/entity/Button$Style;

    aput-object v1, v0, v7

    sget-object v1, Lcom/coinbase/v1/entity/Button$Style;->SUBSCRIPTION_LARGE:Lcom/coinbase/v1/entity/Button$Style;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/coinbase/v1/entity/Button$Style;->SUBSCRIPTION_SMALL:Lcom/coinbase/v1/entity/Button$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/coinbase/v1/entity/Button$Style;->CUSTOM_LARGE:Lcom/coinbase/v1/entity/Button$Style;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/coinbase/v1/entity/Button$Style;->CUSTOM_SMALL:Lcom/coinbase/v1/entity/Button$Style;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/coinbase/v1/entity/Button$Style;->NONE:Lcom/coinbase/v1/entity/Button$Style;

    aput-object v2, v0, v1

    sput-object v0, Lcom/coinbase/v1/entity/Button$Style;->$VALUES:[Lcom/coinbase/v1/entity/Button$Style;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coinbase/v1/entity/Button$Style;->_value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/Button$Style;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 79
    invoke-static {}, Lcom/coinbase/v1/entity/Button$Style;->values()[Lcom/coinbase/v1/entity/Button$Style;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 80
    .local v0, "style":Lcom/coinbase/v1/entity/Button$Style;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/Button$Style;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    .end local v0    # "style":Lcom/coinbase/v1/entity/Button$Style;
    :goto_1
    return-object v0

    .line 79
    .restart local v0    # "style":Lcom/coinbase/v1/entity/Button$Style;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "style":Lcom/coinbase/v1/entity/Button$Style;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/Button$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/coinbase/v1/entity/Button$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/Button$Style;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/Button$Style;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/coinbase/v1/entity/Button$Style;->$VALUES:[Lcom/coinbase/v1/entity/Button$Style;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/Button$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/Button$Style;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/coinbase/v1/entity/Button$Style;->_value:Ljava/lang/String;

    return-object v0
.end method
