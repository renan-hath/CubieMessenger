.class public Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;
.super Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.source "ImageViewTouchAndDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;,
        Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;,
        Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;
    }
.end annotation


# instance fields
.field protected mCanvas:Landroid/graphics/Canvas;

.field protected mCopy:Landroid/graphics/Bitmap;

.field private mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;

.field private mDrawPathListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;

.field protected mIdentityMatrix:Landroid/graphics/Matrix;

.field protected mInvertedMatrix:Landroid/graphics/Matrix;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mTouchMode:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

.field protected mX:F

.field protected mY:F

.field protected tmpPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->tmpPath:Landroid/graphics/Path;

    .line 45
    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mIdentityMatrix:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    .line 67
    return-void
.end method

.method public static getMatrixValues(Landroid/graphics/Matrix;)[F
    .locals 2
    .param p0, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 241
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 242
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 243
    return-object v0
.end method

.method private touch_move(FF)V
    .locals 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 207
    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mX:F

    sub-float v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 208
    .local v0, "dx":F
    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mY:F

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 209
    .local v1, "dy":F
    cmpl-float v5, v0, v7

    if-gez v5, :cond_0

    cmpl-float v5, v1, v7

    if-ltz v5, :cond_2

    .line 211
    :cond_0
    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mX:F

    add-float/2addr v5, p1

    div-float v3, v5, v6

    .line 212
    .local v3, "x1":F
    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mY:F

    add-float/2addr v5, p2

    div-float v4, v5, v6

    .line 214
    .local v4, "y1":F
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->tmpPath:Landroid/graphics/Path;

    iget v6, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mX:F

    iget v7, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mY:F

    invoke-virtual {v5, v6, v7, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 216
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->tmpPath:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 217
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 218
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 220
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawPathListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;

    if-eqz v5, :cond_1

    .line 222
    const/4 v5, 0x4

    new-array v2, v5, [F

    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mX:F

    aput v5, v2, v8

    iget v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mY:F

    aput v5, v2, v9

    aput v3, v2, v10

    const/4 v5, 0x3

    aput v4, v2, v5

    .line 223
    .local v2, "pts":[F
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 224
    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawPathListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;

    aget v6, v2, v8

    aget v7, v2, v9

    aget v8, v2, v10

    const/4 v9, 0x3

    aget v9, v2, v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;->onQuadTo(FFFF)V

    .line 227
    .end local v2    # "pts":[F
    :cond_1
    iput p1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mX:F

    .line 228
    iput p2, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mY:F

    .line 230
    .end local v3    # "x1":F
    .end local v4    # "y1":F
    :cond_2
    return-void
.end method

.method private touch_start(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 190
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 192
    iput p1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mX:F

    .line 193
    iput p2, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mY:F

    .line 195
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;

    invoke-interface {v1}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;->onDrawStart()V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawPathListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawPathListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;

    invoke-interface {v1}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;->onStart()V

    .line 200
    const/4 v1, 0x2

    new-array v0, v1, [F

    aput p1, v0, v2

    aput p2, v0, v3

    .line 201
    .local v0, "pts":[F
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 202
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawPathListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-interface {v1, v2, v3}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;->onMoveTo(FF)V

    .line 204
    .end local v0    # "pts":[F
    :cond_1
    return-void
.end method

.method private touch_up()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 235
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawPathListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawPathListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;->onEnd()V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method public commit(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 164
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;

    if-eqz v1, :cond_0

    .line 165
    check-cast v0, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 166
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCopy:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 168
    :cond_0
    return-void
.end method

.method public getDrawMode()Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    return-object v0
.end method

.method public getDrawingScale()F
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method public getOverlayBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCopy:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    const-string/jumbo v0, "ImageViewTouchBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init, paint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 85
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 88
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 89
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->tmpPath:Landroid/graphics/Path;

    .line 92
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCopy:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 149
    .local v0, "saveCount":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCopy:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 153
    .end local v0    # "saveCount":I
    :cond_0
    return-void
.end method

.method protected onDrawModeChanged()V
    .locals 6

    .prologue
    .line 106
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    sget-object v4, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    if-ne v3, v4, :cond_0

    .line 108
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 109
    .local v0, "m1":Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 111
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->getMatrixValues(Landroid/graphics/Matrix;)[F

    move-result-object v1

    .line 112
    .local v1, "v1":[F
    invoke-virtual {v0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 113
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->getMatrixValues(Landroid/graphics/Matrix;)[F

    move-result-object v2

    .line 115
    .local v2, "v2":[F
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x2

    aget v4, v1, v4

    neg-float v4, v4

    const/4 v5, 0x5

    aget v5, v1, v5

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 116
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x4

    aget v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 117
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 119
    const-string/jumbo v3, "ImageViewTouchBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v5}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->getScale(Landroid/graphics/Matrix;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .end local v0    # "m1":Landroid/graphics/Matrix;
    .end local v1    # "v1":[F
    .end local v2    # "v2":[F
    :cond_0
    return-void
.end method

.method protected onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCopy:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCopy:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCopy:Landroid/graphics/Bitmap;

    .line 179
    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;

    if-eqz v1, :cond_1

    .line 180
    check-cast p1, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {p1}, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCopy:Landroid/graphics/Bitmap;

    .line 182
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCopy:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCanvas:Landroid/graphics/Canvas;

    .line 183
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 184
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->onDrawModeChanged()V

    .line 186
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method protected onLayoutChanged(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onLayoutChanged(IIII)V

    .line 130
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->onDrawModeChanged()V

    .line 131
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 248
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    sget-object v4, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 250
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 252
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 269
    .end local v0    # "x":F
    .end local v1    # "y":F
    :goto_0
    return v2

    .line 254
    .restart local v0    # "x":F
    .restart local v1    # "y":F
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->touch_start(FF)V

    .line 255
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->invalidate()V

    goto :goto_0

    .line 258
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->touch_move(FF)V

    .line 259
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->invalidate()V

    goto :goto_0

    .line 262
    :pswitch_2
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->touch_up()V

    .line 263
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->invalidate()V

    goto :goto_0

    .line 268
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    sget-object v3, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    if-ne v2, v3, :cond_1

    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 269
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setDrawMode(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    if-eq p1, v0, :cond_0

    .line 100
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$TouchMode;

    .line 101
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->onDrawModeChanged()V

    .line 103
    :cond_0
    return-void
.end method

.method public setOnDrawPathListener(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawPathListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawPathListener;

    .line 75
    return-void
.end method

.method public setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw$OnDrawStartListener;

    .line 71
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewTouchAndDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 139
    return-void
.end method
