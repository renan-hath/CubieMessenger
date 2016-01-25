.class public Lcom/liquable/nemo/voip/session/AnswerBusySession;
.super Ljava/lang/Object;
.source "AnswerBusySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;,
        Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;

.field private final client:Lcom/liquable/nemo/voip/client/VoipClient;

.field private final completerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;",
            ">;"
        }
    .end annotation
.end field

.field private final eventLoop:Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/liquable/nemo/voip/session/AnswerBusySession;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/liquable/nemo/voip/session/AnswerCall;)V
    .locals 3
    .param p1, "uniqueDeviceId"    # Ljava/lang/String;
    .param p2, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->completerRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    iput-object p2, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;

    .line 67
    new-instance v0, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;-><init>(Lcom/liquable/nemo/voip/session/AnswerBusySession;Lcom/liquable/nemo/voip/session/AnswerBusySession$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->eventLoop:Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;

    .line 68
    new-instance v0, Lcom/liquable/nemo/voip/client/VoipClient;

    sget-object v1, Lcom/liquable/nemo/voip/client/VoipClient;->DUMMY_PACKET_LINSTENER:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->eventLoop:Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;

    invoke-direct {v0, v1, v2, p1}, Lcom/liquable/nemo/voip/client/VoipClient;-><init>(Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;Lcom/liquable/nemo/voip/event/EventSink;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->client:Lcom/liquable/nemo/voip/client/VoipClient;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/session/AnswerBusySession;)Lcom/liquable/nemo/voip/session/AnswerCall;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/AnswerBusySession;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/voip/session/AnswerBusySession;)Lcom/liquable/nemo/voip/client/VoipClient;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/AnswerBusySession;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->client:Lcom/liquable/nemo/voip/client/VoipClient;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/voip/session/AnswerBusySession;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/AnswerBusySession;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->completerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public destroySync()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->completerRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->eventLoop:Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/AnswerBusySession$EventLoop;->destroy()V

    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->client:Lcom/liquable/nemo/voip/client/VoipClient;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/client/VoipClient;->disconnectSync()V

    .line 75
    sget-object v0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "answer busy destroyed"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public start()Ljava/util/concurrent/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 84
    new-instance v0, Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;-><init>()V

    .line 85
    .local v0, "completer":Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;
    iget-object v3, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->completerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    .line 93
    .end local v0    # "completer":Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;
    :goto_0
    return-object v0

    .line 90
    .restart local v0    # "completer":Lcom/liquable/nemo/voip/session/AnswerBusySession$Completer;
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->answerCall:Lcom/liquable/nemo/voip/session/AnswerCall;

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/session/AnswerCall;->getIpAddressWithPort()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/util/ServerRegions$Server;->parse(Ljava/lang/String;)Lcom/liquable/nemo/util/ServerRegions$Server;

    move-result-object v1

    .line 91
    .local v1, "server":Lcom/liquable/nemo/util/ServerRegions$Server;
    iget-object v2, p0, Lcom/liquable/nemo/voip/session/AnswerBusySession;->client:Lcom/liquable/nemo/voip/client/VoipClient;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/ServerRegions$Server;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/liquable/nemo/util/ServerRegions$Server;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/voip/client/VoipClient;->connectAsync(Ljava/lang/String;I)V

    .line 92
    sget-object v2, Lcom/liquable/nemo/voip/session/AnswerBusySession;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v3, "answer busy started"

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
