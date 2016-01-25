.class Lcom/liquable/nemo/android/service/ChattingAndroidService$1;
.super Landroid/content/BroadcastReceiver;
.source "ChattingAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    const-string/jumbo v3, "com.liquable.nemo.PushMessagingEvent.ACTION_NAME"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    invoke-static {p2}, Lcom/liquable/nemo/PushMessagingEvent;->createFromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/PushMessagingEvent;

    move-result-object v1

    .line 85
    .local v1, "event":Lcom/liquable/nemo/PushMessagingEvent;
    sget-object v3, Lcom/liquable/nemo/PushMessagingEvent$Type;->UPDATE:Lcom/liquable/nemo/PushMessagingEvent$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/PushMessagingEvent;->getType()Lcom/liquable/nemo/PushMessagingEvent$Type;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 86
    iget-object v3, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-virtual {v1}, Lcom/liquable/nemo/PushMessagingEvent;->getRegistrationId()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/liquable/nemo/android/service/ChattingAndroidService;->updateRegistrationIdToNemo(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$000(Lcom/liquable/nemo/android/service/ChattingAndroidService;Ljava/lang/String;)V

    .line 91
    .end local v1    # "event":Lcom/liquable/nemo/PushMessagingEvent;
    :cond_0
    :goto_0
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setHasScreenBeenOff(Z)V

    .line 94
    :cond_1
    const-string/jumbo v3, "com.liquable.nemo.chat.model.ROBOT_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/chat/model/RobotEvent;->SEND_TO_ROBOT_GROUP:Lcom/liquable/nemo/chat/model/RobotEvent;

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    const-string/jumbo v3, "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "messageId":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 107
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/liquable/nemo/android/service/ChattingAndroidService$1$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$1$1;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService$1;)V

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 112
    .local v0, "dummyFuture":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    iget-object v3, v3, Lcom/liquable/nemo/android/service/ChattingAndroidService;->timeoutTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v3, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # getter for: Lcom/liquable/nemo/android/service/ChattingAndroidService;->receiveSendAckListener:Lcom/liquable/nemo/client/ReceiveDataListener;
    invoke-static {v3}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$200(Lcom/liquable/nemo/android/service/ChattingAndroidService;)Lcom/liquable/nemo/client/ReceiveDataListener;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/endpoint/frame/SendAck;

    invoke-direct {v4, v2}, Lcom/liquable/nemo/endpoint/frame/SendAck;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/liquable/nemo/client/ReceiveDataListener;->onReceive(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V

    .line 117
    .end local v0    # "dummyFuture":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    .end local v2    # "messageId":Ljava/lang/String;
    :cond_2
    return-void

    .line 87
    .restart local v1    # "event":Lcom/liquable/nemo/PushMessagingEvent;
    :cond_3
    sget-object v3, Lcom/liquable/nemo/PushMessagingEvent$Type;->MIGRATE:Lcom/liquable/nemo/PushMessagingEvent$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/PushMessagingEvent;->getType()Lcom/liquable/nemo/PushMessagingEvent$Type;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 88
    iget-object v3, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$1;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-virtual {v1}, Lcom/liquable/nemo/PushMessagingEvent;->getRegistrationId()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/liquable/nemo/android/service/ChattingAndroidService;->migrateRegistrationIdToNemo(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$100(Lcom/liquable/nemo/android/service/ChattingAndroidService;Ljava/lang/String;)V

    goto :goto_0
.end method
