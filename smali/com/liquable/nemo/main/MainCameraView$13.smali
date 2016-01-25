.class Lcom/liquable/nemo/main/MainCameraView$13;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Lcom/liquable/nemo/CameraPreview$OnPreviewStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainCameraView;->start()V
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
    .line 849
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$13;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$13;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    const/4 v1, 0x1

    # setter for: Lcom/liquable/nemo/main/MainCameraView;->previewStarted:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/main/MainCameraView;->access$1102(Lcom/liquable/nemo/main/MainCameraView;Z)Z

    .line 853
    return-void
.end method
