.class Lcom/liquable/nemo/main/MainCameraView$12;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainCameraView;->setTimerToUpdateDuration()V
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
    .line 766
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$12;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 769
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$12;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->isRecording:Z
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1600(Lcom/liquable/nemo/main/MainCameraView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$12;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/liquable/nemo/main/MainCameraView$12;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->startRecordTime:J
    invoke-static {v3}, Lcom/liquable/nemo/main/MainCameraView;->access$1700(Lcom/liquable/nemo/main/MainCameraView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->updateDuration(J)V
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/main/MainCameraView;->access$2200(Lcom/liquable/nemo/main/MainCameraView;J)V

    .line 773
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$12;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->setTimerToUpdateDuration()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$2300(Lcom/liquable/nemo/main/MainCameraView;)V

    goto :goto_0
.end method
