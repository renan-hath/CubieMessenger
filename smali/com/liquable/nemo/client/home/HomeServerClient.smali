.class public Lcom/liquable/nemo/client/home/HomeServerClient;
.super Ljava/lang/Object;
.source "HomeServerClient.java"


# static fields
.field private static final FORUM_BOARD_BANNER_VERSION:Ljava/lang/String; = "1"

.field private static final SYSTEM_NOTICE_SUPPORT_DEVICE_ANDROID:Ljava/lang/String; = "ANDROID_PHONE"


# instance fields
.field private final httpService:Lcom/liquable/nemo/http/NemoHttpService;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final serverType:Lcom/liquable/nemo/client/ServerType;

.field private final systemNoticeDtoMapper:Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/ServerType;Lcom/liquable/nemo/http/NemoHttpService;Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;)V
    .locals 1
    .param p1, "serverType"    # Lcom/liquable/nemo/client/ServerType;
    .param p2, "httpService"    # Lcom/liquable/nemo/http/NemoHttpService;
    .param p3, "systemNoticeDtoMapper"    # Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Lcom/liquable/nemo/client/home/HomeServerClient;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    .line 51
    iput-object p1, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->serverType:Lcom/liquable/nemo/client/ServerType;

    .line 52
    iput-object p2, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    .line 53
    iput-object p3, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->systemNoticeDtoMapper:Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    .line 54
    return-void
.end method


# virtual methods
.method public findForumBoardBannerItem(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
    .locals 9
    .param p1, "boardId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v2, 0x0

    .line 90
    .local v2, "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    div-int/lit8 v3, v4, 0x3c

    .line 92
    .local v3, "timeZoneOffsetInMinutes":I
    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "boardId"

    invoke-direct {v6, v7, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "platform"

    sget-object v8, Lcom/liquable/util/ClientPlatform;->ANDROID:Lcom/liquable/util/ClientPlatform;

    .line 94
    invoke-virtual {v8}, Lcom/liquable/util/ClientPlatform;->getClientValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "banner-version"

    const-string/jumbo v8, "1"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "time-zone-offset"

    .line 96
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    .line 92
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 98
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v4, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    iget-object v5, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->serverType:Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v6, "/api/forum-board-banner"

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/client/ServerType;->getHomeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 98
    invoke-virtual {v4, v5, v1, v6}, Lcom/liquable/nemo/http/NemoHttpService;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidResponseCode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    new-instance v4, Lcom/liquable/nemo/client/NetworkErrorException;

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HomeServerClient.findForumBoardBannerItem return invalid response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 101
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v3    # "timeZoneOffsetInMinutes":I
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v5, "http service get error"

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    new-instance v4, Lcom/liquable/nemo/client/NetworkErrorException;

    invoke-direct {v4, v0}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v3    # "timeZoneOffsetInMinutes":I
    :cond_0
    invoke-virtual {v2}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    const/4 v4, 0x0

    .line 117
    :goto_0
    return-object v4

    .line 116
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v4

    .line 117
    invoke-virtual {v2}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/liquable/nemo/client/home/HomeServerClient$2;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/client/home/HomeServerClient$2;-><init>(Lcom/liquable/nemo/client/home/HomeServerClient;)V

    invoke-virtual {v4, v5, v6}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/model/forum/banner/IForumBoardBannerItemDto;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .restart local v0    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v5, "decode json error"

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    new-instance v4, Lcom/liquable/nemo/client/NetworkErrorException;

    invoke-direct {v4, v0}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public findRelayServerRegions()Lcom/liquable/nemo/util/ServerRegions;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    iget-object v4, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->serverType:Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v5, "/api/relay-server-regions"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/client/ServerType;->getHomeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 130
    invoke-virtual {v2, v4, v5, v6}, Lcom/liquable/nemo/http/NemoHttpService;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;

    move-result-object v1

    .line 135
    .local v1, "result":Lcom/liquable/nemo/http/NemoHttpResult;
    invoke-virtual {v1}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidWithContent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HomeServerClient.getRelayServerRegions return invalid response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    move-object v2, v3

    .line 146
    .end local v1    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :goto_0
    return-object v2

    .line 140
    .restart local v1    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v2

    invoke-virtual {v1}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/liquable/nemo/util/ServerRegions;

    invoke-virtual {v2, v4, v5}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/ServerRegions;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 141
    .end local v1    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "getRelayServerRegions error"

    invoke-virtual {v2, v4, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    move-object v2, v3

    .line 146
    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "getRelayServerRegions error"

    invoke-virtual {v2, v4, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public findServerTime()Ljava/lang/Long;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 150
    const/4 v1, 0x0

    .line 152
    .local v1, "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :try_start_0
    iget-object v3, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    iget-object v4, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->serverType:Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v5, "/api/server-time"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/client/ServerType;->getHomeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 152
    invoke-virtual {v3, v4, v5, v6}, Lcom/liquable/nemo/http/NemoHttpService;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidWithContent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 157
    iget-object v3, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "HomeServerClient.findServerTime return invalid response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 167
    :goto_0
    return-object v2

    .line 161
    :cond_0
    invoke-virtual {v1}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "HomeServerClient.findServerTime not number"

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v4, "HomeServerClient.findServerTime error"

    invoke-virtual {v3, v4, v0}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public findSystemNoticeDtoById(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/notice/ISystemNoticeDto;
    .locals 9
    .param p1, "systemNoticeId"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 174
    const/4 v4, 0x3

    :try_start_0
    new-array v4, v4, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "system-id"

    invoke-direct {v6, v7, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "locale"

    invoke-direct {v6, v7, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x2

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "support-device"

    const-string/jumbo v8, "ANDROID_PHONE"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 179
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v4, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    iget-object v5, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->serverType:Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v6, "/api/system-notice"

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/client/ServerType;->getHomeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 179
    invoke-virtual {v4, v5, v1, v6}, Lcom/liquable/nemo/http/NemoHttpService;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;

    move-result-object v2

    .line 183
    .local v2, "result":Lcom/liquable/nemo/http/NemoHttpResult;
    invoke-virtual {v2}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidWithContent()Z

    move-result v4

    if-nez v4, :cond_0

    .line 191
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v2    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :goto_0
    return-object v3

    .line 187
    .restart local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v2    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->systemNoticeDtoMapper:Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    invoke-virtual {v2}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->decode(Ljava/lang/String;)Lcom/liquable/nemo/notice/ISystemNoticeDto;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 188
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v2    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v5, "findSystemNoticeDtoById error"

    invoke-virtual {v4, v5, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public listAdItemDtos()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/ads/IAdItemDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v5, 0x0

    .line 197
    .local v5, "result":Lcom/liquable/nemo/http/NemoHttpResult;
    const/4 v6, 0x3

    :try_start_0
    new-array v6, v6, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v7, 0x0

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "locale"

    .line 198
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "platform"

    sget-object v10, Lcom/liquable/util/ClientPlatform;->ANDROID:Lcom/liquable/util/ClientPlatform;

    .line 199
    invoke-virtual {v10}, Lcom/liquable/util/ClientPlatform;->getClientValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v7

    const/4 v7, 0x2

    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v9, "ad-version"

    const-string/jumbo v10, "1"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v6, v7

    .line 197
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 202
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v6, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    iget-object v7, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->serverType:Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v8, "/api/recent-ads"

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/client/ServerType;->getHomeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    .line 202
    invoke-virtual {v6, v7, v4, v8}, Lcom/liquable/nemo/http/NemoHttpService;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 209
    invoke-virtual {v5}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidWithContent()Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    new-instance v6, Lcom/liquable/nemo/client/NetworkErrorException;

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HomeServerClient.listAdItemDtos return invalid response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 205
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Ljava/io/IOException;
    new-instance v6, Lcom/liquable/nemo/client/NetworkErrorException;

    invoke-direct {v6, v2}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 215
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_0
    :try_start_1
    sget-object v6, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->INSTANCE:Lcom/liquable/nemo/ads/model/AdItemDtoMapper;

    invoke-virtual {v5}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/ads/model/AdItemDtoMapper;->decodeList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 216
    .local v1, "decoded":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/IAdItemDto;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v3, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/IAdItemDto;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/ads/IAdItemDto;

    .line 218
    .local v0, "adItemDto":Lcom/liquable/nemo/model/ads/IAdItemDto;
    sget-object v7, Lcom/liquable/nemo/ads/model/UnknownAdItemDto;->INSTANCE:Lcom/liquable/nemo/ads/model/UnknownAdItemDto;

    if-eq v0, v7, :cond_1

    .line 219
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 223
    .end local v0    # "adItemDto":Lcom/liquable/nemo/model/ads/IAdItemDto;
    .end local v1    # "decoded":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/IAdItemDto;>;"
    .end local v3    # "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/IAdItemDto;>;"
    :catch_1
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v6, Lcom/liquable/nemo/client/NetworkErrorException;

    invoke-direct {v6, v2}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 222
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "decoded":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/IAdItemDto;>;"
    .restart local v3    # "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/IAdItemDto;>;"
    :cond_2
    return-object v3
.end method

.method public listEndPointServers()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/client/ServerInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    :try_start_0
    iget-object v7, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    iget-object v8, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->serverType:Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v9, "/api/endpoints"

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/client/ServerType;->getHomeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 235
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    .line 234
    invoke-virtual {v7, v8, v9, v10}, Lcom/liquable/nemo/http/NemoHttpService;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;

    move-result-object v6

    .line 238
    .local v6, "result":Lcom/liquable/nemo/http/NemoHttpResult;
    invoke-virtual {v6}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidWithContent()Z

    move-result v7

    if-nez v7, :cond_1

    .line 239
    iget-object v7, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "HomeServerClient.listEndPointServers return invalid response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 240
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 258
    .end local v6    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :cond_0
    :goto_0
    return-object v4

    .line 243
    .restart local v6    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :cond_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v6}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 244
    .local v3, "nodeJsonArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v4, "nodeList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 246
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "host"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "port"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 248
    .local v5, "port":I
    iget-object v7, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->serverType:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v7, v1, v5}, Lcom/liquable/nemo/client/ServerType;->createEndPointServerInfo(Ljava/lang/String;I)Lcom/liquable/nemo/client/ServerInfo;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "nodeJsonArray":Lorg/json/JSONArray;
    .end local v4    # "nodeList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/client/ServerInfo;>;"
    .end local v5    # "port":I
    .end local v6    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v8, "listEndPointServers error"

    invoke-virtual {v7, v8, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 253
    :catch_1
    move-exception v0

    .line 254
    .local v0, "e":Lorg/json/JSONException;
    iget-object v7, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v8, "listEndPointServers error"

    invoke-virtual {v7, v8, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 255
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v7, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v8, "listEndPointServers error"

    invoke-virtual {v7, v8, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public listHotArticles(Ljava/lang/String;II)Ljava/util/List;
    .locals 8
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/HotArticleDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 60
    .local v2, "result":Lcom/liquable/nemo/http/NemoHttpResult;
    const/4 v3, 0x3

    :try_start_0
    new-array v3, v3, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "country"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "start"

    .line 62
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "size"

    .line 63
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 60
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v3, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    iget-object v4, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->serverType:Lcom/liquable/nemo/client/ServerType;

    const-string/jumbo v5, "/api/hot-articles"

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/client/ServerType;->getHomeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 65
    invoke-virtual {v3, v4, v1, v5}, Lcom/liquable/nemo/http/NemoHttpService;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidWithContent()Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    new-instance v3, Lcom/liquable/nemo/client/NetworkErrorException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HomeServerClient.listHotArticles return invalid response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 68
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/liquable/nemo/client/NetworkErrorException;

    invoke-direct {v3, v0}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v3

    .line 79
    invoke-virtual {v2}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/liquable/nemo/client/home/HomeServerClient$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/client/home/HomeServerClient$1;-><init>(Lcom/liquable/nemo/client/home/HomeServerClient;)V

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 81
    :catch_1
    move-exception v0

    .line 82
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Lcom/liquable/nemo/client/NetworkErrorException;

    invoke-direct {v3, v0}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public listSystemNoticeDtos(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/ISystemNoticeDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    const/4 v8, 0x2

    :try_start_0
    new-array v8, v8, [Lorg/apache/http/message/BasicNameValuePair;

    const/4 v9, 0x0

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v11, "locale"

    invoke-direct {v10, v11, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v9

    const/4 v9, 0x1

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v11, "support-device"

    const-string/jumbo v12, "ANDROID_PHONE"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v10, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 267
    .local v6, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v8, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    const-string/jumbo v9, "http://ec2-54-148-227-60.us-west-2.compute.amazonaws.com/api/recent-system-notices"

    .line 268
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v10

    .line 267
    invoke-virtual {v8, v9, v6, v10}, Lcom/liquable/nemo/http/NemoHttpService;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;

    move-result-object v7

    .line 270
    .local v7, "result":Lcom/liquable/nemo/http/NemoHttpResult;
    invoke-virtual {v7}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidWithContent()Z

    move-result v8

    if-nez v8, :cond_1

    .line 271
    iget-object v8, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HomeServerClient.listSystemNoticeDtos return invalid response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 287
    .end local v6    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v7    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :cond_0
    :goto_0
    return-object v1

    .line 275
    .restart local v6    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .restart local v7    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v8

    invoke-virtual {v7}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/json/SimpleJsonMapper;->readTree(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v4

    .line 276
    .local v4, "jsonNode":Lorg/codehaus/jackson/JsonNode;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v1, "dtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/ISystemNoticeDto;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/codehaus/jackson/JsonNode;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 278
    invoke-virtual {v4, v3}, Lorg/codehaus/jackson/JsonNode;->get(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    .line 279
    .local v5, "node":Lorg/codehaus/jackson/JsonNode;
    iget-object v8, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->systemNoticeDtoMapper:Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->decode(Ljava/lang/String;)Lcom/liquable/nemo/notice/ISystemNoticeDto;

    move-result-object v0

    .line 280
    .local v0, "dto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    .end local v0    # "dto":Lcom/liquable/nemo/notice/ISystemNoticeDto;
    .end local v1    # "dtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/ISystemNoticeDto;>;"
    .end local v3    # "i":I
    .end local v4    # "jsonNode":Lorg/codehaus/jackson/JsonNode;
    .end local v5    # "node":Lorg/codehaus/jackson/JsonNode;
    .end local v6    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v7    # "result":Lcom/liquable/nemo/http/NemoHttpResult;
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/liquable/nemo/client/home/HomeServerClient;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v9, "listSystemNoticeDtos error"

    invoke-virtual {v8, v9, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method
