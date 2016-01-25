.class public Lcom/liquable/nemo/widget/TouchImageView;
.super Landroid/widget/ImageView;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;,
        Lcom/liquable/nemo/widget/TouchImageView$ScaleListener;,
        Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;
    }
.end annotation


# static fields
.field static final CLICK:I = 0x3

.field static final DRAG:I = 0x1

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field bmHeight:F

.field bmWidth:F

.field bottom:F

.field context:Landroid/content/Context;

.field height:F

.field last:Landroid/graphics/PointF;

.field m:[F

.field private mGestureListener:Landroid/view/GestureDetector;

.field mScaleDetector:Landroid/view/ScaleGestureDetector;

.field matrix:Landroid/graphics/Matrix;

.field maxScale:F

.field minScale:F

.field mode:I

.field origHeight:F

.field origWidth:F

.field redundantXSpace:F

.field redundantYSpace:F

.field right:F

.field saveScale:F

.field start:Landroid/graphics/PointF;

.field private touchImageViewListener:Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;

.field width:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->mode:I

    .line 87
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->last:Landroid/graphics/PointF;

    .line 88
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->start:Landroid/graphics/PointF;

    .line 90
    iput v2, p0, Lcom/liquable/nemo/widget/TouchImageView;->minScale:F

    .line 92
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->maxScale:F

    .line 99
    iput v2, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    .line 113
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 114
    iput-object p1, p0, Lcom/liquable/nemo/widget/TouchImageView;->context:Landroid/content/Context;

    .line 115
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/liquable/nemo/widget/TouchImageView$ScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/widget/TouchImageView$ScaleListener;-><init>(Lcom/liquable/nemo/widget/TouchImageView;Lcom/liquable/nemo/widget/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 116
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/liquable/nemo/widget/TouchImageView$MyGestureListener;-><init>(Lcom/liquable/nemo/widget/TouchImageView;Lcom/liquable/nemo/widget/TouchImageView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->mGestureListener:Landroid/view/GestureDetector;

    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 119
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->m:[F

    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 121
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/TouchImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 123
    new-instance v0, Lcom/liquable/nemo/widget/TouchImageView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/widget/TouchImageView$1;-><init>(Lcom/liquable/nemo/widget/TouchImageView;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/widget/TouchImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/widget/TouchImageView;FFZF)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/widget/TouchImageView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # Z
    .param p4, "x4"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/widget/TouchImageView;->scale(FFZF)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/widget/TouchImageView;)Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/TouchImageView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->touchImageViewListener:Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/widget/TouchImageView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/widget/TouchImageView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->mGestureListener:Landroid/view/GestureDetector;

    return-object v0
.end method

.method private scale(FFZF)V
    .locals 8
    .param p1, "focusX"    # F
    .param p2, "focusY"    # F
    .param p3, "isDoubleTap"    # Z
    .param p4, "s"    # F

    .prologue
    .line 250
    if-eqz p3, :cond_3

    .line 252
    iget v1, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    .line 253
    .local v1, "origScale":F
    div-float v0, p4, v1

    .line 254
    .local v0, "mScaleFactor":F
    iput p4, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    .line 269
    :cond_0
    :goto_0
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    iget v6, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantXSpace:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->right:F

    .line 270
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    iget v6, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantYSpace:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->bottom:F

    .line 271
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->origWidth:F

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    cmpg-float v4, v4, v5

    if-lez v4, :cond_1

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->origHeight:F

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_8

    .line 272
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v6, p0, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 273
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    .line 274
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->m:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 275
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->m:[F

    const/4 v5, 0x2

    aget v2, v4, v5

    .line 276
    .local v2, "x":F
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->m:[F

    const/4 v5, 0x5

    aget v3, v4, v5

    .line 277
    .local v3, "y":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    .line 278
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->origWidth:F

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    .line 279
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->bottom:F

    neg-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_5

    .line 280
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    iget v6, p0, Lcom/liquable/nemo/widget/TouchImageView;->bottom:F

    add-float/2addr v6, v3

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 311
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    :goto_1
    return-void

    .line 258
    .end local v0    # "mScaleFactor":F
    .end local v1    # "origScale":F
    :cond_3
    move v0, p4

    .line 259
    .restart local v0    # "mScaleFactor":F
    iget v1, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    .line 260
    .restart local v1    # "origScale":F
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    .line 261
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->maxScale:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 262
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->maxScale:F

    iput v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    .line 263
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->maxScale:F

    div-float v0, v4, v1

    goto/16 :goto_0

    .line 264
    :cond_4
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->minScale:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 265
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->minScale:F

    iput v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    .line 266
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->minScale:F

    div-float v0, v4, v1

    goto/16 :goto_0

    .line 281
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :cond_5
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 282
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    neg-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 285
    :cond_6
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->right:F

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_7

    .line 286
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->right:F

    add-float/2addr v5, v2

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 287
    :cond_7
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 288
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 294
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_8
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0, p1, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 295
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->m:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 296
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->m:[F

    const/4 v5, 0x2

    aget v2, v4, v5

    .line 297
    .restart local v2    # "x":F
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->m:[F

    const/4 v5, 0x5

    aget v3, v4, v5

    .line 298
    .restart local v3    # "y":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2

    .line 299
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->right:F

    neg-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_a

    .line 300
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->right:F

    add-float/2addr v5, v2

    neg-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 304
    :cond_9
    :goto_2
    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->bottom:F

    neg-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_b

    .line 305
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    iget v6, p0, Lcom/liquable/nemo/widget/TouchImageView;->bottom:F

    add-float/2addr v6, v3

    neg-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1

    .line 301
    :cond_a
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_9

    .line 302
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    neg-float v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 306
    :cond_b
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 307
    iget-object v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    neg-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/TouchImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 202
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 203
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 204
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 210
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/widget/TouchImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 216
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 217
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    .line 218
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    .line 221
    iget v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmWidth:F

    div-float v1, v3, v4

    .line 222
    .local v1, "scaleX":F
    iget v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmHeight:F

    div-float v2, v3, v4

    .line 223
    .local v2, "scaleY":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 224
    .local v0, "scale":F
    iget-object v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 225
    iget-object v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/widget/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 226
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    .line 229
    iget v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmHeight:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantYSpace:F

    .line 230
    iget v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmWidth:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantXSpace:F

    .line 231
    iget v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantYSpace:F

    div-float/2addr v3, v6

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantYSpace:F

    .line 232
    iget v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantXSpace:F

    div-float/2addr v3, v6

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantXSpace:F

    .line 234
    iget-object v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantXSpace:F

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantYSpace:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 236
    iget v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantXSpace:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->origWidth:F

    .line 237
    iget v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantYSpace:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->origHeight:F

    .line 238
    iget v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->width:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantXSpace:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->right:F

    .line 239
    iget v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->height:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/liquable/nemo/widget/TouchImageView;->redundantYSpace:F

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/liquable/nemo/widget/TouchImageView;->saveScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->bottom:F

    .line 240
    iget-object v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/widget/TouchImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 241
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 316
    if-nez p1, :cond_0

    .line 317
    iput v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmWidth:F

    .line 318
    iput v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmHeight:F

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmWidth:F

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmHeight:F

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 332
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_0

    .line 345
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 336
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 337
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 338
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 339
    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmWidth:F

    .line 340
    iput v3, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmHeight:F

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmWidth:F

    .line 344
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/liquable/nemo/widget/TouchImageView;->bmHeight:F

    goto :goto_0
.end method

.method public setMaxZoom(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 348
    iput p1, p0, Lcom/liquable/nemo/widget/TouchImageView;->maxScale:F

    .line 349
    return-void
.end method

.method public final setTouchImageViewListener(Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;)V
    .locals 0
    .param p1, "touchImageViewListener"    # Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/liquable/nemo/widget/TouchImageView;->touchImageViewListener:Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;

    .line 353
    return-void
.end method
