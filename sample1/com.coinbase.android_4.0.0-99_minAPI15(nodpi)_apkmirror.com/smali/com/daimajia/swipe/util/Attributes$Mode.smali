.class public final enum Lcom/daimajia/swipe/util/Attributes$Mode;
.super Ljava/lang/Enum;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/util/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/daimajia/swipe/util/Attributes$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/daimajia/swipe/util/Attributes$Mode;

.field public static final enum Multiple:Lcom/daimajia/swipe/util/Attributes$Mode;

.field public static final enum Single:Lcom/daimajia/swipe/util/Attributes$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/daimajia/swipe/util/Attributes$Mode;

    const-string v1, "Single"

    invoke-direct {v0, v1, v2}, Lcom/daimajia/swipe/util/Attributes$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/util/Attributes$Mode;->Single:Lcom/daimajia/swipe/util/Attributes$Mode;

    new-instance v0, Lcom/daimajia/swipe/util/Attributes$Mode;

    const-string v1, "Multiple"

    invoke-direct {v0, v1, v3}, Lcom/daimajia/swipe/util/Attributes$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/util/Attributes$Mode;->Multiple:Lcom/daimajia/swipe/util/Attributes$Mode;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/daimajia/swipe/util/Attributes$Mode;

    sget-object v1, Lcom/daimajia/swipe/util/Attributes$Mode;->Single:Lcom/daimajia/swipe/util/Attributes$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/daimajia/swipe/util/Attributes$Mode;->Multiple:Lcom/daimajia/swipe/util/Attributes$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/daimajia/swipe/util/Attributes$Mode;->$VALUES:[Lcom/daimajia/swipe/util/Attributes$Mode;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/daimajia/swipe/util/Attributes$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/daimajia/swipe/util/Attributes$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/util/Attributes$Mode;

    return-object v0
.end method

.method public static values()[Lcom/daimajia/swipe/util/Attributes$Mode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/daimajia/swipe/util/Attributes$Mode;->$VALUES:[Lcom/daimajia/swipe/util/Attributes$Mode;

    invoke-virtual {v0}, [Lcom/daimajia/swipe/util/Attributes$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/daimajia/swipe/util/Attributes$Mode;

    return-object v0
.end method
