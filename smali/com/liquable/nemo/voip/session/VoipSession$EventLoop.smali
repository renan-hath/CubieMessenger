.class Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
.super Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;
.source "VoipSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/voip/session/VoipSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventLoop"
.end annotation


# instance fields
.field private dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

.field private final listenerRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/voip/session/VoipSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mainLoopHandler:Landroid/os/Handler;

.field private peerLost:Z

.field private final pingPongProgress:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;

.field private receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

.field private final report:Lcom/liquable/nemo/voip/session/VoipSessionReport;

.field private sessionClosedFired:Z

.field private talkingStartTime:J

.field final synthetic this$0:Lcom/liquable/nemo/voip/session/VoipSession;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/voip/session/VoipSession;Lcom/liquable/nemo/voip/session/VoipSessionListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/liquable/nemo/voip/session/VoipSessionListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    invoke-direct {p0}, Lcom/liquable/nemo/voip/event/AbstractVoipEventLoop;-><init>()V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->listenerRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->mainLoopHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSessionReport;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/session/VoipSessionReport;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->report:Lcom/liquable/nemo/voip/session/VoipSessionReport;

    .line 135
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;

    invoke-direct {v0}, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->pingPongProgress:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;

    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->listenerRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)Lcom/liquable/nemo/voip/session/VoipSessionReport;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->report:Lcom/liquable/nemo/voip/session/VoipSessionReport;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->fireSessionClosedOnlyOnce()V

    return-void
.end method

.method static synthetic access$2500(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginPing()V

    return-void
.end method

.method static synthetic access$2600(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginReport()V

    return-void
.end method

.method static synthetic access$2800(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginAccept()V

    return-void
.end method

.method static synthetic access$2900(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginDestroy()V

    return-void
.end method

.method static synthetic access$3000(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginDial(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginHangUp()V

    return-void
.end method

.method static synthetic access$3200(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Lcom/liquable/nemo/voip/session/AnswerCall;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;
    .param p1, "x1"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginReceive(Lcom/liquable/nemo/voip/session/AnswerCall;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onBeginReject()V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->listenerRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private acquirePartialLock()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$000(Lcom/liquable/nemo/voip/session/VoipSession;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 147
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 148
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 149
    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/session/VoipSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "voip session wake lock acquired"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private doAccepting()V
    .locals 4

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->acquirePartialLock()V

    .line 154
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->initializeAudioSync()V

    .line 155
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialId:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->access$200(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/voip/client/IVoipClient;->writeAccept(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->startRepeatChecking()V

    .line 157
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d052f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method private doRejecting()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$500(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;->stopNow()V

    .line 162
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialId:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->access$200(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/voip/client/IVoipClient;->writeReject(Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d052e

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method private findDialId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialId:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->access$200(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private fireSessionClosedOnlyOnce()V
    .locals 2

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->sessionClosedFired:Z

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 183
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->sessionClosedFired:Z

    .line 185
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->mainLoopHandler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$1;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private initializeAudioSync()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$500(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;->stopNow()V

    .line 195
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$000(Lcom/liquable/nemo/voip/session/VoipSession;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/voip/audio/VoipSounds;->switchToAudioManagerInCallMode(Landroid/content/Context;)V

    .line 196
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->recorder:Lcom/liquable/nemo/voip/audio/VoiceRecorder;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$800(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/VoiceRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/audio/VoiceRecorder;->initializeSync()Z

    .line 204
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->player:Lcom/liquable/nemo/voip/audio/VoicePlayer;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$900(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/VoicePlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/audio/VoicePlayer;->initializeSync()Z

    .line 210
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private logVoipExceptionEvent(Lcom/liquable/nemo/voip/event/VoipEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipEvent;

    .prologue
    .line 213
    instance-of v1, p1, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;

    .line 215
    .local v0, "voipExceptionEvent":Lcom/liquable/nemo/voip/event/VoipExceptionEvent;
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/event/VoipExceptionEvent;->getCause()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 217
    .end local v0    # "voipExceptionEvent":Lcom/liquable/nemo/voip/event/VoipExceptionEvent;
    :cond_0
    return-void
.end method

.method private onAccepted()V
    .locals 4

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->acquirePartialLock()V

    .line 221
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->initializeAudioSync()V

    .line 222
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->startRepeatChecking()V

    .line 224
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d052f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private onBeginAccept()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1000(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$500(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;->stopNow()V

    .line 230
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->withPendingAccept()Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    .line 231
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVING_PENDING_DECISION:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d051a

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->doAccepting()V

    goto :goto_0
.end method

.method private onBeginDestroy()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->listenerRef:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;->INSTANCE:Lcom/liquable/nemo/voip/session/VoipSessionListener$Dummy;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 243
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->releasePartialLock()V

    .line 247
    return-void
.end method

.method private onBeginDial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dialerUid"    # Ljava/lang/String;
    .param p2, "receiverUid"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->telephonyDetector:Lcom/liquable/nemo/voip/session/TelephonyDetector;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1100(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/session/TelephonyDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/TelephonyDetector;->initialize()V

    .line 256
    invoke-static {p1, p2}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->start(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .line 258
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/VoipDaemon;->activate(Lcom/liquable/nemo/voip/session/VoipSession;)V

    .line 259
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->voipClientMultiConnectorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1200(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->connectBest()V

    .line 260
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->DIALING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d0520

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onBeginHangUp()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->destroyAudioSync()V
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1300(Lcom/liquable/nemo/voip/session/VoipSession;)V

    .line 265
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->findDialId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/voip/client/IVoipClient;->writeHangup(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d0522

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private onBeginPing()V
    .locals 4

    .prologue
    .line 271
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1000(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-eq v1, v2, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->findDialId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->pingPongProgress:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->preparePing()Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;

    move-result-object v0

    .line 280
    .local v0, "prepare":Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;
    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$9;->$SwitchMap$com$liquable$nemo$voip$session$VoipSession$PingPongProgress$Prepare:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress$Prepare;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/voip/client/IVoipClient;

    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->findDialId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/voip/client/IVoipClient;->writePing(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->report:Lcom/liquable/nemo/voip/session/VoipSessionReport;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->setPingPongDuration(J)V

    .line 286
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->report:Lcom/liquable/nemo/voip/session/VoipSessionReport;

    sget-object v2, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->LV_1:Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->setVoipQualityLevel(Lcom/liquable/nemo/voip/session/VoipQualityLevel;)V

    goto :goto_0

    .line 289
    :pswitch_2
    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/session/VoipSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "Could not receive pong within 20 seconds, force abort"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 290
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onPeerLost(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/voip/client/IVoipClient;

    invoke-interface {v1}, Lcom/liquable/nemo/voip/client/IVoipClient;->disconnectSync()V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onBeginReceive(Lcom/liquable/nemo/voip/session/AnswerCall;)V
    .locals 4
    .param p1, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->telephonyDetector:Lcom/liquable/nemo/voip/session/TelephonyDetector;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1100(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/session/TelephonyDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/TelephonyDetector;->initialize()V

    .line 304
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$500(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;->playRingtone()V

    .line 306
    invoke-static {p1}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->start(Lcom/liquable/nemo/voip/session/AnswerCall;)Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    .line 308
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/VoipDaemon;->activate(Lcom/liquable/nemo/voip/session/VoipSession;)V

    .line 310
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->voipClientMultiConnectorRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1200(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->server:Lcom/liquable/nemo/util/ServerRegions$Server;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->access$1400(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Lcom/liquable/nemo/util/ServerRegions$Server;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/client/VoipClientMultiConnector;->connectSingle(Lcom/liquable/nemo/util/ServerRegions$Server;)V

    .line 312
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d051c

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onBeginReject()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1000(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$500(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;->stopNow()V

    .line 318
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->withPendingReject()Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    .line 319
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVING_PENDING_DECISION:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d052e

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->doRejecting()V

    goto :goto_0
.end method

.method private onBeginReport()V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1000(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-eq v0, v1, :cond_0

    .line 340
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->report:Lcom/liquable/nemo/voip/session/VoipSessionReport;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->player:Lcom/liquable/nemo/voip/audio/VoicePlayer;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$900(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/VoicePlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/audio/VoicePlayer;->calcPacketDropPercent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->setPacketDropPercent(F)V

    .line 331
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->report:Lcom/liquable/nemo/voip/session/VoipSessionReport;

    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    invoke-interface {v0}, Lcom/liquable/nemo/voip/client/IVoipClient;->getReadVoicePacketCount()I

    move-result v2

    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    .line 332
    invoke-interface {v0}, Lcom/liquable/nemo/voip/client/IVoipClient;->getWriteVoicePacketCount()I

    move-result v0

    .line 331
    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->setVoicePacketCount(II)V

    .line 334
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->mainLoopHandler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$2;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private onConnected(Lcom/liquable/nemo/voip/event/VoipConnectedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipConnectedEvent;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;->getVoipClient()Lcom/liquable/nemo/voip/client/VoipClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->report:Lcom/liquable/nemo/voip/session/VoipSessionReport;

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;->getVoipClient()Lcom/liquable/nemo/voip/client/VoipClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/client/VoipClient;->getRemoteHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->setHostName(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;->getServer()Lcom/liquable/nemo/util/ServerRegions$Server;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->withPeerServer(Lcom/liquable/nemo/util/ServerRegions$Server;)Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .line 349
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialerUid:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$1600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->receiverUid:Ljava/lang/String;
    invoke-static {v3}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$1700(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/liquable/nemo/voip/client/IVoipClient;->writeDial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialId:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->access$200(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->receiverUid:Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->access$1800(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/voip/client/IVoipClient;->writeReceive(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_1
    return-void
.end method

.method private onDialed()V
    .locals 3

    .prologue
    .line 359
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-nez v1, :cond_0

    .line 389
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .line 365
    .local v0, "constDialing":Lcom/liquable/nemo/voip/session/VoipSession$Dialing;
    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/liquable/nemo/voip/session/VoipSession;->access$000(Lcom/liquable/nemo/voip/session/VoipSession;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Landroid/content/Context;Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 387
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$3;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onDialingPushFail(Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;->getDialId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1000(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->DIALING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne v0, v1, :cond_2

    .line 404
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v1, 0x7f0d051f

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onPeerLost(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    invoke-interface {v0}, Lcom/liquable/nemo/voip/client/IVoipClient;->disconnectSync()V

    goto :goto_0

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1000(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-eq v0, v1, :cond_0

    .line 410
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onFatalError(Lcom/liquable/nemo/voip/event/VoipEvent;)V

    goto :goto_0
.end method

.method private onDialingPushSuccess(Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;

    .prologue
    .line 415
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;->getDialId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialId:Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->withPushedSuccess()Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .line 422
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1000(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->DIALING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$500(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;->playCalling()V

    goto :goto_0
.end method

.method private onDisconnected()V
    .locals 4

    .prologue
    .line 431
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/VoipDaemon;->deactivate(Lcom/liquable/nemo/voip/session/VoipSession;)V

    .line 433
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->releasePartialLock()V

    .line 434
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->destroyAudioSync()V
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1300(Lcom/liquable/nemo/voip/session/VoipSession;)V

    .line 436
    iget-boolean v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->peerLost:Z

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$500(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;->playBusy()V

    .line 439
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->mainLoopHandler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$4;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 449
    :goto_0
    return-void

    .line 446
    :cond_0
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d0521

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 447
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->fireSessionClosedOnlyOnce()V

    goto :goto_0
.end method

.method private onFatalError(Lcom/liquable/nemo/voip/event/VoipEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipEvent;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->mainLoopHandler:Landroid/os/Handler;

    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$5;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$5;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Lcom/liquable/nemo/voip/event/VoipEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->destoryAllExceptEventLoopSync()V
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$2100(Lcom/liquable/nemo/voip/session/VoipSession;)V

    .line 461
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d0523

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipEvent;->getType()Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method private onHungUp(Lcom/liquable/nemo/voip/event/VoipEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipEvent;

    .prologue
    .line 465
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->destroyAudioSync()V
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1300(Lcom/liquable/nemo/voip/session/VoipSession;)V

    .line 467
    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v2, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v3, 0x7f0d0521

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v2, v3, v4}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->soundEffect:Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$500(Lcom/liquable/nemo/voip/session/VoipSession;)Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/voip/audio/IVoipSoundEffect;->playHungup()V

    .line 474
    const-wide/16 v1, 0x2bc

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method private onPeerLost(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->peerLost:Z

    .line 483
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    invoke-virtual {p0, v0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private onPingPong(Lcom/liquable/nemo/voip/event/VoipPingPongEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipPingPongEvent;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->pingPongProgress:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipPingPongEvent;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->pongReceived(J)V

    .line 488
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->report:Lcom/liquable/nemo/voip/session/VoipSessionReport;

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipPingPongEvent;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->setPingPongDuration(J)V

    .line 489
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->report:Lcom/liquable/nemo/voip/session/VoipSessionReport;

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipPingPongEvent;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/liquable/nemo/voip/session/VoipQualityLevel;->calcQualityLevel(J)Lcom/liquable/nemo/voip/session/VoipQualityLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSessionReport;->setVoipQualityLevel(Lcom/liquable/nemo/voip/session/VoipQualityLevel;)V

    .line 490
    return-void
.end method

.method private onReceived()V
    .locals 4

    .prologue
    .line 493
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->isPendingAccept()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->doAccepting()V

    .line 500
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->isPendingReject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->doRejecting()V

    goto :goto_0

    .line 498
    :cond_1
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->RECEIVED:Lcom/liquable/nemo/voip/session/VoipSession$State;

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v2, 0x7f0d051c

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onRejected(Lcom/liquable/nemo/voip/event/VoipEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipEvent;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->withRejected()Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .line 504
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v1, 0x7f0d0525

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onPeerLost(Ljava/lang/String;)V

    .line 505
    return-void
.end method

.method private onTelephoneCall()V
    .locals 2

    .prologue
    .line 508
    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$9;->$SwitchMap$com$liquable$nemo$voip$session$VoipSession$State:[I

    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1000(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 529
    :cond_0
    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/session/VoipSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "telephone call while voip session opened, force close session."

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->destoryAllExceptEventLoopSync()V
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$2100(Lcom/liquable/nemo/voip/session/VoipSession;)V

    .line 532
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    .line 537
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$6;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$6;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->trySubmitTask(Ljava/lang/Runnable;)Z

    .line 545
    :goto_0
    return-void

    .line 511
    :pswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->findDialId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 512
    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/session/VoipSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "telephone call while talking, reply busy to peer."

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->clientRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$300(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/client/IVoipClient;

    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->findDialId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/voip/client/IVoipClient;->writeBusy(Ljava/lang/String;)V

    .line 516
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V

    goto :goto_0

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private releasePartialLock()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 632
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 633
    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->logger:Lcom/liquable/nemo/util/Logger;
    invoke-static {}, Lcom/liquable/nemo/voip/session/VoipSession;->access$100()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    const-string/jumbo v1, "voip session wake lock released"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 635
    :cond_0
    return-void
.end method

.method private saveCallLog()V
    .locals 11

    .prologue
    .line 638
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    if-nez v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->dialerUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$1600(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v2

    .line 643
    .local v2, "dialerUid":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->receiverUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->access$1700(Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, "receiverUid":Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->uid:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->access$2400(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, "myUid":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v9, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->talkingStartTime:J

    sub-long v4, v0, v9

    .line 647
    .local v4, "duration":J
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->pingPongProgress:Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;

    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession$PingPongProgress;->calcAvgDuration()J

    move-result-wide v7

    .line 649
    .local v7, "avgPingPongDuration":J
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 664
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$7;->execute([Ljava/lang/Object;)V

    goto :goto_0

    .line 642
    .end local v2    # "dialerUid":Ljava/lang/String;
    .end local v3    # "receiverUid":Ljava/lang/String;
    .end local v4    # "duration":J
    .end local v6    # "myUid":Ljava/lang/String;
    .end local v7    # "avgPingPongDuration":J
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->dialerUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->access$2300(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 643
    .restart local v2    # "dialerUid":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->receiving:Lcom/liquable/nemo/voip/session/VoipSession$Receiving;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->receiverUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/voip/session/VoipSession$Receiving;->access$1800(Lcom/liquable/nemo/voip/session/VoipSession$Receiving;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private sendMissedCall()V
    .locals 3

    .prologue
    .line 668
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-nez v1, :cond_0

    .line 682
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    .line 673
    .local v0, "constDialing":Lcom/liquable/nemo/voip/session/VoipSession$Dialing;
    new-instance v1, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$8;

    invoke-direct {v1, p0, v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$8;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Lcom/liquable/nemo/voip/session/VoipSession$Dialing;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 681
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$8;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private startRepeatChecking()V
    .locals 3

    .prologue
    .line 685
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$9;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$9;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->tryRepeatTask(Ljava/lang/Runnable;J)Z

    .line 692
    new-instance v0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$10;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$10;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->tryRepeatTask(Ljava/lang/Runnable;J)Z

    .line 699
    return-void
.end method


# virtual methods
.method protected processEvent(Lcom/liquable/nemo/voip/event/VoipEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/liquable/nemo/voip/event/VoipEvent;

    .prologue
    const/4 v2, 0x0

    .line 549
    sget-object v0, Lcom/liquable/nemo/voip/session/VoipSession$9;->$SwitchMap$com$liquable$nemo$voip$event$VoipEvent$Type:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/event/VoipEvent;->getType()Lcom/liquable/nemo/voip/event/VoipEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/event/VoipEvent$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 627
    .end local p1    # "event":Lcom/liquable/nemo/voip/event/VoipEvent;
    :goto_0
    :pswitch_0
    return-void

    .line 551
    .restart local p1    # "event":Lcom/liquable/nemo/voip/event/VoipEvent;
    :pswitch_1
    check-cast p1, Lcom/liquable/nemo/voip/event/VoipConnectedEvent;

    .end local p1    # "event":Lcom/liquable/nemo/voip/event/VoipEvent;
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onConnected(Lcom/liquable/nemo/voip/event/VoipConnectedEvent;)V

    goto :goto_0

    .line 554
    .restart local p1    # "event":Lcom/liquable/nemo/voip/event/VoipEvent;
    :pswitch_2
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onDialed()V

    goto :goto_0

    .line 557
    :pswitch_3
    check-cast p1, Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;

    .end local p1    # "event":Lcom/liquable/nemo/voip/event/VoipEvent;
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onDialingPushSuccess(Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;)V

    goto :goto_0

    .line 560
    .restart local p1    # "event":Lcom/liquable/nemo/voip/event/VoipEvent;
    :pswitch_4
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onReceived()V

    goto :goto_0

    .line 563
    :pswitch_5
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onAccepted()V

    goto :goto_0

    .line 566
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onHungUp(Lcom/liquable/nemo/voip/event/VoipEvent;)V

    goto :goto_0

    .line 570
    :pswitch_7
    check-cast p1, Lcom/liquable/nemo/voip/event/VoipPingPongEvent;

    .end local p1    # "event":Lcom/liquable/nemo/voip/event/VoipEvent;
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onPingPong(Lcom/liquable/nemo/voip/event/VoipPingPongEvent;)V

    goto :goto_0

    .line 574
    .restart local p1    # "event":Lcom/liquable/nemo/voip/event/VoipEvent;
    :pswitch_8
    check-cast p1, Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;

    .end local p1    # "event":Lcom/liquable/nemo/voip/event/VoipEvent;
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onDialingPushFail(Lcom/liquable/nemo/voip/event/VoipDialingPushEvent;)V

    goto :goto_0

    .line 577
    .restart local p1    # "event":Lcom/liquable/nemo/voip/event/VoipEvent;
    :pswitch_9
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onDisconnected()V

    goto :goto_0

    .line 582
    :pswitch_a
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onTelephoneCall()V

    goto :goto_0

    .line 587
    :pswitch_b
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v1, 0x7f0d052c

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onPeerLost(Ljava/lang/String;)V

    goto :goto_0

    .line 593
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onRejected(Lcom/liquable/nemo/voip/event/VoipEvent;)V

    goto :goto_0

    .line 596
    :pswitch_d
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v1, 0x7f0d0529

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onPeerLost(Ljava/lang/String;)V

    goto :goto_0

    .line 599
    :pswitch_e
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v1, 0x7f0d051f

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onPeerLost(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :pswitch_f
    iget-object v0, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    const v1, 0x7f0d052a

    new-array v2, v2, [Ljava/lang/Object;

    # invokes: Lcom/liquable/nemo/voip/session/VoipSession;->getI18n(I[Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/voip/session/VoipSession;->access$400(Lcom/liquable/nemo/voip/session/VoipSession;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onPeerLost(Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onFatalError(Lcom/liquable/nemo/voip/event/VoipEvent;)V

    goto :goto_0

    .line 615
    :pswitch_11
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->logVoipExceptionEvent(Lcom/liquable/nemo/voip/event/VoipEvent;)V

    .line 616
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->onFatalError(Lcom/liquable/nemo/voip/event/VoipEvent;)V

    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_0
    .end packed-switch
.end method

.method public switchStateTo(Lcom/liquable/nemo/voip/session/VoipSession$State;Ljava/lang/String;)V
    .locals 3
    .param p1, "newState"    # Lcom/liquable/nemo/voip/session/VoipSession$State;
    .param p2, "desc"    # Ljava/lang/String;

    .prologue
    .line 707
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->this$0:Lcom/liquable/nemo/voip/session/VoipSession;

    # getter for: Lcom/liquable/nemo/voip/session/VoipSession;->stateRef:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/liquable/nemo/voip/session/VoipSession;->access$1000(Lcom/liquable/nemo/voip/session/VoipSession;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSession$State;

    .line 709
    .local v0, "previous":Lcom/liquable/nemo/voip/session/VoipSession$State;
    if-eq v0, p1, :cond_0

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne p1, v1, :cond_0

    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->talkingStartTime:J

    .line 713
    :cond_0
    if-eq v0, p1, :cond_1

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne v0, v1, :cond_1

    .line 714
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->saveCallLog()V

    .line 717
    :cond_1
    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->DIALING:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne v0, v1, :cond_2

    sget-object v1, Lcom/liquable/nemo/voip/session/VoipSession$State;->CAN_NOT_TALK:Lcom/liquable/nemo/voip/session/VoipSession$State;

    if-ne p1, v1, :cond_2

    .line 718
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->dialing:Lcom/liquable/nemo/voip/session/VoipSession$Dialing;

    invoke-virtual {v1}, Lcom/liquable/nemo/voip/session/VoipSession$Dialing;->requireMissedCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 719
    invoke-direct {p0}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->sendMissedCall()V

    .line 723
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;->mainLoopHandler:Landroid/os/Handler;

    new-instance v2, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$11;

    invoke-direct {v2, p0, p2}, Lcom/liquable/nemo/voip/session/VoipSession$EventLoop$11;-><init>(Lcom/liquable/nemo/voip/session/VoipSession$EventLoop;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 729
    return-void
.end method
