.class Lcom/liquable/nemo/android/service/ChattingAndroidService$5$1;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService$5;->onReceive(Lcom/liquable/nemo/endpoint/frame/SendError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$5;

.field final synthetic val$frame:Lcom/liquable/nemo/endpoint/frame/SendError;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService$5;Lcom/liquable/nemo/endpoint/frame/SendError;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/android/service/ChattingAndroidService$5;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$5$1;->this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$5;

    iput-object p2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$5$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/SendError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$5$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/SendError;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/SendError;->getSendText()Lcom/liquable/nemo/endpoint/frame/SendText;

    move-result-object v1

    .line 172
    .local v1, "sendText":Lcom/liquable/nemo/endpoint/frame/SendText;
    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/frame/SendText;->getMessageId()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "messageId":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$5$1;->this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$5;

    iget-object v2, v2, Lcom/liquable/nemo/android/service/ChattingAndroidService$5;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # invokes: Lcom/liquable/nemo/android/service/ChattingAndroidService;->cancelResendSchedule(Ljava/lang/String;)Z
    invoke-static {v2, v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$300(Lcom/liquable/nemo/android/service/ChattingAndroidService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->updateReceiveSendError(Ljava/lang/String;)V

    .line 175
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingService:Lcom/liquable/nemo/client/service/ChattingService;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/client/service/ChattingService;->removeWaitSendAcks(Ljava/lang/String;)Z

    .line 177
    :cond_0
    return-void
.end method
