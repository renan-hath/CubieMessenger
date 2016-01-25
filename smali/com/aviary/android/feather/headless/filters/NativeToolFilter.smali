.class public abstract Lcom/aviary/android/feather/headless/filters/NativeToolFilter;
.super Lcom/aviary/android/feather/headless/filters/NativeFilter;
.source "NativeToolFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;,
        Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;,
        Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;
    }
.end annotation


# instance fields
.field private mBitmapRect:Landroid/graphics/Rect;

.field private final mFirstAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

.field private final mType:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;

.field private n_ptr:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;)V
    .locals 2
    .param p1, "toolname"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;

    .prologue
    .line 40
    const-string/jumbo v0, "tools"

    invoke-direct {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeFilter;-><init>(Ljava/lang/String;)V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    .line 42
    iput-object p2, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mType:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;

    .line 43
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mType:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;

    invoke-virtual {v0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$NativeToolType;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->nativeCtor(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mBitmapRect:Landroid/graphics/Rect;

    .line 46
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mActions:Lcom/aviary/android/feather/headless/moa/MoaActionList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/headless/moa/MoaActionList;->get(I)Lcom/aviary/android/feather/headless/moa/MoaAction;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mFirstAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    .line 47
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mFirstAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "toolname"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public colorsplash_draw(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->valid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-wide v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->nativeColorSplash_Draw(JFF)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 119
    :cond_0
    return v0
.end method

.method public declared-synchronized dispose()V
    .locals 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-wide v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->nativeDispose(J)V

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public drawStart(FFFF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "angle"    # F

    .prologue
    const/4 v7, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-wide v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->nativeDrawStart(JFFFF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    :cond_0
    move v0, v7

    .line 110
    goto :goto_0

    :cond_1
    move v0, v7

    .line 112
    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->dispose()V

    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 159
    return-void
.end method

.method public init(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    const/4 v0, -0x1

    .line 74
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->valid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 77
    iget-wide v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->nativeInit(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 78
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mFirstAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v2, "previewsize"

    new-instance v3, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Lcom/aviary/android/feather/headless/moa/MoaPointParameter;-><init>(FF)V

    invoke-virtual {v1, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Lcom/aviary/android/feather/headless/moa/MoaParameter;)V

    .line 80
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v6, v6, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method native nativeColorSplash_Draw(JFF)I
.end method

.method native nativeCtor(Ljava/lang/String;)J
.end method

.method native nativeDispose(J)V
.end method

.method native nativeDrawStart(JFFFF)I
.end method

.method native nativeInit(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
.end method

.method native nativeRenderPreview(JIIII)I
.end method

.method native nativeSetColorSplashMode(JLjava/lang/String;)I
.end method

.method native nativeSetTiltShiftMode(JLjava/lang/String;)I
.end method

.method native nativeTiltShift_Draw(JFFFF)I
.end method

.method public renderPreview()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mBitmapRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mBitmapRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->renderPreview(IIII)Z

    move-result v0

    return v0
.end method

.method public renderPreview(IIII)Z
    .locals 7
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-wide v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->nativeRenderPreview(JIIII)I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public renderPreview(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 101
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->renderPreview(IIII)Z

    move-result v0

    return v0
.end method

.method public renderPreview(Landroid/graphics/RectF;)Z
    .locals 4
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 105
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->renderPreview(IIII)Z

    move-result v0

    return v0
.end method

.method public setColorSplashMode(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;)Z
    .locals 5
    .param p1, "mode"    # Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->valid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-wide v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    invoke-virtual {p1}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->nativeSetColorSplashMode(JLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 145
    :cond_0
    return v0
.end method

.method public setTiltShiftMode(Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;)Z
    .locals 5
    .param p1, "mode"    # Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->valid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mFirstAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v2, "tiltshiftmode"

    invoke-virtual {p1}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-wide v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    invoke-virtual {p1}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->nativeSetTiltShiftMode(JLjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 138
    :cond_0
    return v0
.end method

.method public tiltshift_draw(FFFF)Z
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "angle"    # F

    .prologue
    const/4 v7, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->valid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mFirstAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1, p1}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;F)V

    .line 125
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mFirstAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1, p2}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;F)V

    .line 126
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mFirstAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "radius"

    invoke-virtual {v0, v1, p3}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;F)V

    .line 127
    iget-object v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->mFirstAction:Lcom/aviary/android/feather/headless/moa/MoaAction;

    const-string/jumbo v1, "angle"

    invoke-virtual {v0, v1, p4}, Lcom/aviary/android/feather/headless/moa/MoaAction;->setValue(Ljava/lang/String;F)V

    .line 128
    iget-wide v1, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->nativeTiltShift_Draw(JFFFF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    move v0, v7

    .line 128
    goto :goto_0

    :cond_1
    move v0, v7

    .line 130
    goto :goto_0
.end method

.method public valid()Z
    .locals 4

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter;->n_ptr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
