.class Lcom/liquable/nemo/chat/VideoViewerActivity$7;
.super Ljava/lang/Object;
.source "VideoViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/VideoViewerActivity;->scheduleUpdateProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/VideoViewerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/VideoViewerActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$7;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$7;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/VideoViewerActivity;->updateProgress()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$600(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    .line 232
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$7;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/VideoViewerActivity;->isPaused:Z
    invoke-static {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$200(Lcom/liquable/nemo/chat/VideoViewerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$7;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/VideoViewerActivity;->scheduleUpdateProgress()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$700(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    .line 235
    :cond_0
    return-void
.end method
