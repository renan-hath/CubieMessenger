.class Lcom/liquable/nemo/voip/session/VoipSession$1;
.super Ljava/lang/Object;
.source "VoipSession.java"

# interfaces
.implements Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/session/VoipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/session/VoipSession;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$1;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoicePacket(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "voicePacket"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$1;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->mute:Z
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$2700(Lcom/liquable/nemo/voip/session/VoipSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$1;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/voip/client/IVoipClient;->writeVoicePacket(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method
