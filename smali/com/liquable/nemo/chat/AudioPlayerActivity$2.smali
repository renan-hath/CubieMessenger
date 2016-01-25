.class Lcom/liquable/nemo/chat/AudioPlayerActivity$2;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AudioPlayerActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isUserTouch:Z

.field final synthetic this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/AudioPlayerActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/AudioPlayerActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;->isUserTouch:Z

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;->isUserTouch:Z

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$400(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->timeFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$300(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

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

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;->isUserTouch:Z

    .line 99
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$2;->isUserTouch:Z

    .line 104
    return-void
.end method
