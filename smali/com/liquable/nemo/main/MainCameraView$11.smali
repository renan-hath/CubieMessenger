.class Lcom/liquable/nemo/main/MainCameraView$11;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainCameraView;->setAutoFlashMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainCameraView;

.field final synthetic val$flashModes:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainCameraView;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainCameraView;

    .prologue
    .line 665
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$11;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    iput-object p2, p0, Lcom/liquable/nemo/main/MainCameraView$11;->val$flashModes:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 668
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$11;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v5

    if-nez v5, :cond_0

    .line 684
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$11;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 672
    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 673
    .local v1, "currentMode":Ljava/lang/String;
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$11;->val$flashModes:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 675
    .local v0, "currentIndex":I
    move v2, v0

    .line 677
    .local v2, "nextIndex":I
    :cond_1
    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/liquable/nemo/main/MainCameraView$11;->val$flashModes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    rem-int v2, v5, v6

    .line 678
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$11;->val$flashModes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 679
    .local v3, "nextMode":Ljava/lang/String;
    # getter for: Lcom/liquable/nemo/main/MainCameraView;->acceptableFlashModes:Ljava/util/Map;
    invoke-static {}, Lcom/liquable/nemo/main/MainCameraView;->access$2500()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 680
    invoke-virtual {v4, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 681
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$11;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # getter for: Lcom/liquable/nemo/main/MainCameraView;->camera:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/liquable/nemo/main/MainCameraView;->access$000(Lcom/liquable/nemo/main/MainCameraView;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 682
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$11;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->lastFlashMode:Ljava/lang/String;
    invoke-static {v5, v3}, Lcom/liquable/nemo/main/MainCameraView;->access$2602(Lcom/liquable/nemo/main/MainCameraView;Ljava/lang/String;)Ljava/lang/String;

    .line 683
    iget-object v5, p0, Lcom/liquable/nemo/main/MainCameraView$11;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->updateFlashModeButton()V
    invoke-static {v5}, Lcom/liquable/nemo/main/MainCameraView;->access$2700(Lcom/liquable/nemo/main/MainCameraView;)V

    goto :goto_0
.end method
