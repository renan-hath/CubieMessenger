.class public Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;
.super Landroid/app/IntentService;
.source "ReceiveGcmIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;
    }
.end annotation


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "ReceiveGcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->lambda$handleForumReplyDigestIntent$25(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->lambda$null$23(Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->lambda$null$24(Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;Ljava/lang/Exception;)V

    return-void
.end method

.method private handleForumReplyDigestIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    const-string/jumbo v4, "ArticleReplier"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/forum/model/article/ArticleReplier;

    .line 121
    .local v2, "data":Lcom/liquable/nemo/forum/model/article/ArticleReplier;
    :try_start_0
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->getBoardId()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->getArticleId()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-virtual {v4, v5, v6}, Lcom/liquable/nemo/forum/ForumDaemon;->findArticleById(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v0

    .line 123
    .local v0, "article":Lcom/liquable/nemo/forum/model/article/Article;
    if-nez v0, :cond_1

    .line 149
    .end local v0    # "article":Lcom/liquable/nemo/forum/model/article/Article;
    :cond_0
    :goto_0
    return-void

    .line 126
    .restart local v0    # "article":Lcom/liquable/nemo/forum/model/article/Article;
    :cond_1
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->getBoardId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/forum/ForumDaemon;->findForumBoardById(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v1

    .line 127
    .local v1, "board":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    if-eqz v1, :cond_0

    .line 131
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v2, v0}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/liquable/nemo/model/ForumArticleNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0    # "article":Lcom/liquable/nemo/forum/model/article/Article;
    .end local v1    # "board":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fail to find article for notification:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static synthetic lambda$handleForumReplyDigestIntent$25(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 3

    .prologue
    .line 132
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {p0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/ForumDaemon;->findIconBitmap(Ljava/lang/String;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {p1, p0, p2}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$2;->lambdaFactory$(Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)Lcom/liquable/future/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    invoke-static {p1, p0, p2}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$$Lambda$3;->lambdaFactory$(Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)Lcom/liquable/future/Consumer;

    move-result-object v2

    .line 137
    invoke-interface {v0, v1, v2}, Lcom/liquable/future/IFuture;->consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    .line 144
    return-void
.end method

.method private static synthetic lambda$null$23(Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 133
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->getReplierNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p1, p2}, Lcom/liquable/nemo/android/NotifyManager;->notifyForumReplyDigest(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)V

    .line 137
    return-void
.end method

.method private static synthetic lambda$null$24(Lcom/liquable/nemo/forum/model/article/ArticleReplier;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;Ljava/lang/Exception;)V
    .locals 3
    .param p3, "e"    # Ljava/lang/Exception;

    .prologue
    .line 138
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->getReplierNickname()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/liquable/nemo/android/NotifyManager;->notifyForumReplyDigest(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)V

    .line 142
    return-void
.end method

.method public static startAnswerCall(Landroid/content/Context;Lcom/liquable/nemo/voip/session/AnswerCall;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "answerCall"    # Lcom/liquable/nemo/voip/session/AnswerCall;

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->ANSWER_CALL:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    sget-object v1, Lcom/liquable/nemo/voip/session/AnswerCall;->INTENT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    return-void
.end method

.method public static startForumReplyDigest(Landroid/content/Context;Lcom/liquable/nemo/forum/model/article/ArticleReplier;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/liquable/nemo/forum/model/article/ArticleReplier;

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->FORUM_REPLY_DIGEST:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "ArticleReplier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 56
    return-void
.end method

.method public static startPlayingNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->PLAY_NOTIFICATION:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    return-void
.end method

.method public static startReceivingSystemNotice(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "systemNoticeId"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "systemNoticeId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->RECEIVE_SYSTEM_NOTICE:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "actionName":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    move-result-object v0

    .line 77
    .local v0, "action":Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;
    if-eqz v0, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Lcom/liquable/util/DesignContract;->preCondition(Z)V

    .line 79
    sget-object v7, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$1;->$SwitchMap$com$liquable$nemo$android$service$ReceiveGcmIntentService$ReceiveGcmAction:[I

    invoke-virtual {v0}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 116
    :cond_0
    :goto_1
    return-void

    .line 77
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 81
    :pswitch_0
    const-string/jumbo v7, "systemNoticeId"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "systemNoticeId":Ljava/lang/String;
    :try_start_0
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-virtual {v7, v5}, Lcom/liquable/nemo/notice/model/NoticeManager;->importSystemNoticeById(Ljava/lang/String;)Lcom/liquable/nemo/notice/BaseNotice;

    move-result-object v4

    .line 85
    .local v4, "noticeOrNull":Lcom/liquable/nemo/notice/BaseNotice;
    instance-of v7, v4, Lcom/liquable/nemo/notice/ReactivationStickerNotice;

    if-eqz v7, :cond_2

    .line 86
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v4, p0}, Lcom/liquable/nemo/notice/BaseNotice;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    check-cast v4, Lcom/liquable/nemo/notice/ReactivationStickerNotice;

    .end local v4    # "noticeOrNull":Lcom/liquable/nemo/notice/BaseNotice;
    invoke-virtual {v7, v8, v4}, Lcom/liquable/nemo/android/NotifyManager;->notifyReactivationStickerNotice(Ljava/lang/String;Lcom/liquable/nemo/notice/ReactivationStickerNotice;)V

    .line 88
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v7

    invoke-interface {v7}, Lcom/liquable/nemo/analytics/IAnalyticsService;->receiveReactivationStickerNotification()V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Lcom/liquable/nemo/client/AsyncException;
    sget-object v7, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fail to call noticeManager.importSystemNoticeById:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    .end local v3    # "e":Lcom/liquable/nemo/client/AsyncException;
    .restart local v4    # "noticeOrNull":Lcom/liquable/nemo/notice/BaseNotice;
    :cond_2
    if-eqz v4, :cond_0

    .line 92
    :try_start_1
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v4, p0}, Lcom/liquable/nemo/notice/BaseNotice;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/android/NotifyManager;->notifyGeneral(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 99
    .end local v4    # "noticeOrNull":Lcom/liquable/nemo/notice/BaseNotice;
    .end local v5    # "systemNoticeId":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v7, "title"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "title":Ljava/lang/String;
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v7, v6}, Lcom/liquable/nemo/android/NotifyManager;->notifyGeneral(Ljava/lang/String;)V

    goto :goto_1

    .line 103
    .end local v6    # "title":Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->handleForumReplyDigestIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 106
    :pswitch_3
    sget-object v7, Lcom/liquable/nemo/voip/session/AnswerCall;->INTENT_KEY:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/voip/session/AnswerCall;

    .line 107
    .local v2, "answerCall":Lcom/liquable/nemo/voip/session/AnswerCall;
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    invoke-virtual {v7, v2}, Lcom/liquable/nemo/voip/VoipDaemon;->tryAnswerCall(Lcom/liquable/nemo/voip/session/AnswerCall;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 111
    new-instance v7, Lcom/liquable/nemo/voip/AnswerCallActivity$CreateIntent;

    invoke-direct {v7, p0, v2}, Lcom/liquable/nemo/voip/AnswerCallActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/voip/session/AnswerCall;)V

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
