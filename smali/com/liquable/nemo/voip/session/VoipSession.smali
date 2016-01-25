.class public Lcom/liquable/nemo/voip/session/VoipSession;
.super Ljava/lang/Object;
.source "VoipSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/session/VoipSession$State;,
        Lcom/liquable/nemo/voip/session/VoipSession$Receiving;,
        Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;,
        Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;,
        Lcom/liquable/nemo/voip/session/VoipSession$Dialing;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/voip/client/IVoipClient;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

.field private final forwardReceivedPacketToPlayer:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

.field private final forwardRecordedPacketToClient:Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;

.field private volatile mute:Z

.field private final player:Lcom/liquable/nemo/voip/audio/VoicePlayer;

.field private final recorder:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

.field private final soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

.field private final stateRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/voip/session/VoipSession$State;",
            ">;"
        }
    .end annotation
.end field

.field private final telephonyDetector:Lcom/liquable/nemo/voip/session/TelephonyDetector;

.field private final uid:Ljava/lang/String;

.field private final voipClientMultiConnectorRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 846
    const-class v0, Lcom/liquable/nemo/voip/session/VoipSession;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/session/VoipSession;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method private constructor <init>(Lcom/liquable/nemo/opus/VoiceEncoder;Lcom/liquable/nemo/opus/VoiceDecoder;Ljava/lang/String;Lcom/liquable/nemo/voip/session/VoipSessionListener;Landroid/content/Context;)V
    .locals 6
    .param p1, "voiceEncoder"    # Lcom/liquable/nemo/opus/VoiceEncoder;
    .param p2, "voiceDecoder"    # Lcom/liquable/nemo/opus/VoiceDecoder;
    .param p3, "uid"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/liquable/nemo/voip/session/VoipSessionListener;
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;->INSTANCE:Lcom/liquable/nemo/voip/client/IVoipClient$Dummy;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 852
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->INITIAL:Lcom/liquable/nemo/voip/session/VoipSession$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 855
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->voipClientMultiConnectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 872
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/session/VoipSession$1;-><init>(Lcom/liquable/nemo/voip/session/VoipSession;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->forwardRecordedPacketToClient:Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;

    .line 882
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/session/VoipSession$2;-><init>(Lcom/liquable/nemo/voip/session/VoipSession;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->forwardReceivedPacketToPlayer:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

    .line 896
    iput-object p3, p0, Lcom/liquable/nemo/voip/session/VoipSession;->uid:Ljava/lang/String;

    .line 897
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    invoke-direct {v0, p0, p4}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;-><init>(Lcom/liquable/nemo/voip/session/VoipSession;Lcom/liquable/nemo/voip/session/VoipSessionListener;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .line 899
    invoke-static {p5}, Lcom/liquable/nemo/voip/audio/VoipSounds;->createSoundEffect(Landroid/content/Context;)Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    .line 901
    new-instance v0, Lcom/liquable/nemo/voip/audio/VoicePlayer;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    invoke-direct {v0, p2, v1}, Lcom/liquable/nemo/voip/audio/VoicePlayer;-><init>(Lcom/liquable/nemo/opus/VoiceDecoder;Lcom/liquable/nemo/voip/event/EventSink;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->player:Lcom/liquable/nemo/voip/audio/VoicePlayer;

    .line 902
    new-instance v0, Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession;->forwardRecordedPacketToClient:Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    invoke-direct {v0, p1, v1, v2}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;-><init>(Lcom/liquable/nemo/opus/VoiceEncoder;Lcom/liquable/nemo/voip/audio/VoiceRecorder$RecordedVoicePacketListener;Lcom/liquable/nemo/voip/event/EventSink;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->recorder:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    .line 904
    iput-object p5, p0, Lcom/liquable/nemo/voip/session/VoipSession;->context:Landroid/content/Context;

    .line 906
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->voipClientMultiConnectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession;->forwardReceivedPacketToPlayer:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .line 908
    invoke-static {p5}, Lcom/liquable/nemo/util/DeviceUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nodeService:Lcom/liquable/nemo/client/service/NodeService;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;-><init>(Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;Lcom/liquable/nemo/voip/event/EventSink;Ljava/lang/String;Lcom/liquable/nemo/client/service/NodeService;)V

    .line 906
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 911
    new-instance v0, Lcom/liquable/nemo/voip/session/TelephonyDetector;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    invoke-direct {v0, p5, v1}, Lcom/liquable/nemo/voip/session/TelephonyDetector;-><init>(Landroid/content/Context;Lcom/liquable/nemo/voip/event/EventSink;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->telephonyDetector:Lcom/liquable/nemo/voip/session/TelephonyDetector;

    .line 912
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/session/VoipSession;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/session/TelephonyDetector;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->telephonyDetector:Lcom/liquable/nemo/voip/session/TelephonyDetector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->voipClientMultiConnectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/voip/session/VoipSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession;->destroyAudioSync()V

    return-void
.end method

.method static synthetic access$2000(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/liquable/nemo/voip/session/VoipSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession;->destoryAllExceptEventLoopSync()V

    return-void
.end method

.method static synthetic access$2400(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->uid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/liquable/nemo/voip/session/VoipSession;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->mute:Z

    return v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;
    .param p1, "x1"    # I
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/VoiceRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->recorder:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/VoicePlayer;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->player:Lcom/liquable/nemo/voip/audio/VoicePlayer;

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lcom/liquable/nemo/voip/session/VoipSessionListener;Landroid/content/Context;)Lcom/liquable/nemo/voip/session/VoipSession;
    .locals 6
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/liquable/nemo/voip/session/VoipSessionListener;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/opus/OpusException;
        }
    .end annotation

    .prologue
    .line 838
    invoke-static {}, Lcom/liquable/nemo/opus/OpusJniLoader;->loadShareLibrary()V

    .line 839
    new-instance v2, Lcom/liquable/nemo/opus/VoiceDecoder;

    invoke-direct {v2}, Lcom/liquable/nemo/opus/VoiceDecoder;-><init>()V

    .line 840
    .local v2, "voiceDecoder":Lcom/liquable/nemo/opus/VoiceDecoder;
    new-instance v1, Lcom/liquable/nemo/opus/VoiceEncoder;

    invoke-direct {v1}, Lcom/liquable/nemo/opus/VoiceEncoder;-><init>()V

    .line 843
    .local v1, "voiceEncoder":Lcom/liquable/nemo/opus/VoiceEncoder;
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/voip/session/VoipSession;-><init>(Lcom/liquable/nemo/opus/VoiceEncoder;Lcom/liquable/nemo/opus/VoiceDecoder;Ljava/lang/String;Lcom/liquable/nemo/voip/session/VoipSessionListener;Landroid/content/Context;)V

    return-object v0
.end method

.method private destoryAllExceptEventLoopSync()V
    .locals 1

    .prologue
    .line 935
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/voip/VoipDaemon;->deactivate(Lcom/liquable/nemo/voip/session/VoipSession;)V

    .line 937
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->telephonyDetector:Lcom/liquable/nemo/voip/session/TelephonyDetector;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/TelephonyDetector;->destroy()V

    .line 938
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession;->destroyAudioSync()V

    .line 939
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    invoke-interface {v0}, Lcom/liquable/nemo/voip/client/IVoipClient;->disconnectSync()V

    .line 940
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->voipClientMultiConnectorRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->destroySync()V

    .line 941
    return-void
.end method

.method private destroyAudioSync()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    invoke-interface {v0}, Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;->stopNow()V

    .line 945
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/liquable/nemo/voip/audio/VoipSounds;->restoreToAudioManagerNormalMode(Landroid/content/Context;)V

    .line 947
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->player:Lcom/liquable/nemo/voip/audio/VoicePlayer;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/audio/VoicePlayer;->destroySync()V

    .line 948
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->recorder:Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->destroySync()V

    .line 949
    return-void
.end method

.method private varargs getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 994
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$3;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/voip/session/VoipSession$3;-><init>(Lcom/liquable/nemo/voip/session/VoipSession;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->trySubmitTask(Ljava/lang/Runnable;)Z

    .line 923
    return-void
.end method

.method public canAcceptOrReject()Z
    .locals 2

    .prologue
    .line 926
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    .line 927
    .local v0, "current":Lcom/liquable/nemo/voip/session/VoipSession$State;
    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVED:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canTalk()Z
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroySync()V
    .locals 6

    .prologue
    .line 956
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 957
    .local v1, "lastTaskLatch":Ljava/util/concurrent/CountDownLatch;
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    new-instance v4, Lcom/liquable/nemo/voip/session/VoipSession$4;

    invoke-direct {v4, p0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$4;-><init>(Lcom/liquable/nemo/voip/session/VoipSession;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->trySubmitTask(Ljava/lang/Runnable;)Z

    move-result v2

    .line 965
    .local v2, "submitted":Z
    if-eqz v2, :cond_0

    .line 967
    const-wide/16 v3, 0x3

    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    invoke-virtual {v3}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->destroy()V

    .line 977
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession;->destoryAllExceptEventLoopSync()V

    .line 978
    sget-object v3, Lcom/liquable/nemo/voip/session/VoipSession;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "voip session destroyed"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 979
    return-void

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dialerUid"    # Ljava/lang/String;
    .param p2, "receiverUid"    # Ljava/lang/String;

    .prologue
    .line 982
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/liquable/nemo/voip/session/VoipSession$5;-><init>(Lcom/liquable/nemo/voip/session/VoipSession;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->trySubmitTask(Ljava/lang/Runnable;)Z

    .line 991
    return-void
.end method

.method public hangup()V
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$6;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/voip/session/VoipSession$6;-><init>(Lcom/liquable/nemo/voip/session/VoipSession;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->trySubmitTask(Ljava/lang/Runnable;)Z

    .line 1004
    return-void
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->mute:Z

    return v0
.end method

.method public receive(Lcom/liquable/nemo/voip/session/AnswerCall;)V
    .locals 2
    .param p1, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$7;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$7;-><init>(Lcom/liquable/nemo/voip/session/VoipSession;Lcom/liquable/nemo/voip/session/AnswerCall;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->trySubmitTask(Ljava/lang/Runnable;)Z

    .line 1019
    return-void
.end method

.method public reject()V
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession;->eventLoop:Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$8;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/voip/session/VoipSession$8;-><init>(Lcom/liquable/nemo/voip/session/VoipSession;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->trySubmitTask(Ljava/lang/Runnable;)Z

    .line 1030
    return-void
.end method

.method public requireProximity()Z
    .locals 2

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    .line 1039
    .local v0, "state":Lcom/liquable/nemo/voip/session/VoipSession$State;
    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->DIALING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 1043
    iput-boolean p1, p0, Lcom/liquable/nemo/voip/session/VoipSession;->mute:Z

    .line 1044
    return-void
.end method
