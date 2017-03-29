.class public Lcom/coinbase/android/ui/Mintent;
.super Ljava/lang/Object;
.source "Mintent.java"


# static fields
.field public static final BANK_ACCOUNT:Lcom/coinbase/android/ui/Mintent;

.field public static final BUY:Lcom/coinbase/android/ui/Mintent;

.field public static final CHARTS:Lcom/coinbase/android/ui/Mintent;

.field public static final INVITE_FRIENDS:Lcom/coinbase/android/ui/Mintent;

.field public static final SELL:Lcom/coinbase/android/ui/Mintent;

.field public static final SETTINGS:Lcom/coinbase/android/ui/Mintent;


# instance fields
.field public data:Ljava/lang/Object;

.field public section:Lcom/coinbase/android/utils/Section;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/coinbase/android/ui/Mintent;

    sget-object v1, Lcom/coinbase/android/utils/Section;->BUY:Lcom/coinbase/android/utils/Section;

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/ui/Mintent;-><init>(Lcom/coinbase/android/utils/Section;Ljava/lang/Object;)V

    sput-object v0, Lcom/coinbase/android/ui/Mintent;->BUY:Lcom/coinbase/android/ui/Mintent;

    .line 11
    new-instance v0, Lcom/coinbase/android/ui/Mintent;

    sget-object v1, Lcom/coinbase/android/utils/Section;->SELL:Lcom/coinbase/android/utils/Section;

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/ui/Mintent;-><init>(Lcom/coinbase/android/utils/Section;Ljava/lang/Object;)V

    sput-object v0, Lcom/coinbase/android/ui/Mintent;->SELL:Lcom/coinbase/android/ui/Mintent;

    .line 12
    new-instance v0, Lcom/coinbase/android/ui/Mintent;

    sget-object v1, Lcom/coinbase/android/utils/Section;->SETTINGS:Lcom/coinbase/android/utils/Section;

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/ui/Mintent;-><init>(Lcom/coinbase/android/utils/Section;Ljava/lang/Object;)V

    sput-object v0, Lcom/coinbase/android/ui/Mintent;->SETTINGS:Lcom/coinbase/android/ui/Mintent;

    .line 13
    new-instance v0, Lcom/coinbase/android/ui/Mintent;

    invoke-direct {v0, v2, v2}, Lcom/coinbase/android/ui/Mintent;-><init>(Lcom/coinbase/android/utils/Section;Ljava/lang/Object;)V

    sput-object v0, Lcom/coinbase/android/ui/Mintent;->BANK_ACCOUNT:Lcom/coinbase/android/ui/Mintent;

    .line 14
    new-instance v0, Lcom/coinbase/android/ui/Mintent;

    invoke-direct {v0, v2, v2}, Lcom/coinbase/android/ui/Mintent;-><init>(Lcom/coinbase/android/utils/Section;Ljava/lang/Object;)V

    sput-object v0, Lcom/coinbase/android/ui/Mintent;->INVITE_FRIENDS:Lcom/coinbase/android/ui/Mintent;

    .line 15
    new-instance v0, Lcom/coinbase/android/ui/Mintent;

    sget-object v1, Lcom/coinbase/android/utils/Section;->CHARTS:Lcom/coinbase/android/utils/Section;

    invoke-direct {v0, v1, v2}, Lcom/coinbase/android/ui/Mintent;-><init>(Lcom/coinbase/android/utils/Section;Ljava/lang/Object;)V

    sput-object v0, Lcom/coinbase/android/ui/Mintent;->CHARTS:Lcom/coinbase/android/ui/Mintent;

    return-void
.end method

.method public constructor <init>(Lcom/coinbase/android/utils/Section;Ljava/lang/Object;)V
    .locals 0
    .param p1, "section"    # Lcom/coinbase/android/utils/Section;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/coinbase/android/ui/Mintent;->section:Lcom/coinbase/android/utils/Section;

    .line 22
    iput-object p2, p0, Lcom/coinbase/android/ui/Mintent;->data:Ljava/lang/Object;

    .line 23
    return-void
.end method
