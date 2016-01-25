.class Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$3;
.super Ljava/lang/Object;
.source "VoiceMessageRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 173
    iput-object p1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$3;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$3;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$200(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$3;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->voiceFile:Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$500(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$3;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->duration:J
    invoke-static {v2}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$000(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;->onComplete(Ljava/io/File;J)V

    .line 177
    return-void
.end method
