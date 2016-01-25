.class Lcom/liquable/nemo/status/view/WatchMessageDetector$2;
.super Ljava/lang/Object;
.source "WatchMessageDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/status/view/WatchMessageDetector;->startDetect(Landroid/widget/AbsListView;Lcom/liquable/nemo/group/model/ChatGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/status/view/WatchMessageDetector;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field final synthetic val$watchMessageStatus:Lcom/liquable/nemo/status/model/WatchMessageStatus;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/status/view/WatchMessageDetector;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/status/model/WatchMessageStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/status/view/WatchMessageDetector;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector$2;->this$0:Lcom/liquable/nemo/status/view/WatchMessageDetector;

    iput-object p2, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector$2;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    iput-object p3, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector$2;->val$watchMessageStatus:Lcom/liquable/nemo/status/model/WatchMessageStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 102
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector$2;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector$2;->val$watchMessageStatus:Lcom/liquable/nemo/status/model/WatchMessageStatus;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendChatStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V

    .line 103
    iget-object v0, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector$2;->this$0:Lcom/liquable/nemo/status/view/WatchMessageDetector;

    # getter for: Lcom/liquable/nemo/status/view/WatchMessageDetector;->recentSentStatus:Ljava/util/Map;
    invoke-static {v0}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->access$100(Lcom/liquable/nemo/status/view/WatchMessageDetector;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector$2;->val$watchMessageStatus:Lcom/liquable/nemo/status/model/WatchMessageStatus;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    return-void
.end method
