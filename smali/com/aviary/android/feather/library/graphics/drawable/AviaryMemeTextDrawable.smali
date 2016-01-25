.class public Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;
.super Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;
.source "AviaryMemeTextDrawable.java"

# interfaces
.implements Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
.implements Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;


# instance fields
.field private mBoundsChanged:Z

.field protected mContentHeight:I

.field protected mContentWidth:I

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTextChanged:Z

.field mTop:Z

.field private maxSize:F

.field private padW:F

.field private xoff:F

.field private yoff:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FLandroid/graphics/Typeface;Z)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;
    .param p4, "top"    # Z

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;-><init>(Ljava/lang/String;FLandroid/graphics/Typeface;)V

    .line 30
    iput-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTextChanged:Z

    .line 31
    iput-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsChanged:Z

    .line 32
    iput-boolean p4, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTop:Z

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTempPaint:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->setText(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->copyBounds(Landroid/graphics/RectF;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mDebugPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mDebugPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 145
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getNumLines()I

    move-result v11

    .line 149
    .local v11, "numLines":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v13

    sub-float v7, v1, v6

    .line 153
    .local v7, "ascent":F
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTop:Z

    if-eqz v1, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v12, v1, v7

    .line 159
    .local v12, "top":F
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->xoff:F

    add-float v8, v1, v6

    .line 161
    .local v8, "left":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8, v12, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8, v12, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 164
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mEditing:Z

    if-eqz v1, :cond_2

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 166
    .local v9, "now":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mNow:J

    sub-long v13, v9, v13

    const-wide/16 v15, 0x12c

    cmp-long v1, v13, v15

    if-lez v1, :cond_1

    .line 167
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mShowCursor:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mShowCursor:Z

    .line 168
    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mNow:J

    .line 171
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mShowCursor:Z

    if-eqz v1, :cond_2

    .line 172
    add-int/lit8 v1, v11, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->lastRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v6}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getLineBounds(ILandroid/graphics/Rect;)V

    .line 174
    move-object/from16 v0, p0

    iget v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mCursorDistance:F

    add-float/2addr v1, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->lastRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    add-float v2, v1, v6

    .line 175
    .local v2, "l":F
    add-float v3, v12, v7

    .line 176
    .local v3, "t":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mCursorWidth:F

    add-float v4, v2, v1

    .line 177
    .local v4, "r":F
    move v5, v12

    .line 179
    .local v5, "b":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mCursorPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    .end local v2    # "l":F
    .end local v3    # "t":F
    .end local v4    # "r":F
    .end local v5    # "b":F
    .end local v9    # "now":J
    :cond_2
    return-void

    .line 156
    .end local v8    # "left":F
    .end local v12    # "top":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->drawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v6, v13

    sub-float v12, v1, v6

    .restart local v12    # "top":F
    goto/16 :goto_0

    .line 167
    .restart local v8    # "left":F
    .restart local v9    # "now":J
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mContentWidth:I

    return v0
.end method

.method public getNumLines()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method protected onTextInvalidate()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->invalidateSize()V

    .line 72
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 6
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 91
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p3, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 94
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsChanged:Z

    .line 95
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mContentWidth:I

    .line 98
    :cond_1
    iget-boolean v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTextChanged:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsChanged:Z

    if-eqz v2, :cond_3

    .line 103
    :cond_2
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mDefaultTextSize:F

    .line 106
    .local v0, "sizeValT":F
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 109
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTempPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 113
    .local v1, "topW":F
    :goto_0
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->padW:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    mul-float/2addr v0, v2

    .line 114
    iget v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->maxSize:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 116
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 118
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    div-float v3, v0, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    iput v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mCursorDistance:F

    .line 122
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 123
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 127
    :goto_1
    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->yoff:F

    .line 129
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->xoff:F

    .line 131
    iput-boolean v5, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTextChanged:Z

    .line 132
    iput-boolean v5, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mBoundsChanged:Z

    .line 134
    .end local v0    # "sizeValT":F
    .end local v1    # "topW":F
    :cond_3
    return-void

    .line 111
    .restart local v0    # "sizeValT":F
    :cond_4
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTempPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .restart local v1    # "topW":F
    goto :goto_0

    .line 125
    :cond_5
    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "a"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    goto :goto_1
.end method

.method public setContentSize(FF)V
    .locals 2
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    .line 39
    float-to-int v0, p1

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mContentWidth:I

    .line 40
    float-to-int v0, p2

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mContentHeight:I

    .line 41
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->maxSize:F

    .line 42
    const/high16 v0, 0x42200000    # 40.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->padW:F

    .line 43
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setText(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTextChanged:Z

    .line 67
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryMemeTextDrawable;->mTextChanged:Z

    .line 60
    :cond_0
    return-void
.end method

.method public validateSize(Landroid/graphics/RectF;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/RectF;

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
