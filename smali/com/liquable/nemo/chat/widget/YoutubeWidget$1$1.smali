.class Lcom/liquable/nemo/chat/widget/YoutubeWidget$1$1;
.super Ljava/lang/Object;
.source "YoutubeWidget.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;->onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1$1;->this$1:Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullscreen(Z)V
    .locals 1
    .param p1, "isFullscreen"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1$1;->this$1:Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;

    iget-object v0, v0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->setPressedFullScreen(Z)V

    .line 58
    return-void
.end method
