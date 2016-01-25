.class Lcom/liquable/nemo/main/MainCameraView$3;
.super Landroid/view/OrientationEventListener;
.source "MainCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainCameraView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainCameraView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainCameraView;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainCameraView;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 310
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$3;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 314
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView$3;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 320
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 321
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView$3;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->cameraId:I
    invoke-static {v2}, Lcom/liquable/nemo/main/MainCameraView;->access$400(Lcom/liquable/nemo/main/MainCameraView;)I

    move-result v2

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 322
    add-int/lit8 v2, p1, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 p1, v2, 0x5a

    .line 323
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView$3;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    const/4 v3, 0x0

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->rotation:I
    invoke-static {v2, v3}, Lcom/liquable/nemo/main/MainCameraView;->access$502(Lcom/liquable/nemo/main/MainCameraView;I)I

    .line 324
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 325
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView$3;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, p1

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v3, v3, 0x168

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->rotation:I
    invoke-static {v2, v3}, Lcom/liquable/nemo/main/MainCameraView;->access$502(Lcom/liquable/nemo/main/MainCameraView;I)I

    .line 329
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView$3;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 330
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView$3;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->rotation:I
    invoke-static {v2}, Lcom/liquable/nemo/main/MainCameraView;->access$500(Lcom/liquable/nemo/main/MainCameraView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 331
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView$3;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 327
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView$3;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, p1

    rem-int/lit16 v3, v3, 0x168

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->rotation:I
    invoke-static {v2, v3}, Lcom/liquable/nemo/main/MainCameraView;->access$502(Lcom/liquable/nemo/main/MainCameraView;I)I

    goto :goto_1
.end method
