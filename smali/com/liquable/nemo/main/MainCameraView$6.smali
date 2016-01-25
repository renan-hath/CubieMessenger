.class Lcom/liquable/nemo/main/MainCameraView$6;
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
    .line 482
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 485
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->isRecording:Z
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1600(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->startRecordTime:J
    invoke-static {v2}, Lcom/liquable/nemo/main/MainCameraView;->access$1700(Lcom/liquable/nemo/main/MainCameraView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->stopRecording()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1800(Lcom/liquable/nemo/main/MainCameraView;)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->photoTaken:Z
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1000(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    sget-object v0, Lcom/liquable/nemo/main/MainCameraView;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "start recording"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->prepareVideoRecorder()Z
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1900(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 499
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->isRecording:Z
    invoke-static {v0, v4}, Lcom/liquable/nemo/main/MainCameraView;->access$1602(Lcom/liquable/nemo/main/MainCameraView;Z)Z

    .line 500
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->setButtonsWithRecording()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$2000(Lcom/liquable/nemo/main/MainCameraView;)V

    .line 504
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->mediaRecorder:Landroid/media/MediaRecorder;
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$2100(Lcom/liquable/nemo/main/MainCameraView;)Landroid/media/MediaRecorder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 505
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->photoTaken:Z
    invoke-static {v0, v4}, Lcom/liquable/nemo/main/MainCameraView;->access$1002(Lcom/liquable/nemo/main/MainCameraView;Z)Z

    .line 506
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->startRecordTime:J
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/main/MainCameraView;->access$1702(Lcom/liquable/nemo/main/MainCameraView;J)J

    .line 507
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    const-wide/16 v1, 0x0

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->updateDuration(J)V
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/main/MainCameraView;->access$2200(Lcom/liquable/nemo/main/MainCameraView;J)V

    .line 508
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->setTimerToUpdateDuration()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$2300(Lcom/liquable/nemo/main/MainCameraView;)V

    goto :goto_0

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$6;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->releaseMediaRecorder()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$2400(Lcom/liquable/nemo/main/MainCameraView;)V

    goto :goto_0
.end method
