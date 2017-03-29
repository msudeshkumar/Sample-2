.class Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase$BackInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "CreditEntryFieldBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;


# direct methods
.method public constructor <init>(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Landroid/view/inputmethod/InputConnection;)V
    .locals 1
    .param p2, "target"    # Landroid/view/inputmethod/InputConnection;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase$BackInputConnection;->this$0:Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 203
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 27
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 223
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 224
    invoke-super/range {p0 .. p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    move-result v2

    .line 240
    :goto_0
    return v2

    .line 227
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 229
    .local v4, "eventTime":J
    const/16 v14, 0x16

    .line 233
    .local v14, "flags":I
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x43

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase$BackInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 237
    new-instance v15, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const/16 v20, 0x1

    const/16 v21, 0x43

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    move-wide/from16 v18, v4

    move/from16 v26, v14

    invoke-direct/range {v15 .. v26}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase$BackInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 240
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 207
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase$BackInputConnection;->this$0:Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    # invokes: Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->backInput()V
    invoke-static {v0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->access$000(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V

    .line 213
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
