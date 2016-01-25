.class Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;
.super Ljava/lang/Object;
.source "VoiceMessageRecorder.java"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 106
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 5
    .param p1, "recorder"    # Landroid/media/AudioRecord;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->startTime:J
    invoke-static {v3}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$100(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    # setter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->duration:J
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$002(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;J)J

    .line 111
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$200(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$200(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->duration:J
    invoke-static {v1}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$000(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;->onProgress(J)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->duration:J
    invoke-static {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$000(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->maxDuration:J
    invoke-static {v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$300(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$1;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->stopRecord()V

    .line 117
    :cond_1
    return-void
.end method
