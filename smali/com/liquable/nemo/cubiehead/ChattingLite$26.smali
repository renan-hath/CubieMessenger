.class Lcom/liquable/nemo/cubiehead/ChattingLite$26;
.super Lcom/liquable/nemo/util/SendTextAsyncTask;
.source "ChattingLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->sendWithSecretText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/SendTextAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final target:Lcom/liquable/nemo/group/model/ChatGroup;

.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

.field final synthetic val$message:Lcom/liquable/nemo/message/model/SecretTextMessage;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;Lcom/liquable/nemo/message/model/SecretTextMessage;)V
    .locals 1
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 949
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$26;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    iput-object p2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$26;->val$message:Lcom/liquable/nemo/message/model/SecretTextMessage;

    invoke-direct {p0}, Lcom/liquable/nemo/util/SendTextAsyncTask;-><init>()V

    .line 950
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$26;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$26;->target:Lcom/liquable/nemo/group/model/ChatGroup;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 949
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/cubiehead/ChattingLite$26;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 954
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$26;->target:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;->lite:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendSecretTextMessage(ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V

    .line 956
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$26;->target:Lcom/liquable/nemo/group/model/ChatGroup;

    iget-object v2, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$26;->val$message:Lcom/liquable/nemo/message/model/SecretTextMessage;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendSecretTextMessage(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/message/model/SecretTextMessage;)V

    .line 957
    const/4 v0, 0x0

    return-object v0
.end method
