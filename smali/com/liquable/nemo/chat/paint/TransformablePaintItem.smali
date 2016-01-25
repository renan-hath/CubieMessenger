.class abstract Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
.super Ljava/lang/Object;
.source "TransformablePaintItem.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;
    }
.end annotation


# instance fields
.field private cachedHandleBitmap:Landroid/graphics/Bitmap;

.field private final context:Landroid/content/Context;

.field private final handlePaint:Landroid/graphics/Paint;

.field private movingPivot:Landroid/graphics/Point;

.field private rotation:F

.field private scale:F

.field private showHandle:Z

.field private startScaleRotateState:Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

.field private transforming:Z

.field protected visible:Z

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIFF)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "scale"    # F
    .param p5, "rotation"    # F

    .prologue
    const/4 v2, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->context:Landroid/content/Context;

    .line 55
    iput p2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->x:I

    .line 56
    iput p3, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->y:I

    .line 57
    iput p4, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    .line 58
    iput p5, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->rotation:F

    .line 59
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->movingPivot:Landroid/graphics/Point;

    .line 60
    iput-boolean v2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->visible:Z

    .line 61
    iput-boolean v2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->showHandle:Z

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->transforming:Z

    .line 63
    new-instance v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    invoke-direct {v0, p2, p3, p5, p4}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;-><init>(IIFF)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->startScaleRotateState:Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->handlePaint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->handlePaint:Landroid/graphics/Paint;

    const v1, 0x555555

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->handlePaint:Landroid/graphics/Paint;

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 70
    return-void
.end method

.method private drawHandle(Landroid/graphics/Canvas;FF)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cx"    # F
    .param p3, "cy"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 75
    iget-boolean v1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->showHandle:Z

    if-nez v1, :cond_0

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->loadHandleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 81
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    iget-object v2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->handlePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->transforming:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    iget v1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    div-float v1, v3, v1

    iget v2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    div-float v2, v3, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v3, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAbsoluteRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 95
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->x:I

    iget v2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->y:I

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->x:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->y:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private loadHandleBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->cachedHandleBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0204d2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->cachedHandleBitmap:Landroid/graphics/Bitmap;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->cachedHandleBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public abstract createForTransform(I)Lcom/liquable/nemo/chat/paint/TransformablePaintItem;
.end method

.method public final endTransform()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->transforming:Z

    .line 92
    return-void
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getHeight()I
.end method

.method protected final getRotation()F
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->rotation:F

    return v0
.end method

.method protected final getScale()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    return v0
.end method

.method protected abstract getWidth()I
.end method

.method protected final getX()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->x:I

    return v0
.end method

.method protected final getY()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->y:I

    return v0
.end method

.method public hitScaleRotateHandleTest(II)Z
    .locals 13
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v5, 0x0

    .line 123
    iget-boolean v6, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->showHandle:Z

    if-nez v6, :cond_0

    .line 148
    :goto_0
    return v5

    .line 127
    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 129
    .local v2, "matrix":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->getAbsoluteRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 132
    .local v3, "rect":Landroid/graphics/RectF;
    iget v6, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    iget v7, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 134
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 135
    iget-object v6, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->context:Landroid/content/Context;

    const/16 v7, 0x1c

    invoke-static {v6, v7}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v0

    .line 137
    .local v0, "halfWidth":I
    new-instance v1, Landroid/graphics/RectF;

    iget v6, v3, Landroid/graphics/RectF;->right:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v0

    sub-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/RectF;->right:F

    int-to-float v9, v0

    add-float/2addr v8, v9

    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v10, v0

    add-float/2addr v9, v10

    invoke-direct {v1, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 143
    .local v1, "handleRect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 144
    iget v6, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->rotation:F

    neg-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v2, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 145
    new-array v4, v12, [F

    fill-array-data v4, :array_0

    .line 146
    .local v4, "reverseRotated":[F
    new-array v6, v12, [F

    int-to-float v7, p1

    aput v7, v6, v5

    int-to-float v7, p2

    aput v7, v6, v11

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 148
    aget v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    aget v6, v4, v11

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    goto :goto_0

    .line 145
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public hitTest(II)Z
    .locals 10
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 152
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 154
    .local v0, "matrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->getAbsoluteRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 157
    .local v1, "rect":Landroid/graphics/RectF;
    iget v3, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    iget v4, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 158
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 162
    iget v3, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->rotation:F

    neg-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 163
    new-array v2, v9, [F

    fill-array-data v2, :array_0

    .line 164
    .local v2, "reverseRotated":[F
    new-array v3, v9, [F

    int-to-float v4, p1

    aput v4, v3, v7

    int-to-float v4, p2

    aput v4, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 166
    aget v3, v2, v7

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    aget v4, v2, v8

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    return v3

    .line 163
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->visible:Z

    return v0
.end method

.method public moveTo(II)V
    .locals 1
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->movingPivot:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->x:I

    .line 190
    iget-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->movingPivot:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p2, v0

    iput v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->y:I

    .line 191
    return-void
.end method

.method protected abstract onHide()V
.end method

.method protected abstract onPaint(Landroid/graphics/Canvas;Z)V
.end method

.method public final paint(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 205
    iget v1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 206
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 210
    .local v0, "relativeRect":Landroid/graphics/Rect;
    iget v1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    iget v2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 211
    iget v1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->rotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 213
    iget-boolean v1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->transforming:Z

    invoke-virtual {p0, p1, v1}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->onPaint(Landroid/graphics/Canvas;Z)V

    .line 215
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-direct {p0, p1, v1, v2}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->drawHandle(Landroid/graphics/Canvas;FF)V

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public scaleRotateTo(II)V
    .locals 18
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->getAbsoluteRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 222
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 223
    .local v1, "centerX":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 225
    .local v2, "centerY":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->startScaleRotateState:Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    # getter for: Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->startX:I
    invoke-static {v12}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->access$000(Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;)I

    move-result v12

    sub-int v12, v1, v12

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->startScaleRotateState:Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    # getter for: Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->startY:I
    invoke-static {v14}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->access$100(Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;)I

    move-result v14

    sub-int v14, v2, v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 228
    .local v10, "unitDistance":D
    sub-int v12, v1, p1

    int-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-int v14, v2, p2

    int-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 231
    .local v4, "targetDistance":D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->startScaleRotateState:Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    # getter for: Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->scale:F
    invoke-static {v12}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->access$200(Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;)F

    move-result v12

    float-to-double v12, v12

    mul-double/2addr v12, v4

    div-double/2addr v12, v10

    double-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->startScaleRotateState:Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    # getter for: Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->startY:I
    invoke-static {v12}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->access$100(Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;)I

    move-result v12

    sub-int/2addr v12, v2

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->startScaleRotateState:Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    .line 234
    # getter for: Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->startX:I
    invoke-static {v14}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->access$000(Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;)I

    move-result v14

    sub-int/2addr v14, v1

    int-to-double v14, v14

    .line 233
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 235
    .local v8, "theta":D
    sub-int v12, p2, v2

    int-to-double v12, v12

    sub-int v14, p1, v1

    int-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 237
    .local v6, "targetTheta":D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->startScaleRotateState:Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    # getter for: Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->rotation:F
    invoke-static {v12}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;->access$300(Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;)F

    move-result v12

    float-to-double v12, v12

    sub-double v14, v6, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    add-double/2addr v12, v14

    double-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->rotation:F

    .line 238
    return-void
.end method

.method public final setShowHandle(Z)V
    .locals 0
    .param p1, "showHandle"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->showHandle:Z

    .line 242
    return-void
.end method

.method public final setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->visible:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->cachedHandleBitmap:Landroid/graphics/Bitmap;

    .line 247
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->onHide()V

    .line 249
    :cond_0
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->visible:Z

    .line 250
    return-void
.end method

.method public final startMove(II)V
    .locals 3
    .param p1, "pivotX"    # I
    .param p2, "pivotY"    # I

    .prologue
    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->transforming:Z

    .line 260
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->x:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->y:I

    sub-int v2, p2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->movingPivot:Landroid/graphics/Point;

    .line 261
    return-void
.end method

.method public final startScaleRotate(II)V
    .locals 3
    .param p1, "startX"    # I
    .param p2, "startY"    # I

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->transforming:Z

    .line 265
    new-instance v0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    iget v1, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->rotation:F

    iget v2, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->scale:F

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;-><init>(IIFF)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/paint/TransformablePaintItem;->startScaleRotateState:Lcom/liquable/nemo/chat/paint/TransformablePaintItem$StartScaleRotateState;

    .line 266
    return-void
.end method
