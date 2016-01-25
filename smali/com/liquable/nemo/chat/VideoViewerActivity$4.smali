.class Lcom/liquable/nemo/chat/VideoViewerActivity$4;
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
    .line 103
    iput-object p1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$4;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$4;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    # invokes: Lcom/liquable/nemo/chat/VideoViewerActivity;->stopVideo()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$000(Lcom/liquable/nemo/chat/VideoViewerActivity;)V

    .line 107
    return-void
.end method
