.class Lcom/liquable/nemo/cubiehead/ChattingLite$20;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->initInputMessageWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$20;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 652
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$20;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 653
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$20;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    # getter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$400(Lcom/liquable/nemo/cubiehead/ChattingLite;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/status/model/TypingStatus;

    invoke-direct {v2}, Lcom/liquable/nemo/status/model/TypingStatus;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendChatStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V

    .line 656
    :cond_0
    return-void
.end method
