.class public Lcom/aviary/android/feather/library/graphics/Point2D;
.super Ljava/lang/Object;
.source "Point2D.java"


# direct methods
.method public static angle360(D)D
    .locals 4
    .param p0, "angle"    # D

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 51
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 52
    const-wide v0, -0x3f89800000000000L    # -360.0

    rem-double v0, p0, v0

    add-double p0, v0, v2

    .line 56
    :goto_0
    return-wide p0

    .line 54
    :cond_0
    rem-double/2addr p0, v2

    goto :goto_0
.end method

.method public static angleBetweenPoints(FFFFF)D
    .locals 8
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F
    .param p4, "snapAngle"    # F

    .prologue
    .line 42
    cmpl-float v4, p0, p2

    if-nez v4, :cond_0

    cmpl-float v4, p1, p3

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    .line 47
    :goto_0
    return-wide v4

    .line 44
    :cond_0
    sub-float v4, p0, p2

    float-to-double v4, v4

    sub-float v6, p1, p3

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    .line 45
    .local v2, "gradiant":D
    const/4 v4, 0x0

    cmpl-float v4, p4, v4

    if-lez v4, :cond_1

    float-to-double v4, p4

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, p4

    float-to-double v4, v4

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v2, v3}, Lcom/aviary/android/feather/library/graphics/Point2D;->degrees(D)D

    move-result-wide v0

    .line 47
    .local v0, "angle":D
    invoke-static {v0, v1}, Lcom/aviary/android/feather/library/graphics/Point2D;->angle360(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method public static angleBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 2
    .param p0, "pt0"    # Landroid/graphics/PointF;
    .param p1, "pt1"    # Landroid/graphics/PointF;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/aviary/android/feather/library/graphics/Point2D;->angleBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public static angleBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;F)D
    .locals 4
    .param p0, "pt0"    # Landroid/graphics/PointF;
    .param p1, "pt1"    # Landroid/graphics/PointF;
    .param p2, "snapAngle"    # F

    .prologue
    .line 84
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, v3, p2}, Lcom/aviary/android/feather/library/graphics/Point2D;->angleBetweenPoints(FFFFF)D

    move-result-wide v0

    return-wide v0
.end method

.method public static angleBetweenPoints([F[F)D
    .locals 5
    .param p0, "pt0"    # [F
    .param p1, "pt1"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    aget v0, p0, v2

    aget v1, p0, v3

    aget v2, p1, v2

    aget v3, p1, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/aviary/android/feather/library/graphics/Point2D;->angleBetweenPoints(FFFFF)D

    move-result-wide v0

    return-wide v0
.end method

.method public static degrees(D)D
    .locals 2
    .param p0, "radians"    # D

    .prologue
    .line 95
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static distance(FFFF)D
    .locals 6
    .param p0, "x2"    # F
    .param p1, "y2"    # F
    .param p2, "x1"    # F
    .param p3, "y1"    # F

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 129
    sub-float v0, p0, p2

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p1, p3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 4
    .param p0, "pt1"    # Landroid/graphics/PointF;
    .param p1, "pt2"    # Landroid/graphics/PointF;

    .prologue
    .line 112
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, v3}, Lcom/aviary/android/feather/library/graphics/Point2D;->distance(FFFF)D

    move-result-wide v0

    return-wide v0
.end method

.method public static distance([F[F)D
    .locals 4
    .param p0, "pt1"    # [F
    .param p1, "pt2"    # [F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    aget v0, p0, v2

    aget v1, p0, v3

    aget v2, p1, v2

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Lcom/aviary/android/feather/library/graphics/Point2D;->distance(FFFF)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLerp(Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;)V
    .locals 4
    .param p0, "pt1"    # Landroid/graphics/PointF;
    .param p1, "pt2"    # Landroid/graphics/PointF;
    .param p2, "t"    # F
    .param p3, "dstPoint"    # Landroid/graphics/PointF;

    .prologue
    .line 324
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 325
    return-void
.end method

.method public static grow(Landroid/graphics/RectF;FF)V
    .locals 3
    .param p0, "rect"    # Landroid/graphics/RectF;
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 334
    iget v0, p0, Landroid/graphics/RectF;->left:F

    div-float v1, p1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 335
    iget v0, p0, Landroid/graphics/RectF;->top:F

    div-float v1, p2, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 337
    iget v0, p0, Landroid/graphics/RectF;->right:F

    div-float v1, p1, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 338
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    div-float v1, p2, v2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 339
    return-void
.end method

.method public static hypotenuse(Landroid/graphics/RectF;)D
    .locals 6
    .param p0, "rect"    # Landroid/graphics/RectF;

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 133
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static intersection([Landroid/graphics/PointF;[Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 14
    .param p0, "a"    # [Landroid/graphics/PointF;
    .param p1, "b"    # [Landroid/graphics/PointF;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 253
    aget-object v8, p0, v9

    iget v0, v8, Landroid/graphics/PointF;->x:F

    .line 254
    .local v0, "x1":F
    aget-object v8, p0, v9

    iget v4, v8, Landroid/graphics/PointF;->y:F

    .line 255
    .local v4, "y1":F
    aget-object v8, p0, v10

    iget v1, v8, Landroid/graphics/PointF;->x:F

    .line 256
    .local v1, "x2":F
    aget-object v8, p0, v10

    iget v5, v8, Landroid/graphics/PointF;->y:F

    .line 258
    .local v5, "y2":F
    aget-object v8, p1, v9

    iget v2, v8, Landroid/graphics/PointF;->x:F

    .line 259
    .local v2, "x3":F
    aget-object v8, p1, v9

    iget v6, v8, Landroid/graphics/PointF;->y:F

    .line 260
    .local v6, "y3":F
    aget-object v8, p1, v10

    iget v3, v8, Landroid/graphics/PointF;->x:F

    .line 261
    .local v3, "x4":F
    aget-object v8, p1, v10

    iget v7, v8, Landroid/graphics/PointF;->y:F

    .line 263
    .local v7, "y4":F
    new-instance v8, Landroid/graphics/PointF;

    mul-float v9, v0, v5

    mul-float v10, v4, v1

    sub-float/2addr v9, v10

    sub-float v10, v2, v3

    mul-float/2addr v9, v10

    sub-float v10, v0, v1

    mul-float v11, v2, v7

    mul-float v12, v6, v3

    sub-float/2addr v11, v12

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    .line 264
    sub-float v10, v0, v1

    sub-float v11, v6, v7

    mul-float/2addr v10, v11

    sub-float v11, v4, v5

    sub-float v12, v2, v3

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    div-float/2addr v9, v10

    mul-float v10, v0, v5

    mul-float v11, v4, v1

    sub-float/2addr v10, v11

    sub-float v11, v6, v7

    mul-float/2addr v10, v11

    sub-float v11, v4, v5

    .line 265
    mul-float v12, v2, v7

    mul-float v13, v6, v3

    sub-float/2addr v12, v13

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    .line 266
    sub-float v11, v0, v1

    sub-float v12, v6, v7

    mul-float/2addr v11, v12

    sub-float v12, v4, v5

    sub-float v13, v2, v3

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    .line 263
    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v8
.end method

.method public static radians(D)D
    .locals 2
    .param p0, "degree"    # D

    .prologue
    .line 144
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static rotate(Landroid/graphics/PointF;D)V
    .locals 10
    .param p0, "point"    # Landroid/graphics/PointF;
    .param p1, "angle"    # D

    .prologue
    .line 207
    iget v4, p0, Landroid/graphics/PointF;->x:F

    .line 208
    .local v4, "x":F
    iget v5, p0, Landroid/graphics/PointF;->y:F

    .line 209
    .local v5, "y":F
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 210
    .local v0, "ca":D
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 211
    .local v2, "sa":D
    float-to-double v6, v4

    mul-double/2addr v6, v0

    float-to-double v8, v5

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Landroid/graphics/PointF;->x:F

    .line 212
    float-to-double v6, v4

    mul-double/2addr v6, v2

    float-to-double v8, v5

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    double-to-float v6, v6

    iput v6, p0, Landroid/graphics/PointF;->y:F

    .line 213
    return-void
.end method

.method public static rotate([Landroid/graphics/PointF;D)V
    .locals 2
    .param p0, "points"    # [Landroid/graphics/PointF;
    .param p1, "angle"    # D

    .prologue
    .line 156
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 159
    return-void

    .line 157
    :cond_0
    aget-object v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/aviary/android/feather/library/graphics/Point2D;->rotate(Landroid/graphics/PointF;D)V

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static translate(Landroid/graphics/PointF;FF)V
    .locals 1
    .param p0, "point"    # Landroid/graphics/PointF;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 242
    iget v0, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/PointF;->x:F

    .line 243
    iget v0, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/PointF;->y:F

    .line 244
    return-void
.end method

.method public static translate([Landroid/graphics/PointF;FF)V
    .locals 2
    .param p0, "points"    # [Landroid/graphics/PointF;
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 229
    return-void

    .line 227
    :cond_0
    aget-object v1, p0, v0

    invoke-static {v1, p1, p2}, Lcom/aviary/android/feather/library/graphics/Point2D;->translate(Landroid/graphics/PointF;FF)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
