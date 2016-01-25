.class Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;
.super Ljava/lang/Object;
.source "YoutubeWidget.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/widget/YoutubeWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/widget/YoutubeWidget;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 6
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "errorReason"    # Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .prologue
    const/4 v5, 0x1

    .line 39
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->isUserRecoverableError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 41
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v2

    .line 40
    invoke-virtual {p2, v1, v2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->getErrorDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d01cc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 43
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 1
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "player"    # Lcom/google/android/youtube/player/YouTubePlayer;
    .param p3, "wasRestored"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    # setter for: Lcom/liquable/nemo/chat/widget/YoutubeWidget;->player:Lcom/google/android/youtube/player/YouTubePlayer;
    invoke-static {v0, p2}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->access$002(Lcom/liquable/nemo/chat/widget/YoutubeWidget;Lcom/google/android/youtube/player/YouTubePlayer;)Lcom/google/android/youtube/player/YouTubePlayer;

    .line 54
    new-instance v0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1$1;-><init>(Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;)V

    invoke-interface {p2, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->setOnFullscreenListener(Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V

    .line 61
    if-nez p3, :cond_0

    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/chat/widget/YoutubeWidget$1;->this$0:Lcom/liquable/nemo/chat/widget/YoutubeWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/widget/YoutubeWidget;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method
