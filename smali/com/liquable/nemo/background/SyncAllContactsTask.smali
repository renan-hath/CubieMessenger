.class public Lcom/liquable/nemo/background/SyncAllContactsTask;
.super Lcom/liquable/nemo/background/SchedulableTask;
.source "SyncAllContactsTask.java"

# interfaces
.implements Lcom/liquable/nemo/background/BackgroundRunnable;


# static fields
.field private static final WAKELOCK_KEY:Ljava/lang/String; = "NEMO_ALARM_WAKE_LOCK"

.field private static matchingPackages:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x6fed24d74c43f96eL


# instance fields
.field private final isManually:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    .line 47
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "com.whatsapp"

    const-string/jumbo v2, "whatsapp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "jp.naver.line.android"

    const-string/jumbo v2, "line"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "kik.android"

    const-string/jumbo v2, "kik"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "com.tencent.mm"

    const-string/jumbo v2, "wechat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "com.kakao.talk"

    const-string/jumbo v2, "kakao"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "com.littleinc.MessageMe"

    const-string/jumbo v2, "msgme"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "com.facebook.orca"

    const-string/jumbo v2, "fbmsg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "com.instagram.android"

    const-string/jumbo v2, "instagram"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "com.facebook.katana"

    const-string/jumbo v2, "fb"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "com.twitter.android"

    const-string/jumbo v2, "twitter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "com.path"

    const-string/jumbo v2, "path"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "com.snapchat.android"

    const-string/jumbo v2, "snapchat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    const-string/jumbo v1, "co.vine.android"

    const-string/jumbo v2, "vine"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/background/SyncAllContactsTask;-><init>(Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isManually"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/liquable/nemo/background/SchedulableTask;-><init>()V

    .line 67
    iput-boolean p1, p0, Lcom/liquable/nemo/background/SyncAllContactsTask;->isManually:Z

    .line 68
    return-void
.end method

.method private static trackRelatedApps(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 23
    .local v2, "pkgMgr":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 24
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    sget-object v4, Lcom/liquable/nemo/background/SyncAllContactsTask;->matchingPackages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    .end local v0    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->setHasApp(Ljava/util/Map;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getAlarmType()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getScheduleInterval()J
    .locals 2

    .prologue
    .line 77
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public getScheduleIntervalOnError()J
    .locals 2

    .prologue
    .line 82
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method public runInBackground(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v6}, Lcom/liquable/nemo/friend/model/FriendManager;->listSelectableFriends()Ljava/util/List;

    move-result-object v6

    .line 88
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 87
    invoke-interface {v5, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->setFriend(I)V

    .line 89
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v5

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    .line 90
    invoke-virtual {v6}, Lcom/liquable/nemo/group/model/ChatGroupManager;->getMultiChatGroupCount()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->setGroup(I)V

    .line 91
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v5}, Lcom/liquable/nemo/group/model/ChatGroupManager;->getNumberOfChatGroupsWithMessages()Landroid/util/Pair;

    move-result-object v1

    .line 92
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService;->setChatGroupCountForOneToOne(I)V

    .line 93
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v6

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v6, v5}, Lcom/liquable/nemo/analytics/IAnalyticsService;->setChatGroupCountForGroup(I)V

    .line 94
    invoke-static {p1}, Lcom/liquable/nemo/background/SyncAllContactsTask;->trackRelatedApps(Landroid/content/Context;)V

    .line 96
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->isAutoScheduleSyncContactsEnable()Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/liquable/nemo/background/SyncAllContactsTask;->isManually:Z

    if-nez v5, :cond_1

    .line 97
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/SyncAllContactsTask;->runSuccessfully(Landroid/content/Context;)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string/jumbo v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 102
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v5, 0x1

    const-string/jumbo v6, "NEMO_ALARM_WAKE_LOCK"

    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 105
    .local v4, "wakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 107
    :try_start_0
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/friend/AccountDaemon;->importContacts(Z)Ljava/util/List;

    move-result-object v3

    .line 108
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/background/SyncAllContactsTask;->isRegisteredInScheduler()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->syncContactsDaily(I)V

    .line 113
    :goto_1
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/SyncAllContactsTask;->runSuccessfully(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 111
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/liquable/nemo/analytics/IAnalyticsService;->syncContactsInMainActivity(I)V
    :try_end_1
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 114
    .end local v3    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lcom/liquable/nemo/client/AsyncException;
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/background/SyncAllContactsTask;->runUnsuccessfully(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 117
    .end local v0    # "e":Lcom/liquable/nemo/client/AsyncException;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 118
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    throw v5
.end method
