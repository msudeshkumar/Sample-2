.class public interface abstract Lcom/coinbase/android/transactions/TransactionListDisplayItem;
.super Ljava/lang/Object;
.source "TransactionListDisplayItem.java"


# virtual methods
.method public abstract configureAmountView(Landroid/widget/TextView;)V
.end method

.method public abstract configureProfileView(Landroid/widget/ImageView;)V
.end method

.method public abstract configureStatusView(Landroid/widget/TextView;)V
.end method

.method public abstract configureSummaryView(Landroid/widget/TextView;)V
.end method

.method public abstract configureTitleView(Landroid/widget/TextView;)V
.end method

.method public abstract getSection()Ljava/lang/String;
.end method

.method public abstract getTransaction()Lcom/coinbase/v2/models/transactions/Data;
.end method

.method public abstract getTransactionId()Ljava/lang/String;
.end method

.method public abstract isDelayed()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract setSelected(Z)V
.end method
