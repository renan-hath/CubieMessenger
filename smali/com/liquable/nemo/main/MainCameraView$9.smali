.class Lcom/liquable/nemo/main/MainCameraView$9;
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
    .line 547
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$9;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 551
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "MainActivity.frontBackBtn"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$9;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    iget-object v1, p0, Lcom/liquable/nemo/main/MainCameraView$9;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->cameraId:I
    invoke-static {v1}, Lcom/liquable/nemo/main/MainCameraView;->access$400(Lcom/liquable/nemo/main/MainCameraView;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    rem-int/2addr v1, v2

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->cameraId:I
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainCameraView;->access$402(Lcom/liquable/nemo/main/MainCameraView;I)I

    .line 553
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$9;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainCameraView;->stop()V

    .line 554
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$9;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-virtual {v0}, Lcom/liquable/nemo/main/MainCameraView;->start()V

    .line 555
    return-void
.end method
