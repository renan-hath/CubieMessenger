.class Lcom/liquable/nemo/chat/VideoViewerActivity$2;
.super Ljava/lang/Object;
.source "VideoViewerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 88
    iput-object p1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/VideoViewerActivity;->stopVideo()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$000(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$2;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/VideoViewerActivity;->playVideoWithExternalIntent()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$100(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
