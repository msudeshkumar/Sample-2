.class Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$2;
.super Ljava/lang/Object;
.source "CreditCardEntry.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;-><init>(Landroid/content/Context;ZZZLandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;


# direct methods
.method constructor <init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$2;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 181
    const/4 v0, 0x6

    if-ne v0, p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$2;->this$0:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->onZipCodeValid()V

    .line 183
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
