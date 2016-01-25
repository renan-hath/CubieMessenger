.class Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$2;
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

.field final synthetic val$db:F


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;F)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$2;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    iput p2, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$2;->val$db:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$2;->this$1:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->onAudioRecordProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;->access$200(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$AudioRecordJob$2;->val$db:F

    invoke-interface {v0, v1}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioRecordProgressListener;->onSignalLeveldB(F)V

    .line 154
    return-void
.end method
