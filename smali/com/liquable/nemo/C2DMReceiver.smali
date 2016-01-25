.class public Lcom/liquable/nemo/C2DMReceiver;
.super Lcom/google/android/c2dm/C2DMBaseReceiver;
.source "C2DMReceiver.java"


# static fields
.field static debugLogger:Lcom/liquable/nemo/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/liquable/nemo/C2DMReceiver;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/C2DMReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "com.liquable.nemo.C2DMReceiver"

    invoke-direct {p0, v0}, Lcom/google/android/c2dm/C2DMBaseReceiver;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method


# virtual methods
.method public onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorId"    # Ljava/lang/String;

    .prologue
    .line 25
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    sget-object v6, Lcom/liquable/nemo/C2DMReceiver;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v17, "onMessage"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 31
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string/jumbo v6, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 43
    .local v16, "title":Ljava/lang/String;
    const-string/jumbo v6, "systemNoticeId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 44
    .local v15, "systemNoticeId":Ljava/lang/String;
    const-string/jumbo v6, "dialId"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "voipDialId":Ljava/lang/String;
    const-string/jumbo v6, "forumReplyDigest"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 47
    .local v11, "forumReplyDigest":Ljava/lang/String;
    invoke-static {v15}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 48
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->startReceivingSystemNotice(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {v11}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 50
    new-instance v6, Lcom/liquable/nemo/forum/model/article/ArticleReplier;

    const-string/jumbo v17, "replierNickname"

    .line 51
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "forumBoardId"

    .line 52
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "forumArticleId"

    .line 53
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v6, v0, v1, v2}, Lcom/liquable/nemo/forum/model/article/ArticleReplier;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->startForumReplyDigest(Landroid/content/Context;Lcom/liquable/nemo/forum/model/article/ArticleReplier;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-static/range {v16 .. v16}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 55
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->startPlayingNotification(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 57
    const-string/jumbo v6, "dialerUid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "dialerUid":Ljava/lang/String;
    const-string/jumbo v6, "ip"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "ipAddressWithPort":Ljava/lang/String;
    const-string/jumbo v6, "s"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 61
    .local v14, "serverTimeInSeconds":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 62
    .local v8, "serverTime":J
    if-eqz v14, :cond_4

    .line 64
    :try_start_0
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 65
    .local v12, "parsed":J
    const-wide/16 v17, 0x3e8

    mul-long v8, v12, v17

    .line 70
    .end local v12    # "parsed":J
    :cond_4
    :goto_1
    new-instance v3, Lcom/liquable/nemo/voip/session/AnswerCall;

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 72
    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v3 .. v9}, Lcom/liquable/nemo/voip/session/AnswerCall;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 75
    .local v3, "answerCall":Lcom/liquable/nemo/voip/session/AnswerCall;
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;->startAnswerCall(Landroid/content/Context;Lcom/liquable/nemo/voip/session/AnswerCall;)V

    goto/16 :goto_0

    .line 90
    .end local v3    # "answerCall":Lcom/liquable/nemo/voip/session/AnswerCall;
    .end local v5    # "dialerUid":Ljava/lang/String;
    .end local v7    # "ipAddressWithPort":Ljava/lang/String;
    .end local v8    # "serverTime":J
    .end local v14    # "serverTimeInSeconds":Ljava/lang/String;
    :cond_5
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v10, "c2dmIntent":Landroid/content/Intent;
    const-string/jumbo v6, "com.liquable.nemo.ACTION_RETRIVE_OFFLINE_MESSAGE"

    invoke-virtual {v10, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-class v6, Lcom/liquable/nemo/android/service/ChattingAndroidService;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 93
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 66
    .end local v10    # "c2dmIntent":Landroid/content/Intent;
    .restart local v5    # "dialerUid":Ljava/lang/String;
    .restart local v7    # "ipAddressWithPort":Ljava/lang/String;
    .restart local v8    # "serverTime":J
    .restart local v14    # "serverTimeInSeconds":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public onMigrated(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 100
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getComposteUid()Lcom/liquable/nemo/model/account/CompositeUid;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getComposteUid()Lcom/liquable/nemo/model/account/CompositeUid;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/liquable/nemo/model/account/CompositeUid;->isSupportReceivingPush()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {p2}, Lcom/liquable/nemo/PushMessagingEvent;->createMigrateRegistrationIdIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getComposteUid()Lcom/liquable/nemo/model/account/CompositeUid;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getComposteUid()Lcom/liquable/nemo/model/account/CompositeUid;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/liquable/nemo/model/account/CompositeUid;->isSupportReceivingPush()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {p2}, Lcom/liquable/nemo/PushMessagingEvent;->createUpdateRegistrationIdIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 115
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
