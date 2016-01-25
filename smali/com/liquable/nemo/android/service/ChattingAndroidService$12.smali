.class Lcom/liquable/nemo/android/service/ChattingAndroidService$12;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService;->scheduleResend(Lcom/liquable/nemo/endpoint/frame/SendText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

.field final synthetic val$frame:Lcom/liquable/nemo/endpoint/frame/SendText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;Lcom/liquable/nemo/endpoint/frame/SendText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 547
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$12;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    iput-object p2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$12;->val$frame:Lcom/liquable/nemo/endpoint/frame/SendText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$12;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 550
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$12;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    iget-object v2, v2, Lcom/liquable/nemo/android/service/ChattingAndroidService;->timeoutTasks:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$12;->val$frame:Lcom/liquable/nemo/endpoint/frame/SendText;

    invoke-virtual {v3}, Lcom/liquable/nemo/endpoint/frame/SendText;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 551
    .local v0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/Void;>;"
    if-nez v0, :cond_0

    .line 560
    :goto_0
    return-object v4

    .line 554
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$12;->val$frame:Lcom/liquable/nemo/endpoint/frame/SendText;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/SendText;->getMessageId()Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, "messageId":Ljava/lang/String;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingService:Lcom/liquable/nemo/client/service/ChattingService;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/client/service/ChattingService;->isMessageResendable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$12;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    iget-object v2, v2, Lcom/liquable/nemo/android/service/ChattingAndroidService;->sendQueue:Lcom/liquable/nemo/android/service/EndPointFrameQueue;

    iget-object v3, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$12;->val$frame:Lcom/liquable/nemo/endpoint/frame/SendText;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/android/service/EndPointFrameQueue;->add(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    goto :goto_0

    .line 558
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingService:Lcom/liquable/nemo/client/service/ChattingService;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/client/service/ChattingService;->removeWaitSendAcks(Ljava/lang/String;)Z

    goto :goto_0
.end method
