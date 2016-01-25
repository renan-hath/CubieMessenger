.class Lcom/liquable/nemo/chat/AudioPlayerActivity$1;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$1;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$1;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$1;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->playBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$100(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$1;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$1;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # invokes: Lcom/liquable/nemo/chat/AudioPlayerActivity;->playMusic()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$200(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V

    goto :goto_0
.end method
