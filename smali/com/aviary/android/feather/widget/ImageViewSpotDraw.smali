.class public Lcom/aviary/android/feather/widget/ImageViewSpotDraw;
.super Lit/sephiroth/android/library/imagezoom/ImageViewTouch;
.source "ImageViewSpotDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;,
        Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;
    }
.end annotation


# instance fields
.field protected mBrushSize:F

.field protected mCanvas:Landroid/graphics/Canvas;

.field protected mCurrentScale:F

.field private mDrawListener:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;

.field protected mIdentityMatrix:Landroid/graphics/Matrix;

.field protected mInvertedMatrix:Landroid/graphics/Matrix;

.field private mMoved:Z

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPaintEnabled:Z

.field private mRestiction:D

.field protected mStartX:F

.field protected mStartY:F

.field protected mTouchMode:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

.field protected mX:F

.field protected mY:F

.field protected tmpPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaintEnabled:Z

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mCurrentScale:F

    .line 36
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mBrushSize:F

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->tmpPath:Landroid/graphics/Path;

    .line 39
    sget-object v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    .line 42
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mIdentityMatrix:Landroid/graphics/Matrix;

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mRestiction:D

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mMoved:Z

    .line 54
    return-void
.end method

.method public static getMatrixValues(Landroid/graphics/Matrix;)[F
    .locals 2
    .param p0, "m"    # Landroid/graphics/Matrix;

    .prologue
    .line 238
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 239
    .local v0, "values":[F
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 240
    return-object v0
.end method

.method private touch_move(FF)V
    .locals 21
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 189
    move-object/from16 v0, p0

    iget v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mX:F

    sub-float v15, p1, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 190
    .local v2, "dx":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mY:F

    sub-float v15, p2, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 192
    .local v3, "dy":F
    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v15, v2, v15

    if-gez v15, :cond_0

    const/high16 v15, 0x40000000    # 2.0f

    cmpl-float v15, v3, v15

    if-ltz v15, :cond_3

    .line 194
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mMoved:Z

    if-nez v15, :cond_1

    .line 195
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->tmpPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mY:F

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 198
    :cond_1
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mMoved:Z

    .line 200
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mRestiction:D

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-lez v15, :cond_2

    .line 201
    move-object/from16 v0, p0

    iget v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mStartX:F

    sub-float v15, p1, v15

    float-to-double v15, v15

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mStartY:F

    move/from16 v17, v0

    sub-float v17, p2, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 202
    .local v6, "r":D
    move-object/from16 v0, p0

    iget v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mStartY:F

    sub-float v15, p2, v15

    float-to-double v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mStartX:F

    move/from16 v17, v0

    sub-float v17, p1, v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    .line 204
    .local v12, "theta":D
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getWidth()I

    move-result v15

    int-to-float v14, v15

    .line 205
    .local v14, "w":F
    invoke-virtual/range {p0 .. p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getHeight()I

    move-result v15

    int-to-float v4, v15

    .line 207
    .local v4, "h":F
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mRestiction:D

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mCurrentScale:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    add-float v17, v14, v4

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mBrushSize:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mCurrentScale:F

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v10, v15, v17

    .line 208
    .local v10, "scale":D
    mul-double v15, v6, v10

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    add-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v15

    div-double v8, v15, v10

    .line 210
    .local v8, "rNew":D
    move-object/from16 v0, p0

    iget v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mStartX:F

    float-to-double v15, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v8

    add-double v15, v15, v17

    double-to-float v0, v15

    move/from16 p1, v0

    .line 211
    move-object/from16 v0, p0

    iget v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mStartY:F

    float-to-double v15, v15

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v8

    add-double v15, v15, v17

    double-to-float v0, v15

    move/from16 p2, v0

    .line 214
    .end local v4    # "h":F
    .end local v6    # "r":D
    .end local v8    # "rNew":D
    .end local v10    # "scale":D
    .end local v12    # "theta":D
    .end local v14    # "w":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->tmpPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mX:F

    move/from16 v18, v0

    add-float v18, v18, p1

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mY:F

    move/from16 v19, v0

    add-float v19, v19, p2

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    invoke-virtual/range {v15 .. v19}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 215
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mX:F

    .line 216
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mY:F

    .line 219
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;

    if-eqz v15, :cond_4

    .line 220
    const/4 v15, 0x2

    new-array v5, v15, [F

    .line 221
    .local v5, "mappedPoints":[F
    const/4 v15, 0x0

    aput p1, v5, v15

    .line 222
    const/4 v15, 0x1

    aput p2, v5, v15

    .line 223
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v15, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mBrushSize:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mCurrentScale:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v15, v5, v0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;->onDrawing([FI)V

    .line 226
    .end local v5    # "mappedPoints":[F
    :cond_4
    return-void
.end method

.method private touch_start(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 167
    iput-boolean v2, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mMoved:Z

    .line 169
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 170
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 172
    iput p1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mX:F

    .line 173
    iput p2, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mY:F

    .line 174
    iput p1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mStartX:F

    .line 175
    iput p2, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mStartY:F

    .line 177
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 179
    .local v0, "mappedPoints":[F
    aput p1, v0, v2

    .line 180
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 181
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 182
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->tmpPath:Landroid/graphics/Path;

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 183
    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;

    iget v2, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mBrushSize:F

    iget v3, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mCurrentScale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v1, v0, v2}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;->onDrawStart([FI)V

    .line 185
    .end local v0    # "mappedPoints":[F
    :cond_0
    return-void
.end method

.method private touch_up()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->tmpPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 232
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;->onDrawEnd()V

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawMode()Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    return-object v0
.end method

.method public getImageRect()Landroid/graphics/RectF;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 139
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-super {p0, p1, p2, p3}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 65
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 66
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    const v1, 0x66ffffcc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 69
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->tmpPath:Landroid/graphics/Path;

    .line 70
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    iget-boolean v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->tmpPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected onDrawModeChanged()V
    .locals 6

    .prologue
    .line 96
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    sget-object v4, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-ne v3, v4, :cond_0

    .line 97
    const-string/jumbo v3, "ImageViewTouchBase"

    const-string/jumbo v4, "onDrawModeChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 100
    .local v0, "m1":Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 102
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getMatrixValues(Landroid/graphics/Matrix;)[F

    move-result-object v1

    .line 103
    .local v1, "v1":[F
    invoke-virtual {v0, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 104
    invoke-static {v0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getMatrixValues(Landroid/graphics/Matrix;)[F

    move-result-object v2

    .line 106
    .local v2, "v2":[F
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x2

    aget v4, v1, v4

    neg-float v4, v4

    const/4 v5, 0x5

    aget v5, v1, v5

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 107
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x4

    aget v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 108
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mInvertedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 110
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getScale()F

    move-result v3

    iput v3, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mCurrentScale:F

    .line 112
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mBrushSize:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    .end local v0    # "m1":Landroid/graphics/Matrix;
    .end local v1    # "v1":[F
    .end local v2    # "v2":[F
    :cond_0
    return-void
.end method

.method protected onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V

    .line 147
    if-eqz p1, :cond_0

    instance-of v0, p1, Lit/sephiroth/android/library/imagezoom/graphics/IBitmapDrawable;

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mCanvas:Landroid/graphics/Canvas;

    .line 149
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 150
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->onDrawModeChanged()V

    .line 152
    :cond_0
    return-void
.end method

.method protected onLayoutChanged(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onLayoutChanged(IIII)V

    .line 158
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->onDrawModeChanged()V

    .line 161
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 245
    iget-object v3, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    sget-object v4, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->DRAW:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 247
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 249
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 266
    .end local v0    # "x":F
    .end local v1    # "y":F
    :goto_0
    return v2

    .line 251
    .restart local v0    # "x":F
    .restart local v1    # "y":F
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->touch_start(FF)V

    .line 252
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->invalidate()V

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->touch_move(FF)V

    .line 256
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->invalidate()V

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-direct {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->touch_up()V

    .line 260
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->invalidate()V

    goto :goto_0

    .line 265
    .end local v0    # "x":F
    .end local v1    # "y":F
    :cond_0
    iget-object v2, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    sget-object v3, Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;->IMAGE:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-ne v2, v3, :cond_1

    invoke-super {p0, p1}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 266
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setBrushSize(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mBrushSize:F

    .line 79
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mBrushSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    :cond_0
    return-void
.end method

.method public setDrawLimit(D)V
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 73
    iput-wide p1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mRestiction:D

    .line 74
    return-void
.end method

.method public setDrawMode(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    if-eq p1, v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mTouchMode:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$TouchMode;

    .line 91
    invoke-virtual {p0}, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->onDrawModeChanged()V

    .line 93
    :cond_0
    return-void
.end method

.method public setOnDrawStartListener(Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mDrawListener:Lcom/aviary/android/feather/widget/ImageViewSpotDraw$OnDrawListener;

    .line 58
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method public setPaintEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/aviary/android/feather/widget/ImageViewSpotDraw;->mPaintEnabled:Z

    .line 126
    return-void
.end method
