.class public final enum Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;
.super Ljava/lang/Enum;
.source "NumberRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobsandgeeks/saripaar/annotation/NumberRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

.field public static final enum DOUBLE:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

.field public static final enum FLOAT:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

.field public static final enum INTEGER:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

.field public static final enum LONG:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->INTEGER:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    new-instance v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v3}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->LONG:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    new-instance v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v4}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->FLOAT:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    new-instance v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v5}, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->DOUBLE:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    sget-object v1, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->INTEGER:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->LONG:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->FLOAT:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->DOUBLE:Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->$VALUES:[Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    return-object v0
.end method

.method public static values()[Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->$VALUES:[Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    invoke-virtual {v0}, [Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mobsandgeeks/saripaar/annotation/NumberRule$NumberType;

    return-object v0
.end method
