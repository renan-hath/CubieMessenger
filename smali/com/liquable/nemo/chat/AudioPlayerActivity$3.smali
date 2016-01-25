.class Lcom/liquable/nemo/chat/AudioPlayerActivity$3;
.super Ljava/lang/Object;
.source "AudioPlayerActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AudioPlayerActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
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
    .line 205
    iput-object p1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$3;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$3;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->seekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$500(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$3;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 209
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$3;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->time:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$400(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$3;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->timeFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$300(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$3;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->mediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$000(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$3;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    # getter for: Lcom/liquable/nemo/chat/AudioPlayerActivity;->playBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$100(Lcom/liquable/nemo/chat/AudioPlayerActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f02017c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 211
    iget-object v0, p0, Lcom/liquable/nemo/chat/AudioPlayerActivity$3;->this$0:Lcom/liquable/nemo/chat/AudioPlayerActivity;

    const/4 v1, 0x1

    # invokes: Lcom/liquable/nemo/chat/AudioPlayerActivity;->nextMusic(Z)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/chat/AudioPlayerActivity;->access$600(Lcom/liquable/nemo/chat/AudioPlayerActivity;Z)V

    .line 212
    return-void
.end method
