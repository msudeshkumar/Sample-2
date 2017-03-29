.class Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TransactionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coinbase/android/transactions/TransactionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public amountView:Landroid/widget/TextView;

.field public listDividerRight:Landroid/view/View;

.field public listItem:Landroid/view/View;

.field public profileView:Landroid/widget/ImageView;

.field public sectionHeader:Landroid/widget/TextView;

.field public statusView:Landroid/widget/TextView;

.field public summaryView:Landroid/widget/TextView;

.field public titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coinbase/android/transactions/TransactionsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coinbase/android/transactions/TransactionsAdapter$1;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/coinbase/android/transactions/TransactionsAdapter$ViewHolder;-><init>()V

    return-void
.end method
