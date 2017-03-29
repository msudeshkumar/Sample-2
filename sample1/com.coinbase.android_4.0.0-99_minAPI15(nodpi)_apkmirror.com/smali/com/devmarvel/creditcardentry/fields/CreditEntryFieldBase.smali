.class public abstract Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
.super Landroid/widget/EditText;
.source "CreditEntryFieldBase.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase$BackInputConnection;
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

.field lastValue:Ljava/lang/String;

.field private valid:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->lastValue:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->valid:Z

    .line 46
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->lastValue:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->valid:Z

    .line 52
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->context:Landroid/content/Context;

    .line 53
    invoke-virtual {p0, p2}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->init(Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->lastValue:Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->valid:Z

    .line 58
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->context:Landroid/content/Context;

    .line 59
    invoke-virtual {p0, p2}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->init(Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V
    .locals 0
    .param p0, "x0"    # Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->backInput()V

    return-void
.end method

.method private backInput()V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v0, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->focusOnPreviousField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V

    .line 174
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 113
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 112
    return-void
.end method

.method public abstract formatAndSetText(Ljava/lang/String;)V
.end method

.method public getDelegate()Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    return-object v0
.end method

.method public abstract helperText()Ljava/lang/String;
.end method

.method init()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->init(Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method init(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 67
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setGravity(I)V

    .line 68
    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setImeOptions(I)V

    .line 69
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setBackgroundColor(I)V

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setInputType(I)V

    .line 71
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 73
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, v3, v2, v3, v2}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setPadding(IIII)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setStyle(Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setSelection(I)V

    .line 147
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 120
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 121
    const/4 v0, 0x1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 122
    new-instance v0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase$BackInputConnection;

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase$BackInputConnection;-><init>(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Landroid/view/inputmethod/InputConnection;)V

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    const/16 v0, 0x39

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p2, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_0

    .line 135
    const/16 v0, 0x43

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v0, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->focusOnPreviousField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 187
    instance-of v3, p1, Landroid/os/Bundle;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 188
    check-cast v0, Landroid/os/Bundle;

    .line 189
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "instanceState"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 190
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 191
    const-string v3, "stateToSave"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "cc":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const-string v3, "focus"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 194
    .local v2, "focus":Z
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->requestFocus()Z

    .line 198
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cc":Ljava/lang/String;
    .end local v2    # "focus":Z
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "instanceState"

    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    const-string v1, "focus"

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->hasFocus()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 181
    const-string v1, "stateToSave"

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "end"    # I

    .prologue
    .line 97
    if-nez p2, :cond_1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    invoke-interface {v1, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;->focusOnPreviousField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "tmp":Ljava/lang/String;
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->lastValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    iput-object v0, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->lastValue:Ljava/lang/String;

    .line 105
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->textChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method

.method public setCursorDrawableColor(I)V
    .locals 9
    .param p1, "color"    # I

    .prologue
    .line 248
    :try_start_0
    const-class v7, Landroid/widget/TextView;

    const-string v8, "mCursorDrawableRes"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 249
    .local v4, "fCursorDrawableRes":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 250
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    .line 251
    .local v6, "mCursorDrawableRes":I
    const-class v7, Landroid/widget/TextView;

    const-string v8, "mEditor"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 252
    .local v5, "fEditor":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 253
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 254
    .local v2, "editor":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 255
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "mCursorDrawable"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 256
    .local v3, "fCursorDrawable":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 257
    const/4 v7, 0x2

    new-array v1, v7, [Landroid/graphics/drawable/Drawable;

    .line 258
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v1, v7

    .line 259
    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v1, v7

    .line 260
    const/4 v7, 0x0

    aget-object v7, v1, v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, p1, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 261
    const/4 v7, 0x1

    aget-object v7, v1, v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, p1, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 262
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "editor":Ljava/lang/Object;
    .end local v3    # "fCursorDrawable":Ljava/lang/reflect/Field;
    .end local v4    # "fCursorDrawableRes":Ljava/lang/reflect/Field;
    .end local v5    # "fEditor":Ljava/lang/reflect/Field;
    .end local v6    # "mCursorDrawableRes":I
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public setDelegate(Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->delegate:Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    .line 156
    return-void
.end method

.method setStyle(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, -0x1000000

    .line 80
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->context:Landroid/content/Context;

    sget-object v2, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_default_text_colors:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_text_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setTextColor(I)V

    .line 89
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_hint_text_color:I

    const v2, -0x333334

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setHintTextColor(I)V

    .line 90
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_cursor_color:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setCursorDrawableColor(I)V

    .line 92
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method setValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->valid:Z

    .line 166
    return-void
.end method

.method public textChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "end"    # I

    .prologue
    .line 115
    return-void
.end method
