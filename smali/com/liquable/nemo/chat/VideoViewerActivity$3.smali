.class Lcom/liquable/nemo/chat/VideoViewerActivity$3;
.super Ljava/lang/Object;
.source "VideoViewerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 96
    iput-object p1, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$3;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$3;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/VideoViewerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->show()V

    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/chat/VideoViewerActivity$3;->this$0:Lcom/liquable/nemo/chat/VideoViewerActivity;

    const/4 v1, 0x1

    # setter for: Lcom/liquable/nemo/chat/VideoViewerActivity;->isPaused:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/VideoViewerActivity;->access$202(Lcom/liquable/nemo/chat/VideoViewerActivity;Z)Z

    .line 101
    return-void
.end method
