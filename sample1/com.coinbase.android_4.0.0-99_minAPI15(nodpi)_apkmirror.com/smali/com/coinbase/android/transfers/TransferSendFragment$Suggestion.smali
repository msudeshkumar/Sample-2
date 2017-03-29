.class Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Suggestion"
.end annotation


# instance fields
.field email:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 891
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;->email:Ljava/lang/String;

    .line 892
    iput-object p2, p0, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;->name:Ljava/lang/String;

    .line 893
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/android/transfers/TransferSendFragment$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/coinbase/android/transfers/TransferSendFragment$1;

    .prologue
    .line 886
    invoke-direct {p0, p1, p2}, Lcom/coinbase/android/transfers/TransferSendFragment$Suggestion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
