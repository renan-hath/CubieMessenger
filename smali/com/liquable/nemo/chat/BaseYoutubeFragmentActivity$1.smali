.class Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$1;
.super Ljava/lang/Object;
.source "BaseYoutubeFragmentActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;


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
    .line 37
    iput-object p1, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$1;->this$0:Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullscreen(Z)V
    .locals 1
    .param p1, "isFullscreen"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$1;->this$0:Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

    # setter for: Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->isFullscreen:Z
    invoke-static {v0, p1}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->access$002(Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;Z)Z

    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity$1;->this$0:Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;

    # invokes: Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->doLayout()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;->access$100(Lcom/liquable/nemo/chat/BaseYoutubeFragmentActivity;)V

    .line 42
    return-void
.end method
