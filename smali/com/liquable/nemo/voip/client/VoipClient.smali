.class public Lcom/liquable/nemo/voip/client/VoipClient;
.super Ljava/lang/Object;
.source "VoipClient.java"

# interfaces
.implements Lcom/liquable/nemo/voip/client/IVoipClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;,
        Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;,
        Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;
    }
.end annotation


# static fields
.field private static final CLIENT_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final CONNECT_TIMEOUT_IN_MS:I = 0x4e20

.field public static final DUMMY_PACKET_LINSTENER:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final clientId:J

.field private final eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

.field private readVoicePacketCount:I

.field private final receivedVoicePacketListener:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

.field private final socketRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private writeVoicePacketCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/liquable/nemo/voip/client/VoipClient$1;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/client/VoipClient$1;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/client/VoipClient;->DUMMY_PACKET_LINSTENER:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

    .line 174
    const-class v0, Lcom/liquable/nemo/voip/client/VoipClient;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/liquable/nemo/voip/client/VoipClient;->CLIENT_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;Lcom/liquable/nemo/voip/event/EventSink;Ljava/lang/String;)V
    .locals 3
    .param p1, "receivedVoicePacketListener"    # Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;
    .param p3, "device"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;",
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, "eventSink":Lcom/liquable/nemo/voip/event/EventSink;, "Lcom/liquable/nemo/voip/event/EventSink<Lcom/liquable/nemo/voip/event/VoipEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->socketRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 198
    sget-object v1, Lcom/liquable/nemo/voip/client/VoipClient;->CLIENT_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J

    .line 199
    iput-object p1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->receivedVoicePacketListener:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

    .line 200
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 203
    :try_start_0
    new-instance v1, Lcom/liquable/nemo/voip/frame/FrameFactory;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/liquable/nemo/voip/frame/FrameFactory;-><init>([B)V

    iput-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/liquable/nemo/voip/client/VoipClient;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClient;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->socketRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/voip/client/VoipClient;)J
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClient;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J

    return-wide v0
.end method

.method static synthetic access$200()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/voip/client/VoipClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClient;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/voip/client/VoipClient;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClient;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/voip/client/VoipClient;)Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClient;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->receivedVoicePacketListener:Lcom/liquable/nemo/voip/client/VoipClient$ReceivedVoicePacketListener;

    return-object v0
.end method

.method static synthetic access$608(Lcom/liquable/nemo/voip/client/VoipClient;)I
    .locals 2
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClient;

    .prologue
    .line 40
    iget v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->readVoicePacketCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->readVoicePacketCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/voip/client/VoipClient;Lcom/liquable/nemo/voip/frame/Voip$Frame;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/client/VoipClient;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/client/VoipClient;->doCommand(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    return-void
.end method

.method private closeSocketWithEvent()V
    .locals 5

    .prologue
    .line 210
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->socketRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 211
    .local v0, "existSocket":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 212
    monitor-enter v0

    .line 215
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 217
    sget-object v1, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "VoipClient#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " disconnected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v2, Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;-><init>(Lcom/liquable/nemo/voip/client/VoipClient;)V

    invoke-interface {v1, v2}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v0

    .line 221
    :cond_0
    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doCommand(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V
    .locals 14
    .param p1, "frame"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;

    .prologue
    .line 274
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

    invoke-virtual {v10, p1}, Lcom/liquable/nemo/voip/frame/FrameFactory;->validateHmac(Lcom/liquable/nemo/voip/frame/Voip$Frame;)Z

    move-result v8

    .line 275
    .local v8, "success":Z
    if-nez v8, :cond_1

    .line 276
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "voip client#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p0, Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " invalid hmac:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 277
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->INVALID_HMAC:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    .line 281
    invoke-direct {p0}, Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->getCommand()Lcom/liquable/nemo/voip/frame/Voip$Command;

    move-result-object v0

    .line 287
    .local v0, "command":Lcom/liquable/nemo/voip/frame/Voip$Command;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasDialResponse()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDialResponse()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v10

    invoke-virtual {v10}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->hasStatus()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 288
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getDialResponse()Lcom/liquable/nemo/voip/frame/Voip$DialResponse;

    move-result-object v2

    .line 289
    .local v2, "dialResponse":Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient$2;->$SwitchMap$com$liquable$nemo$voip$frame$Voip$DialResponse$Status:[I

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    move-result-object v11

    invoke-virtual {v11}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 305
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unexpected dialResponse type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 306
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->UNEXPECTED_CLIENT_FRAME:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 291
    :pswitch_0
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onDialResponse:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$DialResponse$Status;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", dialId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 293
    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDialId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 291
    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 294
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 297
    :pswitch_1
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "dialResponse authentication fail:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDialId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 298
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 301
    :pswitch_2
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "dialResponse platform error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/liquable/nemo/voip/frame/Voip$DialResponse;->getDialId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 302
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PLATFORM_ERROR:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 309
    .end local v2    # "dialResponse":Lcom/liquable/nemo/voip/frame/Voip$DialResponse;
    :cond_2
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasReceiveResponse()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getReceiveResponse()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v10

    invoke-virtual {v10}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->hasStatus()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 310
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getReceiveResponse()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;

    move-result-object v7

    .line 311
    .local v7, "receiveResponse":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient$2;->$SwitchMap$com$liquable$nemo$voip$frame$Voip$ReceiveResponse$Status:[I

    invoke-virtual {v7}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    move-result-object v11

    invoke-virtual {v11}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_1

    .line 331
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unexpected receiveResponse type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 332
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->UNEXPECTED_CLIENT_FRAME:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 313
    :pswitch_3
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onReceiveResponse:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getStatus()Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse$Status;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", receiveId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 315
    invoke-virtual {v7}, Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;->getReceiveId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 313
    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 316
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->RECEIVED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 319
    :pswitch_4
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v11, "receiveResponse authentication fail"

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 320
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->AUTHENTICATION_FAIL:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 323
    :pswitch_5
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v11, "receiveResponse platform error"

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 324
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PLATFORM_ERROR:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 327
    :pswitch_6
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v11, "receiveResponse dialer lost"

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 328
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIALER_LOST:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 335
    .end local v7    # "receiveResponse":Lcom/liquable/nemo/voip/frame/Voip$ReceiveResponse;
    :cond_3
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasPing()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 336
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getPing()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/voip/frame/FrameFactory;->pong(Lcom/liquable/nemo/voip/frame/Voip$Ping;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/liquable/nemo/voip/client/VoipClient;->write(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    goto/16 :goto_0

    .line 337
    :cond_4
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasPong()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 338
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getPong()Lcom/liquable/nemo/voip/frame/Voip$Pong;

    move-result-object v10

    invoke-virtual {v10}, Lcom/liquable/nemo/voip/frame/Voip$Pong;->getPing()Lcom/liquable/nemo/voip/frame/Voip$Ping;

    move-result-object v10

    invoke-virtual {v10}, Lcom/liquable/nemo/voip/frame/Voip$Ping;->getPingId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 339
    .local v5, "pingStartTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v3, v10, v5

    .line 340
    .local v3, "pingPoneDuration":J
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onPong, duration:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 341
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipPingPongEvent;

    invoke-direct {v11, v3, v4}, Lcom/liquable/nemo/voip/event/VoipPingPongEvent;-><init>(J)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 342
    .end local v3    # "pingPoneDuration":J
    .end local v5    # "pingStartTime":J
    :cond_5
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasExchangeKey()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getExchangeKey()Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;

    move-result-object v10

    invoke-virtual {v10}, Lcom/liquable/nemo/voip/frame/Voip$ExchangeKey;->hasType()Z

    move-result v10

    if-nez v10, :cond_0

    .line 344
    :cond_6
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->hasStateChange()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getStateChange()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v10

    invoke-virtual {v10}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->hasType()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 345
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getStateChange()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v10

    invoke-virtual {v10}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getDialId()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "dialId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/frame/Voip$Command;->getStateChange()Lcom/liquable/nemo/voip/frame/Voip$StateChange;

    move-result-object v10

    invoke-virtual {v10}, Lcom/liquable/nemo/voip/frame/Voip$StateChange;->getType()Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    move-result-object v9

    .line 347
    .local v9, "type":Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient$2;->$SwitchMap$com$liquable$nemo$voip$frame$Voip$StateChange$Type:[I

    invoke-virtual {v9}, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_2

    .line 381
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unexpected state change type:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 382
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->UNEXPECTED_CLIENT_FRAME:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 349
    :pswitch_7
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onAccepted:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 350
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->ACCEPTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 353
    :pswitch_8
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onRejected:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 354
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->REJECTED:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 357
    :pswitch_9
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onHungup:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 358
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->HUNG_UP:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 361
    :pswitch_a
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onPeerBroken:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 362
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PEER_BROKEN:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 365
    :pswitch_b
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onDialTimeout:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 366
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->DIAL_TIMEOUT:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 369
    :pswitch_c
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onReceiveTimeout:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 370
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->RECEIVE_TIMEOUT:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 373
    :pswitch_d
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onPeerBusy:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 374
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->PEER_BUSY:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 386
    .end local v1    # "dialId":Ljava/lang/String;
    .end local v9    # "type":Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;
    :cond_7
    sget-object v10, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unexpect command:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 387
    iget-object v10, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v11, Lcom/liquable/nemo/voip/event/VoipEvent;

    sget-object v12, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->UNEXPECTED_CLIENT_FRAME:Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    invoke-direct {v11, v12}, Lcom/liquable/nemo/voip/event/VoipEvent;-><init>(Lcom/liquable/nemo/voip/event/VoipEvent$Type;)V

    invoke-interface {v10, v11}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 311
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 347
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private write(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V
    .locals 7
    .param p1, "frame"    # Lcom/liquable/nemo/voip/frame/Voip$Frame;

    .prologue
    .line 427
    iget-object v3, p0, Lcom/liquable/nemo/voip/client/VoipClient;->socketRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Socket;

    .line 428
    .local v2, "socket":Ljava/net/Socket;
    if-nez v2, :cond_0

    .line 440
    :goto_0
    return-void

    .line 432
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 433
    .local v1, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {p1, v1}, Lcom/liquable/nemo/voip/frame/Voip$Frame;->writeDelimitedTo(Ljava/io/OutputStream;)V

    .line 434
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 435
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lcom/liquable/nemo/voip/client/VoipClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "voip socket#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/liquable/nemo/voip/client/VoipClient;->clientId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " write fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    invoke-direct {p0}, Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V

    goto :goto_0
.end method


# virtual methods
.method public connectAsync(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/liquable/nemo/voip/client/VoipClient;->connectAsync(Ljava/lang/String;IZ)V

    .line 226
    return-void
.end method

.method public connectAsync(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "startReadImmediately"    # Z

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;

    invoke-direct {v2, p0, p2, p1}, Lcom/liquable/nemo/voip/client/VoipClient$ConnectTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClient;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 232
    if-eqz p3, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/client/VoipClient;->startRead()V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "ignore":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/voip/event/EventSink;

    new-instance v2, Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/voip/event/VoipDisconnectedEvent;-><init>(Lcom/liquable/nemo/voip/client/VoipClient;)V

    invoke-interface {v1, v2}, Lcom/liquable/nemo/voip/event/EventSink;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public disconnectSync()V
    .locals 6

    .prologue
    .line 247
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClient;->socketRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    .line 248
    .local v1, "toInterruptSocket":Ljava/net/Socket;
    if-eqz v1, :cond_0

    .line 249
    monitor-enter v1

    .line 252
    :try_start_0
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/net/Socket;)V

    .line 253
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClient;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 264
    :try_start_1
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClient;->executor:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 269
    invoke-direct {p0}, Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V

    .line 271
    :goto_0
    return-void

    .line 253
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    invoke-direct {p0}, Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    invoke-direct {p0}, Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V

    throw v2
.end method

.method public getReadVoicePacketCount()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->readVoicePacketCount:I

    return v0
.end method

.method public getRemoteHostName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    iget-object v2, p0, Lcom/liquable/nemo/voip/client/VoipClient;->socketRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Socket;

    .line 398
    .local v1, "socket":Ljava/net/Socket;
    if-nez v1, :cond_0

    .line 399
    const-string/jumbo v2, ""

    .line 403
    :goto_0
    return-object v2

    .line 402
    :cond_0
    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 403
    .local v0, "remoteSocketAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getWriteVoicePacketCount()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->writeVoicePacketCount:I

    return v0
.end method

.method public setEventSink(Lcom/liquable/nemo/voip/event/EventSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/voip/event/EventSink",
            "<",
            "Lcom/liquable/nemo/voip/event/VoipEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "newEventSink":Lcom/liquable/nemo/voip/event/EventSink;, "Lcom/liquable/nemo/voip/event/EventSink<Lcom/liquable/nemo/voip/event/VoipEvent;>;"
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/liquable/util/DesignContract;->preCondition(Z)V

    .line 413
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->eventSinkRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 414
    return-void

    .line 412
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startRead()V
    .locals 4

    .prologue
    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/liquable/nemo/voip/client/VoipClient$ReadFrameTask;-><init>(Lcom/liquable/nemo/voip/client/VoipClient;Lcom/liquable/nemo/voip/client/VoipClient$1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_0
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    invoke-direct {p0}, Lcom/liquable/nemo/voip/client/VoipClient;->closeSocketWithEvent()V

    goto :goto_0
.end method

.method public writeAccept(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialId"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->ACCEPT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/voip/frame/FrameFactory;->stateChange(Ljava/lang/String;Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClient;->write(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    .line 445
    return-void
.end method

.method public writeBusy(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialId"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->BUSY:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/voip/frame/FrameFactory;->stateChange(Ljava/lang/String;Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClient;->write(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    .line 450
    return-void
.end method

.method public writeDial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "dialerUid"    # Ljava/lang/String;
    .param p3, "receiverUid"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/voip/frame/FrameFactory;->dial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClient;->write(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    .line 455
    return-void
.end method

.method public writeHangup(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialId"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->HANG_UP:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/voip/frame/FrameFactory;->stateChange(Ljava/lang/String;Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClient;->write(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    .line 460
    return-void
.end method

.method public writePing(Ljava/lang/String;)V
    .locals 3
    .param p1, "dialId"    # Ljava/lang/String;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/voip/frame/FrameFactory;->ping(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClient;->write(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    .line 465
    return-void
.end method

.method public writeReceive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "dialId"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "receiveId":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

    invoke-virtual {v1, p1, v0, p2}, Lcom/liquable/nemo/voip/frame/FrameFactory;->receive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/voip/client/VoipClient;->write(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    .line 471
    return-void
.end method

.method public writeReject(Ljava/lang/String;)V
    .locals 2
    .param p1, "dialId"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

    sget-object v1, Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;->REJECT:Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/voip/frame/FrameFactory;->stateChange(Ljava/lang/String;Lcom/liquable/nemo/voip/frame/Voip$StateChange$Type;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClient;->write(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    .line 477
    return-void
.end method

.method public writeVoicePacket(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "voicePacket"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 481
    iget-object v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->frameFactory:Lcom/liquable/nemo/voip/frame/FrameFactory;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 482
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 483
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 481
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/voip/frame/FrameFactory;->packet(Lcom/google/protobuf/ByteString;)Lcom/liquable/nemo/voip/frame/Voip$Frame;

    move-result-object v0

    .line 484
    .local v0, "packet":Lcom/liquable/nemo/voip/frame/Voip$Frame;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/client/VoipClient;->write(Lcom/liquable/nemo/voip/frame/Voip$Frame;)V

    .line 485
    iget v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->writeVoicePacketCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/liquable/nemo/voip/client/VoipClient;->writeVoicePacketCount:I

    .line 486
    return-void
.end method
