.class Lcom/liquable/nemo/android/service/ChattingAndroidService$3$1;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService$3;->onReceive(Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$3;

.field final synthetic val$frame:Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService$3;Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/android/service/ChattingAndroidService$3;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$3$1;->this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$3;

    iput-object p2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$3$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 138
    invoke-static {}, Lcom/liquable/nemo/status/model/ChatStatusMapper;->getInstance()Lcom/liquable/nemo/status/model/ChatStatusMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$3$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/status/model/ChatStatusMapper;->decode(Ljava/lang/String;)Lcom/liquable/nemo/status/model/IChatStatus;

    move-result-object v3

    .line 140
    .local v3, "decode":Lcom/liquable/nemo/status/model/IChatStatus;
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    new-instance v0, Lcom/liquable/nemo/status/model/ReceivedStatus;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$3$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;

    invoke-virtual {v1}, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->getTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$3$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;

    .line 141
    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->getSenderUid()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$3$1;->val$frame:Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;

    .line 143
    invoke-virtual {v4}, Lcom/liquable/nemo/endpoint/frame/ReceiveLiteText;->getSendTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/status/model/ReceivedStatus;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;J)V

    .line 140
    invoke-virtual {v6, v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastStatus(Lcom/liquable/nemo/status/model/ReceivedStatus;)V

    .line 144
    return-void
.end method
