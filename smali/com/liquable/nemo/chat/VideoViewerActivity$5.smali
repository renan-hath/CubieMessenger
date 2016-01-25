.class Lcom/liquable/nemo/chat/VideoViewerActivity$5;
.super Ljava/lang/Object;
.source "VideoViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/VideoViewerActivity;->initVideoView()V
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
    .line 109
    iput-object p1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$5;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$5;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$300(Lcom/liquable/nemo/chat/VideoViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekBackward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$5;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    # getter for: Lcom/liquable/nemo/chat/VideoViewerActivity;->videoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$300(Lcom/liquable/nemo/chat/VideoViewerActivity;)Landroid/widget/VideoView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 114
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$5;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/VideoViewerActivity;->playVideo()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$400(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    .line 116
    :cond_0
    return-void
.end method
