.class public Lcom/devmarvel/creditcardentry/library/CreditCardForm;
.super Landroid/widget/RelativeLayout;
.source "CreditCardForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devmarvel/creditcardentry/library/CreditCardForm$1;,
        Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;
    }
.end annotation


# instance fields
.field private cardNumberHint:Ljava/lang/String;

.field private entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

.field private includeExp:Z

.field private includeHelper:Z

.field private includeSecurity:Z

.field private includeZip:Z

.field private inputBackground:Landroid/graphics/drawable/Drawable;

.field private textHelperColor:I

.field private useDefaultColors:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-boolean v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeExp:Z

    .line 29
    iput-boolean v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeSecurity:Z

    .line 30
    iput-boolean v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeZip:Z

    .line 35
    const-string v1, "1234 5678 9012 3456"

    iput-object v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->cardNumberHint:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    if-eqz p2, :cond_0

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_card_number_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->cardNumberHint:Ljava/lang/String;

    .line 63
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_include_exp:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeExp:Z

    .line 64
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_include_security:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeSecurity:Z

    .line 65
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_include_zip:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeZip:Z

    .line 66
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_include_helper:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeHelper:Z

    .line 67
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_helper_text_color:I

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/devmarvel/creditcardentry/R$color;->text_helper_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->textHelperColor:I

    .line 68
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_input_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->inputBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    sget v1, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_default_text_colors:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->useDefaultColors:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    .end local v0    # "typedArray":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->cardNumberHint:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "1234 5678 9012 3456"

    iput-object v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->cardNumberHint:Ljava/lang/String;

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->inputBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/devmarvel/creditcardentry/R$drawable;->background_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->inputBackground:Landroid/graphics/drawable/Drawable;

    .line 83
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void

    .line 71
    .restart local v0    # "typedArray":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    throw v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 89
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    .line 90
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    .local v14, "layout":Landroid/widget/LinearLayout;
    :goto_0
    sget v2, Lcom/devmarvel/creditcardentry/R$id;->cc_form_layout:I

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 95
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 96
    .local v16, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 97
    const/16 v2, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 100
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->inputBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 107
    .local v11, "cardImageFrame":Landroid/widget/FrameLayout;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v13, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v13, "frameParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v13, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 109
    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 111
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 112
    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 114
    new-instance v10, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v10, "cardFrontImage":Landroid/widget/ImageView;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v15, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v10, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    sget-object v2, Lcom/devmarvel/creditcardentry/library/CardType;->INVALID:Lcom/devmarvel/creditcardentry/library/CardType;

    iget v2, v2, Lcom/devmarvel/creditcardentry/library/CardType;->frontResource:I

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    invoke-virtual {v11, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 121
    .local v9, "cardBackImage":Landroid/widget/ImageView;
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v15    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    .restart local v15    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v9, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    sget-object v2, Lcom/devmarvel/creditcardentry/library/CardType;->INVALID:Lcom/devmarvel/creditcardentry/library/CardType;

    iget v2, v2, Lcom/devmarvel/creditcardentry/library/CardType;->backResource:I

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    invoke-virtual {v11, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v12, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v12, "entryParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 131
    new-instance v2, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeExp:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeSecurity:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeZip:Z

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;-><init>(Landroid/content/Context;ZZZLandroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    sget v3, Lcom/devmarvel/creditcardentry/R$id;->cc_entry:I

    invoke-virtual {v2, v3}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setId(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setPadding(IIII)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v2, v12}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v2, v10}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setCardImageView(Landroid/widget/ImageView;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v2, v9}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setBackCardImage(Landroid/widget/ImageView;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->cardNumberHint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setCardNumberHint(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->addView(Landroid/view/View;)V

    .line 146
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->includeHelper:Z

    if-eqz v2, :cond_1

    .line 147
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    .local v17, "textHelp":Landroid/widget/TextView;
    sget v2, Lcom/devmarvel/creditcardentry/R$id;->text_helper:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/devmarvel/creditcardentry/R$string;->CreditCardNumberHelp:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->useDefaultColors:Z

    if-eqz v2, :cond_0

    .line 151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->textHelperColor:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    :cond_0
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v15    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 154
    .restart local v15    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, 0x3

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 155
    const/16 v2, 0xe

    invoke-virtual {v15, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    const/4 v2, 0x0

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/16 v5, 0x14

    invoke-virtual {v15, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 157
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setTextHelper(Landroid/widget/TextView;)V

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->addView(Landroid/view/View;)V

    .line 162
    .end local v17    # "textHelp":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    return-void

    .line 92
    .end local v9    # "cardBackImage":Landroid/widget/ImageView;
    .end local v10    # "cardFrontImage":Landroid/widget/ImageView;
    .end local v11    # "cardImageFrame":Landroid/widget/FrameLayout;
    .end local v12    # "entryParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v13    # "frameParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v14    # "layout":Landroid/widget/LinearLayout;
    .end local v15    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .restart local v14    # "layout":Landroid/widget/LinearLayout;
    goto/16 :goto_0
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 275
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 270
    return-void
.end method

.method public getCreditCard()Lcom/devmarvel/creditcardentry/library/CreditCard;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getCreditCard()Lcom/devmarvel/creditcardentry/library/CreditCard;

    move-result-object v0

    return-object v0
.end method

.method public getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 279
    move-object v1, p1

    check-cast v1, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;

    .line 280
    .local v1, "ss":Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;
    invoke-virtual {v1}, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 282
    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v1, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;->childrenStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 288
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 289
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;

    invoke-direct {v1, v2}, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 290
    .local v1, "ss":Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v1, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;->childrenStates:Landroid/util/SparseArray;

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 292
    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v1, Lcom/devmarvel/creditcardentry/library/CreditCardForm$SavedState;->childrenStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-object v1
.end method

.method public setCardNumber(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cardNumber"    # Ljava/lang/String;
    .param p2, "focusNextField"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v0, p1, p2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setCardNumber(Ljava/lang/String;Z)V

    .line 238
    return-void
.end method

.method public setExpDate(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "expirationDate"    # Ljava/lang/String;
    .param p2, "focusNextField"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v0, p1, p2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setExpDate(Ljava/lang/String;Z)V

    .line 247
    return-void
.end method

.method public setOnCardValidCallback(Lcom/devmarvel/creditcardentry/library/CardValidCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/devmarvel/creditcardentry/library/CardValidCallback;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setOnCardValidCallback(Lcom/devmarvel/creditcardentry/library/CardValidCallback;)V

    .line 167
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 175
    return-void
.end method

.method public setSecurityCode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "securityCode"    # Ljava/lang/String;
    .param p2, "focusNextField"    # Z

    .prologue
    .line 255
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v0, p1, p2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setSecurityCode(Ljava/lang/String;Z)V

    .line 256
    return-void
.end method

.method public setZipCode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "focusNextField"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/library/CreditCardForm;->entry:Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    invoke-virtual {v0, p1, p2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setZipCode(Ljava/lang/String;Z)V

    .line 265
    return-void
.end method
