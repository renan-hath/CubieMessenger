.class Lcom/liquable/nemo/voip/audio/VoicePlayer$1;
.super Ljava/lang/Object;
.source "VoicePlayer.java"

# interfaces
.implements Lcom/liquable/nemo/voip/audio/PcmAudioPlayer$PcmPlayedListender;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/voip/audio/VoicePlayer;-><init>(Lcom/liquable/nemo/opus/VoiceDecoder;Lcom/liquable/nemo/voip/event/EventSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/voip/audio/VoicePlayer;

.field final synthetic val$voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/voip/audio/VoicePlayer;Lcom/liquable/nemo/opus/VoiceDecoder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/voip/audio/VoicePlayer;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer$1;->this$0:Lcom/liquable/nemo/voip/audio/VoicePlayer;

    iput-object p2, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer$1;->val$voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPcmPlayed(Ljava/nio/ShortBuffer;)V
    .locals 1
    .param p1, "pcmAudioSamples"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/VoicePlayer$1;->val$voiceDecoder:Lcom/liquable/nemo/opus/VoiceDecoder;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/opus/VoiceDecoder;->recycle(Ljava/nio/ShortBuffer;)V

    .line 38
    return-void
.end method
