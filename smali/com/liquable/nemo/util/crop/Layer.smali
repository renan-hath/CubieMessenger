.class public abstract Lcom/liquable/nemo/util/crop/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# instance fields
.field mHeight:F

.field mHidden:Z

.field mWidth:F

.field mX:F

.field mY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mX:F

    .line 23
    iput v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mY:F

    .line 24
    iput v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mWidth:F

    .line 25
    iput v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mHeight:F

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mHidden:Z

    return-void
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public abstract generate(Lcom/liquable/nemo/util/crop/RenderView;Lcom/liquable/nemo/util/crop/RenderView$Lists;)V
.end method

.method public final getHeight()F
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mHeight:F

    return v0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mWidth:F

    return v0
.end method

.method public final getX()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mX:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mY:F

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mHidden:Z

    return v0
.end method

.method protected onHiddenChanged()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method protected onSizeChanged()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected onSurfaceCreated(Lcom/liquable/nemo/util/crop/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .param p1, "view"    # Lcom/liquable/nemo/util/crop/RenderView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    .line 60
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public renderBlended(Lcom/liquable/nemo/util/crop/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .param p1, "view"    # Lcom/liquable/nemo/util/crop/RenderView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    .line 66
    return-void
.end method

.method public renderOpaque(Lcom/liquable/nemo/util/crop/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .param p1, "view"    # Lcom/liquable/nemo/util/crop/RenderView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    .line 68
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mHidden:Z

    if-eq v0, p1, :cond_0

    .line 72
    iput-boolean p1, p0, Lcom/liquable/nemo/util/crop/Layer;->mHidden:Z

    .line 73
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/Layer;->onHiddenChanged()V

    .line 75
    :cond_0
    return-void
.end method

.method public final setPosition(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 78
    iput p1, p0, Lcom/liquable/nemo/util/crop/Layer;->mX:F

    .line 79
    iput p2, p0, Lcom/liquable/nemo/util/crop/Layer;->mY:F

    .line 80
    return-void
.end method

.method public final setSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 83
    iget v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/liquable/nemo/util/crop/Layer;->mHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    iput p1, p0, Lcom/liquable/nemo/util/crop/Layer;->mWidth:F

    .line 85
    iput p2, p0, Lcom/liquable/nemo/util/crop/Layer;->mHeight:F

    .line 86
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/Layer;->onSizeChanged()V

    .line 88
    :cond_1
    return-void
.end method

.method public update(Lcom/liquable/nemo/util/crop/RenderView;F)Z
    .locals 1
    .param p1, "view"    # Lcom/liquable/nemo/util/crop/RenderView;
    .param p2, "frameInterval"    # F

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method
