.class public abstract Lcom/liquable/nemo/util/crop/RootLayer;
.super Lcom/liquable/nemo/util/crop/Layer;
.source "RootLayer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/Layer;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLowMemory()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 35
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onSensorChanged(Lcom/liquable/nemo/util/crop/RenderView;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p1, "view"    # Lcom/liquable/nemo/util/crop/RenderView;
    .param p2, "e"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 45
    return-void
.end method

.method public onSurfaceChanged(Lcom/liquable/nemo/util/crop/RenderView;II)V
    .locals 0
    .param p1, "view"    # Lcom/liquable/nemo/util/crop/RenderView;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 47
    return-void
.end method

.method public onSurfaceCreated(Lcom/liquable/nemo/util/crop/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .param p1, "renderView"    # Lcom/liquable/nemo/util/crop/RenderView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL11;

    .prologue
    .line 50
    return-void
.end method
