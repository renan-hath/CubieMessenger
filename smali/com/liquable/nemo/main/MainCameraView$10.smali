.class Lcom/liquable/nemo/main/MainCameraView$10;
.super Ljava/lang/Object;
.source "MainCameraView.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainCameraView;->prepareVideoRecorder()Z
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
    .line 618
    iput-object p1, p0, Lcom/liquable/nemo/main/MainCameraView$10;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 621
    const/16 v0, 0x320

    if-ne v0, p2, :cond_0

    .line 622
    iget-object v0, p0, Lcom/liquable/nemo/main/MainCameraView$10;->this$0:Lcom/liquable/nemo/main/MainCameraView;

    # invokes: Lcom/liquable/nemo/main/MainCameraView;->stopRecording()V
    invoke-static {v0}, Lcom/liquable/nemo/main/MainCameraView;->access$1800(Lcom/liquable/nemo/main/MainCameraView;)V

    .line 624
    :cond_0
    return-void
.end method
