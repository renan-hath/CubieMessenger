.class Lcom/liquable/nemo/main/MainCameraView$7;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainCameraView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainCameraView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainCameraView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$7;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 521
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$7;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$7;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->photoTaken:Z
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1000(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$7;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->previewStarted:Z
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1100(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$7;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->photoTaken:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainCameraView;->access$1002(Lcom/liquable/nemo/main/MainCameraView;Z)Z

    .line 527
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$7;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->isFocusing:Z
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$800(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$7;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    iput-boolean v1, v0, Lcom/liquable/nemo/main/MainCameraView;->shouldTakePictureAfterFocus:Z

    .line 529
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "captureButton: isFocusing => shouldTakePictureAfterFocus"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_2
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "captureButton: takePicture"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$7;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->takePicture()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1500(Lcom/liquable/nemo/main/MainCameraView;)V

    goto :goto_0
.end method
