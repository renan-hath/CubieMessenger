.class public Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;
.super Ljava/lang/Object;
.source "MixpanelAnalyticsService.java"

# interfaces
.implements Lcom/liquable/nemo/analytics/IAnalyticsService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;
    }
.end annotation


# instance fields
.field private volatile enableReceiveMessage:Z

.field private enableTracking:Z

.field private initialized:Z

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

.field private userAbTestGroup:Lcom/liquable/nemo/analytics/AbTestGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z

    .line 70
    iput-boolean v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->initialized:Z

    .line 72
    const-class v0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->logger:Lcom/liquable/nemo/util/Logger;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableReceiveMessage:Z

    return-void
.end method

.method private declared-synchronized addSuperProperties(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/Object;

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v0, "superProperties":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-object v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->registerSuperProperties(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    .end local v0    # "superProperties":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized addSuperProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 125
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 121
    .local v0, "superProperties":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    iget-object v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v1, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->registerSuperProperties(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "superProperties":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized flushMixpanel()V
    .locals 1

    .prologue
    .line 652
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 657
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 656
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getTotalMemberCount(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v1, 0x0

    .line 689
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 690
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    .line 691
    goto :goto_0

    .line 692
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_0
    return v1
.end method

.method private declared-synchronized incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V
    .locals 4
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "inc1"    # J
    .param p4, "name2"    # Ljava/lang/String;
    .param p5, "inc2"    # J

    .prologue
    .line 755
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 767
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 759
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 760
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    iget-object v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->increment(Ljava/util/Map;)V

    .line 764
    sget-object v1, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v1}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mixpanel people: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 755
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized incPeopleProperty(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inc"    # J

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 778
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 774
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    long-to-double v1, p2

    invoke-interface {v0, p1, v1, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->increment(Ljava/lang/String;D)V

    .line 775
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mixpanel people: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private increaseReceiveMessage(Ljava/lang/String;)V
    .locals 7
    .param p1, "recvMessageType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x1

    .line 781
    iget-boolean v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableReceiveMessage:Z

    if-eqz v0, :cond_0

    .line 782
    const-string/jumbo v1, "recv_message"

    move-object v0, p0

    move-object v4, p1

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 784
    :cond_0
    return-void
.end method

.method private declared-synchronized initMixpanel(Landroid/app/Activity;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 787
    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->initialized:Z

    if-nez v8, :cond_a

    .line 788
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getInstallId()Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, "installId":Ljava/lang/String;
    invoke-static {v1}, Lcom/liquable/nemo/analytics/AbTestGroup;->getInstance(Ljava/lang/String;)Lcom/liquable/nemo/analytics/AbTestGroup;

    move-result-object v8

    iput-object v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->userAbTestGroup:Lcom/liquable/nemo/analytics/AbTestGroup;

    .line 792
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->isSamplingUser(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 793
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z

    .line 798
    :goto_0
    sget-object v8, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v8}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v8

    if-nez v8, :cond_0

    .line 799
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z

    .line 802
    :cond_0
    iget-boolean v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z

    if-nez v8, :cond_2

    .line 804
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    .end local v1    # "installId":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-void

    .line 795
    .restart local v1    # "installId":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    :try_start_1
    iput-boolean v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 787
    .end local v1    # "installId":Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 808
    .restart local v1    # "installId":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->getInstance()Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService$MixpanelEnv;->getToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    move-result-object v8

    iput-object v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    .line 811
    iget-object v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getDistinctId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 812
    iget-object v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v8, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->identify(Ljava/lang/String;)V

    .line 813
    const/4 v5, 0x1

    .line 819
    .local v5, "needToInitSuperProperties":Z
    :goto_2
    iget-object v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v8

    invoke-interface {v8}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->getDistinctId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 820
    iget-object v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v8

    invoke-interface {v8, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->identify(Ljava/lang/String;)V

    .line 821
    const/4 v4, 0x1

    .line 826
    .local v4, "needToInitPeopleAnalytics":Z
    :goto_3
    if-eqz v5, :cond_6

    .line 830
    const-string/jumbo v8, "testGroup"

    invoke-static {v1}, Lcom/liquable/nemo/analytics/AbTestGroup;->getInstance(Ljava/lang/String;)Lcom/liquable/nemo/analytics/AbTestGroup;

    move-result-object v9

    invoke-virtual {v9}, Lcom/liquable/nemo/analytics/AbTestGroup;->name()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->addSuperProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 833
    const-string/jumbo v8, "platform"

    const-string/jumbo v9, "android"

    invoke-direct {p0, v8, v9}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->addSuperProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 836
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, "locale":Ljava/lang/String;
    const-string/jumbo v8, "locale"

    invoke-direct {p0, v8, v3}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->addSuperProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 840
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getInstallReferrer()Lcom/liquable/nemo/util/InstallReferrer;

    move-result-object v2

    .line 841
    .local v2, "ir":Lcom/liquable/nemo/util/InstallReferrer;
    invoke-virtual {v2}, Lcom/liquable/nemo/util/InstallReferrer;->getReferrer()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 842
    const-string/jumbo v8, "install_referrer"

    invoke-virtual {v2}, Lcom/liquable/nemo/util/InstallReferrer;->getReferrer()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->addSuperProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 845
    :cond_3
    const-string/jumbo v8, "phone"

    invoke-virtual {p1, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 847
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_5

    .line 848
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 849
    .local v6, "networkOperator":Ljava/lang/String;
    invoke-static {v6}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 850
    const-string/jumbo v8, "mccmnc"

    invoke-direct {p0, v8, v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->addSuperProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 853
    :cond_4
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "countryIso":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 855
    const-string/jumbo v8, "country_iso"

    invoke-direct {p0, v8, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->addSuperProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 860
    .end local v0    # "countryIso":Ljava/lang/String;
    .end local v6    # "networkOperator":Ljava/lang/String;
    :cond_5
    const-string/jumbo v8, "created"

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v9}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->toMixpanelDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->addSuperProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 862
    const-string/jumbo v8, "$created"

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v9}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->toMixpanelDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 865
    .end local v2    # "ir":Lcom/liquable/nemo/util/InstallReferrer;
    .end local v3    # "locale":Ljava/lang/String;
    .end local v7    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_6
    if-eqz v4, :cond_9

    .line 869
    const-string/jumbo v8, "platform"

    const-string/jumbo v9, "android"

    invoke-direct {p0, v8, v9}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 872
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 873
    .restart local v3    # "locale":Ljava/lang/String;
    const-string/jumbo v8, "locale"

    invoke-direct {p0, v8, v3}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 876
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getInstallReferrer()Lcom/liquable/nemo/util/InstallReferrer;

    move-result-object v2

    .line 877
    .restart local v2    # "ir":Lcom/liquable/nemo/util/InstallReferrer;
    invoke-virtual {v2}, Lcom/liquable/nemo/util/InstallReferrer;->getReferrer()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 878
    const-string/jumbo v8, "install_referrer"

    invoke-virtual {v2}, Lcom/liquable/nemo/util/InstallReferrer;->getReferrer()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 882
    :cond_7
    const-string/jumbo v8, "phone"

    invoke-virtual {p1, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 884
    .restart local v7    # "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v7, :cond_9

    .line 885
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    .line 886
    .restart local v6    # "networkOperator":Ljava/lang/String;
    invoke-static {v6}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 887
    const-string/jumbo v8, "mccmnc"

    invoke-direct {p0, v8, v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 890
    :cond_8
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 891
    .restart local v0    # "countryIso":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 892
    const-string/jumbo v8, "country_iso"

    invoke-direct {p0, v8, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    .end local v0    # "countryIso":Ljava/lang/String;
    .end local v2    # "ir":Lcom/liquable/nemo/util/InstallReferrer;
    .end local v3    # "locale":Ljava/lang/String;
    .end local v6    # "networkOperator":Ljava/lang/String;
    .end local v7    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_9
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->initialized:Z

    .line 900
    .end local v1    # "installId":Ljava/lang/String;
    .end local v4    # "needToInitPeopleAnalytics":Z
    .end local v5    # "needToInitSuperProperties":Z
    :cond_a
    const-string/jumbo v8, "cubieVersion"

    sget-object v9, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v9}, Lcom/liquable/nemo/NemoVersion;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->addSuperProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 815
    .restart local v1    # "installId":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    .restart local v5    # "needToInitSuperProperties":Z
    goto/16 :goto_2

    .line 823
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "needToInitPeopleAnalytics":Z
    goto/16 :goto_3
.end method

.method private setPeopleProperties(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/Object;

    .prologue
    .line 1227
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1228
    .local v0, "properties":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1229
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1230
    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperties(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    .end local v0    # "properties":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1231
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setPeopleProperties(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/Object;
    .param p5, "key3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/Object;

    .prologue
    .line 1243
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1244
    .local v0, "properties":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1245
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1246
    invoke-virtual {v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1247
    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperties(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .end local v0    # "properties":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1248
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setPeopleProperties(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/Object;
    .param p5, "key3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/Object;
    .param p7, "key4"    # Ljava/lang/String;
    .param p8, "value4"    # Ljava/lang/Object;

    .prologue
    .line 1262
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1263
    .local v0, "properties":Lorg/json/JSONObject;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1264
    invoke-virtual {v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1265
    invoke-virtual {v0, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1266
    invoke-virtual {v0, p7, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1267
    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperties(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    .end local v0    # "properties":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1268
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized setPeopleProperties(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "proprties"    # Lorg/json/JSONObject;

    .prologue
    .line 1211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1220
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1215
    :cond_1
    :try_start_1
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mixpanel people: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 1219
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->set(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1282
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1277
    :cond_1
    :try_start_1
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1278
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mixpanel people: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 1281
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shareMediaVia([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;)V
    .locals 7
    .param p1, "mediaInfos"    # [Lcom/liquable/nemo/android/provider/MediaInfo;
    .param p3, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1367
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const/4 v2, 0x0

    .line 1368
    .local v2, "pictureCount":I
    const/4 v0, 0x0

    .line 1369
    .local v0, "audioCount":I
    const/4 v3, 0x0

    .line 1370
    .local v3, "videoCount":I
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v1, p1, v4

    .line 1371
    .local v1, "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    instance-of v6, v1, Lcom/liquable/nemo/android/provider/PictureInfo;

    if-eqz v6, :cond_1

    .line 1372
    add-int/lit8 v2, v2, 0x1

    .line 1370
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1373
    :cond_1
    instance-of v6, v1, Lcom/liquable/nemo/android/provider/AudioInfo;

    if-eqz v6, :cond_2

    .line 1374
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1375
    :cond_2
    instance-of v6, v1, Lcom/liquable/nemo/android/provider/VideoInfo;

    if-eqz v6, :cond_0

    .line 1376
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1380
    .end local v1    # "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    :cond_3
    if-lez v2, :cond_4

    .line 1381
    new-instance v4, Lcom/liquable/nemo/analytics/PictureParameters;

    invoke-direct {v4}, Lcom/liquable/nemo/analytics/PictureParameters;-><init>()V

    invoke-virtual {p0, p2, p3, v2, v4}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->chattingSendPictureMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;ILcom/liquable/nemo/analytics/PictureParameters;)V

    .line 1383
    :cond_4
    if-lez v0, :cond_5

    .line 1384
    invoke-virtual {p0, p2, p3, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->chattingSendAudioMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;I)V

    .line 1386
    :cond_5
    if-lez v3, :cond_6

    .line 1387
    invoke-virtual {p0, p2, p3, v3}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->chattingSendVideoMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;I)V

    .line 1389
    :cond_6
    return-void
.end method

.method private declared-synchronized track(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 1472
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1480
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1476
    :cond_1
    :try_start_1
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1477
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mixpanel event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 1479
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1472
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private track(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1495
    .local p2, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1496
    .local v1, "properties":Lorg/json/JSONObject;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1497
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "track ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] missing values"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1503
    .end local v1    # "properties":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1505
    :goto_0
    return-void

    .line 1499
    .restart local v1    # "properties":Lorg/json/JSONObject;
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1500
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1499
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1502
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private declared-synchronized track(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "properties"    # Lorg/json/JSONObject;

    .prologue
    .line 1483
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableTracking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1491
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1487
    :cond_1
    :try_start_1
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1488
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mixpanel event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    .line 1490
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->mixpanelApi:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0, p1, p2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private varargs track(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1508
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;Ljava/util/List;)V

    .line 1509
    return-void
.end method


# virtual methods
.method public adMobEvent(Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;

    .prologue
    .line 129
    const-string/jumbo v0, "admob"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "admob_event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public adMobEvent(Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;Lcom/google/ads/AdRequest$ErrorCode;)V
    .locals 4
    .param p1, "event"    # Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;
    .param p2, "error"    # Lcom/google/ads/AdRequest$ErrorCode;

    .prologue
    .line 134
    const-string/jumbo v0, "admob"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "admob_event"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$AdMobEvent;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "error_code"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/google/ads/AdRequest$ErrorCode;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public addCustomSticker(Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;)V
    .locals 4
    .param p1, "by"    # Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;

    .prologue
    .line 78
    const-string/jumbo v0, "add_custom_sticker"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "by"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$AddCustomStickerBy;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const-string/jumbo v0, "add_custom_sticker"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 80
    return-void
.end method

.method public addFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;)V
    .locals 4
    .param p1, "type"    # Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .prologue
    .line 84
    const-string/jumbo v0, "add_friend"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    const-string/jumbo v0, "add_friend"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 86
    return-void
.end method

.method public addInstallRefferer(Ljava/lang/String;)V
    .locals 4
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string/jumbo v0, "install_referrer"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string/jumbo v0, "install_referrer"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public backupManually()V
    .locals 1

    .prologue
    .line 139
    const-string/jumbo v0, "backup_manually"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public beginConnectToFacebook(Ljava/lang/String;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string/jumbo v0, "begin_connect_to_facebook"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public beginConnectToTwitter()V
    .locals 1

    .prologue
    .line 149
    const-string/jumbo v0, "begin_connect_to_twitter"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public beginPhoneVerification(Ljava/lang/String;)V
    .locals 4
    .param p1, "by"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string/jumbo v0, "begin_phone_verification"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "by"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method

.method public beginPhoneVerificationOnCancel()V
    .locals 1

    .prologue
    .line 164
    const-string/jumbo v0, "begin_phone_verification_on_cancel"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public beginPhoneVerificationOnError(Ljava/lang/String;)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string/jumbo v0, "begin_phone_verification_on_error"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "message"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public beginPhoneVerificationOnError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    const-string/jumbo v0, "begin_phone_verification_on_error"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "class"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "message"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 178
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 174
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    return-void
.end method

.method public beginRegistration()V
    .locals 1

    .prologue
    .line 183
    const-string/jumbo v0, "begin_registration"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public beginRestoringData()V
    .locals 1

    .prologue
    .line 188
    const-string/jumbo v0, "begin_restoring_data"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public brokenDataMissingAccount()V
    .locals 1

    .prologue
    .line 193
    const-string/jumbo v0, "broken_data_chat_group_missing_account"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public cancelOnLoginToFacebook()V
    .locals 1

    .prologue
    .line 198
    const-string/jumbo v0, "cancel_on_login_to_facebook"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public cancelOrFailOnLoginToTwitter(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 203
    const-string/jumbo v0, "cancel_fail_on_login_to_twitter"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "error"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method public changeFriendDisplayName()V
    .locals 1

    .prologue
    .line 208
    const-string/jumbo v0, "change_friend_display_name"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public changeProfileCover()V
    .locals 1

    .prologue
    .line 213
    const-string/jumbo v0, "change_profile_cover"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public changeProfileNickname()V
    .locals 1

    .prologue
    .line 218
    const-string/jumbo v0, "change_profile_nickname"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public changeProfileUserIcon()V
    .locals 1

    .prologue
    .line 223
    const-string/jumbo v0, "change_profile_user_icon"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public changeWallpaperUsingCustomizedPhoto()V
    .locals 1

    .prologue
    .line 228
    const-string/jumbo v0, "change_wallpaper_using_customized_photo"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public changeWallpaperWithDownloaded(Ljava/lang/String;)V
    .locals 4
    .param p1, "wallpaperCode"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string/jumbo v0, "change_wallpaper_with_downloaded"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "wallpaper_code"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public chattingSendAskLocationMessage(I)V
    .locals 7
    .param p1, "numberOfReceivers"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 238
    const-string/jumbo v0, "send_message"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "ask_loc"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_ask_loc_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 240
    return-void
.end method

.method public chattingSendAskPictureMessage(I)V
    .locals 7
    .param p1, "numberOfReceivers"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 244
    const-string/jumbo v0, "send_message"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "ask_pic"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_ask_pic_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 246
    return-void
.end method

.method public chattingSendAudioMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;I)V
    .locals 7
    .param p2, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const-wide/16 v2, 0x1

    .line 252
    const-string/jumbo v0, "send_message"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "audio"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "via"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    .line 256
    invoke-virtual {p2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "chatgroups"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    .line 260
    invoke-direct {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->getTotalMemberCount(Ljava/util/List;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "count"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    .line 262
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 252
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_audio_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 264
    return-void
.end method

.method public chattingSendCameraPictureMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;)V
    .locals 8
    .param p2, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;
    .param p3, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .param p4, "pictureParameters"    # Lcom/liquable/nemo/analytics/PictureParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "Lcom/liquable/nemo/analytics/PictureParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const-wide/16 v2, 0x1

    .line 271
    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v4, "type"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "camera_pic"

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "chatgroups"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 272
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v4, "receivers"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->getTotalMemberCount(Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v4, "from"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    .line 273
    invoke-virtual {p2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareCameraPicFrom;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v4, "via"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    invoke-virtual {p3}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 271
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 274
    .local v7, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p4}, Lcom/liquable/nemo/analytics/PictureParameters;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    const-string/jumbo v0, "send_message"

    invoke-direct {p0, v0, v7}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;Ljava/util/List;)V

    .line 276
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_camera_pic_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 277
    return-void
.end method

.method public chattingSendCameraVideoMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;J)V
    .locals 7
    .param p2, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .param p3, "facing"    # Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;
    .param p4, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;",
            "J)V"
        }
    .end annotation

    .prologue
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const-wide/16 v2, 0x1

    .line 284
    const-string/jumbo v0, "send_message"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "camera_vid"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "chatgroups"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    .line 288
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    .line 290
    invoke-direct {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->getTotalMemberCount(Ljava/util/List;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "via"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    .line 292
    invoke-virtual {p2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "facing"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    .line 294
    invoke-virtual {p3}, Lcom/liquable/nemo/analytics/IAnalyticsService$CameraFacing;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "duration"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    .line 296
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4

    .line 284
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_camera_vid_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 298
    return-void
.end method

.method public chattingSendCustomStickerMessage(ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V
    .locals 7
    .param p1, "numberOfReceivers"    # I
    .param p2, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;

    .prologue
    const-wide/16 v2, 0x1

    .line 303
    const-string/jumbo v0, "send_message"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "custom_sticker"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "via"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    .line 309
    invoke-virtual {p2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 303
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_custom_sticker_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 311
    return-void
.end method

.method public chattingSendLocationMessage(Ljava/util/List;)V
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
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const-wide/16 v2, 0x1

    .line 315
    const-string/jumbo v0, "send_message"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "location"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "chatgroups"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    .line 319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    .line 321
    invoke-direct {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->getTotalMemberCount(Ljava/util/List;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 315
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_loc_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 323
    return-void
.end method

.method public chattingSendPaintMessage(III)V
    .locals 7
    .param p1, "numberOfReceivers"    # I
    .param p2, "numberOfPaintText"    # I
    .param p3, "numberOfPaintSticker"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 329
    const-string/jumbo v0, "send_message"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "paint"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    .line 333
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "paintTexts"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    .line 335
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "paintStickers"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    .line 337
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 329
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_paint_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 339
    return-void
.end method

.method public chattingSendPictureMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;ILcom/liquable/nemo/analytics/PictureParameters;)V
    .locals 8
    .param p2, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .param p3, "count"    # I
    .param p4, "pictureParameters"    # Lcom/liquable/nemo/analytics/PictureParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "I",
            "Lcom/liquable/nemo/analytics/PictureParameters;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const-wide/16 v2, 0x1

    .line 346
    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v4, "type"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "picture"

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "chatgroups"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 347
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v4, "receivers"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->getTotalMemberCount(Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v4, "via"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    .line 348
    invoke-virtual {p2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v4, "count"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    .line 346
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    .local v7, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p4}, Lcom/liquable/nemo/analytics/PictureParameters;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    const-string/jumbo v0, "send_message"

    invoke-direct {p0, v0, v7}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;Ljava/util/List;)V

    .line 351
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_pic_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 352
    return-void
.end method

.method public chattingSendSecretPictureMessage(Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;I)V
    .locals 8
    .param p1, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;
    .param p3, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .param p4, "pictureParameters"    # Lcom/liquable/nemo/analytics/PictureParameters;
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "Lcom/liquable/nemo/analytics/PictureParameters;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const-wide/16 v2, 0x1

    .line 360
    new-instance v7, Ljava/util/ArrayList;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v4, "type"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "secret_picture"

    aput-object v4, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "from"

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 361
    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v4, "chatgroups"

    aput-object v4, v0, v1

    const/4 v1, 0x5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v4, "receivers"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    .line 362
    invoke-direct {p0, p2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->getTotalMemberCount(Ljava/util/List;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v4, "via"

    aput-object v4, v0, v1

    const/16 v1, 0x9

    invoke-virtual {p3}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v4, "count"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    .line 360
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 363
    .local v7, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p4}, Lcom/liquable/nemo/analytics/PictureParameters;->toList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 364
    const-string/jumbo v0, "send_message"

    invoke-direct {p0, v0, v7}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;Ljava/util/List;)V

    .line 365
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_secret_picture_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 366
    return-void
.end method

.method public chattingSendSecretTextMessage(ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V
    .locals 7
    .param p1, "numberOfReceivers"    # I
    .param p2, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;

    .prologue
    const-wide/16 v2, 0x1

    .line 371
    const-string/jumbo v0, "send_message"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "secret_text"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "via"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    invoke-virtual {p2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_secret_text_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 373
    return-void
.end method

.method public chattingSendStickerMessage(Ljava/lang/String;ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V
    .locals 7
    .param p1, "stickerCode"    # Ljava/lang/String;
    .param p2, "numberOfReceivers"    # I
    .param p3, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;

    .prologue
    const-wide/16 v2, 0x1

    .line 379
    const-string/jumbo v0, "send_message"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "sticker"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "sticker_code"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    aput-object p1, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    .line 385
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "via"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    .line 387
    invoke-virtual {p3}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 379
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_sticker_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 389
    return-void
.end method

.method public chattingSendTextMessage(ILcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;)V
    .locals 7
    .param p1, "numberOfReceivers"    # I
    .param p2, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;

    .prologue
    const-wide/16 v2, 0x1

    .line 394
    const-string/jumbo v0, "send_message"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "text"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "via"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    invoke-virtual {p2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareTextOrStickerVia;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_text_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 396
    return-void
.end method

.method public chattingSendVideoMessage(Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;I)V
    .locals 7
    .param p2, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const-wide/16 v2, 0x1

    .line 402
    const-string/jumbo v0, "send_message"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "video"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "via"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    .line 406
    invoke-virtual {p2}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "chatgroups"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    .line 408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    .line 410
    invoke-direct {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->getTotalMemberCount(Ljava/util/List;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "count"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    .line 412
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 402
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_video_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 414
    return-void
.end method

.method public chattingSendVoiceMessage(I)V
    .locals 7
    .param p1, "numberOfReceivers"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 418
    const-string/jumbo v0, "send_message"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "voice"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_voice_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 420
    return-void
.end method

.method public chattingSendYoutubeMessage(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p2, "via"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    const-wide/16 v2, 0x1

    .line 424
    const-string/jumbo v0, "send_message"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "youtube"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "chatgroups"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    .line 428
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "receivers"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    .line 430
    invoke-direct {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->getTotalMemberCount(Ljava/util/List;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "via"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    aput-object p2, v1, v4

    .line 424
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_youtube_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 434
    return-void
.end method

.method public clickAdwaysCampaignApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "campaignId"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string/jumbo v0, "click_adways_campaign_app"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "campaignId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 439
    return-void
.end method

.method public clickAdwaysCampaignSticker(Ljava/lang/String;)V
    .locals 4
    .param p1, "stickerProductId"    # Ljava/lang/String;

    .prologue
    .line 443
    const-string/jumbo v0, "click_adways_campaign_sticker"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "stickerProductId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method public clickAdwaysStickerShopBanner()V
    .locals 1

    .prologue
    .line 448
    const-string/jumbo v0, "click_adways_sticker_shop_banner"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public clickOnAdItem(JILjava/lang/String;)V
    .locals 4
    .param p1, "adId"    # J
    .param p3, "displayCount"    # I
    .param p4, "adItemType"    # Ljava/lang/String;

    .prologue
    .line 453
    const-string/jumbo v0, "click_on_ad_item"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "ad_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 455
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "display_count"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 457
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "ad_item_type"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p4, v1, v2

    .line 453
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method public clickOnLocationSettingBtn()V
    .locals 1

    .prologue
    .line 467
    const-string/jumbo v0, "click_on_location_setting_btn"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public clickOnNoticeAds()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    const-string/jumbo v0, "click_on_notice_ads"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public clickOnOpenApiAppMessage(Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;)V
    .locals 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "openApiAppMessageActionType"    # Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;
    .param p3, "openApiAppMessageActionResult"    # Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;

    .prologue
    .line 480
    const-string/jumbo v0, "open_api_app"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "app_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "action_type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 484
    invoke-virtual {p2}, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "action_result"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 486
    invoke-virtual {p3}, Lcom/liquable/nemo/analytics/IAnalyticsService$OpenApiAppMessageActionResult;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 480
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    return-void
.end method

.method public clickOnPaintSettingBtn()V
    .locals 1

    .prologue
    .line 491
    const-string/jumbo v0, "click_on_paint_setting_btn"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public clickOnPubChanneMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "linkUrl"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string/jumbo v0, "pub_channel"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "link_url"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    return-void
.end method

.method public clickOnStickerItemButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "marketType"    # Ljava/lang/String;

    .prologue
    .line 503
    const-string/jumbo v0, "sticker_item_action"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "item"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "market_type"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sticker_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 505
    return-void
.end method

.method public clickReactivationStickerNotification()V
    .locals 1

    .prologue
    .line 509
    const-string/jumbo v0, "click_reactivation_sticker_notification"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public connectToFacebook()V
    .locals 1

    .prologue
    .line 514
    const-string/jumbo v0, "connect_to_facebook"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 515
    return-void
.end method

.method public connectToFacebookOnCancel()V
    .locals 1

    .prologue
    .line 519
    const-string/jumbo v0, "connect_to_facebook_on_cancel"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method public connectToFacebookOnError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 524
    const-string/jumbo v0, "connect_to_facebook_on_error"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "class"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 526
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "message"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 528
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 524
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    return-void
.end method

.method public connectToTwitter()V
    .locals 1

    .prologue
    .line 533
    const-string/jumbo v0, "connect_to_twitter"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public createChatGroup()V
    .locals 3

    .prologue
    .line 538
    const-string/jumbo v0, "create_chat_group"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 539
    const-string/jumbo v0, "create_chat_group"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 540
    return-void
.end method

.method public createForumArticle(Z)V
    .locals 4
    .param p1, "hasPicture"    # Z

    .prologue
    .line 1582
    const-string/jumbo v0, "create_forum_article"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hasPicture"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1584
    return-void
.end method

.method public createForumArticleReply(Z)V
    .locals 4
    .param p1, "hasPicture"    # Z

    .prologue
    .line 1588
    const-string/jumbo v0, "create_forum_article_reply"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hasPicture"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1590
    return-void
.end method

.method public createForumBoard(Lcom/liquable/nemo/model/forum/BoardCategory;)V
    .locals 4
    .param p1, "category"    # Lcom/liquable/nemo/model/forum/BoardCategory;

    .prologue
    .line 1571
    const-string/jumbo v0, "create_forum_board"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "category"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/BoardCategory;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1572
    return-void
.end method

.method public createInActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->initMixpanel(Landroid/app/Activity;)V

    .line 545
    return-void
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/analytics/CrittercismService;->addUserMetadata(Ljava/lang/String;)V

    .line 550
    const-string/jumbo v0, "username"

    const-string/jumbo v1, "mp_name_tag"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->addSuperProperties(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 551
    const-string/jumbo v0, "$username"

    const-string/jumbo v1, "$name"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperties(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method public cubieProfileUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)V
    .locals 4
    .param p1, "trackingKey"    # Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .prologue
    .line 556
    const-string/jumbo v1, "cubie_profile_url"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    return-void

    .line 556
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public deleteAccount(Ljava/lang/String;)V
    .locals 4
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 561
    const-string/jumbo v0, "delete_account"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "account_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    return-void
.end method

.method public deleteCustomSticker()V
    .locals 3

    .prologue
    .line 566
    const-string/jumbo v0, "delete_custom_sticker"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 567
    const-string/jumbo v0, "delete_custom_sticker"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 568
    return-void
.end method

.method public destroyInActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->initMixpanel(Landroid/app/Activity;)V

    .line 573
    invoke-direct {p0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->flushMixpanel()V

    .line 574
    return-void
.end method

.method public downloadStickerWhenReceiveUnknownStickerMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "stickerCategory"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 579
    const-string/jumbo v0, "download_sticker"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "unknown_sticker"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "sticker_category"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method public editPhoto()V
    .locals 3

    .prologue
    .line 584
    const-string/jumbo v0, "edit_photo"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 585
    const-string/jumbo v0, "edit_photo"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 586
    return-void
.end method

.method public enableAutoSyncContact(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 590
    const-string/jumbo v0, "enable_auto_sync"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    return-void
.end method

.method public enableReceiveMessage(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->enableReceiveMessage:Z

    .line 599
    return-void
.end method

.method public endSessionInActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 603
    return-void
.end method

.method public enterForumBoard(Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;)V
    .locals 4
    .param p1, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;
    .param p2, "category"    # Lcom/liquable/nemo/model/forum/BoardCategory;
    .param p3, "boardId"    # Ljava/lang/String;

    .prologue
    .line 1560
    const-string/jumbo v0, "enter_forum_board"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1562
    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "category"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 1564
    invoke-virtual {p2}, Lcom/liquable/nemo/model/forum/BoardCategory;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "boardId"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p3, v1, v2

    .line 1560
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1567
    return-void
.end method

.method public enterIntroduction()V
    .locals 1

    .prologue
    .line 607
    const-string/jumbo v0, "enter_introduction"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public enterRobotGroup()V
    .locals 1

    .prologue
    .line 612
    const-string/jumbo v0, "enter_robot_group"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 618
    const-string/jumbo v0, "error"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "class"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "message"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    return-void
.end method

.method public exportChatGroupMessages()V
    .locals 1

    .prologue
    .line 623
    const-string/jumbo v0, "export_chat_group_messages"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public favoriteBoardFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V
    .locals 4
    .param p1, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    .prologue
    .line 1594
    const-string/jumbo v0, "favorite_board_from"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1595
    return-void
.end method

.method public finishAdwaysCampaign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "campaignId"    # Ljava/lang/String;
    .param p2, "stickerProductId"    # Ljava/lang/String;

    .prologue
    .line 628
    const-string/jumbo v0, "finish_adways_campaign"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "campaignId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "stickerProductId"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    return-void
.end method

.method public finishPhoneVerification()V
    .locals 1

    .prologue
    .line 633
    const-string/jumbo v0, "finish_phone_verification"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method public finishRestoringData()V
    .locals 1

    .prologue
    .line 638
    const-string/jumbo v0, "finish_restoring_data"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public finishRestoringDataOnError()V
    .locals 1

    .prologue
    .line 643
    const-string/jumbo v0, "finish_restoring_data_on_error"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 644
    return-void
.end method

.method public firstTimeEnteringMainActivity()V
    .locals 1

    .prologue
    .line 648
    const-string/jumbo v0, "first_time_entering_main"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public followCubieOnTwitter()V
    .locals 1

    .prologue
    .line 661
    const-string/jumbo v0, "follow_cubie_on_twitter"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method public forwardMessage(Lcom/liquable/nemo/message/model/DomainMessage;ILjava/lang/String;)V
    .locals 8
    .param p1, "domainMessage"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p2, "receivers"    # I
    .param p3, "from"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 668
    invoke-static {p3}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    const-string/jumbo v0, "forward_message"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "type"

    aput-object v2, v1, v3

    .line 671
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "receivers"

    aput-object v2, v1, v5

    .line 673
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 669
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 684
    :goto_0
    const-string/jumbo v0, "forward_message"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 685
    return-void

    .line 675
    :cond_0
    const-string/jumbo v0, "forward_message"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "type"

    aput-object v2, v1, v3

    .line 677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "from"

    aput-object v2, v1, v5

    aput-object p3, v1, v6

    const-string/jumbo v2, "receivers"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    .line 681
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 675
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getUserAbTestGroup()Lcom/liquable/nemo/analytics/AbTestGroup;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->userAbTestGroup:Lcom/liquable/nemo/analytics/AbTestGroup;

    return-object v0
.end method

.method public goToCubieSpace()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 703
    const-string/jumbo v0, "go_to_cubie_space"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public goToDesktopPage()V
    .locals 1

    .prologue
    .line 708
    const-string/jumbo v0, "go_to_desktop_page"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public goToMediaLibrary()V
    .locals 1

    .prologue
    .line 713
    const-string/jumbo v0, "go_to_media_library"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method public goToNoticeView()V
    .locals 1

    .prologue
    .line 718
    const-string/jumbo v0, "go_to_notice_view"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 719
    return-void
.end method

.method public goToProfilePage(Ljava/lang/String;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 723
    const-string/jumbo v0, "go_to_profile_page"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    return-void
.end method

.method public goToStickerManage(Ljava/lang/String;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 728
    const-string/jumbo v0, "sticker_manage"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    return-void
.end method

.method public goToStickerShop(Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;)V
    .locals 4
    .param p1, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;

    .prologue
    .line 733
    const-string/jumbo v0, "sticker_shop"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$EnterShopFrom;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 734
    return-void
.end method

.method public hideFriendRelationship(Z)V
    .locals 4
    .param p1, "turnOff"    # Z

    .prologue
    .line 738
    const-string/jumbo v0, "hide_friend_relationship"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hide"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    return-void
.end method

.method public importFriends(Ljava/lang/String;I)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 743
    const-string/jumbo v0, "import_friends"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "count"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    return-void
.end method

.method public importFriendsSkip(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 748
    const-string/jumbo v0, "import_friends_skip"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    return-void
.end method

.method public inviteFriendFrom(Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;)V
    .locals 4
    .param p1, "type"    # Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;

    .prologue
    .line 905
    const-string/jumbo v0, "invite_friend"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$InviteFriendFrom;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 906
    const-string/jumbo v0, "invite_friend"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 907
    return-void
.end method

.method public isInTestGroup(Landroid/content/Context;Lcom/liquable/nemo/analytics/AbTestKey;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abTestKey"    # Lcom/liquable/nemo/analytics/AbTestKey;

    .prologue
    .line 911
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getInstallId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->userAbTestGroup:Lcom/liquable/nemo/analytics/AbTestGroup;

    invoke-virtual {p0, v0, v1, p2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->isInTestGroup(Ljava/lang/String;Lcom/liquable/nemo/analytics/AbTestGroup;Lcom/liquable/nemo/analytics/AbTestKey;)Z

    move-result v0

    return v0
.end method

.method isInTestGroup(Ljava/lang/String;Lcom/liquable/nemo/analytics/AbTestGroup;Lcom/liquable/nemo/analytics/AbTestKey;)Z
    .locals 1
    .param p1, "installId"    # Ljava/lang/String;
    .param p2, "userAbTestGroup"    # Lcom/liquable/nemo/analytics/AbTestGroup;
    .param p3, "abTestKey"    # Lcom/liquable/nemo/analytics/AbTestKey;

    .prologue
    .line 917
    invoke-virtual {p3}, Lcom/liquable/nemo/analytics/AbTestKey;->isDev()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    const/4 v0, 0x1

    .line 925
    :goto_0
    return v0

    .line 921
    :cond_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->isSamplingUser(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 922
    const/4 v0, 0x0

    goto :goto_0

    .line 925
    :cond_1
    invoke-virtual {p3, p2}, Lcom/liquable/nemo/analytics/AbTestKey;->isMatch(Lcom/liquable/nemo/analytics/AbTestGroup;)Z

    move-result v0

    goto :goto_0
.end method

.method isSamplingUser(Ljava/lang/String;)Z
    .locals 2
    .param p1, "installId"    # Ljava/lang/String;

    .prologue
    .line 929
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leaveIntroduction(Ljava/lang/String;J)V
    .locals 5
    .param p1, "by"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 934
    const-string/jumbo v0, "leave_introduction"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "exitBy"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "duration"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    div-long v3, p2, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 935
    return-void
.end method

.method public likeArticle()V
    .locals 1

    .prologue
    .line 1609
    const-string/jumbo v0, "like_article"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1610
    return-void
.end method

.method public likeCubieFacebookPage()V
    .locals 1

    .prologue
    .line 939
    const-string/jumbo v0, "like_cubie_facebook_page"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method public limitedTimeOfferReactivationSticker()V
    .locals 1

    .prologue
    .line 944
    const-string/jumbo v0, "limited_time_offer_reactivation_sticker"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 945
    return-void
.end method

.method public migrateFromC2DMToGCM()V
    .locals 1

    .prologue
    .line 949
    const-string/jumbo v0, "migrate_gcm"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 950
    return-void
.end method

.method public muteChatGroup(Z)V
    .locals 4
    .param p1, "mute"    # Z

    .prologue
    .line 954
    const-string/jumbo v0, "mute_chat_group"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "mute"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    return-void
.end method

.method public notifyDetectedExternalImage()V
    .locals 1

    .prologue
    .line 959
    const-string/jumbo v0, "detected_external_image_notification"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 960
    return-void
.end method

.method public onForumCategorySelect(Lcom/liquable/nemo/model/forum/BoardCategory;)V
    .locals 4
    .param p1, "category"    # Lcom/liquable/nemo/model/forum/BoardCategory;

    .prologue
    .line 1576
    const-string/jumbo v0, "on_forum_category_select"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "category"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/BoardCategory;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1578
    return-void
.end method

.method public pasteToDrawingBoard(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 6
    .param p2, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "mediaMessageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 964
    invoke-static {p2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    const-string/jumbo v0, "paste_to_sketch_board"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "type"

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    :goto_0
    const-string/jumbo v0, "paste_to_sketch_board"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 971
    return-void

    .line 967
    :cond_0
    const-string/jumbo v0, "paste_to_sketch_board"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "type"

    aput-object v2, v1, v3

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "from"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public phoneVerificationError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .param p1, "by"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 975
    const-string/jumbo v0, "phone_verification_error"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "by"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "error"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 979
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "message"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 981
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 975
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 982
    return-void
.end method

.method public pickS3EndPoint(Ljava/lang/String;J)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 986
    const-string/jumbo v0, "pick_s3_endpoint"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "location"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "duration"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    return-void
.end method

.method public privacyExcludeInRecommendSetting(Z)V
    .locals 4
    .param p1, "turnOn"    # Z

    .prologue
    .line 991
    const-string/jumbo v0, "privacy_exclude_in_recommend_setting"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "exclude"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    return-void
.end method

.method public privacyHideRecommendListSetting(Z)V
    .locals 4
    .param p1, "turnOn"    # Z

    .prologue
    .line 996
    const-string/jumbo v0, "privacy_hide_recommend_list_setting"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hide"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 997
    return-void
.end method

.method public purchaseSuccessWithProduct(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "marketType"    # Ljava/lang/String;

    .prologue
    .line 1001
    const-string/jumbo v0, "sticker_item_action"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "product"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "purchase_success"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "market_type"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1008
    return-void
.end method

.method public purchaseSuccessWithStickerItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "itemCode"    # Ljava/lang/String;
    .param p2, "marketType"    # Ljava/lang/String;

    .prologue
    .line 1012
    const-string/jumbo v0, "sticker_item_action"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "item"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "purchase_success"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "market_type"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    return-void
.end method

.method public receiveAskLocationMessage()V
    .locals 1

    .prologue
    .line 1023
    const-string/jumbo v0, "recv_ask_loc_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method public receiveAskPictureMessage()V
    .locals 1

    .prologue
    .line 1028
    const-string/jumbo v0, "recv_ask_pic_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method public receiveAudioMessage()V
    .locals 1

    .prologue
    .line 1033
    const-string/jumbo v0, "recv_audio_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method public receiveCustomStickerMessage()V
    .locals 1

    .prologue
    .line 1039
    const-string/jumbo v0, "recv_custom_sticker_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1040
    return-void
.end method

.method public receiveFriendInvitation(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 1044
    const-string/jumbo v0, "invite_recv"

    int-to-long v1, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1045
    return-void
.end method

.method public receiveLikePictureMessage()V
    .locals 1

    .prologue
    .line 1049
    const-string/jumbo v0, "recv_like_pic_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1050
    return-void
.end method

.method public receiveLocationMessage()V
    .locals 1

    .prologue
    .line 1054
    const-string/jumbo v0, "recv_loc_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1055
    return-void
.end method

.method public receiveOpenApiAppMessage()V
    .locals 1

    .prologue
    .line 1059
    const-string/jumbo v0, "recv_open_api_app_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1060
    return-void
.end method

.method public receivePaintMessage()V
    .locals 1

    .prologue
    .line 1064
    const-string/jumbo v0, "recv_paint_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1065
    return-void
.end method

.method public receivePictureMessage()V
    .locals 1

    .prologue
    .line 1069
    const-string/jumbo v0, "recv_picture_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method public receivePubChannelMessage()V
    .locals 1

    .prologue
    .line 1074
    const-string/jumbo v0, "recv_pub_channel_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method public receiveReactivationStickerNotification()V
    .locals 1

    .prologue
    .line 1079
    const-string/jumbo v0, "receive_reactivation_sticker_notification"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method public receiveSecretTextMessage()V
    .locals 1

    .prologue
    .line 1084
    const-string/jumbo v0, "recv_secret_text_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1085
    return-void
.end method

.method public receiveStickerMessage()V
    .locals 1

    .prologue
    .line 1089
    const-string/jumbo v0, "recv_sticker_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1090
    return-void
.end method

.method public receiveTextMessage()V
    .locals 1

    .prologue
    .line 1094
    const-string/jumbo v0, "recv_text_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1095
    return-void
.end method

.method public receiveVideoMessage()V
    .locals 1

    .prologue
    .line 1099
    const-string/jumbo v0, "recv_video_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method public receiveVoiceMessage()V
    .locals 1

    .prologue
    .line 1104
    const-string/jumbo v0, "recv_voice_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method public receiveYoutubeMessage()V
    .locals 1

    .prologue
    .line 1109
    const-string/jumbo v0, "recv_youtube_msg"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->increaseReceiveMessage(Ljava/lang/String;)V

    .line 1110
    return-void
.end method

.method public refererFromFacebookUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1114
    const-string/jumbo v0, "referer_from_facebook_url"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    return-void
.end method

.method public registerSubAccount()V
    .locals 1

    .prologue
    .line 1119
    const-string/jumbo v0, "register_sub_account"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1120
    return-void
.end method

.method public replyInChattingActivity()V
    .locals 1

    .prologue
    .line 1124
    const-string/jumbo v0, "reply_in_chatting"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1125
    return-void
.end method

.method public resumeSessionInActivity(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1129
    invoke-direct {p0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->initMixpanel(Landroid/app/Activity;)V

    .line 1131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getLastResumeTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1133
    const-string/jumbo v0, "resume_activity"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1134
    const-string/jumbo v0, "resume_activity"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1135
    const-string/jumbo v0, "$last_login"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->toMixpanelDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1136
    invoke-direct {p0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->flushMixpanel()V

    .line 1137
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->setLastResumeTime()V

    .line 1139
    :cond_0
    return-void
.end method

.method public retainNonConfigurationInstanceInActivity()V
    .locals 0

    .prologue
    .line 1143
    return-void
.end method

.method public savePaintInChattingActivity()V
    .locals 4

    .prologue
    .line 1147
    const-string/jumbo v0, "save_message"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "paint"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1148
    return-void
.end method

.method public selectMyAccountIcon()V
    .locals 1

    .prologue
    .line 1152
    const-string/jumbo v0, "select_my_account_icon"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1153
    return-void
.end method

.method public selectMyAccountIconSkip()V
    .locals 1

    .prologue
    .line 1157
    const-string/jumbo v0, "select_my_account_icon_skip"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1158
    return-void
.end method

.method public sendLikePictureMessage(Lcom/liquable/nemo/analytics/IAnalyticsService$LikeVia;)V
    .locals 7
    .param p1, "via"    # Lcom/liquable/nemo/analytics/IAnalyticsService$LikeVia;

    .prologue
    const-wide/16 v2, 0x1

    .line 1162
    const-string/jumbo v0, "send_message"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "like_pic"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "via"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$LikeVia;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1163
    const-string/jumbo v1, "send_message"

    const-string/jumbo v4, "send_like_pic_msg"

    move-object v0, p0

    move-wide v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperties(Ljava/lang/String;JLjava/lang/String;J)V

    .line 1164
    return-void
.end method

.method public setChatGroupCountForGroup(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1168
    const-string/jumbo v0, "chatgroup_count_group"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1169
    return-void
.end method

.method public setChatGroupCountForOneToOne(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1173
    const-string/jumbo v0, "chatgroup_count_one"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1174
    return-void
.end method

.method public setCubieHeadState(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 1178
    const-string/jumbo v0, "cubie_head"

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->addSuperProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1179
    const-string/jumbo v0, "cubie_head"

    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1180
    return-void
.end method

.method public setFriend(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1184
    const-string/jumbo v0, "friends"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1185
    return-void
.end method

.method public setGroup(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1189
    const-string/jumbo v0, "groups"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1190
    return-void
.end method

.method public setHasApp(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1194
    .local p1, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1195
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "has_app_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1197
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    return-void
.end method

.method public setNotificationChange(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1201
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1202
    .local v0, "properties":Lorg/json/JSONObject;
    const-string/jumbo v1, "set_notification_change"

    invoke-direct {p0, v1, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1203
    return-void
.end method

.method public setPasscodeLock()V
    .locals 1

    .prologue
    .line 1207
    const-string/jumbo v0, "set_passcode_lock"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1208
    return-void
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 1286
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/analytics/CrittercismService;->addUserMetadata(Ljava/lang/String;)V

    .line 1288
    const-string/jumbo v0, "$username"

    const-string/jumbo v1, "$name"

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->setPeopleProperties(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1289
    return-void
.end method

.method public shareAppBySms(Ljava/lang/String;)V
    .locals 4
    .param p1, "via"    # Ljava/lang/String;

    .prologue
    .line 1293
    const-string/jumbo v0, "share_app"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "sms_contact_list"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "via"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1294
    const-string/jumbo v0, "share_app"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1295
    return-void
.end method

.method public shareAppFromFacebook()V
    .locals 4

    .prologue
    .line 1299
    const-string/jumbo v0, "share_app"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "facebook_wall_to_wall"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    const-string/jumbo v0, "share_app"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1301
    return-void
.end method

.method public shareAppFromFbTimelines()V
    .locals 4

    .prologue
    .line 1305
    const-string/jumbo v0, "share_app"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "facebook_timelines"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1306
    const-string/jumbo v0, "share_app"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1307
    return-void
.end method

.method public shareAppFromTwitterDM()V
    .locals 4

    .prologue
    .line 1311
    const-string/jumbo v0, "share_app"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "twitter_dm"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1312
    const-string/jumbo v0, "share_app"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1313
    return-void
.end method

.method public shareAppFromTwitterTimelines()V
    .locals 4

    .prologue
    .line 1317
    const-string/jumbo v0, "share_app"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "twitter_timelines"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1318
    const-string/jumbo v0, "share_app"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1319
    return-void
.end method

.method public shareAppSuccessFromFacebook()V
    .locals 4

    .prologue
    .line 1323
    const-string/jumbo v0, "share_app_success"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "facebook_wall_to_wall"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1324
    return-void
.end method

.method public shareAppSuccessFromFbTimelines()V
    .locals 4

    .prologue
    .line 1328
    const-string/jumbo v0, "share_app_success"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "facebook_timelines"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1329
    return-void
.end method

.method public shareAppSuccessFromTwitterDM()V
    .locals 4

    .prologue
    .line 1333
    const-string/jumbo v0, "share_app_success"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "twitter_dm"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1334
    return-void
.end method

.method public shareAppSuccessFromTwitterTimelines()V
    .locals 4

    .prologue
    .line 1338
    const-string/jumbo v0, "share_app_success"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "twitter_timelines"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1339
    return-void
.end method

.method public shareAppUsingOtherApps(Ljava/lang/String;)V
    .locals 4
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 1343
    const-string/jumbo v0, "share_app"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    const-string/jumbo v0, "share_app"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1345
    return-void
.end method

.method public shareAppWithFriend()V
    .locals 4

    .prologue
    .line 1349
    const-string/jumbo v0, "share_app"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "intent"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1350
    const-string/jumbo v0, "share_app"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1351
    return-void
.end method

.method public shareArticle(Ljava/lang/String;)V
    .locals 4
    .param p1, "with"    # Ljava/lang/String;

    .prologue
    .line 1599
    const-string/jumbo v0, "share_article"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "share_article_with"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1600
    return-void
.end method

.method public shareImageWithOtherApps(Ljava/lang/String;)V
    .locals 4
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 1355
    const-string/jumbo v0, "share_image"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1356
    const-string/jumbo v0, "share_image"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1357
    return-void
.end method

.method public shareMediaMessageViaImageViewer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 1361
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "from"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "image_viewer"

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1362
    return-void
.end method

.method public shareMediaViaDetectedExternalImage([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "mediaInfos"    # [Lcom/liquable/nemo/android/provider/MediaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1394
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->detected_external_image:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-direct {p0, p1, p2, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->shareMediaVia([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;)V

    .line 1395
    return-void
.end method

.method public shareMediaViaExternalIntent([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "mediaInfos"    # [Lcom/liquable/nemo/android/provider/MediaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1400
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->external_intent:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-direct {p0, p1, p2, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->shareMediaVia([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;)V

    .line 1401
    return-void
.end method

.method public shareMediaViaShareBoard([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "mediaInfos"    # [Lcom/liquable/nemo/android/provider/MediaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/liquable/nemo/android/provider/MediaInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1406
    .local p2, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    sget-object v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->share_board:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-direct {p0, p1, p2, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->shareMediaVia([Lcom/liquable/nemo/android/provider/MediaInfo;Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;)V

    .line 1407
    return-void
.end method

.method public sharePaintInChattingActivity()V
    .locals 4

    .prologue
    .line 1411
    const-string/jumbo v0, "share_paint"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "intent"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1412
    const-string/jumbo v0, "share_paint"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1413
    return-void
.end method

.method public sharePaintToFacebookInChattingActivity(Ljava/lang/String;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 1417
    const-string/jumbo v0, "share_paint"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "facebook"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1418
    const-string/jumbo v0, "share_paint"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1419
    return-void
.end method

.method public shareVideoWithOtherApps(Ljava/lang/String;)V
    .locals 4
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 1423
    const-string/jumbo v0, "share_video"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1424
    const-string/jumbo v0, "share_video"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1425
    return-void
.end method

.method public showAdwaysAdsBanner()V
    .locals 1

    .prologue
    .line 1429
    const-string/jumbo v0, "show_adways_campaign_banner"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1430
    return-void
.end method

.method public showShowcaseView(Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;)V
    .locals 4
    .param p1, "type"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;

    .prologue
    .line 1434
    const-string/jumbo v0, "showcase_view"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/analytics/IAnalyticsService$ShowCaseType;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1435
    return-void
.end method

.method public skipSyncingDataFromServer()V
    .locals 1

    .prologue
    .line 1439
    const-string/jumbo v0, "skip_restoring_data"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1440
    return-void
.end method

.method public spacePublicProfileSetting(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 1604
    const-string/jumbo v0, "space_public_profile_setting"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "enable"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1605
    return-void
.end method

.method public startSessionInActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1444
    return-void
.end method

.method public syncContactsDaily(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 1449
    const-string/jumbo v0, "SYNC_CONTACTS_DAILY"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "facebook"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "count"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    return-void
.end method

.method public syncContactsInMainActivity(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 1454
    const-string/jumbo v0, "sync_contacts"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "main"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "count"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1455
    return-void
.end method

.method public syncModifiedContacts(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 1459
    if-lez p1, :cond_0

    .line 1460
    const-string/jumbo v0, "SYNC_MODIFIED_CONTACTS"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "count"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1462
    :cond_0
    return-void
.end method

.method toMixpanelDateFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1465
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1466
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1467
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, "formatedDateStr":Ljava/lang/String;
    return-object v0
.end method

.method public upgradeCubieWhenReceiveUnknownStickerMessage()V
    .locals 4

    .prologue
    .line 1513
    const-string/jumbo v0, "upgrade_cubie"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "unknown_sticker"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1514
    return-void
.end method

.method public viewStickerItem(Ljava/lang/String;)V
    .locals 4
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 1518
    const-string/jumbo v0, "sticker_item_view"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "item"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1519
    return-void
.end method

.method public voipAnswer(Z)V
    .locals 4
    .param p1, "wifi"    # Z

    .prologue
    .line 1523
    const-string/jumbo v0, "voip_answer"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "wifi"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1524
    const-string/jumbo v0, "voip_answer"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1525
    return-void
.end method

.method public voipDial(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "wifi"    # Z

    .prologue
    .line 1529
    const-string/jumbo v0, "voip_dial"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "from"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "wifi"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1530
    const-string/jumbo v0, "voip_dial"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1531
    return-void
.end method

.method public voipDialerCallLog(IJ)V
    .locals 4
    .param p1, "durationInMinutes"    # I
    .param p2, "avgPingPongDuration"    # J

    .prologue
    .line 1535
    const-string/jumbo v0, "voip_dialer_call_log"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "duration_in_minutes"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 1537
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "avg_ping_pong_duration"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 1539
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1535
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1540
    return-void
.end method

.method public voipMissedCall()V
    .locals 3

    .prologue
    .line 1544
    const-string/jumbo v0, "voip_missed_call"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1545
    const-string/jumbo v0, "voip_missed_call"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1546
    return-void
.end method

.method public voipReject()V
    .locals 3

    .prologue
    .line 1550
    const-string/jumbo v0, "voip_reject"

    invoke-direct {p0, v0}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->track(Ljava/lang/String;)V

    .line 1551
    const-string/jumbo v0, "voip_reject"

    const-wide/16 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/liquable/nemo/analytics/MixpanelAnalyticsService;->incPeopleProperty(Ljava/lang/String;J)V

    .line 1552
    return-void
.end method
