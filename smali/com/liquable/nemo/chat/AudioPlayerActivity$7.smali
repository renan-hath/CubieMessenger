.class Lcom/liquable/nemo/chat/AudioPlayerActivity$7;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AudioPlayerActivity;->updateSeekBar()V
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
    .line 300
    iput-object p1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$500(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 310
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$400(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->timeFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$300(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$7;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->updateSeekBar()V

    goto :goto_0
.end method
