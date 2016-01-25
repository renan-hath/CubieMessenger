.class public Lcom/liquable/nemo/regist/RestoreDataActivity;
.super Lcom/liquable/nemo/regist/AbstractRegistActivity;
.source "RestoreDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;
    }
.end annotation


# static fields
.field private static final PROFILE_DTO_KEY:Ljava/lang/String; = "profileDto"


# instance fields
.field private accountDto:Lcom/liquable/nemo/model/account/AccountDto;

.field private profileDto:Lcom/liquable/nemo/model/account/ProfileDto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/regist/RestoreDataActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step1RestoreBackup(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step6SaveMultiChatGroup(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step7ProcessMissingMultiChatGroups(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step8RecoverOneToOneChatGroupsAndStop(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/regist/RestoreDataActivity;)Lcom/liquable/nemo/model/account/AccountDto;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/regist/RestoreDataActivity;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/regist/RestoreDataActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step2ListFriendsFromServer()V

    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/regist/RestoreDataActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->successAndReturn()V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;
    .param p1, "x1"    # Ljava/lang/Exception;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/regist/RestoreDataActivity;->failAndFinishApp(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step3RecoverFriends(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step4RecoverOneToOneChatGroups(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/liquable/nemo/regist/RestoreDataActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/RestoreDataActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step5ListMultiChatGroupsFromServer()V

    return-void
.end method

.method private failAndFinishApp(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 3
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "failedMethod"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->finishRestoringDataOnError()V

    .line 70
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/analytics/CrittercismService;->logException(Ljava/lang/Throwable;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->removeDialog(I)V

    .line 73
    invoke-static {p0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00a6

    .line 74
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00a7

    .line 75
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04da

    new-instance v2, Lcom/liquable/nemo/regist/RestoreDataActivity$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/regist/RestoreDataActivity$2;-><init>(Lcom/liquable/nemo/regist/RestoreDataActivity;)V

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d04a7

    new-instance v2, Lcom/liquable/nemo/regist/RestoreDataActivity$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/regist/RestoreDataActivity$1;-><init>(Lcom/liquable/nemo/regist/RestoreDataActivity;)V

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    return-void
.end method

.method public static getProfileDtoFromResult(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 1
    .param p0, "data"    # Landroid/content/Intent;

    .prologue
    .line 59
    const-string/jumbo v0, "profileDto"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/ProfileDto;

    return-object v0
.end method

.method private step1RestoreBackup(Z)V
    .locals 2
    .param p1, "needSync"    # Z

    .prologue
    .line 118
    new-instance v0, Lcom/liquable/nemo/regist/RestoreDataActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$3;-><init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 145
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    return-void
.end method

.method private step2ListFriendsFromServer()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/liquable/nemo/regist/RestoreDataActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/liquable/nemo/regist/RestoreDataActivity$4;-><init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 175
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity$4;->execute([Ljava/lang/Object;)V

    .line 176
    return-void
.end method

.method private step3RecoverFriends(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/friend/FriendDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/friend/FriendDto;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step5ListMultiChatGroupsFromServer()V

    .line 199
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Lcom/liquable/nemo/regist/RestoreDataActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$5;-><init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 197
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private step4RecoverOneToOneChatGroups(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step5ListMultiChatGroupsFromServer()V

    .line 234
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v0, Lcom/liquable/nemo/regist/RestoreDataActivity$6;

    invoke-direct {v0, p0, p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$6;-><init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Landroid/content/Context;Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 233
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity$6;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private step5ListMultiChatGroupsFromServer()V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Lcom/liquable/nemo/regist/RestoreDataActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/liquable/nemo/regist/RestoreDataActivity$7;-><init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 266
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity$7;->execute([Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method private step6SaveMultiChatGroup(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/group/ChatGroupDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "chatGroupDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/group/ChatGroupDto;>;"
    new-instance v0, Lcom/liquable/nemo/regist/RestoreDataActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$8;-><init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 283
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 284
    return-void
.end method

.method private step7ProcessMissingMultiChatGroups(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 288
    .local v1, "allMemberIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 289
    .local v2, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 290
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v2    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_1
    iget-object v4, p0, Lcom/liquable/nemo/regist/RestoreDataActivity;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 294
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/regist/model/RegistrationManager;->findLocalMissingAccount(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 296
    .local v3, "missingAccountIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lcom/liquable/nemo/regist/RestoreDataActivity$9;

    invoke-direct {v4, p0, p0, v3}, Lcom/liquable/nemo/regist/RestoreDataActivity$9;-><init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Landroid/content/Context;Ljava/util/List;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    .line 345
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/regist/RestoreDataActivity$9;->execute([Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method private step8RecoverOneToOneChatGroupsAndStop(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v0, Lcom/liquable/nemo/regist/RestoreDataActivity$10;

    invoke-direct {v0, p0, p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$10;-><init>(Lcom/liquable/nemo/regist/RestoreDataActivity;Landroid/content/Context;Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 376
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity$10;->execute([Ljava/lang/Object;)V

    .line 377
    return-void
.end method

.method private successAndReturn()V
    .locals 4

    .prologue
    .line 380
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/regist/RestoreDataActivity;->removeDialog(I)V

    .line 381
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->finishRestoringData()V

    .line 383
    iget-object v2, p0, Lcom/liquable/nemo/regist/RestoreDataActivity;->profileDto:Lcom/liquable/nemo/model/account/ProfileDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/ProfileDto;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "nickname is null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 391
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "profileDto"

    iget-object v3, p0, Lcom/liquable/nemo/regist/RestoreDataActivity;->profileDto:Lcom/liquable/nemo/model/account/ProfileDto;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 393
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/liquable/nemo/regist/RestoreDataActivity;->setResult(ILandroid/content/Intent;)V

    .line 394
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->finish()V

    .line 395
    return-void
.end method


# virtual methods
.method protected onNotLoggedInCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v3

    invoke-interface {v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->beginRestoringData()V

    .line 100
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/RestoreDataActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;->isNeedSync(Landroid/content/Intent;)Z
    invoke-static {v1}, Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;->access$100(Landroid/content/Intent;)Z

    move-result v2

    .line 102
    .local v2, "needSync":Z
    # invokes: Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;->getProfileDto(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;
    invoke-static {v1}, Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;->access$200(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/regist/RestoreDataActivity;->profileDto:Lcom/liquable/nemo/model/account/ProfileDto;

    .line 103
    iget-object v3, p0, Lcom/liquable/nemo/regist/RestoreDataActivity;->profileDto:Lcom/liquable/nemo/model/account/ProfileDto;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/account/ProfileDto;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/regist/RestoreDataActivity;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    .line 104
    iget-object v3, p0, Lcom/liquable/nemo/regist/RestoreDataActivity;->accountDto:Lcom/liquable/nemo/model/account/AccountDto;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    :try_start_0
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "nickname is null"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, v2}, Lcom/liquable/nemo/regist/RestoreDataActivity;->step1RestoreBackup(Z)V

    .line 112
    return-void
.end method

.method protected onNotLoggedResume()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method
