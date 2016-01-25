.class Lcom/liquable/nemo/android/service/ChattingAndroidService$2$1;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService$2;->onReceive(Lcom/liquable/nemo/endpoint/frame/ReceiveText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$2;

.field final synthetic val$frame:Lcom/liquable/nemo/endpoint/frame/ReceiveText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService$2;Lcom/liquable/nemo/endpoint/frame/ReceiveText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/android/service/ChattingAndroidService$2;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$2$1;->this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$2;

    iput-object p2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$2$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$2$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/model/MessageProcessor;->fromReceiveText(Lcom/liquable/nemo/endpoint/frame/ReceiveText;)Lcom/liquable/nemo/message/model/DomainMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->receiveDomainMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 128
    return-void
.end method
