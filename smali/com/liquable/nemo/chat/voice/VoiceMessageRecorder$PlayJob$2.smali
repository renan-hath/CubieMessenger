.class Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$2;
.super Ljava/lang/Object;
.source "VoiceMessageRecorder.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$2;->this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "track"    # Landroid/media/AudioTrack;

    .prologue
    .line 299
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 5
    .param p1, "track"    # Landroid/media/AudioTrack;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$2;->this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$2;->this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->startTime:J
    invoke-static {v3}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->access$800(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    # setter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->duration:J
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->access$702(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;J)J

    .line 304
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$2;->this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->onAudioPlayProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->access$600(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$2;->this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->onAudioPlayProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->access$600(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$2;->this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->duration:J
    invoke-static {v1}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->access$700(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;->onProgress(J)V

    .line 307
    :cond_0
    return-void
.end method
