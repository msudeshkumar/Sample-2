.class public Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;
.super Ljava/lang/Object;
.source "TransferSendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transfers/TransferSendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfirmDialogData"
.end annotation


# instance fields
.field fee:Lorg/joda/money/Money;

.field id:Ljava/lang/String;

.field isFiat:Z

.field notes:Ljava/lang/String;

.field recipient:Ljava/lang/String;

.field roundedAmount:Lorg/joda/money/Money;

.field final synthetic this$0:Lcom/coinbase/android/transfers/TransferSendFragment;


# direct methods
.method constructor <init>(Lcom/coinbase/android/transfers/TransferSendFragment;Ljava/lang/String;Ljava/lang/String;Lorg/joda/money/Money;Lorg/joda/money/Money;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/coinbase/android/transfers/TransferSendFragment;
    .param p2, "recipientEmail"    # Ljava/lang/String;
    .param p3, "accountId"    # Ljava/lang/String;
    .param p4, "amount"    # Lorg/joda/money/Money;
    .param p5, "fee"    # Lorg/joda/money/Money;
    .param p6, "notes"    # Ljava/lang/String;
    .param p7, "isFiat"    # Z

    .prologue
    .line 175
    iput-object p1, p0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->this$0:Lcom/coinbase/android/transfers/TransferSendFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->recipient:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->id:Ljava/lang/String;

    .line 178
    iput-object p4, p0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->roundedAmount:Lorg/joda/money/Money;

    .line 179
    iput-object p5, p0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->fee:Lorg/joda/money/Money;

    .line 180
    iput-object p6, p0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->notes:Ljava/lang/String;

    .line 181
    iput-boolean p7, p0, Lcom/coinbase/android/transfers/TransferSendFragment$ConfirmDialogData;->isFiat:Z

    .line 182
    return-void
.end method
