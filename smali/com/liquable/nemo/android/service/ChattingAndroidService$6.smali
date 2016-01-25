.class Lcom/liquable/nemo/android/service/ChattingAndroidService$6;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Lcom/liquable/nemo/client/ReceiveDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/client/ReceiveDataListener",
        "<",
        "Lcom/liquable/nemo/endpoint/frame/LoginResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$6;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceive(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 0

    .prologue
    .line 182
    check-cast p1, Lcom/liquable/nemo/endpoint/frame/LoginResponse;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$6;->onReceive(Lcom/liquable/nemo/endpoint/frame/LoginResponse;)V

    return-void
.end method

.method public onReceive(Lcom/liquable/nemo/endpoint/frame/LoginResponse;)V
    .locals 3
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/LoginResponse;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$6;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->markLoginTimeoutFuture:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$400(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    .line 186
    .local v0, "future":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<Ljava/lang/Void;>;"
    if-eqz v0, :cond_0

    .line 187
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$6;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    iget-object v1, v1, Lcom/liquable/nemo/android/service/ChattingAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->switchLoginState(Z)V

    .line 190
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$6;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    sget-object v2, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->LOGINED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->updateConnectionState(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;)V

    .line 191
    const-class v1, Lcom/google/android/c2dm/C2DMessaging;

    invoke-static {v1}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v1

    const-string/jumbo v2, "login"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$6;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;)V

    .line 193
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$6;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # invokes: Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchOfflineMessageIfNeeded()V
    invoke-static {v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$500(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    .line 195
    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->getClientIP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 196
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {p1}, Lcom/liquable/nemo/endpoint/frame/LoginResponse;->getClientIP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Pref;->setMyIP(Ljava/lang/String;)V

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$6;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # invokes: Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchRpcAccessTokenIfNeeded()V
    invoke-static {v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$600(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    .line 199
    return-void
.end method
