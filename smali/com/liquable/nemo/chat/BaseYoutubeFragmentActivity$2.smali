.class Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$2;
.super Ljava/lang/Object;
.source "BaseYoutubeFragmentActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$2;->this$0:Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

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

    .line 48
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->isUserRecoverableError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$2;->this$0:Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_YOUTUBE:Lcom/liquable/nemo/chat/ChattingRequestCode;

    .line 50
    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v2

    .line 49
    invoke-virtual {p2, v1, v2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->getErrorDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$2;->this$0:Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

    const v2, 0x7f0d01cc

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 53
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 52
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "errorMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$2;->this$0:Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

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
    .line 62
    if-nez p3, :cond_0

    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$2;->this$0:Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->addFullscreenControlFlag(I)V

    .line 65
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->addFullscreenControlFlag(I)V

    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$2;->this$0:Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

    # getter for: Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->onFullscreenListener:Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->access$200(Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;)Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->setOnFullscreenListener(Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V

    .line 68
    :cond_0
    return-void
.end method
