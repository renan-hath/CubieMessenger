.class Lcom/liquable/nemo/voip/VoipDaemon$1;
.super Ljava/lang/Object;
.source "VoipDaemon.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/VoipDaemon;->checkingVoiceMessageRecorderSync(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/VoipDaemon;

.field final synthetic val$voiceMessageRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/VoipDaemon;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/VoipDaemon;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/liquable/nemo/voip/VoipDaemon$1;->this$0:Lcom/liquable/nemo/voip/VoipDaemon;

    iput-object p2, p0, Lcom/liquable/nemo/voip/VoipDaemon$1;->val$voiceMessageRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon$1;->val$voiceMessageRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon$1;->val$voiceMessageRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon$1;->val$voiceMessageRecorder:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;->stopPlay()V

    .line 117
    # getter for: Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/VoipDaemon;->access$000()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "voice message recorder is playing, force stop"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 119
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/VoipDaemon$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
