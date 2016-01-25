.class public abstract Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;
.super Landroid/app/Service;
.source "KeepConnectionAndroidService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/liquable/nemo/client/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService",
        "<TT;>;>",
        "Landroid/app/Service;",
        "Landroid/os/Handler$Callback;",
        "Lcom/liquable/nemo/client/ConnectionListener;"
    }
.end annotation


# static fields
.field public static final ACTION_ASK_SERVICE_IS_SEND_TEXT_EXISTS:Ljava/lang/String; = "com.liquable.nemo.android.service.ChattingAndroidService.AskServiceIsSendTextExists"

.field public static final ACTION_ASK_SERVICE_IS_SEND_TEXT_EXISTS_RESULT:Ljava/lang/String; = "com.liquable.nemo.android.service.ChattingAndroidService.AskServiceIsSendTextExists.Result"

.field static final ACTION_DISCONNECT:Ljava/lang/String; = "com.liquable.nemo.ACTION_DISCONNECT"

.field private static final ACTION_RECONNECT:Ljava/lang/String; = "com.liquable.nemo.ACTION_RECONNECT"

.field public static final ACTION_REMOVE_FRAME:Ljava/lang/String; = "com.liquable.nemo.android.service.ChattingAndroidService.RemoveFrameAction"

.field static final ACTION_REQUEST_CONNTECTION_STATE:Ljava/lang/String; = "com.liquable.nemo.ACTION_REQUEST_CONNTECTION_STATE"

.field public static final ACTION_SEND_FRAME:Ljava/lang/String; = "com.liquable.nemo.android.service.ChattingAndroidService.SendFrameAction"

.field public static final CALLBACK:Ljava/lang/String; = "com.liquable.nemo.android.service.ChattingAndroidService.Callback"

.field public static final FRAME:Ljava/lang/String; = "com.liquable.nemo.android.service.ChattingAndroidService.Frame"

.field private static final HEARTBEAT_CHECK_TIMEOUT:J = 0x7530L

.field public static final MSG_CHECK_HEARTBEAT_TIMEOUT:I = 0x2

.field public static final MSG_SEND_HEARTBEAT:I = 0x1

.field public static final MSG_SEND_HEARTBEAT_RIGHT_NOW:I = 0x3

.field public static final SEND_TEXT_ID:Ljava/lang/String; = "com.liquable.nemo.android.service.ChattingAndroidService.SendTextId"


# instance fields
.field private final abort:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final backoff:Lcom/liquable/nemo/android/service/Backoff;

.field private final connectivityChanged:Landroid/content/BroadcastReceiver;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private currrentConntectionState:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

.field protected endPointClient:Lcom/liquable/nemo/client/EndPointClient;

.field private endPointServerPicker:Lcom/liquable/nemo/client/home/EndPointServerPicker;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field protected final frameReceiver:Lcom/liquable/nemo/android/service/IEpFrameReceiver;

.field private final handler:Landroid/os/Handler;

.field private final heartbeatHandler:Landroid/os/Handler;

.field private final heartbeatHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final heartbeatIdGenerator:Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;

.field private final intervals:Lcom/liquable/nemo/android/service/RetryConnectingIntervals;

.field private final isServiceRunnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lastCheckAliveTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field protected sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstanceForNetwork()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    .line 77
    new-instance v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$1;-><init>(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->connectivityChanged:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->abort:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->isServiceRunnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->lastCheckAliveTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 100
    new-instance v0, Lcom/liquable/nemo/android/service/FrameReceiver;

    invoke-direct {v0}, Lcom/liquable/nemo/android/service/FrameReceiver;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->frameReceiver:Lcom/liquable/nemo/android/service/IEpFrameReceiver;

    .line 101
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 102
    new-instance v0, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;

    invoke-direct {v0}, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->intervals:Lcom/liquable/nemo/android/service/RetryConnectingIntervals;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->handler:Landroid/os/Handler;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHistory:Ljava/util/Map;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Lcom/liquable/nemo/android/service/Backoff;

    invoke-direct {v0}, Lcom/liquable/nemo/android/service/Backoff;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->backoff:Lcom/liquable/nemo/android/service/Backoff;

    .line 110
    new-instance v0, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;

    invoke-direct {v0}, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatIdGenerator:Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;)Lcom/liquable/nemo/util/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->reconnectIfNecessary()V

    return-void
.end method

.method private cancelScheduleReconnect()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    const/4 v4, 0x0

    .line 135
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 136
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v3, "com.liquable.nemo.ACTION_RECONNECT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 139
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 140
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 141
    return-void
.end method

.method private reconnectIfNecessary()V
    .locals 7

    .prologue
    .line 345
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointClient:Lcom/liquable/nemo/client/EndPointClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->isServiceRunnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v0, Lcom/liquable/nemo/client/EndPointClient;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointServerPicker:Lcom/liquable/nemo/client/home/EndPointServerPicker;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 351
    invoke-static {p0}, Lcom/liquable/nemo/util/DeviceUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/client/EndPointClient;-><init>(Lcom/liquable/nemo/client/home/EndPointServerPicker;Lcom/liquable/nemo/client/ConnectionListener;Lcom/liquable/nemo/android/service/EndPointFrameQueue;Landroid/os/Handler;Lcom/liquable/nemo/util/Pref;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointClient:Lcom/liquable/nemo/client/EndPointClient;

    .line 352
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointClient:Lcom/liquable/nemo/client/EndPointClient;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/EndPointClient;->start()V

    .line 353
    sget-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->CONNECTING:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    .line 355
    :cond_0
    return-void
.end method

.method private scheduleHeartbeat()V
    .locals 4

    .prologue
    .line 377
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 379
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->backoff:Lcom/liquable/nemo/android/service/Backoff;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/Backoff;->nextHearbeatDelay()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 380
    return-void
.end method

.method private scheduleReconnect()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    const/4 v4, 0x0

    .line 384
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 385
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 386
    const-string/jumbo v3, "com.liquable.nemo.ACTION_RECONNECT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 388
    .local v2, "pi":Landroid/app/PendingIntent;
    const-string/jumbo v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 389
    .local v0, "alarmMgr":Landroid/app/AlarmManager;
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->intervals:Lcom/liquable/nemo/android/service/RetryConnectingIntervals;

    invoke-virtual {v6}, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->next()I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 390
    return-void
.end method

.method private start()V
    .locals 3

    .prologue
    .line 393
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->isServiceRunnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->isServiceRunnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 397
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->connectivityChanged:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->reconnectIfNecessary()V

    goto :goto_0
.end method

.method private startHeartbeatTimeoutCheck(Ljava/lang/String;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 403
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 404
    .local v0, "timeoutMsg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 405
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 406
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 407
    return-void
.end method


# virtual methods
.method protected addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1::",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">(",
            "Ljava/lang/Class",
            "<TT1;>;",
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<TT1;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT1;>;"
    .local p2, "listener":Lcom/liquable/nemo/client/ReceiveDataListener;, "Lcom/liquable/nemo/client/ReceiveDataListener<TT1;>;"
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->frameReceiver:Lcom/liquable/nemo/android/service/IEpFrameReceiver;

    invoke-interface {v0, p1, p2}, Lcom/liquable/nemo/android/service/IEpFrameReceiver;->addListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 122
    return-void
.end method

.method protected broadcastCurrentConnectionState()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    const/4 v2, 0x0

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.liquable.nemo.android.service.CONNECTION_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.liquable.nemo.android.service.KEY_CONNECT_STATE"

    iget-object v3, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->currrentConntectionState:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 127
    const-string/jumbo v3, "com.liquable.nemo.android.service.KEY_SERVER_NAME"

    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointClient:Lcom/liquable/nemo/client/EndPointClient;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "com.liquable.nemo.android.service.KEY_LAYER_TYPE"

    iget-object v3, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointClient:Lcom/liquable/nemo/client/EndPointClient;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    return-void

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointClient:Lcom/liquable/nemo/client/EndPointClient;

    .line 128
    invoke-virtual {v1}, Lcom/liquable/nemo/client/EndPointClient;->getServerInfo()Lcom/liquable/nemo/client/ServerInfo;

    move-result-object v1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointClient:Lcom/liquable/nemo/client/EndPointClient;

    .line 130
    invoke-virtual {v2}, Lcom/liquable/nemo/client/EndPointClient;->getLayer()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected abstract getDeclaringClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 147
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    move v5, v4

    .line 182
    :cond_0
    :goto_0
    return v5

    .line 150
    :pswitch_0
    iget-object v6, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v7, ">send heartbeat now"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/liquable/nemo/util/ServerTime;->getInstance()Lcom/liquable/nemo/util/ServerTime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/liquable/nemo/util/ServerTime;->neverAdjusted()Z

    move-result v6

    if-nez v6, :cond_1

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->lastCheckAliveTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3a98

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 153
    :cond_1
    iget-object v6, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatIdGenerator:Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;

    const/4 v7, 0x3

    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v7, v8, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v6, v4}, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->generateId(Z)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    new-instance v6, Lcom/liquable/nemo/endpoint/frame/Heartbeat;

    invoke-direct {v6, v3}, Lcom/liquable/nemo/endpoint/frame/Heartbeat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->add(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 156
    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->startHeartbeatTimeoutCheck(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v3    # "id":Ljava/lang/String;
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v5, v4, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->scheduleHeartbeat()V

    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 164
    .restart local v3    # "id":Ljava/lang/String;
    iget-object v6, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHistory:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 165
    .local v0, "clientSendTime":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 166
    iget-object v6, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v7, ">check heartbeat timeout"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v1, v6, v8

    .line 168
    .local v1, "delta":J
    const-wide/32 v6, 0xea60

    cmp-long v6, v1, v6

    if-lez v6, :cond_4

    .line 169
    iget-object v4, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, ">maybe it slept, send heartbeat again"

    invoke-virtual {v4, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    new-instance v6, Lcom/liquable/nemo/endpoint/frame/Heartbeat;

    invoke-direct {v6, v3}, Lcom/liquable/nemo/endpoint/frame/Heartbeat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->add(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 172
    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->startHeartbeatTimeoutCheck(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 174
    :cond_4
    iget-object v6, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v7, ">really timeout, interrupt connection now"

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->interruptConnection(Z)V

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected hintNetworkUnstable()V
    .locals 2

    .prologue
    .line 186
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 188
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method

.method protected abstract init()Z
.end method

.method protected final interruptConnection(Z)V
    .locals 4
    .param p1, "shutdown"    # Z

    .prologue
    .line 197
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interruptConnection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointClient:Lcom/liquable/nemo/client/EndPointClient;

    if-eqz v1, :cond_1

    .line 200
    iget-object v2, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->abort:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->abort:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointClient:Lcom/liquable/nemo/client/EndPointClient;

    .line 203
    .local v0, "keepEndPointClient":Lcom/liquable/nemo/client/EndPointClient;
    new-instance v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;

    invoke-direct {v1, p0, v0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;-><init>(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;Lcom/liquable/nemo/client/EndPointClient;)V

    .line 208
    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;->start()V

    .line 210
    .end local v0    # "keepEndPointClient":Lcom/liquable/nemo/client/EndPointClient;
    :cond_1
    return-void

    .line 200
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isServiceRunnable()Z
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->isServiceRunnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onConnected()V
    .locals 3

    .prologue
    .line 218
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    sget-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->CONNECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    .line 219
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->lastCheckAliveTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 220
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHistory:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 221
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->scheduleHeartbeat()V

    .line 222
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->intervals:Lcom/liquable/nemo/android/service/RetryConnectingIntervals;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/RetryConnectingIntervals;->reset()V

    .line 223
    return-void
.end method

.method public final onCreate()V
    .locals 6

    .prologue
    .line 227
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 228
    sget-object v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->PREPARE:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    .line 230
    new-instance v1, Lcom/liquable/nemo/client/home/EndPointServerPicker;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nodeService:Lcom/liquable/nemo/client/service/NodeService;

    sget-object v4, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    iget-object v5, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->handler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/client/home/EndPointServerPicker;-><init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/client/service/NodeService;Lcom/liquable/nemo/client/ServerType;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointServerPicker:Lcom/liquable/nemo/client/home/EndPointServerPicker;

    .line 234
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 235
    new-instance v1, Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    invoke-direct {v1}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    .line 237
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->init()Z

    move-result v0

    .line 238
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->start()V

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 245
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 249
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "service onDestroy"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->frameReceiver:Lcom/liquable/nemo/android/service/IEpFrameReceiver;

    invoke-interface {v0}, Lcom/liquable/nemo/android/service/IEpFrameReceiver;->clearAllListeners()V

    .line 251
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 252
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->stop()V

    .line 253
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->clear()V

    .line 254
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 255
    return-void
.end method

.method public onDisconnected()V
    .locals 4

    .prologue
    .line 259
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisconnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->switchLoginState(Z)V

    .line 261
    sget-object v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->DISCONNECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    .line 262
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->backoff:Lcom/liquable/nemo/android/service/Backoff;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/Backoff;->reset()V

    .line 265
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->endPointClient:Lcom/liquable/nemo/client/EndPointClient;

    .line 266
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->abort:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 271
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->scheduleReconnect()V

    .line 274
    sget-object v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->SCHEDULE_RECONNECT:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    goto :goto_0

    .line 276
    :cond_1
    sget-object v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->WAITING_NETWORK_STATE:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    goto :goto_0
.end method

.method public final onFrameReceived(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 6
    .param p1, "endPointFrame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 282
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    instance-of v3, p1, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 283
    check-cast v2, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;

    .line 284
    .local v2, "heartbeatResponse":Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;
    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->getId()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "heartbeatId":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHistory:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 286
    .local v0, "clientSendTime":Ljava/lang/Long;
    if-eqz v0, :cond_1

    .line 287
    invoke-static {}, Lcom/liquable/nemo/util/ServerTime;->getInstance()Lcom/liquable/nemo/util/ServerTime;

    move-result-object v3

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;->getServerTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/ServerTime;->setFrameReceiveTime(J)V

    .line 288
    iget-object v3, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, ">receive heartbeat response before timeout, schedule next heartbeat"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatIdGenerator:Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/android/service/HeartbeatIdGenerator;->isEmergencyCheck(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->backoff:Lcom/liquable/nemo/android/service/Backoff;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/android/service/Backoff;->increase(J)Z

    .line 292
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->scheduleHeartbeat()V

    .line 298
    .end local v0    # "clientSendTime":Ljava/lang/Long;
    .end local v1    # "heartbeatId":Ljava/lang/String;
    .end local v2    # "heartbeatResponse":Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->lastCheckAliveTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 299
    iget-object v3, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->frameReceiver:Lcom/liquable/nemo/android/service/IEpFrameReceiver;

    invoke-interface {v3, p1}, Lcom/liquable/nemo/android/service/IEpFrameReceiver;->onReceiveFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 300
    return-void

    .line 295
    .restart local v0    # "clientSendTime":Ljava/lang/Long;
    .restart local v1    # "heartbeatId":Ljava/lang/String;
    .restart local v2    # "heartbeatResponse":Lcom/liquable/nemo/endpoint/frame/HeartbeatResponse;
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, ">receive heartbeat response after timeout, do nothing"

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFrameSend(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 5
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .prologue
    .line 304
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    instance-of v2, p1, Lcom/liquable/nemo/endpoint/frame/Heartbeat;

    if-eqz v2, :cond_0

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 306
    .local v0, "clientTime":J
    iget-object v2, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->heartbeatHistory:Ljava/util/Map;

    check-cast p1, Lcom/liquable/nemo/endpoint/frame/Heartbeat;

    .end local p1    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .end local v0    # "clientTime":J
    :cond_0
    return-void
.end method

.method public onServerSelected()V
    .locals 1

    .prologue
    .line 312
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    sget-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->SERVER_SELECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    .line 313
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    const/4 v6, 0x1

    .line 317
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 318
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->isServiceRunnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    const-string/jumbo v4, "com.liquable.nemo.android.service.ChattingAndroidService.AskServiceIsSendTextExists"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 320
    const-string/jumbo v4, "com.liquable.nemo.android.service.ChattingAndroidService.SendTextId"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "msgId":Ljava/lang/String;
    const-string/jumbo v4, "com.liquable.nemo.android.service.ChattingAndroidService.Callback"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 322
    .local v2, "receiver":Landroid/os/ResultReceiver;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v3, "resultData":Landroid/os/Bundle;
    const-string/jumbo v4, "com.liquable.nemo.android.service.ChattingAndroidService.AskServiceIsSendTextExists.Result"

    iget-object v5, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    .line 324
    invoke-virtual {v5, v1}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->containsSendText(Ljava/lang/String;)Z

    move-result v5

    .line 323
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    invoke-virtual {v2, v6, v3}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 341
    .end local v1    # "msgId":Ljava/lang/String;
    .end local v2    # "receiver":Landroid/os/ResultReceiver;
    .end local v3    # "resultData":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return v6

    .line 327
    :cond_1
    const-string/jumbo v4, "com.liquable.nemo.android.service.ChattingAndroidService.SendFrameAction"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 328
    const-string/jumbo v4, "com.liquable.nemo.android.service.ChattingAndroidService.Frame"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .line 329
    .local v0, "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    iget-object v4, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->add(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 330
    .end local v0    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :cond_2
    const-string/jumbo v4, "com.liquable.nemo.android.service.ChattingAndroidService.RemoveFrameAction"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 331
    const-string/jumbo v4, "com.liquable.nemo.android.service.ChattingAndroidService.Frame"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/endpoint/frame/IEpFrame;

    .line 332
    .restart local v0    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    iget-object v4, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->removeFrame(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 333
    .end local v0    # "frame":Lcom/liquable/nemo/endpoint/frame/IEpFrame;
    :cond_3
    const-string/jumbo v4, "com.liquable.nemo.ACTION_RECONNECT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 334
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->reconnectIfNecessary()V

    goto :goto_0

    .line 335
    :cond_4
    const-string/jumbo v4, "com.liquable.nemo.ACTION_REQUEST_CONNTECTION_STATE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 336
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->broadcastCurrentConnectionState()V

    goto :goto_0

    .line 337
    :cond_5
    const-string/jumbo v4, "com.liquable.nemo.ACTION_DISCONNECT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->interruptConnection(Z)V

    goto :goto_0
.end method

.method protected removeListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1::",
            "Lcom/liquable/nemo/endpoint/frame/IEpFrame;",
            ">(",
            "Ljava/lang/Class",
            "<TT1;>;",
            "Lcom/liquable/nemo/client/ReceiveDataListener",
            "<TT1;>;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT1;>;"
    .local p2, "listener":Lcom/liquable/nemo/client/ReceiveDataListener;, "Lcom/liquable/nemo/client/ReceiveDataListener<TT1;>;"
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->frameReceiver:Lcom/liquable/nemo/android/service/IEpFrameReceiver;

    invoke-interface {v0, p1, p2}, Lcom/liquable/nemo/android/service/IEpFrameReceiver;->removeListener(Ljava/lang/Class;Lcom/liquable/nemo/client/ReceiveDataListener;)V

    .line 360
    return-void
.end method

.method protected runOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 363
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected runOnUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 373
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    return-void
.end method

.method protected stop()V
    .locals 2

    .prologue
    .line 410
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->isServiceRunnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->isServiceRunnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 414
    invoke-direct {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->cancelScheduleReconnect()V

    .line 415
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->connectivityChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->interruptConnection(Z)V

    goto :goto_0
.end method

.method protected updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V
    .locals 0
    .param p1, "state"    # Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    .prologue
    .line 420
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService<TT;>;"
    iput-object p1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->currrentConntectionState:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    .line 421
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->broadcastCurrentConnectionState()V

    .line 422
    return-void
.end method
