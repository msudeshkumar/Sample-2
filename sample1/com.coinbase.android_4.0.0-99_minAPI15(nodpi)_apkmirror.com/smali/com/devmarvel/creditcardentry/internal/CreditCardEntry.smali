.class public Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;
.super Landroid/widget/HorizontalScrollView;
.source "CreditCardEntry.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$SavedState;
    }
.end annotation


# instance fields
.field private backCardImage:Landroid/widget/ImageView;

.field private cardImage:Landroid/widget/ImageView;

.field private final context:Landroid/content/Context;

.field private final creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

.field private final expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

.field private includedFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;",
            ">;"
        }
    .end annotation
.end field

.field private nextFocusField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;",
            "Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;",
            ">;"
        }
    .end annotation
.end field

.field private onCardValidCallback:Lcom/devmarvel/creditcardentry/library/CardValidCallback;

.field private prevFocusField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;",
            "Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;",
            ">;"
        }
    .end annotation
.end field

.field private scrolling:Z

.field private final securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

.field private showingBack:Z

.field private final textColor:Ljava/lang/Integer;

.field private final textFourDigits:Landroid/widget/TextView;

.field private textHelper:Landroid/widget/TextView;

.field private final zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZLandroid/util/AttributeSet;I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "includeExp"    # Z
    .param p3, "includeSecurity"    # Z
    .param p4, "includeZip"    # Z
    .param p5, "attrs"    # Landroid/util/AttributeSet;
    .param p6, "style"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v9, Ljava/util/HashMap;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->nextFocusField:Ljava/util/Map;

    .line 71
    new-instance v9, Ljava/util/HashMap;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    iput-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->prevFocusField:Ljava/util/Map;

    .line 72
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->includedFields:Ljava/util/List;

    .line 79
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->scrolling:Z

    .line 87
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->context:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    sget-object v10, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm:[I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 90
    .local v6, "typedArray":Landroid/content/res/TypedArray;
    sget v9, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_default_text_colors:I

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    if-nez v9, :cond_5

    .line 91
    sget v9, Lcom/devmarvel/creditcardentry/R$styleable;->CreditCardForm_text_color:I

    const/high16 v10, -0x1000000

    invoke-virtual {v6, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textColor:Ljava/lang/Integer;

    .line 95
    :goto_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    const-string v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 98
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 102
    .local v3, "display":Landroid/view/Display;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xd

    if-ge v9, v10, :cond_6

    .line 103
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 110
    .local v7, "width":I
    :goto_1
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v4, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v9, 0x10

    iput v9, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    invoke-virtual {p0, v4}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setHorizontalScrollBarEnabled(Z)V

    .line 114
    invoke-virtual {p0, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, "container":Landroid/widget/LinearLayout;
    sget v9, Lcom/devmarvel/creditcardentry/R$id;->cc_entry_internal:I

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setId(I)V

    .line 118
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    new-instance v9, Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    move-object/from16 v0, p5

    invoke-direct {v9, p1, v0}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    .line 122
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    sget v10, Lcom/devmarvel/creditcardentry/R$id;->cc_card:I

    invoke-virtual {v9, v10}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setId(I)V

    .line 123
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-virtual {v9, p0}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setDelegate(Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)V

    .line 124
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-virtual {v9, v7}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setWidth(I)V

    .line 125
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->includedFields:Ljava/util/List;

    iget-object v10, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    .line 129
    .local v2, "currentField":Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textFourDigits:Landroid/widget/TextView;

    .line 130
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textFourDigits:Landroid/widget/TextView;

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textColor:Ljava/lang/Integer;

    if-eqz v9, :cond_0

    .line 132
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textFourDigits:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textColor:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    :cond_0
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textFourDigits:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    new-instance v9, Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    move-object/from16 v0, p5

    invoke-direct {v9, p1, v0}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    .line 137
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    sget v10, Lcom/devmarvel/creditcardentry/R$id;->cc_exp:I

    invoke-virtual {v9, v10}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->setId(I)V

    .line 138
    if-eqz p2, :cond_1

    .line 139
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    invoke-virtual {v9, p0}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->setDelegate(Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)V

    .line 140
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->nextFocusField:Ljava/util/Map;

    iget-object v10, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->prevFocusField:Ljava/util/Map;

    iget-object v10, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    .line 144
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->includedFields:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_1
    new-instance v9, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    move-object/from16 v0, p5

    invoke-direct {v9, p1, v0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    .line 148
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    sget v10, Lcom/devmarvel/creditcardentry/R$id;->cc_ccv:I

    invoke-virtual {v9, v10}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setId(I)V

    .line 149
    if-eqz p3, :cond_3

    .line 150
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    invoke-virtual {v9, p0}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setDelegate(Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)V

    .line 151
    if-nez p4, :cond_2

    .line 152
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    const-string v10, "Done"

    const/4 v11, 0x6

    invoke-virtual {v9, v10, v11}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 155
    :cond_2
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    new-instance v10, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$1;

    invoke-direct {v10, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$1;-><init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)V

    invoke-virtual {v9, v10}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 165
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->nextFocusField:Ljava/util/Map;

    iget-object v10, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->prevFocusField:Ljava/util/Map;

    iget-object v10, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    .line 169
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->includedFields:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_3
    new-instance v9, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    move-object/from16 v0, p5

    invoke-direct {v9, p1, v0}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    .line 173
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    sget v10, Lcom/devmarvel/creditcardentry/R$id;->cc_zip:I

    invoke-virtual {v9, v10}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setId(I)V

    .line 174
    if-eqz p4, :cond_4

    .line 175
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    invoke-virtual {v9, p0}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setDelegate(Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)V

    .line 176
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    const-string v10, "DONE"

    const/4 v11, 0x6

    invoke-virtual {v9, v10, v11}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 178
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    new-instance v10, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$2;

    invoke-direct {v10, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$2;-><init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)V

    invoke-virtual {v9, v10}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 188
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->nextFocusField:Ljava/util/Map;

    iget-object v10, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->prevFocusField:Ljava/util/Map;

    iget-object v10, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    invoke-interface {v9, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    .line 191
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->includedFields:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_4
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->nextFocusField:Ljava/util/Map;

    const/4 v10, 0x0

    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {p0, v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->addView(Landroid/view/View;)V

    .line 199
    iget-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textFourDigits:Landroid/widget/TextView;

    new-instance v10, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$3;

    invoke-direct {v10, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$3;-><init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    return-void

    .line 93
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "currentField":Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "width":I
    .end local v8    # "wm":Landroid/view/WindowManager;
    :cond_5
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textColor:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 105
    .restart local v3    # "display":Landroid/view/Display;
    .restart local v8    # "wm":Landroid/view/WindowManager;
    :cond_6
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 106
    .local v5, "size":Landroid/graphics/Point;
    invoke-virtual {v3, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 107
    iget v7, v5, Landroid/graphics/Point;->x:I

    .restart local v7    # "width":I
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)Lcom/devmarvel/creditcardentry/fields/CreditCardText;
    .locals 1
    .param p0, "x0"    # Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textColor:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->scrolling:Z

    return p1
.end method

.method static synthetic access$300(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->updateLast4()V

    return-void
.end method

.method private entryComplete(Landroid/view/View;)V
    .locals 2
    .param p1, "clearField"    # Landroid/view/View;

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->hideKeyboard()V

    .line 535
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 536
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->onCardValidCallback:Lcom/devmarvel/creditcardentry/library/CardValidCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->onCardValidCallback:Lcom/devmarvel/creditcardentry/library/CardValidCallback;

    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getCreditCard()Lcom/devmarvel/creditcardentry/library/CreditCard;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/devmarvel/creditcardentry/library/CardValidCallback;->cardValid(Lcom/devmarvel/creditcardentry/library/CreditCard;)V

    .line 537
    :cond_0
    return-void
.end method

.method private flipCardImage()V
    .locals 3

    .prologue
    .line 548
    new-instance v0, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;

    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->cardImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->backCardImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2}, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 549
    .local v0, "animator":Lcom/devmarvel/creditcardentry/internal/FlipAnimator;
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->cardImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/devmarvel/creditcardentry/internal/FlipAnimator;->reverse()V

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->cardImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 553
    return-void
.end method

.method private getDelegate(Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;
    .locals 1
    .param p1, "delegate"    # Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    .prologue
    .line 440
    new-instance v0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$8;

    invoke-direct {v0, p0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$8;-><init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)V

    return-object v0
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 556
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->context:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 557
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 558
    return-void
.end method

.method private nextField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;)V
    .locals 2
    .param p1, "currentField"    # Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
    .param p2, "initialFieldValue"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->nextFocusField:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    .line 526
    .local v0, "next":Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
    if-nez v0, :cond_0

    .line 527
    invoke-direct {p0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->entryComplete(Landroid/view/View;)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->focusOnField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scrollToTarget(ILjava/lang/Runnable;)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "after"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getScrollX()I

    move-result v1

    .line 336
    .local v1, "scrollX":I
    if-ne v1, p1, :cond_1

    .line 337
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2

    .line 340
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 341
    .local v0, "realSmoothScrollAnimation":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    new-instance v2, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$6;

    invoke-direct {v2, p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$6;-><init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 350
    new-instance v2, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$7;

    invoke-direct {v2, p0, p2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$7;-><init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 356
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 358
    .end local v0    # "realSmoothScrollAnimation":Landroid/animation/ValueAnimator;
    :cond_2
    invoke-virtual {p0, p1, v4}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->smoothScrollTo(II)V

    .line 359
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private setValue(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "fieldToSet"    # Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "nextField"    # Z

    .prologue
    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, "delegate":Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;
    if-nez p3, :cond_0

    .line 427
    invoke-virtual {p1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->getDelegate()Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    move-result-object v0

    .line 429
    invoke-direct {p0, v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getDelegate(Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setDelegate(Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)V

    .line 432
    :cond_0
    invoke-virtual {p1, p2}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setText(Ljava/lang/CharSequence;)V

    .line 434
    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {p1, v0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setDelegate(Lcom/devmarvel/creditcardentry/internal/CreditCardFieldDelegate;)V

    .line 437
    :cond_1
    return-void
.end method

.method private updateCardImage(Z)V
    .locals 1
    .param p1, "back"    # Z

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->showingBack:Z

    if-eq v0, p1, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->flipCardImage()V

    .line 544
    :cond_0
    iput-boolean p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->showingBack:Z

    .line 545
    return-void
.end method

.method private updateLast4()V
    .locals 4

    .prologue
    .line 518
    iget-object v3, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-virtual {v3}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 520
    .local v1, "length":I
    add-int/lit8 v3, v1, -0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "digits":Ljava/lang/String;
    iget-object v3, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textFourDigits:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    return-void
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
    .line 244
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 245
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
    .line 239
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 240
    return-void
.end method

.method public focusOnField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V
    .locals 1
    .param p1, "field"    # Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->focusOnField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public focusOnField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;)V
    .locals 4
    .param p1, "field"    # Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
    .param p2, "initialFieldValue"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 299
    invoke-virtual {p1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->requestFocus()Z

    .line 300
    iget-boolean v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->scrolling:Z

    if-nez v0, :cond_0

    .line 301
    iput-boolean v3, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->scrolling:Z

    .line 302
    instance-of v0, p1, Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    new-instance v2, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$5;

    invoke-direct {v2, p0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$5;-><init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V

    invoke-direct {p0, v0, v2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->scrollToTarget(ILjava/lang/Runnable;)V

    .line 317
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 318
    invoke-virtual {p1, p2}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->formatAndSetText(Ljava/lang/String;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textHelper:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textHelper:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->helperText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_2
    instance-of v0, p1, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    if-eqz v0, :cond_4

    move-object v0, p1

    .line 326
    check-cast v0, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-virtual {v1}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->getType()Lcom/devmarvel/creditcardentry/library/CardType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setType(Lcom/devmarvel/creditcardentry/library/CardType;)V

    .line 327
    invoke-direct {p0, v3}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->updateCardImage(Z)V

    .line 331
    :goto_1
    invoke-virtual {p1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->setSelection(I)V

    .line 332
    return-void

    .line 302
    :cond_3
    invoke-virtual {p1}, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;->getLeft()I

    move-result v0

    goto :goto_0

    .line 329
    :cond_4
    invoke-direct {p0, v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->updateCardImage(Z)V

    goto :goto_1
.end method

.method public focusOnPreviousField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V
    .locals 2
    .param p1, "field"    # Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    .prologue
    .line 366
    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->prevFocusField:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;

    .line 367
    .local v0, "view":Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;
    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->focusOnField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;)V

    .line 370
    :cond_0
    return-void
.end method

.method public getBackCardImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->backCardImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getCreditCard()Lcom/devmarvel/creditcardentry/library/CreditCard;
    .locals 6

    .prologue
    .line 478
    new-instance v0, Lcom/devmarvel/creditcardentry/library/CreditCard;

    iget-object v1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-virtual {v1}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    invoke-virtual {v2}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    invoke-virtual {v3}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    invoke-virtual {v4}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-virtual {v5}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->getType()Lcom/devmarvel/creditcardentry/library/CardType;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/devmarvel/creditcardentry/library/CreditCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/devmarvel/creditcardentry/library/CardType;)V

    return-object v0
.end method

.method public getTextHelper()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textHelper:Landroid/widget/TextView;

    return-object v0
.end method

.method public onBadInput(Landroid/widget/EditText;)V
    .locals 6
    .param p1, "field"    # Landroid/widget/EditText;

    .prologue
    .line 271
    iget-object v2, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->context:Landroid/content/Context;

    sget v3, Lcom/devmarvel/creditcardentry/R$anim;->shake:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 272
    .local v1, "shake":Landroid/view/animation/Animation;
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 273
    const/high16 v2, -0x10000

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 275
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 276
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$4;

    invoke-direct {v2, p0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$4;-><init>(Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;Landroid/widget/EditText;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 284
    return-void
.end method

.method public onCardTypeChange(Lcom/devmarvel/creditcardentry/library/CardType;)V
    .locals 2
    .param p1, "type"    # Lcom/devmarvel/creditcardentry/library/CardType;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->cardImage:Landroid/widget/ImageView;

    iget v1, p1, Lcom/devmarvel/creditcardentry/library/CardType;->frontResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->backCardImage:Landroid/widget/ImageView;

    iget v1, p1, Lcom/devmarvel/creditcardentry/library/CardType;->backResource:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->updateCardImage(Z)V

    .line 212
    return-void
.end method

.method public onCreditCardNumberValid(Ljava/lang/String;)V
    .locals 1
    .param p1, "remainder"    # Ljava/lang/String;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-direct {p0, v0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->nextField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->updateLast4()V

    .line 219
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 576
    const/4 v0, 0x0

    return v0
.end method

.method public onExpirationDateValid(Ljava/lang/String;)V
    .locals 1
    .param p1, "remainder"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    invoke-direct {p0, v0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->nextField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 580
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 250
    move-object v1, p1

    check-cast v1, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$SavedState;

    .line 251
    .local v1, "ss":Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$SavedState;
    invoke-virtual {v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/HorizontalScrollView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 253
    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v1, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$SavedState;->childrenStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 260
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 261
    .local v2, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$SavedState;

    invoke-direct {v1, v2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 262
    .local v1, "ss":Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$SavedState;
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v1, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$SavedState;->childrenStates:Landroid/util/SparseArray;

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 264
    invoke-virtual {p0, v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, v1, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry$SavedState;->childrenStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-object v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 584
    const/4 v0, 0x0

    return v0
.end method

.method public onSecurityCodeValid(Ljava/lang/String;)V
    .locals 1
    .param p1, "remainder"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    invoke-direct {p0, v0, p1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->nextField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->updateCardImage(Z)V

    .line 230
    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 587
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public onZipCodeValid()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->nextField(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setBackCardImage(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "backCardImage"    # Landroid/widget/ImageView;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->backCardImage:Landroid/widget/ImageView;

    .line 406
    return-void
.end method

.method public setCardImageView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->cardImage:Landroid/widget/ImageView;

    .line 385
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "cardNumber"    # Ljava/lang/String;
    .param p2, "nextField"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-direct {p0, v0, p1, p2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setValue(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;Z)V

    .line 381
    return-void
.end method

.method public setCardNumberHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-virtual {v0, p1}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setHint(Ljava/lang/CharSequence;)V

    .line 374
    return-void
.end method

.method public setExpDate(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "expiration"    # Ljava/lang/String;
    .param p2, "nextField"    # Z

    .prologue
    .line 388
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    invoke-direct {p0, v0, p1, p2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setValue(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;Z)V

    .line 389
    return-void
.end method

.method public setOnCardValidCallback(Lcom/devmarvel/creditcardentry/library/CardValidCallback;)V
    .locals 0
    .param p1, "onCardValidCallback"    # Lcom/devmarvel/creditcardentry/library/CardValidCallback;

    .prologue
    .line 561
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->onCardValidCallback:Lcom/devmarvel/creditcardentry/library/CardValidCallback;

    .line 562
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->creditCardText:Lcom/devmarvel/creditcardentry/fields/CreditCardText;

    invoke-virtual {v0, p1}, Lcom/devmarvel/creditcardentry/fields/CreditCardText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 289
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->expDateText:Lcom/devmarvel/creditcardentry/fields/ExpDateText;

    invoke-virtual {v0, p1}, Lcom/devmarvel/creditcardentry/fields/ExpDateText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 290
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    invoke-virtual {v0, p1}, Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 291
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    invoke-virtual {v0, p1}, Lcom/devmarvel/creditcardentry/fields/ZipCodeText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 292
    return-void
.end method

.method public setSecurityCode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "securityCode"    # Ljava/lang/String;
    .param p2, "nextField"    # Z

    .prologue
    .line 392
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->securityCodeText:Lcom/devmarvel/creditcardentry/fields/SecurityCodeText;

    invoke-direct {p0, v0, p1, p2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setValue(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;Z)V

    .line 393
    return-void
.end method

.method public setTextHelper(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textHelper"    # Landroid/widget/TextView;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->textHelper:Landroid/widget/TextView;

    .line 415
    return-void
.end method

.method public setZipCode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "zip"    # Ljava/lang/String;
    .param p2, "nextField"    # Z

    .prologue
    .line 396
    iget-object v0, p0, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->zipCodeText:Lcom/devmarvel/creditcardentry/fields/ZipCodeText;

    invoke-direct {p0, v0, p1, p2}, Lcom/devmarvel/creditcardentry/internal/CreditCardEntry;->setValue(Lcom/devmarvel/creditcardentry/fields/CreditEntryFieldBase;Ljava/lang/String;Z)V

    .line 397
    return-void
.end method
