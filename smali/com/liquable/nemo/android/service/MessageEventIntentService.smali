.class public Lcom/liquable/nemo/android/service/MessageEventIntentService;
.super Landroid/app/IntentService;
.source "MessageEventIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string/jumbo v0, "MessageEventIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intentWithMessageEvent"    # Landroid/content/Intent;

    .prologue
    .line 16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 17
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/liquable/nemo/android/service/MessageEventIntentService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 19
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string/jumbo v3, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/model/MessageEvent;

    .line 38
    .local v1, "event":Lcom/liquable/nemo/chat/model/MessageEvent;
    sget-object v3, Lcom/liquable/nemo/chat/model/MessageEvent;->UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/chat/model/MessageEvent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const-string/jumbo v3, "com.liquable.nemo.chat.model.KEY_MESSAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/IDomainMessage;

    .line 44
    .local v0, "domainMessage":Lcom/liquable/nemo/message/model/IDomainMessage;
    instance-of v3, v0, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v3, :cond_2

    .line 45
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewMsgOnStatusBarWithBigPictureStyle(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_0

    .line 46
    :cond_2
    instance-of v3, v0, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 47
    check-cast v2, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 49
    .local v2, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/PictureMessage;->isLegacy()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v3, p0, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->saveThumbnailForBigPictureMessage(Landroid/content/Context;Lcom/liquable/nemo/message/model/PictureMessage;)V

    .line 54
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewMsgOnStatusBarWithBigPictureStyle(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    goto :goto_0
.end method
