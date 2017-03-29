.class Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;
.super Ljava/lang/Object;
.source "IAVLoginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/paymentmethods/IAVLoginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountTypeSpinnerItem"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field final synthetic this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;->this$0:Lcom/coinbase/android/paymentmethods/IAVLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p2, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;->key:Ljava/lang/String;

    .line 458
    iput-object p3, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;->value:Ljava/lang/String;

    .line 459
    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Ljava/lang/String;Ljava/lang/String;Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/paymentmethods/IAVLoginFragment;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/coinbase/android/paymentmethods/IAVLoginFragment$1;

    .prologue
    .line 452
    invoke-direct {p0, p1, p2, p3}, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;-><init>(Lcom/coinbase/android/paymentmethods/IAVLoginFragment;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/coinbase/android/paymentmethods/IAVLoginFragment$AccountTypeSpinnerItem;->value:Ljava/lang/String;

    return-object v0
.end method
