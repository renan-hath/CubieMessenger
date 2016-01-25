.class public Lcom/aviary/android/feather/widget/PointCloud;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/widget/PointCloud$Point;,
        Lcom/aviary/android/feather/widget/PointCloud$WaveManager;,
        Lcom/aviary/android/feather/widget/PointCloud$WaveType;
    }
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointCloud1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aviary/android/feather/widget/PointCloud$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointCloud2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/aviary/android/feather/widget/PointCloud$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mRotation:F

.field private mScale:F

.field public waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->mPointCloud1:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->mPointCloud2:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->mRotation:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->mScale:F

    .line 84
    new-instance v0, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    invoke-direct {v0}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->mPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 89
    iget-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 93
    iput-object p1, p0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 95
    iget-object v0, p0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    :cond_0
    return-void
.end method

.method private static hypot(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 169
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private interp(FFF)F
    .locals 1
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "f"    # F

    .prologue
    .line 207
    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 173
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->getAlpha()F

    move-result v18

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-gtz v18, :cond_0

    .line 278
    :goto_0
    return-void

    .line 216
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->getType()Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    move-result-object v17

    .line 218
    .local v17, "type":Lcom/aviary/android/feather/widget/PointCloud$WaveType;
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v16

    .line 219
    .local v16, "saveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mScale:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mScale:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mCenterX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mCenterY:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 221
    sget-object v18, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->Line:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mRotation:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mCenterX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mCenterY:F

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 223
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPointCloud2:Ljava/util/ArrayList;

    .line 224
    .local v12, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/widget/PointCloud$Point;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    .line 225
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/aviary/android/feather/widget/PointCloud$Point;

    .line 226
    .local v10, "point":Lcom/aviary/android/feather/widget/PointCloud$Point;
    const/high16 v18, 0x40800000    # 4.0f

    const/high16 v19, 0x40000000    # 2.0f

    iget v0, v10, Lcom/aviary/android/feather/widget/PointCloud$Point;->radius:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mOuterRadius:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/aviary/android/feather/widget/PointCloud;->interp(FFF)F

    move-result v11

    .line 227
    .local v11, "pointSize":F
    iget v0, v10, Lcom/aviary/android/feather/widget/PointCloud$Point;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mCenterX:F

    move/from16 v19, v0

    add-float v13, v18, v19

    .line 228
    .local v13, "px":F
    iget v0, v10, Lcom/aviary/android/feather/widget/PointCloud$Point;->y:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mCenterY:F

    move/from16 v19, v0

    add-float v14, v18, v19

    .line 229
    .local v14, "py":F
    sget-object v18, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->Circle:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/aviary/android/feather/widget/PointCloud;->getAlphaForPoint(Lcom/aviary/android/feather/widget/PointCloud$Point;Z)I

    move-result v5

    .line 231
    .local v5, "alpha":I
    if-nez v5, :cond_2

    .line 224
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 229
    .end local v5    # "alpha":I
    :cond_1
    const/16 v18, 0x0

    goto :goto_2

    .line 233
    .restart local v5    # "alpha":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 234
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v6

    .line 235
    .local v6, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v7, v18, v19

    .line 236
    .local v7, "cx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v8, v18, v19

    .line 237
    .local v8, "cy":F
    const/high16 v18, 0x40800000    # 4.0f

    div-float v15, v11, v18

    .line 238
    .local v15, "s":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v15, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 239
    sub-float v18, v13, v7

    sub-float v19, v14, v8

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 242
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    .line 244
    .end local v6    # "count":I
    .end local v7    # "cx":F
    .end local v8    # "cy":F
    .end local v15    # "s":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v14, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 251
    .end local v5    # "alpha":I
    .end local v9    # "i":I
    .end local v10    # "point":Lcom/aviary/android/feather/widget/PointCloud$Point;
    .end local v11    # "pointSize":F
    .end local v12    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/widget/PointCloud$Point;>;"
    .end local v13    # "px":F
    .end local v14    # "py":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPointCloud1:Ljava/util/ArrayList;

    .line 252
    .restart local v12    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/aviary/android/feather/widget/PointCloud$Point;>;"
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    .line 253
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/aviary/android/feather/widget/PointCloud$Point;

    .line 254
    .restart local v10    # "point":Lcom/aviary/android/feather/widget/PointCloud$Point;
    const/high16 v18, 0x40800000    # 4.0f

    const/high16 v19, 0x40000000    # 2.0f

    iget v0, v10, Lcom/aviary/android/feather/widget/PointCloud$Point;->radius:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mOuterRadius:F

    move/from16 v21, v0

    div-float v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/aviary/android/feather/widget/PointCloud;->interp(FFF)F

    move-result v11

    .line 255
    .restart local v11    # "pointSize":F
    iget v0, v10, Lcom/aviary/android/feather/widget/PointCloud$Point;->x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mCenterX:F

    move/from16 v19, v0

    add-float v13, v18, v19

    .line 256
    .restart local v13    # "px":F
    iget v0, v10, Lcom/aviary/android/feather/widget/PointCloud$Point;->y:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mCenterY:F

    move/from16 v19, v0

    add-float v14, v18, v19

    .line 257
    .restart local v14    # "py":F
    sget-object v18, Lcom/aviary/android/feather/widget/PointCloud$WaveType;->Circle:Lcom/aviary/android/feather/widget/PointCloud$WaveType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/aviary/android/feather/widget/PointCloud;->getAlphaForPoint(Lcom/aviary/android/feather/widget/PointCloud$Point;Z)I

    move-result v5

    .line 259
    .restart local v5    # "alpha":I
    if-nez v5, :cond_6

    .line 252
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 257
    .end local v5    # "alpha":I
    :cond_5
    const/16 v18, 0x0

    goto :goto_5

    .line 261
    .restart local v5    # "alpha":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 262
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    move-result v6

    .line 263
    .restart local v6    # "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v7, v18, v19

    .line 264
    .restart local v7    # "cx":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v8, v18, v19

    .line 265
    .restart local v8    # "cy":F
    const/high16 v18, 0x40800000    # 4.0f

    div-float v15, v11, v18

    .line 266
    .restart local v15    # "s":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v15, v13, v14}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 267
    sub-float v18, v13, v7

    sub-float v19, v14, v8

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 270
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_6

    .line 272
    .end local v6    # "count":I
    .end local v7    # "cx":F
    .end local v8    # "cy":F
    .end local v15    # "s":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v14, v11, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 277
    .end local v5    # "alpha":I
    .end local v10    # "point":Lcom/aviary/android/feather/widget/PointCloud$Point;
    .end local v11    # "pointSize":F
    .end local v13    # "px":F
    .end local v14    # "py":F
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0
.end method

.method public getAlphaForPoint(Lcom/aviary/android/feather/widget/PointCloud$Point;Z)I
    .locals 11
    .param p1, "point"    # Lcom/aviary/android/feather/widget/PointCloud$Point;
    .param p2, "circle"    # Z

    .prologue
    const v10, 0x3f490fdb

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    const/4 v7, 0x0

    const/high16 v6, 0x3f000000    # 0.5f

    .line 179
    iget v4, p1, Lcom/aviary/android/feather/widget/PointCloud$Point;->x:F

    iget v5, p1, Lcom/aviary/android/feather/widget/PointCloud$Point;->y:F

    invoke-static {v4, v5}, Lcom/aviary/android/feather/widget/PointCloud;->hypot(FF)F

    move-result v2

    .line 181
    .local v2, "radius":F
    if-nez p2, :cond_0

    .line 182
    iget v2, p1, Lcom/aviary/android/feather/widget/PointCloud$Point;->radius:F

    .line 185
    :cond_0
    iget-object v4, p0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    # getter for: Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->radius:F
    invoke-static {v4}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->access$000(Lcom/aviary/android/feather/widget/PointCloud$WaveManager;)F

    move-result v4

    sub-float v1, v2, v4

    .line 186
    .local v1, "distanceToWaveRing":F
    const/4 v3, 0x0

    .line 188
    .local v3, "waveAlpha":F
    cmpl-float v4, v1, v7

    if-lez v4, :cond_2

    .line 190
    iget-object v4, p0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    # getter for: Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->width:F
    invoke-static {v4}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->access$100(Lcom/aviary/android/feather/widget/PointCloud$WaveManager;)F

    move-result v4

    mul-float/2addr v4, v6

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 191
    mul-float v4, v10, v1

    iget-object v5, p0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    # getter for: Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->width:F
    invoke-static {v5}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->access$100(Lcom/aviary/android/feather/widget/PointCloud$WaveManager;)F

    move-result v5

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 192
    .local v0, "cosf":F
    iget-object v4, p0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    # getter for: Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->alpha:F
    invoke-static {v4}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->access$200(Lcom/aviary/android/feather/widget/PointCloud$WaveManager;)F

    move-result v4

    float-to-double v5, v0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v7, v5}, Lcom/aviary/android/feather/widget/PointCloud;->max(FF)F

    move-result v5

    mul-float v3, v4, v5

    .line 203
    .end local v0    # "cosf":F
    :cond_1
    :goto_0
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    return v4

    .line 197
    :cond_2
    iget-object v4, p0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    # getter for: Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->width:F
    invoke-static {v4}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->access$100(Lcom/aviary/android/feather/widget/PointCloud$WaveManager;)F

    move-result v4

    mul-float/2addr v4, v6

    neg-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 198
    mul-float v4, v10, v1

    iget-object v5, p0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    # getter for: Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->width:F
    invoke-static {v5}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->access$100(Lcom/aviary/android/feather/widget/PointCloud$WaveManager;)F

    move-result v5

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v4}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 199
    .restart local v0    # "cosf":F
    iget-object v4, p0, Lcom/aviary/android/feather/widget/PointCloud;->waveManager:Lcom/aviary/android/feather/widget/PointCloud$WaveManager;

    # getter for: Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->alpha:F
    invoke-static {v4}, Lcom/aviary/android/feather/widget/PointCloud$WaveManager;->access$200(Lcom/aviary/android/feather/widget/PointCloud$WaveManager;)F

    move-result v4

    float-to-double v5, v0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v7, v5}, Lcom/aviary/android/feather/widget/PointCloud;->max(FF)F

    move-result v5

    mul-float v3, v4, v5

    goto :goto_0
.end method

.method public makePointCloud(FFLandroid/graphics/RectF;)V
    .locals 22
    .param p1, "innerRadius"    # F
    .param p2, "outerRadius"    # F
    .param p3, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 111
    const/16 v19, 0x0

    cmpl-float v19, p1, v19

    if-nez v19, :cond_1

    .line 112
    const-string/jumbo v19, "PointCloud"

    const-string/jumbo v20, "Must specify an inner radius"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return-void

    .line 116
    :cond_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/aviary/android/feather/widget/PointCloud;->mOuterRadius:F

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPointCloud1:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 121
    sub-float v12, p2, p1

    .line 122
    .local v12, "pointAreaRadius":F
    const v19, 0x40c90fdb

    mul-float v19, v19, p1

    const/high16 v20, 0x41000000    # 8.0f

    div-float v9, v19, v20

    .line 123
    .local v9, "ds":F
    div-float v19, v12, v9

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 124
    .local v5, "bands":I
    int-to-float v0, v5

    move/from16 v19, v0

    div-float v8, v12, v19

    .line 125
    .local v8, "dr":F
    move/from16 v15, p1

    .line 126
    .local v15, "r":F
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_0
    if-gt v4, v5, :cond_3

    .line 127
    const v19, 0x40c90fdb

    mul-float v6, v19, v15

    .line 128
    .local v6, "circumference":F
    div-float v19, v6, v9

    move/from16 v0, v19

    float-to-int v14, v0

    .line 129
    .local v14, "pointsInBand":I
    const v10, 0x3fc90fdb

    .line 130
    .local v10, "eta":F
    const v19, 0x40c90fdb

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v7, v19, v20

    .line 131
    .local v7, "dEta":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v14, :cond_2

    .line 132
    invoke-static {v10}, Landroid/util/FloatMath;->cos(F)F

    move-result v19

    mul-float v17, v15, v19

    .line 133
    .local v17, "x":F
    invoke-static {v10}, Landroid/util/FloatMath;->sin(F)F

    move-result v19

    mul-float v18, v15, v19

    .line 134
    .local v18, "y":F
    add-float/2addr v10, v7

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPointCloud1:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Lcom/aviary/android/feather/widget/PointCloud$Point;

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/aviary/android/feather/widget/PointCloud$Point;-><init>(FFF)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 126
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-float/2addr v15, v8

    goto :goto_0

    .line 140
    .end local v6    # "circumference":F
    .end local v7    # "dEta":F
    .end local v10    # "eta":F
    .end local v11    # "i":I
    .end local v14    # "pointsInBand":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPointCloud2:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 141
    move/from16 v15, p1

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v19

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 143
    .local v16, "rect_side":F
    move/from16 v6, v16

    .line 145
    .restart local v6    # "circumference":F
    const/4 v4, 0x0

    :goto_2
    if-gt v4, v5, :cond_0

    .line 146
    const/high16 v19, 0x40800000    # 4.0f

    const/high16 v20, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mOuterRadius:F

    move/from16 v21, v0

    div-float v21, v15, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/aviary/android/feather/widget/PointCloud;->interp(FFF)F

    move-result v13

    .line 147
    .local v13, "pointSize":F
    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v13, v19

    mul-float v19, v19, v9

    div-float v19, v6, v19

    move/from16 v0, v19

    float-to-int v14, v0

    .line 149
    .restart local v14    # "pointsInBand":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    if-gt v11, v14, :cond_4

    .line 150
    move/from16 v17, v15

    .line 151
    .restart local v17    # "x":F
    neg-float v0, v6

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    int-to-float v0, v14

    move/from16 v20, v0

    div-float v20, v6, v20

    int-to-float v0, v11

    move/from16 v21, v0

    mul-float v20, v20, v21

    add-float v18, v19, v20

    .line 152
    .restart local v18    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPointCloud2:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Lcom/aviary/android/feather/widget/PointCloud$Point;

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/aviary/android/feather/widget/PointCloud$Point;-><init>(FFF)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/aviary/android/feather/widget/PointCloud;->mPointCloud2:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Lcom/aviary/android/feather/widget/PointCloud$Point;

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/aviary/android/feather/widget/PointCloud$Point;-><init>(FFF)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 145
    .end local v17    # "x":F
    .end local v18    # "y":F
    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-float/2addr v15, v8

    goto :goto_2
.end method

.method public setCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 101
    iput p1, p0, Lcom/aviary/android/feather/widget/PointCloud;->mCenterX:F

    .line 102
    iput p2, p0, Lcom/aviary/android/feather/widget/PointCloud;->mCenterY:F

    .line 103
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/aviary/android/feather/widget/PointCloud;->mRotation:F

    .line 107
    return-void
.end method
