.class public Lcom/coinbase/android/ui/AutoResizeEditText;
.super Landroid/widget/EditText;
.source "AutoResizeEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coinbase/android/ui/AutoResizeEditText$OnTextResizeListener;
    }
.end annotation


# static fields
.field public static final MIN_TEXT_SIZE:F = 20.0f

.field private static final mEllipsis:Ljava/lang/String; = "..."


# instance fields
.field private mAddEllipsis:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mNeedsResize:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextResizeListener:Lcom/coinbase/android/ui/AutoResizeEditText$OnTextResizeListener;

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coinbase/android/ui/AutoResizeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coinbase/android/ui/AutoResizeEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mNeedsResize:Z

    .line 49
    iput v1, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMaxTextSize:F

    .line 52
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMinTextSize:F

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mSpacingMult:F

    .line 58
    iput v1, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mSpacingAdd:F

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mAddEllipsis:Z

    .line 76
    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextSize:F

    .line 77
    return-void
.end method

.method private getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "textSize"    # F

    .prologue
    .line 312
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 314
    .local v2, "paintCopy":Landroid/text/TextPaint;
    invoke-virtual {v2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 316
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mSpacingMult:F

    iget v6, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mSpacingAdd:F

    const/4 v7, 0x1

    move-object v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 317
    .local v0, "layout":Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    return v1
.end method


# virtual methods
.method public getAddEllipsis()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mAddEllipsis:Z

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMinTextSize:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 209
    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mNeedsResize:Z

    if-eqz v2, :cond_1

    .line 210
    :cond_0
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 211
    .local v1, "widthLimit":I
    sub-int v2, p5, p3

    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getCompoundPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 212
    .local v0, "heightLimit":I
    invoke-virtual {p0, v1, v0}, Lcom/coinbase/android/ui/AutoResizeEditText;->resizeText(II)V

    .line 214
    .end local v0    # "heightLimit":I
    .end local v1    # "widthLimit":I
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 215
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 94
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 95
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mNeedsResize:Z

    .line 97
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mNeedsResize:Z

    .line 86
    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->resetTextSize()V

    .line 87
    return-void
.end method

.method public resetTextSize()V
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iget v1, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextSize:F

    invoke-super {p0, v0, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 200
    iget v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextSize:F

    iput v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMaxTextSize:F

    .line 202
    :cond_0
    return-void
.end method

.method public resizeText()V
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 223
    .local v0, "heightLimit":I
    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 224
    .local v1, "widthLimit":I
    invoke-virtual {p0, v1, v0}, Lcom/coinbase/android/ui/AutoResizeEditText;->resizeText(II)V

    .line 225
    return-void
.end method

.method public resizeText(II)V
    .locals 21
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 236
    .local v5, "text":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v7, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextSize:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-interface {v7, v5, v0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 245
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v20

    .line 248
    .local v20, "textPaint":Landroid/text/TextPaint;
    invoke-virtual/range {v20 .. v20}, Landroid/text/TextPaint;->getTextSize()F

    move-result v16

    .line 250
    .local v16, "oldTextSize":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMaxTextSize:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextSize:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMaxTextSize:F

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v18

    .line 253
    .local v18, "targetTextSize":F
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/coinbase/android/ui/AutoResizeEditText;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v19

    .line 256
    .local v19, "textHeight":I
    :goto_2
    move/from16 v0, v19

    move/from16 v1, p2

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMinTextSize:F

    cmpl-float v7, v18, v7

    if-lez v7, :cond_4

    .line 257
    const/high16 v7, 0x40000000    # 2.0f

    sub-float v7, v18, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMinTextSize:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v18

    .line 258
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, p1

    move/from16 v3, v18

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/coinbase/android/ui/AutoResizeEditText;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v19

    goto :goto_2

    .line 250
    .end local v18    # "targetTextSize":F
    .end local v19    # "textHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextSize:F

    move/from16 v18, v0

    goto :goto_1

    .line 262
    .restart local v18    # "targetTextSize":F
    .restart local v19    # "textHeight":I
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mAddEllipsis:Z

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMinTextSize:F

    cmpl-float v7, v18, v7

    if-nez v7, :cond_5

    move/from16 v0, v19

    move/from16 v1, p2

    if-le v0, v1, :cond_5

    .line 265
    new-instance v6, Landroid/text/TextPaint;

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 267
    .local v6, "paint":Landroid/text/TextPaint;
    new-instance v4, Landroid/text/StaticLayout;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mSpacingAdd:F

    const/4 v11, 0x0

    move/from16 v7, p1

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 269
    .local v4, "layout":Landroid/text/StaticLayout;
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 272
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v7

    add-int/lit8 v14, v7, -0x1

    .line 274
    .local v14, "lastLine":I
    if-gez v14, :cond_7

    .line 275
    const-string v7, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/coinbase/android/ui/AutoResizeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .end local v4    # "layout":Landroid/text/StaticLayout;
    .end local v6    # "paint":Landroid/text/TextPaint;
    .end local v14    # "lastLine":I
    :cond_5
    :goto_3
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Lcom/coinbase/android/ui/AutoResizeEditText;->setTextSize(IF)V

    .line 296
    move-object/from16 v0, p0

    iget v7, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mSpacingMult:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/coinbase/android/ui/AutoResizeEditText;->setLineSpacing(FF)V

    .line 299
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextResizeListener:Lcom/coinbase/android/ui/AutoResizeEditText$OnTextResizeListener;

    if-eqz v7, :cond_6

    .line 300
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextResizeListener:Lcom/coinbase/android/ui/AutoResizeEditText$OnTextResizeListener;

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-interface {v7, v0, v1, v2}, Lcom/coinbase/android/ui/AutoResizeEditText$OnTextResizeListener;->onTextResize(Landroid/widget/TextView;FF)V

    .line 304
    :cond_6
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/coinbase/android/ui/AutoResizeEditText;->mNeedsResize:Z

    goto/16 :goto_0

    .line 279
    .restart local v4    # "layout":Landroid/text/StaticLayout;
    .restart local v6    # "paint":Landroid/text/TextPaint;
    .restart local v14    # "lastLine":I
    :cond_7
    invoke-virtual {v4, v14}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v17

    .line 280
    .local v17, "start":I
    invoke-virtual {v4, v14}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v13

    .line 281
    .local v13, "end":I
    invoke-virtual {v4, v14}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v15

    .line 282
    .local v15, "lineWidth":F
    const-string v7, "..."

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v12

    .line 285
    .local v12, "ellipseWidth":F
    :goto_4
    move/from16 v0, p1

    int-to-float v7, v0

    add-float v8, v15, v12

    cmpg-float v7, v7, v8

    if-gez v7, :cond_8

    .line 286
    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v7, v13, 0x1

    move/from16 v0, v17

    invoke-interface {v5, v0, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    goto :goto_4

    .line 288
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-interface {v5, v8, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/coinbase/android/ui/AutoResizeEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public setAddEllipsis(Z)V
    .locals 0
    .param p1, "addEllipsis"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mAddEllipsis:Z

    .line 183
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setLineSpacing(FF)V

    .line 132
    iput p2, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mSpacingMult:F

    .line 133
    iput p1, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mSpacingAdd:F

    .line 134
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0
    .param p1, "maxTextSize"    # F

    .prologue
    .line 142
    iput p1, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMaxTextSize:F

    .line 143
    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->requestLayout()V

    .line 144
    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->invalidate()V

    .line 145
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .param p1, "minTextSize"    # F

    .prologue
    .line 162
    iput p1, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mMinTextSize:F

    .line 163
    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->requestLayout()V

    .line 164
    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->invalidate()V

    .line 165
    return-void
.end method

.method public setOnResizeListener(Lcom/coinbase/android/ui/AutoResizeEditText$OnTextResizeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coinbase/android/ui/AutoResizeEditText$OnTextResizeListener;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextResizeListener:Lcom/coinbase/android/ui/AutoResizeEditText$OnTextResizeListener;

    .line 106
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 114
    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextSize:F

    .line 115
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .param p1, "unit"    # I
    .param p2, "size"    # F

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 123
    invoke-virtual {p0}, Lcom/coinbase/android/ui/AutoResizeEditText;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/coinbase/android/ui/AutoResizeEditText;->mTextSize:F

    .line 124
    return-void
.end method
