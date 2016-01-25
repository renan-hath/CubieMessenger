.class public Lcom/liquable/nemo/main/CameraPreviewContainer;
.super Landroid/widget/FrameLayout;
.source "CameraPreviewContainer.java"


# static fields
.field private static FOCUS_TARGET_SIDE:I


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private focusTarget:Landroid/view/View;

.field private focusTargetX:I

.field private focusTargetY:I

.field private isVideoMode:Z

.field private left:I

.field private newPreviewHeight:I

.field private newPreviewWidth:I

.field private previewHeight:I

.field private previewWidth:I

.field private top:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x50

    sput v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->FOCUS_TARGET_SIDE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private getPreviewSizeForPhotoMode(II)Landroid/util/Pair;
    .locals 3
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget v0, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewWidth:I

    iput v0, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    .line 42
    iget v0, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewHeight:I

    iput v0, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    .line 43
    iget v0, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewWidth:I

    if-lt v0, p1, :cond_0

    .line 44
    iput p1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewHeight:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    .line 47
    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getPreviewSizeForVideoMode(II)Landroid/util/Pair;
    .locals 10
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 52
    iget v4, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewWidth:I

    iput v4, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    .line 53
    iget v4, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewHeight:I

    iput v4, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    .line 54
    int-to-double v4, p1

    mul-double/2addr v4, v8

    iget v6, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewWidth:I

    int-to-double v6, v6

    div-double v2, v4, v6

    .line 55
    .local v2, "wRatio":D
    int-to-double v4, p2

    mul-double/2addr v4, v8

    iget v6, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewHeight:I

    int-to-double v6, v6

    div-double v0, v4, v6

    .line 57
    .local v0, "hRatio":D
    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    .line 58
    mul-double v4, v8, v0

    iget v6, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    .line 59
    iput p2, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    .line 65
    :goto_0
    new-instance v4, Landroid/util/Pair;

    iget v5, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 61
    :cond_0
    mul-double v4, v8, v2

    iget v6, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    .line 62
    iput p1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    goto :goto_0
.end method


# virtual methods
.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getSurfaceSize()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public mapPointFromPreviewContainerToSurface(FF)Landroid/graphics/Point;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 73
    new-instance v0, Landroid/graphics/Point;

    float-to-int v1, p1

    iget v2, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->left:I

    sub-int/2addr v1, v2

    float-to-int v2, p2

    iget v3, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->top:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/main/CameraPreviewContainer;->getChildCount()I

    move-result v11

    if-lez v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->camera:Landroid/hardware/Camera;

    if-eqz v11, :cond_0

    .line 80
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/liquable/nemo/main/CameraPreviewContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 81
    .local v5, "previewSurface":Landroid/view/View;
    const v11, 0x7f0802d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/liquable/nemo/main/CameraPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 82
    .local v8, "topMask":Landroid/view/View;
    const v11, 0x7f0802d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/liquable/nemo/main/CameraPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "botMask":Landroid/view/View;
    const v11, 0x7f0802d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/liquable/nemo/main/CameraPreviewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTarget:Landroid/view/View;

    .line 85
    sub-int v10, p4, p2

    .line 86
    .local v10, "viewWidth":I
    sub-int v9, p5, p3

    .line 88
    .local v9, "viewHeight":I
    const/4 v4, 0x0

    .line 89
    .local v4, "newPreviewSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->isVideoMode:Z

    if-eqz v11, :cond_1

    .line 90
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/liquable/nemo/main/CameraPreviewContainer;->getPreviewSizeForVideoMode(II)Landroid/util/Pair;

    move-result-object v4

    .line 94
    :goto_0
    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    .line 95
    iget-object v11, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    .line 97
    move-object/from16 v0, p0

    iget v3, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    .line 98
    .local v3, "d":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewHeight:I

    sub-int/2addr v11, v9

    div-int/lit8 v7, v11, 0x2

    .line 99
    .local v7, "toCrop":I
    neg-int v11, v7

    move-object/from16 v0, p0

    iput v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->top:I

    .line 100
    add-int v2, v9, v7

    .line 101
    .local v2, "bottom":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->newPreviewWidth:I

    sub-int v11, v10, v11

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->left:I

    .line 102
    move-object/from16 v0, p0

    iget v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->left:I

    add-int v6, v11, v3

    .line 103
    .local v6, "right":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->left:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->top:I

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v12, v6, v13}, Landroid/view/View;->layout(IIII)V

    .line 104
    move-object/from16 v0, p0

    iget v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->left:I

    invoke-virtual {v1, v11, v9, v6, v2}, Landroid/view/View;->layout(IIII)V

    .line 105
    move-object/from16 v0, p0

    iget v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->left:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->top:I

    invoke-virtual {v5, v11, v12, v6, v2}, Landroid/view/View;->layout(IIII)V

    .line 107
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTarget:Landroid/view/View;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTargetX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTargetY:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTargetX:I

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/main/CameraPreviewContainer;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v16, Lcom/liquable/nemo/main/CameraPreviewContainer;->FOCUS_TARGET_SIDE:I

    invoke-static/range {v15 .. v16}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTargetY:I

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/main/CameraPreviewContainer;->getContext()Landroid/content/Context;

    move-result-object v16

    sget v17, Lcom/liquable/nemo/main/CameraPreviewContainer;->FOCUS_TARGET_SIDE:I

    invoke-static/range {v16 .. v17}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v16

    add-int v15, v15, v16

    .line 107
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 113
    .end local v1    # "botMask":Landroid/view/View;
    .end local v2    # "bottom":I
    .end local v3    # "d":I
    .end local v4    # "newPreviewSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5    # "previewSurface":Landroid/view/View;
    .end local v6    # "right":I
    .end local v7    # "toCrop":I
    .end local v8    # "topMask":Landroid/view/View;
    .end local v9    # "viewHeight":I
    .end local v10    # "viewWidth":I
    :cond_0
    return-void

    .line 92
    .restart local v1    # "botMask":Landroid/view/View;
    .restart local v4    # "newPreviewSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v5    # "previewSurface":Landroid/view/View;
    .restart local v8    # "topMask":Landroid/view/View;
    .restart local v9    # "viewHeight":I
    .restart local v10    # "viewWidth":I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v9}, Lcom/liquable/nemo/main/CameraPreviewContainer;->getPreviewSizeForPhotoMode(II)Landroid/util/Pair;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->camera:Landroid/hardware/Camera;

    .line 117
    return-void
.end method

.method public setFocusTargetPosition(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTarget:Landroid/view/View;

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_0
    iput p1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTargetX:I

    .line 124
    iput p2, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTargetY:I

    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTarget:Landroid/view/View;

    iget v1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTargetX:I

    iget v2, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTargetY:I

    iget v3, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTargetX:I

    .line 127
    invoke-virtual {p0}, Lcom/liquable/nemo/main/CameraPreviewContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/liquable/nemo/main/CameraPreviewContainer;->FOCUS_TARGET_SIDE:I

    invoke-static {v4, v5}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->focusTargetY:I

    .line 128
    invoke-virtual {p0}, Lcom/liquable/nemo/main/CameraPreviewContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/liquable/nemo/main/CameraPreviewContainer;->FOCUS_TARGET_SIDE:I

    invoke-static {v5, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v5

    add-int/2addr v4, v5

    .line 125
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public setIsVideoMode(Z)V
    .locals 0
    .param p1, "isVideoMode"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->isVideoMode:Z

    .line 133
    invoke-virtual {p0}, Lcom/liquable/nemo/main/CameraPreviewContainer;->requestLayout()V

    .line 134
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 138
    iput p2, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewWidth:I

    .line 139
    iput p1, p0, Lcom/liquable/nemo/main/CameraPreviewContainer;->previewHeight:I

    .line 140
    return-void
.end method
