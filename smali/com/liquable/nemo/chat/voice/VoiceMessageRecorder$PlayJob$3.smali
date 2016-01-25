.class Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$3;
.super Ljava/lang/Object;
.source "VoiceMessageRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 328
    iput-object p1, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$3;->this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob$3;->this$0:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;

    # getter for: Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->onAudioPlayProgressListener:Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;
    invoke-static {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;->access$600(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$PlayJob;)Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder$OnAudioPlayProgressListener;->onComplete()V

    .line 332
    return-void
.end method
