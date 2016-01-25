.class Lcom/liquable/nemo/voip/session/VoipSession$2;
.super Ljava/lang/Object;
.source "VoipSession.java"

# interfaces
.implements Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;


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
    .line 882
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$2;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoicePacket([B)V
    .locals 1
    .param p1, "voicePacket"    # [B

    .prologue
    .line 885
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$2;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->player:Lcom/liquable/nemo/voip/audio/VoicePlayer;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$900(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/VoicePlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/voip/audio/VoicePlayer;->playVoicePacket([B)V

    .line 886
    return-void
.end method
