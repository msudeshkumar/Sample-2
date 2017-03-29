.class public final enum Lcom/coinbase/api/internal/entity/MFA$Type;
.super Ljava/lang/Enum;
.source "MFA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/api/internal/entity/MFA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/api/internal/entity/MFA$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/api/internal/entity/MFA$Type;

.field public static final enum CODE:Lcom/coinbase/api/internal/entity/MFA$Type;

.field public static final enum QUESTIONS:Lcom/coinbase/api/internal/entity/MFA$Type;

.field public static final enum SELECTIONS:Lcom/coinbase/api/internal/entity/MFA$Type;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/coinbase/api/internal/entity/MFA$Type;

    const-string v1, "QUESTIONS"

    const-string v2, "questions"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/api/internal/entity/MFA$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/MFA$Type;->QUESTIONS:Lcom/coinbase/api/internal/entity/MFA$Type;

    .line 12
    new-instance v0, Lcom/coinbase/api/internal/entity/MFA$Type;

    const-string v1, "CODE"

    const-string v2, "code"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/api/internal/entity/MFA$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/MFA$Type;->CODE:Lcom/coinbase/api/internal/entity/MFA$Type;

    .line 13
    new-instance v0, Lcom/coinbase/api/internal/entity/MFA$Type;

    const-string v1, "SELECTIONS"

    const-string v2, "selections"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/api/internal/entity/MFA$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/api/internal/entity/MFA$Type;->SELECTIONS:Lcom/coinbase/api/internal/entity/MFA$Type;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/coinbase/api/internal/entity/MFA$Type;

    sget-object v1, Lcom/coinbase/api/internal/entity/MFA$Type;->QUESTIONS:Lcom/coinbase/api/internal/entity/MFA$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/api/internal/entity/MFA$Type;->CODE:Lcom/coinbase/api/internal/entity/MFA$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/api/internal/entity/MFA$Type;->SELECTIONS:Lcom/coinbase/api/internal/entity/MFA$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/coinbase/api/internal/entity/MFA$Type;->$VALUES:[Lcom/coinbase/api/internal/entity/MFA$Type;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/coinbase/api/internal/entity/MFA$Type;->_value:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/MFA$Type;
    .locals 5
    .param p0, "val"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/coinbase/api/internal/entity/MFA$Type;->values()[Lcom/coinbase/api/internal/entity/MFA$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 30
    .local v0, "type":Lcom/coinbase/api/internal/entity/MFA$Type;
    invoke-virtual {v0}, Lcom/coinbase/api/internal/entity/MFA$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    .end local v0    # "type":Lcom/coinbase/api/internal/entity/MFA$Type;
    :goto_1
    return-object v0

    .line 29
    .restart local v0    # "type":Lcom/coinbase/api/internal/entity/MFA$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v0    # "type":Lcom/coinbase/api/internal/entity/MFA$Type;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/api/internal/entity/MFA$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/coinbase/api/internal/entity/MFA$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/api/internal/entity/MFA$Type;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/api/internal/entity/MFA$Type;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/coinbase/api/internal/entity/MFA$Type;->$VALUES:[Lcom/coinbase/api/internal/entity/MFA$Type;

    invoke-virtual {v0}, [Lcom/coinbase/api/internal/entity/MFA$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/api/internal/entity/MFA$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/coinbase/api/internal/entity/MFA$Type;->_value:Ljava/lang/String;

    return-object v0
.end method
