.class Lcom/liquable/nemo/android/service/ChattingAndroidService$4$1;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService$4;->onReceive(Lcom/liquable/nemo/endpoint/frame/SendAck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$4;

.field final synthetic val$frame:Lcom/liquable/nemo/endpoint/frame/SendAck;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService$4;Lcom/liquable/nemo/endpoint/frame/SendAck;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/android/service/ChattingAndroidService$4;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$4$1;->this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$4;

    iput-object p2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$4$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/SendAck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$4$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/SendAck;

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/frame/SendAck;->getMessageId()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "messageId":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$4$1;->this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$4;

    iget-object v1, v1, Lcom/liquable/nemo/android/service/ChattingAndroidService$4;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # invokes: Lcom/liquable/nemo/android/service/ChattingAndroidService;->cancelResendSchedule(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$300(Lcom/liquable/nemo/android/service/ChattingAndroidService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$4$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/SendAck;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/SendAck;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->updateReceiveSendAck(Ljava/lang/String;)V

    .line 158
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingService:Lcom/liquable/nemo/client/service/ChattingService;

    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$4$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/SendAck;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/SendAck;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/service/ChattingService;->removeWaitSendAcks(Ljava/lang/String;)Z

    .line 160
    :cond_0
    return-void
.end method
