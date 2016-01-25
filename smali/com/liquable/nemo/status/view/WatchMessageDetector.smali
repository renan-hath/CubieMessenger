.class public Lcom/liquable/nemo/status/view/WatchMessageDetector;
.super Ljava/lang/Object;
.source "WatchMessageDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/status/view/WatchMessageDetector$LazyHolder;
    }
.end annotation


# instance fields
.field private delaySendStatus:Ljava/lang/Runnable;

.field private final handler:Landroid/os/Handler;

.field private final recentSentStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/status/model/WatchMessageStatus;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/liquable/nemo/status/view/WatchMessageDetector$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/status/view/WatchMessageDetector$1;-><init>(Lcom/liquable/nemo/status/view/WatchMessageDetector;)V

    iput-object v0, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->recentSentStatus:Ljava/util/Map;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->handler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/status/view/WatchMessageDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/status/view/WatchMessageDetector$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/status/view/WatchMessageDetector;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/status/view/WatchMessageDetector;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/status/view/WatchMessageDetector;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->recentSentStatus:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance()Lcom/liquable/nemo/status/view/WatchMessageDetector;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/liquable/nemo/status/view/WatchMessageDetector$LazyHolder;->INSTANCE:Lcom/liquable/nemo/status/view/WatchMessageDetector;

    return-object v0
.end method


# virtual methods
.method public cancelDetect()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->delaySendStatus:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->delaySendStatus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->delaySendStatus:Ljava/lang/Runnable;

    .line 53
    :cond_0
    return-void
.end method

.method public startDetect(Landroid/widget/AbsListView;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 15
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/liquable/nemo/status/view/WatchMessageDetector;->cancelDetect()V

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v9, v11

    .line 60
    .local v9, "middleY":F
    const/4 v3, 0x0

    .line 61
    .local v3, "foundItemView":Landroid/view/View;
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 63
    .local v2, "delta":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v11

    if-ge v4, v11, :cond_2

    .line 64
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 67
    .local v7, "itemView":Landroid/view/View;
    instance-of v11, v7, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;

    if-nez v11, :cond_0

    instance-of v11, v7, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;

    if-nez v11, :cond_0

    instance-of v11, v7, Lcom/liquable/nemo/message/view/PaintMessageSelfView;

    if-nez v11, :cond_0

    instance-of v11, v7, Lcom/liquable/nemo/message/view/PaintMessageOtherView;

    if-eqz v11, :cond_1

    .line 70
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v6, v11

    .line 72
    .local v6, "itemMiddleY":F
    sub-float v11, v6, v9

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 73
    .local v1, "currentDelta":F
    cmpg-float v11, v1, v2

    if-gez v11, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v9, v11

    if-lez v11, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v11, v9, v11

    if-gez v11, :cond_1

    .line 74
    move v2, v1

    .line 75
    move-object v3, v7

    .line 63
    .end local v1    # "currentDelta":F
    .end local v6    # "itemMiddleY":F
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v7    # "itemView":Landroid/view/View;
    :cond_2
    if-eqz v3, :cond_3

    .line 81
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/message/model/IDomainMessage;

    .line 84
    .local v8, "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    sget-object v11, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    sget-object v12, Lcom/liquable/nemo/client/ServerType;->PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    if-ne v11, v12, :cond_4

    .line 85
    invoke-interface {v8}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/liquable/nemo/status/model/WatchMessageStatus;->byManual(Ljava/lang/String;)Lcom/liquable/nemo/status/model/WatchMessageStatus;

    move-result-object v10

    .line 92
    .local v10, "watchMessageStatus":Lcom/liquable/nemo/status/model/WatchMessageStatus;
    :goto_1
    iget-object v11, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->recentSentStatus:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 94
    .local v5, "insertTime":Ljava/lang/Long;
    if-eqz v5, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/32 v13, 0x493e0

    cmp-long v11, v11, v13

    if-gez v11, :cond_5

    .line 108
    .end local v5    # "insertTime":Ljava/lang/Long;
    .end local v8    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    .end local v10    # "watchMessageStatus":Lcom/liquable/nemo/status/model/WatchMessageStatus;
    :cond_3
    :goto_2
    return-void

    .line 89
    .restart local v8    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    :cond_4
    invoke-interface {v8}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/liquable/nemo/status/model/WatchMessageStatus;->byDetect(Ljava/lang/String;)Lcom/liquable/nemo/status/model/WatchMessageStatus;

    move-result-object v10

    .restart local v10    # "watchMessageStatus":Lcom/liquable/nemo/status/model/WatchMessageStatus;
    goto :goto_1

    .line 98
    .restart local v5    # "insertTime":Ljava/lang/Long;
    :cond_5
    new-instance v11, Lcom/liquable/nemo/status/view/WatchMessageDetector$2;

    move-object/from16 v0, p2

    invoke-direct {v11, p0, v0, v10}, Lcom/liquable/nemo/status/view/WatchMessageDetector$2;-><init>(Lcom/liquable/nemo/status/view/WatchMessageDetector;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/status/model/WatchMessageStatus;)V

    iput-object v11, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->delaySendStatus:Ljava/lang/Runnable;

    .line 106
    iget-object v11, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->handler:Landroid/os/Handler;

    iget-object v12, p0, Lcom/liquable/nemo/status/view/WatchMessageDetector;->delaySendStatus:Ljava/lang/Runnable;

    const-wide/16 v13, 0x5dc

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
