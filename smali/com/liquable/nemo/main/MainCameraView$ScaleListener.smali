.class Lcom/liquable/nemo/main/MainCameraView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MainCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/main/MainCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainCameraView;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$ScaleListener;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/main/MainCameraView;Lcom/liquable/nemo/main/MainCameraView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p2, "x1"    # Lcom/liquable/nemo/main/MainCameraView$1;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainCameraView$ScaleListener;-><init>(Lcom/liquable/nemo/main/MainCameraView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 9
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v8, 0x1

    .line 104
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$ScaleListener;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v5

    if-nez v5, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v8

    .line 108
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    .line 110
    .local v3, "scale":F
    const v5, 0x3f8147ae    # 1.01f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_2

    .line 111
    const/4 v4, 0x1

    .line 117
    .local v4, "zoomOffset":I
    :goto_1
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$ScaleListener;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 118
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    .line 119
    .local v0, "currentZoom":I
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v5

    const/4 v6, 0x0

    add-int v7, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 120
    .local v1, "nextZoom":I
    if-eq v0, v1, :cond_0

    .line 123
    sget-object v5, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ">>> onScale:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " zoom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 125
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$ScaleListener;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 126
    move v0, v1

    .line 127
    goto :goto_0

    .line 112
    .end local v0    # "currentZoom":I
    .end local v1    # "nextZoom":I
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v4    # "zoomOffset":I
    :cond_2
    const v5, 0x3f7d70a4    # 0.99f

    cmpg-float v5, v3, v5

    if-gez v5, :cond_0

    .line 113
    const/4 v4, -0x1

    .restart local v4    # "zoomOffset":I
    goto :goto_1
.end method
