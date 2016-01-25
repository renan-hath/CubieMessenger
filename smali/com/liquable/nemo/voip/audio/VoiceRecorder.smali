.class public Lcom/liquable/nemo/voip/audio/VoiceRecorder;
.super Ljava/lang/Object;
.source "VoiceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;,
        Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final eventSink:Lcom/liquable/nemo/voip/event/EventSink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final pcmAudioRecorder:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

.field private final recordedVoicePacketListener:Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;

.field private final voiceEncoder:Lcom/liquable/nemo/opus/VoiceEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/opus/VoiceEncoder;Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;Lcom/liquable/nemo/voip/event/EventSink;)V
    .locals 5
    .param p1, "voiceEncoder"    # Lcom/liquable/nemo/opus/VoiceEncoder;
    .param p2, "recordedVoicePacketListener"    # Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/opus/VoiceEncoder;",
            "Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;",
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, "eventSink":Lcom/liquable/nemo/voip/event/EventSink;, "Lcom/liquable/nemo/voip/event/EventSink<Lcom/liquable/nemo/voip/event/VoipEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->voiceEncoder:Lcom/liquable/nemo/opus/VoiceEncoder;

    .line 61
    iput-object p2, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->recordedVoicePacketListener:Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;

    .line 62
    iput-object p3, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    .line 63
    new-instance v0, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    const/16 v1, 0x1f40

    const/16 v2, 0x14

    new-instance v3, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/liquable/nemo/voip/audio/VoiceRecorder$EncodeAsVoicePacket;-><init>(Lcom/liquable/nemo/voip/audio/VoiceRecorder;Lcom/liquable/nemo/voip/audio/VoiceRecorder$1;)V

    invoke-direct {v0, v1, v2, v3, p3}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;-><init>(IILcom/liquable/nemo/voip/audio/PcmAudioRecorder$RecordedPcmFrameListener;Lcom/liquable/nemo/voip/event/EventSink;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->pcmAudioRecorder:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)Lcom/liquable/nemo/opus/VoiceEncoder;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->voiceEncoder:Lcom/liquable/nemo/opus/VoiceEncoder;

    return-object v0
.end method

.method static synthetic access$100()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->recordedVoicePacketListener:Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/voip/audio/VoiceRecorder;)Lcom/liquable/nemo/voip/event/EventSink;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->eventSink:Lcom/liquable/nemo/voip/event/EventSink;

    return-object v0
.end method


# virtual methods
.method public destroySync()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->pcmAudioRecorder:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->destroySync()V

    .line 71
    return-void
.end method

.method public initializeSync()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->pcmAudioRecorder:Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/audio/PcmAudioRecorder;->initializeSync()Z

    move-result v0

    return v0
.end method
