.class public Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AviaryTextDrawable.java"

# interfaces
.implements Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;
.implements Lcom/aviary/android/feather/library/graphics/drawable/FeatherDrawable;


# static fields
.field static final LOG_ENABLED:Z


# instance fields
.field final drawRect:Landroid/graphics/RectF;

.field final lastRect:Landroid/graphics/Rect;

.field protected final linesBreak:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mBoundsF:Landroid/graphics/RectF;

.field protected mCursorDistance:F

.field protected final mCursorPaint:Landroid/graphics/Paint;

.field protected mCursorWidth:F

.field protected final mDebugPaint:Landroid/graphics/Paint;

.field protected mDefaultTextSize:F

.field protected mEditing:Z

.field protected mHintString:Ljava/lang/String;

.field protected mIntrinsicHeight:F

.field protected mIntrinsicWidth:F

.field protected mMinHeight:F

.field protected mMinTextSize:F

.field protected mMinWidth:F

.field protected mNow:J

.field protected final mPaint:Landroid/graphics/Paint;

.field protected mPaintAlpha:I

.field protected mShowCursor:Z

.field private mSizeChangeListener:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable$OnSizeChange;

.field protected mStrokeAlpha:I

.field protected mStrokeEnabled:Z

.field protected final mStrokePaint:Landroid/graphics/Paint;

.field protected mText:Ljava/lang/String;

.field protected mTextHint:Z

.field metrics:Landroid/graphics/Paint$FontMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    sput-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;-><init>(Ljava/lang/String;FLandroid/graphics/Typeface;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FLandroid/graphics/Typeface;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # F
    .param p3, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    .line 40
    iput-boolean v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mEditing:Z

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mNow:J

    .line 42
    iput-boolean v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mShowCursor:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    .line 44
    iput-boolean v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mTextHint:Z

    .line 45
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorWidth:F

    .line 46
    iput v3, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorDistance:F

    .line 47
    iput-boolean v4, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokeEnabled:Z

    .line 54
    const/high16 v0, 0x41600000    # 14.0f

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinTextSize:F

    .line 56
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->lastRect:Landroid/graphics/Rect;

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->drawRect:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x1c3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    .line 69
    iput p2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mDefaultTextSize:F

    .line 71
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinTextSize:F

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mDefaultTextSize:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 72
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mDefaultTextSize:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinTextSize:F

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 76
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 79
    if-eqz p3, :cond_2

    .line 80
    sget-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 81
    const-string/jumbo v0, "text-drawable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "typeface: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 87
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorPaint:Landroid/graphics/Paint;

    .line 89
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 90
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    div-float v1, p2, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mDebugPaint:Landroid/graphics/Paint;

    .line 98
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setTextColor(I)V

    .line 99
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setStrokeColor(I)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setText(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->computeMinSize()V

    .line 104
    return-void
.end method


# virtual methods
.method public beginEdit()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mEditing:Z

    .line 162
    return-void
.end method

.method protected computeMinSize()V
    .locals 3

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getMinTextWidth()F

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinWidth:F

    .line 348
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getMinTextSize()F

    move-result v0

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getNumLines()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinHeight:F

    .line 349
    sget-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 350
    const-string/jumbo v0, "text-drawable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "computeMinSize, minHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    return-void
.end method

.method protected computeTextHeight()F
    .locals 4

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getTextSize()F

    move-result v0

    .line 369
    .local v0, "textSize":F
    sget-boolean v1, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 370
    const-string/jumbo v1, "text-drawable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "computeTextHeight. single line height: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 373
    float-to-int v1, v0

    int-to-float v1, v1

    .line 375
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getNumLines()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0
.end method

.method protected computeTextWidth()F
    .locals 9

    .prologue
    .line 379
    const/4 v1, 0x0

    .line 381
    .local v1, "maxWidth":F
    iget-object v6, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getNumLines()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 383
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getTextWidth(II)F

    move-result v6

    iget v7, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorWidth:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorDistance:F

    add-float v1, v6, v7

    .line 395
    :cond_0
    iget v6, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinWidth:F

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 396
    .local v4, "result":F
    sget-boolean v6, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v6, :cond_1

    .line 397
    const-string/jumbo v6, "text-drawable"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\tresult: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_1
    return v4

    .line 385
    .end local v4    # "result":F
    :cond_2
    const/4 v5, 0x0

    .line 386
    .local v5, "start":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 387
    iget-object v6, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 388
    .local v2, "nextBreak":I
    invoke-virtual {p0, v5, v2}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getTextWidth(II)F

    move-result v6

    iget v7, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorWidth:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorDistance:F

    add-float v3, v6, v7

    .line 389
    .local v3, "real":F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 390
    add-int/lit8 v5, v2, 0x1

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected copyBounds(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 414
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->copyBounds(Landroid/graphics/RectF;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mDebugPaint:Landroid/graphics/Paint;

    if-eqz v3, :cond_0

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->drawRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mDebugPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 424
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getNumLines()I

    move-result v15

    .line 430
    .local v15, "numLines":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v20, v0

    sub-float v8, v8, v20

    sub-float v10, v3, v8

    .line 433
    .local v10, "descent":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->top:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v20, v0

    sub-float v8, v8, v20

    sub-float v9, v3, v8

    .line 434
    .local v9, "ascent":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->drawRect:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    .line 435
    .local v19, "top":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->drawRect:Landroid/graphics/RectF;

    iget v12, v3, Landroid/graphics/RectF;->left:F

    .line 436
    .local v12, "left":F
    const/16 v16, 0x0

    .line 439
    .local v16, "start":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v15, :cond_1

    .line 471
    return-void

    .line 440
    :cond_1
    sub-float v19, v19, v9

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 442
    .local v17, "stop":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 444
    .local v18, "text":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->isTextHint()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokeEnabled:Z

    if-eqz v3, :cond_2

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 447
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 449
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mEditing:Z

    if-eqz v3, :cond_6

    add-int/lit8 v3, v15, -0x1

    if-ne v11, v3, :cond_6

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 451
    .local v13, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mNow:J

    move-wide/from16 v20, v0

    sub-long v20, v13, v20

    const-wide/16 v22, 0x190

    cmp-long v3, v20, v22

    if-lez v3, :cond_3

    .line 452
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mShowCursor:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mShowCursor:Z

    .line 453
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mNow:J

    .line 456
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mShowCursor:Z

    if-eqz v3, :cond_6

    .line 457
    add-int/lit8 v3, v15, -0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->lastRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getLineBounds(ILandroid/graphics/Rect;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->drawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->lastRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorDistance:F

    add-float/2addr v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->isTextHint()Z

    move-result v3

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokeEnabled:Z

    if-nez v3, :cond_8

    :cond_4
    const/4 v3, 0x0

    :goto_2
    add-float v4, v8, v3

    .line 460
    .local v4, "l":F
    add-float v5, v19, v9

    .line 461
    .local v5, "t":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->drawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->lastRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorWidth:F

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorDistance:F

    add-float/2addr v8, v3

    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->isTextHint()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokeEnabled:Z

    if-nez v3, :cond_9

    :cond_5
    const/4 v3, 0x0

    :goto_3
    add-float v6, v8, v3

    .line 462
    .local v6, "r":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->metrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v7, v19, v3

    .line 464
    .local v7, "b":F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 468
    .end local v4    # "l":F
    .end local v5    # "t":F
    .end local v6    # "r":F
    .end local v7    # "b":F
    .end local v13    # "now":J
    :cond_6
    add-int/lit8 v16, v17, 0x1

    .line 469
    add-float v19, v19, v10

    .line 439
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 452
    .restart local v13    # "now":J
    :cond_7
    const/4 v3, 0x1

    goto :goto_1

    .line 459
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v20, 0x40000000    # 2.0f

    div-float v3, v3, v20

    goto :goto_2

    .line 461
    .restart local v4    # "l":F
    .restart local v5    # "t":F
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v20, 0x40000000    # 2.0f

    div-float v3, v3, v20

    goto :goto_3
.end method

.method public endEdit()V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mEditing:Z

    .line 168
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mHintString:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mHintString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setTextHint(Ljava/lang/String;)V

    .line 171
    :cond_1
    return-void
.end method

.method public getCurrentHeight()F
    .locals 3

    .prologue
    .line 175
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mIntrinsicHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->computeTextHeight()F

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mIntrinsicHeight:F

    .line 178
    :cond_0
    sget-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 179
    const-string/jumbo v0, "text-drawable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getIntrinsicHeight: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mIntrinsicHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_1
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mIntrinsicHeight:F

    return v0
.end method

.method public getCurrentWidth()F
    .locals 3

    .prologue
    .line 186
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mIntrinsicWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 187
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinWidth:F

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->computeTextWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mIntrinsicWidth:F

    .line 189
    :cond_0
    sget-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 190
    const-string/jumbo v0, "text-drawable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getIntrinsicWidth: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mIntrinsicWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mIntrinsicWidth:F

    return v0
.end method

.method public getDefaultTextSize()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mDefaultTextSize:F

    return v0
.end method

.method public getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .locals 1
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetrics;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getCurrentHeight()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getCurrentWidth()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getLineBounds(ILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "line"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 475
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getNumLines()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 478
    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 490
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 482
    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 483
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getTextWidth(II)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 487
    iput v4, p2, Landroid/graphics/Rect;->left:I

    .line 488
    iput v4, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method

.method public getMinHeight()F
    .locals 2

    .prologue
    .line 153
    sget-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "text-drawable"

    const-string/jumbo v1, "getMinHeight"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinHeight:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinTextSize:F

    return v0
.end method

.method protected getMinTextWidth()F
    .locals 3

    .prologue
    .line 355
    const/4 v1, 0x1

    new-array v0, v1, [F

    .line 356
    .local v0, "widths":[F
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 357
    const/4 v1, 0x0

    aget v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    return v1
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 148
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0
.end method

.method public getNumLines()I
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getStrokeEnabled()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokeEnabled:Z

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextStrokeColor()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method protected getTextWidth(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "stop"    # I

    .prologue
    .line 404
    sub-int v1, p2, p1

    new-array v0, v1, [F

    .line 405
    .local v0, "w":[F
    sget-boolean v1, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 406
    const-string/jumbo v1, "text-drawable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getTextWidth: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    .line 409
    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getTotal([F)F

    move-result v1

    return v1
.end method

.method protected getTotal([F)F
    .locals 4
    .param p1, "array"    # [F

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "total":F
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 364
    return v0

    .line 362
    :cond_0
    aget v1, p1, v2

    .line 363
    .local v1, "v":F
    add-float/2addr v0, v1

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected invalidateSize()V
    .locals 1

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 206
    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mIntrinsicHeight:F

    .line 207
    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mIntrinsicWidth:F

    .line 208
    return-void
.end method

.method public isEditing()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mEditing:Z

    return v0
.end method

.method public isTextHint()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mTextHint:Z

    return v0
.end method

.method protected onTextInvalidate()V
    .locals 8

    .prologue
    .line 503
    sget-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 504
    const-string/jumbo v0, "text-drawable"

    const-string/jumbo v1, "onTextInvalidate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->isTextHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaintAlpha:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 509
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokeAlpha:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 515
    :goto_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 516
    const/4 v7, 0x0

    .line 517
    .local v7, "start":I
    const/4 v6, -0x1

    .line 519
    .local v6, "last":I
    :goto_1
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/4 v0, -0x1

    if-gt v6, v0, :cond_3

    .line 523
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->invalidateSize()V

    .line 527
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mSizeChangeListener:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable$OnSizeChange;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mSizeChangeListener:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable$OnSizeChange;

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable$OnSizeChange;->onSizeChanged(Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable;FFFF)V

    .line 530
    :cond_1
    return-void

    .line 511
    .end local v6    # "last":I
    .end local v7    # "start":I
    :cond_2
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaintAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 512
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 520
    .restart local v6    # "last":I
    .restart local v7    # "start":I
    :cond_3
    add-int/lit8 v7, v6, 0x1

    .line 521
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->linesBreak:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 248
    return-void
.end method

.method public setBounds(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 252
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_2

    .line 253
    :cond_0
    sget-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v0, :cond_1

    .line 254
    const-string/jumbo v0, "text-drawable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setBounds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mBoundsF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 257
    sub-float v0, p4, p2

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setTextSize(F)V

    .line 259
    :cond_2
    return-void
.end method

.method public setBounds(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 263
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    int-to-float v0, p1

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setBounds(FFFF)V

    .line 265
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 270
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 271
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 272
    return-void
.end method

.method public setCursorWidth(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 115
    int-to-float v0, p1

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorWidth:F

    .line 116
    return-void
.end method

.method public setMinSize(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 328
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 331
    sget-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 332
    const-string/jumbo v0, "text-drawable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setMinTextSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iput p1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinTextSize:F

    .line 335
    return-void
.end method

.method public setOnSizeChangeListener(Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable$OnSizeChange;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable$OnSizeChange;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mSizeChangeListener:Lcom/aviary/android/feather/library/graphics/drawable/EditableDrawable$OnSizeChange;

    .line 535
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokeAlpha:I

    .line 277
    return-void
.end method

.method public setStrokeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokeEnabled:Z

    .line 121
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 281
    check-cast p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setText(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 286
    sget-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v0, "text-drawable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setText: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iput-object p1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mTextHint:Z

    .line 291
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->onTextInvalidate()V

    .line 292
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 298
    iget-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaintAlpha:I

    .line 299
    return-void
.end method

.method public setTextHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 130
    check-cast p1, Ljava/lang/String;

    .end local p1    # "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->setTextHint(Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setTextHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 135
    if-nez p1, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mText:Ljava/lang/String;

    .line 136
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mTextHint:Z

    .line 137
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "text":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mHintString:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->onTextInvalidate()V

    .line 139
    return-void

    .restart local p1    # "text":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setTextSize(F)V
    .locals 4
    .param p1, "size"    # F

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getNumLines()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    iget-object v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 303
    sget-boolean v1, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v1, :cond_0

    .line 304
    const-string/jumbo v1, "text-drawable"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setTextSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->getNumLines()I

    move-result v0

    .line 307
    .local v0, "lines":I
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    div-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 308
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mCursorPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    div-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 309
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    div-float v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 310
    iget-object v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mStrokePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    div-float v2, p1, v2

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 311
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->invalidateSize()V

    .line 312
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->computeMinSize()V

    .line 314
    .end local v0    # "lines":I
    :cond_1
    return-void
.end method

.method public validateSize(Landroid/graphics/RectF;)Z
    .locals 3
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 318
    sget-boolean v0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 319
    const-string/jumbo v0, "text-drawable"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "validateSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p0, Lcom/aviary/android/feather/library/graphics/drawable/AviaryTextDrawable;->mMinHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
