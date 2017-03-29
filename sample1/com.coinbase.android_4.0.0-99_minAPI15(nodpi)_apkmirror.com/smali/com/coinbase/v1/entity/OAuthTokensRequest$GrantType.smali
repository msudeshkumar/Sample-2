.class public final enum Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;
.super Ljava/lang/Enum;
.source "OAuthTokensRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/v1/entity/OAuthTokensRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GrantType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

.field public static final enum AUTHORIZATION_CODE:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

.field public static final enum REFRESH_TOKEN:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    const-string v1, "AUTHORIZATION_CODE"

    const-string v2, "authorization_code"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->AUTHORIZATION_CODE:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    .line 12
    new-instance v0, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    const-string v1, "REFRESH_TOKEN"

    const-string v2, "refresh_token"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->REFRESH_TOKEN:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    .line 10
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    sget-object v1, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->AUTHORIZATION_CODE:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->REFRESH_TOKEN:Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->$VALUES:[Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->_value:Ljava/lang/String;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 22
    invoke-static {}, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->values()[Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 23
    .local v0, "type":Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;
    invoke-virtual {v0}, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    .end local v0    # "type":Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;
    :goto_1
    return-object v0

    .line 22
    .restart local v0    # "type":Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "type":Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->$VALUES:[Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    invoke-virtual {v0}, [Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/coinbase/v1/entity/OAuthTokensRequest$GrantType;->_value:Ljava/lang/String;

    return-object v0
.end method
