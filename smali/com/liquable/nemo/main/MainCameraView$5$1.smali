.class Lcom/liquable/nemo/main/MainCameraView$5$1;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainCameraView$5;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/main/MainCameraView$5;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainCameraView$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/main/MainCameraView$5;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$5$1;->this$1:Lcom/liquable/nemo/main/MainCameraView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$5$1;->this$1:Lcom/liquable/nemo/main/MainCameraView$5;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->isFocusing:Z
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$800(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 461
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "previewContainer.onTouch: onAutoFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " duplicated call => return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "previewContainer.onTouch: onAutoFocus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$5$1;->this$1:Lcom/liquable/nemo/main/MainCameraView$5;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->isFocusing:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainCameraView;->access$802(Lcom/liquable/nemo/main/MainCameraView;Z)Z

    .line 468
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$5$1;->this$1:Lcom/liquable/nemo/main/MainCameraView$5;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->focusTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1400(Lcom/liquable/nemo/main/MainCameraView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$5$1;->this$1:Lcom/liquable/nemo/main/MainCameraView$5;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    iget-boolean v0, v0, Lcom/liquable/nemo/main/MainCameraView;->shouldTakePictureAfterFocus:Z

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "previewContainer.onTouch: shouldTakePictureAfterFocus => takePicture"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$5$1;->this$1:Lcom/liquable/nemo/main/MainCameraView$5;

    iget-object v0, v0, Lcom/liquable/nemo/main/MainCameraView$5;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->takePicture()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1500(Lcom/liquable/nemo/main/MainCameraView;)V

    goto :goto_0
.end method
