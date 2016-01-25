.class public Lcom/liquable/nemo/android/service/ChattingAndroidService;
.super Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;
.source "ChattingAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService",
        "<",
        "Lcom/liquable/nemo/android/service/ChattingAndroidService;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_BACKUP:Ljava/lang/String; = "com.liquable.nemo.ACTION_BACKUP"

.field public static final ACTION_RETRIVE_OFFLINE_MESSAGE:Ljava/lang/String; = "com.liquable.nemo.ACTION_RETRIVE_OFFLINE_MESSAGE"

.field private static final LOGIN_TIMEOUT:I = 0x1e

.field private static final TIMEOUT_RETRY_INTERVAL:I = 0xa

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "NEMO_C2DM_OFFLINE_MSG"

.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final fetchingOfflineMessageAttempt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final markLoginTimeoutFuture:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledFuture",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final receiveLiteTextListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;",
            ">;"
        }
    .end annotation
.end field

.field private final receiveLoginErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/LoginError;",
            ">;"
        }
    .end annotation
.end field

.field private final receiveLoginResponseListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/LoginResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final receiveSendAckListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/SendAck;",
            ">;"
        }
    .end annotation
.end field

.field private final receiveSendErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/SendError;",
            ">;"
        }
    .end annotation
.end field

.field private final receiveTextListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<",
            "Lcom/liquable/nemo/endpoint/frame/ReceiveText;",
            ">;"
        }
    .end annotation
.end field

.field private receiverRegistered:Z

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field final timeoutTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;-><init>()V

    .line 76
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstanceForNetwork()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    .line 80
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$1;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$2;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveTextListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 132
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$3;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveLiteTextListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 149
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$4;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveSendAckListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 165
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$5;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$5;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveSendErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 182
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$6;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$6;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveLoginResponseListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 206
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$7;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$7;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveLoginErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    .line 240
    iput-boolean v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiverRegistered:Z

    .line 242
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->markLoginTimeoutFuture:Ljava/util/concurrent/atomic/AtomicReference;

    .line 247
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchingOfflineMessageAttempt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 251
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->timeoutTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/android/service/ChattingAndroidService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->updateRegistrationIdToNemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/android/service/ChattingAndroidService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->migrateRegistrationIdToNemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->scheduleBackup()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Lcom/liquable/nemo/client/ReceiveDataListener;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveSendAckListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/android/service/ChattingAndroidService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->cancelResendSchedule(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->markLoginTimeoutFuture:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchOfflineMessageIfNeeded()V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchRpcAccessTokenIfNeeded()V

    return-void
.end method

.method static synthetic access$700()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchingOfflineMessageAttempt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Lcom/liquable/nemo/util/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method private cancelResendSchedule(Ljava/lang/String;)Z
    .locals 3
    .param p1, "messageId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->timeoutTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 261
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    if-nez v0, :cond_0

    .line 265
    :goto_0
    return v1

    .line 264
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 265
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private cancelScheduleBackup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 269
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 271
    const-string/jumbo v3, "com.liquable.nemo.ACTION_BACKUP"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 273
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 274
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 275
    return-void
.end method

.method private checkNemoVersionForC2dm()V
    .locals 4

    .prologue
    .line 278
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getNemoVersion()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "originalVersion":Ljava/lang/String;
    const-class v1, Lcom/google/android/c2dm/C2DMessaging;

    invoke-static {v1}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "originalVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " CURRENT_VERSION:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    .line 283
    invoke-virtual {v3}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 284
    sget-object v1, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v1}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const-class v1, Lcom/google/android/c2dm/C2DMessaging;

    invoke-static {v1}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 286
    invoke-static {p0}, Lcom/google/android/c2dm/C2DMessaging;->clearGcmRegistrationId(Landroid/content/Context;)V

    .line 287
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;)V

    .line 288
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    sget-object v2, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v2}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setNemoVersion(Ljava/lang/String;)V

    .line 290
    :cond_0
    return-void
.end method

.method private fetchOfflineMessageIfNeeded()V
    .locals 2

    .prologue
    .line 316
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchingOfflineMessageAttempt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 317
    .local v0, "next":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 348
    :goto_0
    return-void

    .line 323
    :cond_0
    new-instance v1, Lcom/liquable/nemo/android/service/ChattingAndroidService$8;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$8;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private fetchRpcAccessTokenIfNeeded()V
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/friend/AccountDaemon;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/future/Futures;->eventLoop(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method private migrateRegistrationIdToNemo(Ljava/lang/String;)V
    .locals 2
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 388
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;Landroid/content/Context;ZLjava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 423
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$9;->execute([Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method public static requestCurrentConnectionState(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.ACTION_REQUEST_CONNTECTION_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    return-void
.end method

.method private scheduleBackup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 531
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 532
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 533
    const-string/jumbo v4, "com.liquable.nemo.ACTION_BACKUP"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 535
    .local v1, "calendar":Ljava/util/Calendar;
    const/16 v4, 0xb

    const/4 v5, 0x4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 536
    const/16 v4, 0xc

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 537
    const/16 v4, 0xd

    invoke-virtual {v1, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 538
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 539
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 542
    .local v3, "pi":Landroid/app/PendingIntent;
    const-string/jumbo v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 543
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 544
    return-void
.end method

.method private scheduleResend(Lcom/liquable/nemo/endpoint/frame/SendText;)V
    .locals 6
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/SendText;

    .prologue
    .line 547
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$12;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$12;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;Lcom/liquable/nemo/endpoint/frame/SendText;)V

    .line 563
    .local v0, "markTimeout":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v0, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 566
    .local v1, "markTimeoutFuture":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->timeoutTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/SendText;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    return-void
.end method

.method public static tryDisconnect(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.ACTION_DISCONNECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    return-void
.end method

.method private updateRegistrationIdToNemo(Ljava/lang/String;)V
    .locals 2
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 576
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$13;

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$13;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;Landroid/content/Context;ZLjava/lang/String;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 609
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$13;->execute([Ljava/lang/Object;)V

    .line 610
    return-void
.end method


# virtual methods
.method protected getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/liquable/nemo/android/service/ChattingAndroidService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    const-class v0, Lcom/liquable/nemo/android/service/ChattingAndroidService;

    return-object v0
.end method

.method public init()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 357
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->isAccountExists()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->isEnterDeleteAccount()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 358
    :cond_0
    const/4 v2, 0x0

    .line 384
    :goto_0
    return v2

    .line 360
    :cond_1
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->frameReceiver:Lcom/liquable/nemo/android/service/IEpFrameReceiver;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->registToFrameReceiver(Lcom/liquable/nemo/android/service/IEpFrameReceiver;)V

    .line 362
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->checkNemoVersionForC2dm()V

    .line 364
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 366
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 367
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "NEMO_C2DM_OFFLINE_MSG"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/liquable/nemo/android/service/ChattingAndroidService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 369
    const-class v3, Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveTextListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    invoke-virtual {p0, v3, v4}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 370
    const-class v3, Lcom/liquable/nemo/endpoint/frame/SendAck;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveSendAckListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    invoke-virtual {p0, v3, v4}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 371
    const-class v3, Lcom/liquable/nemo/endpoint/frame/SendError;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveSendErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    invoke-virtual {p0, v3, v4}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 372
    const-class v3, Lcom/liquable/nemo/endpoint/frame/LoginResponse;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveLoginResponseListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    invoke-virtual {p0, v3, v4}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 373
    const-class v3, Lcom/liquable/nemo/endpoint/frame/LoginError;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveLoginErrorListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    invoke-virtual {p0, v3, v4}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 374
    const-class v3, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;

    iget-object v4, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveLiteTextListener:Lcom/liquable/nemo/client/ReceiveDataListener;

    invoke-virtual {p0, v3, v4}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 376
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->scheduleBackup()V

    .line 377
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 378
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.liquable.nemo.PushMessagingEvent.ACTION_NAME"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v3, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 381
    const-string/jumbo v3, "com.liquable.nemo.chat.model.ROBOT_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 383
    iput-boolean v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiverRegistered:Z

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnected()V
    .locals 9

    .prologue
    .line 433
    invoke-super {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->onConnected()V

    .line 435
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    new-instance v3, Lcom/liquable/nemo/endpoint/frame/Login;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getComposteUid()Lcom/liquable/nemo/model/account/CompositeUid;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/model/account/CompositeUid;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {p0}, Lcom/liquable/nemo/util/DeviceUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/liquable/nemo/endpoint/frame/Login;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/NemoVersion;Ljava/lang/Long;)V

    .line 435
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->add(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 440
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$10;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$10;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    .line 456
    .local v0, "markTimeout":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->markLoginTimeoutFuture:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v0, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    .line 460
    .local v1, "previous":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/Void;>;"
    if-eqz v1, :cond_0

    .line 461
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 463
    :cond_0
    sget-object v2, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->LOGINNING:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    .line 464
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroy service:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 472
    :cond_0
    iget-boolean v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiverRegistered:Z

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->cancelScheduleBackup()V

    .line 476
    invoke-super {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->onDestroy()V

    .line 477
    return-void
.end method

.method public onFrameSend(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 1
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 481
    invoke-super {p0, p1}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->onFrameSend(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 482
    instance-of v0, p1, Lcom/liquable/nemo/endpoint/frame/SendText;

    if-eqz v0, :cond_0

    .line 483
    check-cast p1, Lcom/liquable/nemo/endpoint/frame/SendText;

    .end local p1    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->scheduleResend(Lcom/liquable/nemo/endpoint/frame/SendText;)V

    .line 485
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 489
    invoke-super {p0, p1, p2, p3}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->onStartCommand(Landroid/content/Intent;II)I

    .line 491
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->isServiceRunnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const-string/jumbo v0, "com.liquable.nemo.ACTION_RETRIVE_OFFLINE_MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "receive c2dm message"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->hintNetworkUnstable()V

    .line 496
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchOfflineMessageIfNeeded()V

    .line 526
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 497
    :cond_1
    const-string/jumbo v0, "com.liquable.nemo.ACTION_BACKUP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "ACTION_BACKUP start"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 499
    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$11;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$11;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 523
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$11;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
