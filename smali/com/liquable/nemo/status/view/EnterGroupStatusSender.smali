.class public Lcom/liquable/nemo/status/view/EnterGroupStatusSender;
.super Ljava/lang/Object;
.source "EnterGroupStatusSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/status/view/EnterGroupStatusSender$LazyHolder;
    }
.end annotation


# static fields
.field private static final SEND_ENTER_GROUP_STATUS_INTERVAL:J = 0x7530L


# instance fields
.field private final recentSentChatGroupTopics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/liquable/nemo/status/view/EnterGroupStatusSender$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/status/view/EnterGroupStatusSender$1;-><init>(Lcom/liquable/nemo/status/view/EnterGroupStatusSender;)V

    iput-object v0, p0, Lcom/liquable/nemo/status/view/EnterGroupStatusSender;->recentSentChatGroupTopics:Ljava/util/Map;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/status/view/EnterGroupStatusSender$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/status/view/EnterGroupStatusSender$1;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/liquable/nemo/status/view/EnterGroupStatusSender;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/liquable/nemo/status/view/EnterGroupStatusSender;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/liquable/nemo/status/view/EnterGroupStatusSender$LazyHolder;->INSTANCE:Lcom/liquable/nemo/status/view/EnterGroupStatusSender;

    return-object v0
.end method


# virtual methods
.method public send(Ljava/lang/String;)V
    .locals 6
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/liquable/nemo/status/model/EnterGroupStatus;

    invoke-direct {v0}, Lcom/liquable/nemo/status/model/EnterGroupStatus;-><init>()V

    .line 37
    .local v0, "enterGroupStatus":Lcom/liquable/nemo/status/model/EnterGroupStatus;
    iget-object v2, p0, Lcom/liquable/nemo/status/view/EnterGroupStatusSender;->recentSentChatGroupTopics:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 39
    .local v1, "insertTime":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v2, p1, v0}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendChatStatus(Ljava/lang/String;Lcom/liquable/nemo/status/model/IChatStatus;)V

    .line 44
    iget-object v2, p0, Lcom/liquable/nemo/status/view/EnterGroupStatusSender;->recentSentChatGroupTopics:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
