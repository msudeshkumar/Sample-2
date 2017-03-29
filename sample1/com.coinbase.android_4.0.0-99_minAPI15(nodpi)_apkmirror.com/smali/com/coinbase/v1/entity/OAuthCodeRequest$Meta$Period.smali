.class public final enum Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;
.super Ljava/lang/Enum;
.source "OAuthCodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Period"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

.field public static final enum DAILY:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

.field public static final enum MONTHLY:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

.field public static final enum WEEKLY:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    const-string v1, "DAILY"

    const-string v2, "daily"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->DAILY:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    .line 18
    new-instance v0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    const-string v1, "WEEKLY"

    const-string v2, "weekly"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->WEEKLY:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    .line 19
    new-instance v0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    const-string v1, "MONTHLY"

    const-string v2, "monthly"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->MONTHLY:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    sget-object v1, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->DAILY:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->WEEKLY:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->MONTHLY:Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    aput-object v1, v0, v5

    sput-object v0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->$VALUES:[Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->_value:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->values()[Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 36
    .local v0, "period":Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    .end local v0    # "period":Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;
    :goto_1
    return-object v0

    .line 35
    .restart local v0    # "period":Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v0    # "period":Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->$VALUES:[Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthCodeRequest$Meta$Period;->_value:Ljava/lang/String;

    return-object v0
.end method
