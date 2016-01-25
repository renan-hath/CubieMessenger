.class public Lcom/liquable/nemo/notice/model/NoticeManager;
.super Ljava/lang/Object;
.source "NoticeManager.java"


# instance fields
.field private final broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

.field private final existingSystemNoticeDao:Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;

.field private final noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

.field private final noticeService:Lcom/liquable/nemo/notice/NoticeService;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/notice/NoticeDao;Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;Lcom/liquable/nemo/notice/NoticeService;Lcom/liquable/nemo/android/BroadcastManager;)V
    .locals 0
    .param p1, "noticeDao"    # Lcom/liquable/nemo/notice/NoticeDao;
    .param p2, "existingSystemNoticeDao"    # Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;
    .param p3, "noticeService"    # Lcom/liquable/nemo/notice/NoticeService;
    .param p4, "broadcastManager"    # Lcom/liquable/nemo/android/BroadcastManager;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    .line 42
    iput-object p2, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->existingSystemNoticeDao:Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;

    .line 43
    iput-object p3, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeService:Lcom/liquable/nemo/notice/NoticeService;

    .line 44
    iput-object p4, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    .line 45
    return-void
.end method

.method private findVersionUpgrade(Ljava/util/List;)Lcom/liquable/nemo/notice/VersionNotice;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseSystemNotice;",
            ">;)",
            "Lcom/liquable/nemo/notice/VersionNotice;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "systemNotices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseSystemNotice;>;"
    new-instance v0, Ljava/util/TreeSet;

    new-instance v3, Lcom/liquable/nemo/notice/model/NoticeManager$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/notice/model/NoticeManager$1;-><init>(Lcom/liquable/nemo/notice/model/NoticeManager;)V

    invoke-direct {v0, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 75
    .local v0, "importantNotices":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/liquable/nemo/notice/VersionNotice;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/notice/BaseSystemNotice;

    .line 76
    .local v1, "systemNotice":Lcom/liquable/nemo/notice/BaseSystemNotice;
    instance-of v4, v1, Lcom/liquable/nemo/notice/VersionNotice;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 77
    check-cast v2, Lcom/liquable/nemo/notice/VersionNotice;

    .line 78
    .local v2, "versionNotice":Lcom/liquable/nemo/notice/VersionNotice;
    invoke-virtual {v2}, Lcom/liquable/nemo/notice/VersionNotice;->isImportant()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {v2}, Lcom/liquable/nemo/notice/VersionNotice;->resolveNemoVersion()Lcom/liquable/nemo/NemoVersion;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/NemoVersion;->isNewer(Lcom/liquable/nemo/NemoVersion;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v1    # "systemNotice":Lcom/liquable/nemo/notice/BaseSystemNotice;
    .end local v2    # "versionNotice":Lcom/liquable/nemo/notice/VersionNotice;
    :cond_1
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    const/4 v3, 0x0

    .line 89
    :goto_1
    return-object v3

    :cond_2
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/notice/VersionNotice;

    goto :goto_1
.end method


# virtual methods
.method public deleteAllNotices()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/NoticeDao;->deleteAll()V

    .line 49
    return-void
.end method

.method public deleteAllNoticesForTest()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/NoticeDao;->deleteAll()V

    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->existingSystemNoticeDao:Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;->deleteAll()V

    .line 55
    return-void
.end method

.method public deleteById(J)V
    .locals 1
    .param p1, "noticeId"    # J

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/notice/NoticeDao;->deleteById(J)V

    .line 59
    return-void
.end method

.method public findById(J)Lcom/liquable/nemo/notice/BaseNotice;
    .locals 1
    .param p1, "noticeId"    # J

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/notice/NoticeDao;->findById(J)Lcom/liquable/nemo/notice/BaseNotice;

    move-result-object v0

    return-object v0
.end method

.method public getLastNoticeId()J
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/NoticeDao;->getLastNoticeId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalNewCount(J)J
    .locals 2
    .param p1, "lastReadNoticeId"    # J

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/notice/NoticeDao;->getTotalNewCount(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public importSystemNoticeById(Ljava/lang/String;)Lcom/liquable/nemo/notice/BaseNotice;
    .locals 3
    .param p1, "systemNoticeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeService:Lcom/liquable/nemo/notice/NoticeService;

    .line 105
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v1, p1, v2}, Lcom/liquable/nemo/notice/NoticeService;->findSystemNoticeById(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/notice/BaseSystemNotice;

    move-result-object v0

    .line 106
    .local v0, "notice":Lcom/liquable/nemo/notice/BaseSystemNotice;
    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/notice/NoticeDao;->insert(Lcom/liquable/nemo/notice/BaseNotice;)Z

    .line 110
    .end local v0    # "notice":Lcom/liquable/nemo/notice/BaseSystemNotice;
    :goto_0
    return-object v0

    .restart local v0    # "notice":Lcom/liquable/nemo/notice/BaseSystemNotice;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public importSystemNoticesFromServer()Lcom/liquable/nemo/notice/model/ImportNoticeResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v8, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeService:Lcom/liquable/nemo/notice/NoticeService;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    .line 115
    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-virtual {v8, v9}, Lcom/liquable/nemo/notice/NoticeService;->listSystemNotices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 117
    .local v6, "systemNoticesFromServer":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseSystemNotice;>;"
    invoke-direct {p0, v6}, Lcom/liquable/nemo/notice/model/NoticeManager;->findVersionUpgrade(Ljava/util/List;)Lcom/liquable/nemo/notice/VersionNotice;

    move-result-object v7

    .line 119
    .local v7, "versionNotice":Lcom/liquable/nemo/notice/VersionNotice;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v3, "existingSystemNotices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/ExistingSystemNotice;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/BaseSystemNotice;

    .line 121
    .local v0, "baseSystemNotice":Lcom/liquable/nemo/notice/BaseSystemNotice;
    new-instance v9, Lcom/liquable/nemo/notice/ExistingSystemNotice;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/BaseSystemNotice;->getSystemId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/liquable/nemo/notice/ExistingSystemNotice;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v0    # "baseSystemNotice":Lcom/liquable/nemo/notice/BaseSystemNotice;
    :cond_0
    iget-object v8, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->existingSystemNoticeDao:Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;

    invoke-virtual {v8, v3}, Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;->insertAll(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 126
    .local v4, "newSystemNotices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/ExistingSystemNotice;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v5, "noticesToInsert":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 130
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/notice/ExistingSystemNotice;

    .line 131
    .local v2, "existingSystemNotice":Lcom/liquable/nemo/notice/ExistingSystemNotice;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/BaseSystemNotice;

    .line 132
    .restart local v0    # "baseSystemNotice":Lcom/liquable/nemo/notice/BaseSystemNotice;
    invoke-virtual {v2}, Lcom/liquable/nemo/notice/ExistingSystemNotice;->getSystemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/BaseSystemNotice;->getSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 133
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    .end local v0    # "baseSystemNotice":Lcom/liquable/nemo/notice/BaseSystemNotice;
    .end local v2    # "existingSystemNotice":Lcom/liquable/nemo/notice/ExistingSystemNotice;
    :cond_3
    iget-object v8, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v8, v5}, Lcom/liquable/nemo/notice/NoticeDao;->insertAll(Ljava/util/List;)V

    .line 143
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    .local v1, "copyForGenerics":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/INotice;>;"
    if-eqz v7, :cond_4

    .line 146
    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 149
    :cond_4
    new-instance v8, Lcom/liquable/nemo/notice/model/ImportNoticeResult;

    invoke-direct {v8, v1, v7}, Lcom/liquable/nemo/notice/model/ImportNoticeResult;-><init>(Ljava/util/List;Lcom/liquable/nemo/notice/VersionNotice;)V

    return-object v8
.end method

.method public insertAdwaysCampaignNotice(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/notice/AdwaysCampaignNotice;
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "productName"    # Ljava/lang/String;

    .prologue
    .line 154
    const-class v4, Lcom/liquable/nemo/notice/AdwaysCampaignNotice;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/notice/model/NoticeManager;->listNoticesByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 155
    .local v2, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/BaseNotice;

    .local v0, "baseNotice":Lcom/liquable/nemo/notice/BaseNotice;
    move-object v3, v0

    .line 156
    check-cast v3, Lcom/liquable/nemo/notice/AdwaysCampaignNotice;

    .line 157
    .local v3, "purchaseNotice":Lcom/liquable/nemo/notice/AdwaysCampaignNotice;
    invoke-virtual {v3}, Lcom/liquable/nemo/notice/AdwaysCampaignNotice;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 166
    .end local v0    # "baseNotice":Lcom/liquable/nemo/notice/BaseNotice;
    .end local v3    # "purchaseNotice":Lcom/liquable/nemo/notice/AdwaysCampaignNotice;
    :goto_0
    return-object v1

    .line 162
    :cond_1
    new-instance v1, Lcom/liquable/nemo/notice/AdwaysCampaignNotice;

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, p1, p2, v4, v5}, Lcom/liquable/nemo/notice/AdwaysCampaignNotice;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 165
    .local v1, "notice":Lcom/liquable/nemo/notice/AdwaysCampaignNotice;
    iget-object v4, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v4, v1}, Lcom/liquable/nemo/notice/NoticeDao;->insert(Lcom/liquable/nemo/notice/BaseNotice;)Z

    goto :goto_0
.end method

.method public insertConfirmFriendNotice(Ljava/lang/String;JLcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)Lcom/liquable/nemo/notice/ConfirmFriendNotice;
    .locals 2
    .param p1, "friendId"    # Ljava/lang/String;
    .param p2, "noticeTime"    # J
    .param p4, "confirmFriendType"    # Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    .prologue
    .line 172
    invoke-static {p1, p2, p3, p4}, Lcom/liquable/nemo/notice/ConfirmFriendNotice;->create(Ljava/lang/String;JLcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)Lcom/liquable/nemo/notice/ConfirmFriendNotice;

    move-result-object v0

    .line 175
    .local v0, "friendNotice":Lcom/liquable/nemo/notice/ConfirmFriendNotice;
    iget-object v1, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/notice/NoticeDao;->insert(Lcom/liquable/nemo/notice/BaseNotice;)Z

    .line 176
    return-object v0
.end method

.method public insertConfirmFriendNotices(Ljava/util/List;Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)V
    .locals 5
    .param p2, "confirmFriendType"    # Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;",
            "Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "frineds":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 182
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4, p2}, Lcom/liquable/nemo/notice/model/NoticeManager;->insertConfirmFriendNotice(Ljava/lang/String;JLcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)Lcom/liquable/nemo/notice/ConfirmFriendNotice;

    goto :goto_0

    .line 184
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_0
    return-void
.end method

.method public insertInviteFriendNotice(Ljava/lang/String;J)Lcom/liquable/nemo/notice/InviteFriendNotice;
    .locals 2
    .param p1, "friendId"    # Ljava/lang/String;
    .param p2, "noticeTime"    # J

    .prologue
    .line 187
    invoke-static {p1, p2, p3}, Lcom/liquable/nemo/notice/InviteFriendNotice;->create(Ljava/lang/String;J)Lcom/liquable/nemo/notice/InviteFriendNotice;

    move-result-object v0

    .line 188
    .local v0, "friendNotice":Lcom/liquable/nemo/notice/InviteFriendNotice;
    iget-object v1, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/notice/NoticeDao;->insert(Lcom/liquable/nemo/notice/BaseNotice;)Z

    .line 189
    return-object v0
.end method

.method public insertPurchasedNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/notice/PurchasedNotice;
    .locals 9
    .param p1, "orderId"    # Ljava/lang/String;
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "productName"    # Ljava/lang/String;
    .param p4, "to"    # Ljava/lang/String;

    .prologue
    .line 196
    const-class v1, Lcom/liquable/nemo/notice/PurchasedNotice;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/notice/model/NoticeManager;->listNoticesByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 197
    .local v8, "purchasedNotices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/liquable/nemo/notice/BaseNotice;

    .local v7, "baseNotice":Lcom/liquable/nemo/notice/BaseNotice;
    move-object v0, v7

    .line 198
    check-cast v0, Lcom/liquable/nemo/notice/PurchasedNotice;

    .line 199
    .local v0, "purchaseNotice":Lcom/liquable/nemo/notice/PurchasedNotice;
    invoke-virtual {v0}, Lcom/liquable/nemo/notice/PurchasedNotice;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const/4 v0, 0x0

    .line 210
    .end local v0    # "purchaseNotice":Lcom/liquable/nemo/notice/PurchasedNotice;
    .end local v7    # "baseNotice":Lcom/liquable/nemo/notice/BaseNotice;
    :goto_0
    return-object v0

    .line 204
    :cond_1
    new-instance v0, Lcom/liquable/nemo/notice/PurchasedNotice;

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/notice/PurchasedNotice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 209
    .restart local v0    # "purchaseNotice":Lcom/liquable/nemo/notice/PurchasedNotice;
    iget-object v1, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/notice/NoticeDao;->insert(Lcom/liquable/nemo/notice/BaseNotice;)Z

    goto :goto_0
.end method

.method public listAllNoticesFromDb(II)Ljava/util/List;
    .locals 1
    .param p1, "numberOfMessage"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/notice/NoticeDao;->listAll(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listNoticesByType(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/notice/NoticeDao;->listNoticesByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public markNoticesAsRead()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/notice/NoticeDao;->updateAllNoticesRead()V

    .line 223
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNoticeViewUpdate()V

    .line 224
    return-void
.end method

.method public updateNotice(Lcom/liquable/nemo/notice/BaseNotice;)V
    .locals 1
    .param p1, "notice"    # Lcom/liquable/nemo/notice/BaseNotice;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/liquable/nemo/notice/model/NoticeManager;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/notice/NoticeDao;->update(Lcom/liquable/nemo/notice/BaseNotice;)V

    .line 228
    return-void
.end method
