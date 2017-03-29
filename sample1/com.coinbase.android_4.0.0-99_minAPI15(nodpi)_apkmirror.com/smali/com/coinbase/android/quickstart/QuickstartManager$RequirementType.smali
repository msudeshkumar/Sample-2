.class public final enum Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;
.super Ljava/lang/Enum;
.source "QuickstartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/quickstart/QuickstartManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequirementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

.field public static final enum COMPLETE:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

.field public static final enum FAILED:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

.field public static final enum INCOMPLETE:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

.field public static final enum PENDING:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;


# instance fields
.field private _value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    const-string v1, "COMPLETE"

    const-string v2, "complete"

    invoke-direct {v0, v1, v3, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->COMPLETE:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    .line 73
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    const-string v1, "INCOMPLETE"

    const-string v2, "incomplete"

    invoke-direct {v0, v1, v4, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->INCOMPLETE:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    .line 74
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    const-string v1, "PENDING"

    const-string v2, "pending"

    invoke-direct {v0, v1, v5, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->PENDING:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    .line 75
    new-instance v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    const-string v1, "FAILED"

    const-string v2, "failed"

    invoke-direct {v0, v1, v6, v2}, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->FAILED:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->COMPLETE:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->INCOMPLETE:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->PENDING:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->FAILED:Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->$VALUES:[Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 80
    iput-object p3, p0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->_value:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    return-object v0
.end method

.method public static values()[Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->$VALUES:[Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    invoke-virtual {v0}, [Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/coinbase/android/quickstart/QuickstartManager$RequirementType;->_value:Ljava/lang/String;

    return-object v0
.end method
