.class public Lcom/aviary/android/feather/library/services/drag/DragView;
.super Landroid/view/View;
.source "DragView.java"

# interfaces
.implements Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;


# instance fields
.field private mAnimationScale:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDefaultPaint:Landroid/graphics/Paint;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mPaint:Landroid/graphics/Paint;

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mScale:F

.field private mTextureHeight:I

.field private mTextureWidth:I

.field private mTween:Lcom/aviary/android/feather/library/utils/EasingManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "registrationX"    # I
    .param p4, "registrationY"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mAnimationScale:F

    .line 61
    move/from16 v0, p7

    iput v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mTextureWidth:I

    .line 62
    move/from16 v0, p8

    iput v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mTextureHeight:I

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mDefaultPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mDefaultPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mWindowManager:Landroid/view/WindowManager;

    .line 68
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/library/services/drag/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 70
    new-instance v1, Lcom/aviary/android/feather/library/utils/EasingManager;

    invoke-direct {v1, p0}, Lcom/aviary/android/feather/library/utils/EasingManager;-><init>(Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;)V

    iput-object v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mTween:Lcom/aviary/android/feather/library/utils/EasingManager;

    .line 72
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 73
    .local v6, "scale":Landroid/graphics/Matrix;
    move/from16 v0, p7

    int-to-float v8, v0

    .line 74
    .local v8, "scaleFactor":F
    const/4 v1, 0x0

    add-float/2addr v1, v8

    div-float v8, v1, v8

    iput v8, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mScale:F

    .line 75
    invoke-virtual {v6, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 77
    const/4 v7, 0x0

    move-object v1, p2

    move v2, p5

    move v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 80
    add-int/lit8 v1, p3, 0x0

    iput v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mRegistrationX:I

    .line 81
    add-int/lit8 v1, p4, 0x0

    iput v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mRegistrationY:I

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/aviary/android/feather/library/services/drag/DragView;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mScale:F

    return v0
.end method

.method static synthetic access$1(Lcom/aviary/android/feather/library/services/drag/DragView;F)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mAnimationScale:F

    return-void
.end method

.method static synthetic access$2(Lcom/aviary/android/feather/library/services/drag/DragView;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3(Lcom/aviary/android/feather/library/services/drag/DragView;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method


# virtual methods
.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mScale:F

    return v0
.end method

.method public move(II)V
    .locals 2
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 185
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mRegistrationX:I

    sub-int v1, p1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 186
    iget v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mRegistrationY:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 187
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 116
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    .line 120
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 96
    iget v7, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mAnimationScale:F

    .line 97
    .local v7, "scale":F
    const v0, 0x3f7fbe77    # 0.999f

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    .line 98
    iget v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mTextureWidth:I

    int-to-float v8, v0

    .line 99
    .local v8, "width":F
    mul-float v0, v8, v7

    sub-float v0, v8, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v0, v2

    .line 100
    .local v6, "offset":F
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 104
    .end local v6    # "offset":F
    .end local v8    # "width":F
    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string/jumbo v0, "DragView"

    const-string/jumbo v2, "invalid bitmap or recycled bitmap"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mTextureWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mTextureHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mDefaultPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onEasingFinished(D)V
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 133
    return-void
.end method

.method public onEasingStarted(D)V
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 130
    return-void
.end method

.method public onEasingValueChanged(DD)V
    .locals 4
    .param p1, "value"    # D
    .param p3, "oldValue"    # D

    .prologue
    .line 124
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget v2, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    iget v2, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mScale:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mAnimationScale:F

    .line 125
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mPaint:Landroid/graphics/Paint;

    const-wide v1, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/drag/DragView;->invalidate()V

    .line 127
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/aviary/android/feather/library/services/drag/DragView;->setMeasuredDimension(II)V

    .line 91
    return-void
.end method

.method public remove(Z)V
    .locals 9
    .param p1, "animate"    # Z

    .prologue
    .line 191
    move-object v8, p0

    .line 193
    .local v8, "view":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 195
    new-instance v0, Lcom/aviary/android/feather/library/utils/EasingManager;

    new-instance v1, Lcom/aviary/android/feather/library/services/drag/DragView$1;

    invoke-direct {v1, p0, v8}, Lcom/aviary/android/feather/library/services/drag/DragView$1;-><init>(Lcom/aviary/android/feather/library/services/drag/DragView;Landroid/view/View;)V

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/library/utils/EasingManager;-><init>(Lcom/aviary/android/feather/library/utils/EasingManager$EasingCallback;)V

    .line 213
    .local v0, "manager":Lcom/aviary/android/feather/library/utils/EasingManager;
    const-class v1, Lit/sephiroth/android/library/imagezoom/easing/Quint;

    sget-object v2, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseIn:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const/16 v7, 0xfa

    invoke-virtual/range {v0 .. v7}, Lcom/aviary/android/feather/library/utils/EasingManager;->start(Ljava/lang/Class;Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;DDI)V

    .line 229
    .end local v0    # "manager":Lcom/aviary/android/feather/library/utils/EasingManager;
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/drag/DragView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/drag/DragView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/aviary/android/feather/library/services/drag/DragView$2;

    invoke-direct {v2, p0, v8}, Lcom/aviary/android/feather/library/services/drag/DragView$2;-><init>(Lcom/aviary/android/feather/library/services/drag/DragView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/drag/DragView;->mPaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {p0}, Lcom/aviary/android/feather/library/services/drag/DragView;->invalidate()V

    .line 138
    return-void
.end method

.method public show(Landroid/os/IBinder;IIZ)V
    .locals 17
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "touchX"    # I
    .param p3, "touchY"    # I
    .param p4, "animate"    # Z

    .prologue
    .line 154
    const/4 v8, -0x3

    .line 156
    .local v8, "pixelFormat":I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/aviary/android/feather/library/services/drag/DragView;->mRegistrationX:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/aviary/android/feather/library/services/drag/DragView;->mRegistrationY:I

    sub-int v5, p3, v5

    const/16 v6, 0x3ea

    .line 157
    const/16 v7, 0x300

    .line 156
    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 160
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 161
    move-object/from16 v0, p1

    iput-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 162
    const-string/jumbo v2, "DragView"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/aviary/android/feather/library/services/drag/DragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/aviary/android/feather/library/services/drag/DragView;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    if-eqz p4, :cond_0

    .line 168
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/aviary/android/feather/library/services/drag/DragView;->mScale:F

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/aviary/android/feather/library/services/drag/DragView;->mAnimationScale:F

    .line 169
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/aviary/android/feather/library/services/drag/DragView;->mTween:Lcom/aviary/android/feather/library/utils/EasingManager;

    const-class v10, Lit/sephiroth/android/library/imagezoom/easing/Linear;

    sget-object v11, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseOut:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const/16 v16, 0xc8

    invoke-virtual/range {v9 .. v16}, Lcom/aviary/android/feather/library/utils/EasingManager;->start(Ljava/lang/Class;Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;DDI)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/aviary/android/feather/library/services/drag/DragView;->onEasingValueChanged(DD)V

    goto :goto_0
.end method
