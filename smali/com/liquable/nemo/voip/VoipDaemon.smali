.class public Lcom/liquable/nemo/voip/VoipDaemon;
.super Ljava/lang/Object;
.source "VoipDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/VoipDaemon$ReplyBusyTask;
    }
.end annotation


# static fields
.field private static final CALLING_EXPIRE_DURATION:J = 0x1d4c0L

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final activeVoiceMessageRecorder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final activeVoipSession:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/voip/session/VoipSession;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final preciseServerClock:Lcom/liquable/nemo/voip/client/PreciseServerClock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/liquable/nemo/voip/VoipDaemon;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/client/home/HomeServerClient;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeServerClient"    # Lcom/liquable/nemo/client/home/HomeServerClient;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon;->activeVoipSession:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon;->activeVoiceMessageRecorder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon;->executor:Ljava/util/concurrent/ExecutorService;

    .line 78
    iput-object p1, p0, Lcom/liquable/nemo/voip/VoipDaemon;->context:Landroid/content/Context;

    .line 79
    new-instance v0, Lcom/liquable/nemo/voip/client/PreciseServerClock;

    invoke-direct {v0, p2}, Lcom/liquable/nemo/voip/client/PreciseServerClock;-><init>(Lcom/liquable/nemo/client/home/HomeServerClient;)V

    iput-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon;->preciseServerClock:Lcom/liquable/nemo/voip/client/PreciseServerClock;

    .line 80
    return-void
.end method

.method static synthetic access$000()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method private checkingVoiceMessageRecorderSync(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)Z
    .locals 7
    .param p1, "voiceMessageRecorder"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    .prologue
    const/4 v4, 0x0

    .line 101
    if-nez p1, :cond_0

    move v3, v4

    .line 134
    :goto_0
    return v3

    .line 104
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    .local v2, "mainHandler":Landroid/os/Handler;
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/liquable/nemo/voip/VoipDaemon$1;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/voip/VoipDaemon$1;-><init>(Lcom/liquable/nemo/voip/VoipDaemon;Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 122
    .local v1, "futureTask":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Boolean;>;"
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    const-wide/16 v5, 0x3e8

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    move v3, v4

    .line 128
    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v3, Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v5, "error while checking voiceMessageRecorder state, abort"

    invoke-virtual {v3, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 131
    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 133
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v3, Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v5, "check voiceMessageRecorder state timeout, abort"

    invoke-virtual {v3, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 134
    goto :goto_0
.end method

.method private isExpired(Lcom/liquable/nemo/voip/session/AnswerCall;)Z
    .locals 10
    .param p1, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    const-wide/32 v8, 0x1d4c0

    const/4 v3, 0x0

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/AnswerCall;->getServerTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 151
    .local v1, "lagTime":J
    cmp-long v4, v1, v8

    if-gez v4, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v3

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/voip/VoipDaemon;->preciseServerClock:Lcom/liquable/nemo/voip/client/PreciseServerClock;

    invoke-virtual {v4}, Lcom/liquable/nemo/voip/client/PreciseServerClock;->findCurrentTimeSync()Ljava/lang/Long;

    move-result-object v0

    .line 156
    .local v0, "found":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/AnswerCall;->getServerTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private replyBusy(Lcom/liquable/nemo/voip/session/AnswerCall;)V
    .locals 3
    .param p1, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/liquable/nemo/voip/VoipDaemon$ReplyBusyTask;

    iget-object v2, p0, Lcom/liquable/nemo/voip/VoipDaemon;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/liquable/nemo/util/DeviceUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/liquable/nemo/voip/VoipDaemon$ReplyBusyTask;-><init>(Lcom/liquable/nemo/voip/session/AnswerCall;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 165
    return-void
.end method


# virtual methods
.method public activate(Lcom/liquable/nemo/voip/session/VoipSession;)V
    .locals 1
    .param p1, "session"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon;->activeVoipSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public activateVoiceMessageRecorder(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)V
    .locals 2
    .param p1, "voiceMessageRecorder"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    .prologue
    .line 87
    iget-object v1, p0, Lcom/liquable/nemo/voip/VoipDaemon;->activeVoiceMessageRecorder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/liquable/nemo/voip/VoipDaemon;->activeVoipSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/voip/session/VoipSession;

    .line 89
    .local v0, "voipSession":Lcom/liquable/nemo/voip/session/VoipSession;
    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/liquable/nemo/voip/session/VoipSession;->destroySync()V

    .line 92
    :cond_0
    return-void
.end method

.method public deactivate(Lcom/liquable/nemo/voip/session/VoipSession;)V
    .locals 2
    .param p1, "session"    # Lcom/liquable/nemo/voip/session/VoipSession;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon;->activeVoipSession:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public deactivateVoiceMessageRecorder(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)V
    .locals 2
    .param p1, "voiceMessageRecorder"    # Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/voip/VoipDaemon;->activeVoiceMessageRecorder:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public tryAnswerCall(Lcom/liquable/nemo/voip/session/AnswerCall;)Z
    .locals 5
    .param p1, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v3, p0, Lcom/liquable/nemo/voip/VoipDaemon;->activeVoipSession:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 173
    sget-object v3, Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "new incomming call while exist voip session is active, reply busy"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/VoipDaemon;->replyBusy(Lcom/liquable/nemo/voip/session/AnswerCall;)V

    .line 207
    :goto_0
    return v2

    .line 178
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/voip/VoipDaemon;->activeVoiceMessageRecorder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;

    .line 180
    .local v1, "voiceMessageRecorder":Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;
    invoke-direct {p0, v1}, Lcom/liquable/nemo/voip/VoipDaemon;->checkingVoiceMessageRecorderSync(Lcom/liquable/nemo/chat/voice/VoiceMessageRecorder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    sget-object v3, Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "voice message recorder is recording, reply busy"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/VoipDaemon;->replyBusy(Lcom/liquable/nemo/voip/session/AnswerCall;)V

    goto :goto_0

    .line 187
    :cond_1
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/voip/session/AnswerCall;->getDialerUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 188
    .local v0, "dialer":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v3

    if-nez v3, :cond_3

    .line 189
    :cond_2
    sget-object v3, Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "incomming call from non-friend account, ignore"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/VoipDaemon;->isExpired(Lcom/liquable/nemo/voip/session/AnswerCall;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    sget-object v3, Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "incomming call is too lag, skip"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/voip/VoipDaemon;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/liquable/nemo/voip/session/TelephonyDetector;->isIdle(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 202
    sget-object v3, Lcom/liquable/nemo/voip/VoipDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "telephone not idle, reply busy"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0, p1}, Lcom/liquable/nemo/voip/VoipDaemon;->replyBusy(Lcom/liquable/nemo/voip/session/AnswerCall;)V

    goto :goto_0

    .line 207
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method
