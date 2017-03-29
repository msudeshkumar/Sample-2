.class public final enum Lcom/daimajia/swipe/SwipeLayout$ShowMode;
.super Ljava/lang/Enum;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/daimajia/swipe/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/daimajia/swipe/SwipeLayout$ShowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/daimajia/swipe/SwipeLayout$ShowMode;

.field public static final enum LayDown:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

.field public static final enum PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    const-string v1, "LayDown"

    invoke-direct {v0, v1, v2}, Lcom/daimajia/swipe/SwipeLayout$ShowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->LayDown:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    .line 71
    new-instance v0, Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    const-string v1, "PullOut"

    invoke-direct {v0, v1, v3}, Lcom/daimajia/swipe/SwipeLayout$ShowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->LayDown:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->PullOut:Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->$VALUES:[Lcom/daimajia/swipe/SwipeLayout$ShowMode;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    return-object v0
.end method

.method public static values()[Lcom/daimajia/swipe/SwipeLayout$ShowMode;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/daimajia/swipe/SwipeLayout$ShowMode;->$VALUES:[Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    invoke-virtual {v0}, [Lcom/daimajia/swipe/SwipeLayout$ShowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/daimajia/swipe/SwipeLayout$ShowMode;

    return-object v0
.end method
