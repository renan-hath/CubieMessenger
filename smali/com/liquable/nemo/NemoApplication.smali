.class public Lcom/liquable/nemo/NemoApplication;
.super Landroid/app/Application;
.source "NemoApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private migrateAutoSyncContactsPreference()V
    .locals 2

    .prologue
    .line 89
    invoke-static {p0}, Lcom/liquable/nemo/CubieAlarmSetting;->cancelLegacyAlarm(Landroid/content/Context;)V

    .line 90
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isAutoSyncContactsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setAutoScheduleSyncContactsEnable(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method private patchChatGroupOwnerIfRequired()V
    .locals 2

    .prologue
    .line 369
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->requirePatchChatGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    new-instance v0, Lcom/liquable/nemo/NemoApplication$3;

    invoke-direct {v0, p0, p0}, Lcom/liquable/nemo/NemoApplication$3;-><init>(Lcom/liquable/nemo/NemoApplication;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 394
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/NemoApplication$3;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private restoreAccount(Lcom/liquable/nemo/util/Pref;)V
    .locals 4
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/liquable/nemo/util/Pref;->isAccountExists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    invoke-static {p0}, Lcom/liquable/nemo/authenticator/AccountUtil;->isAccountExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-static {p0}, Lcom/liquable/nemo/authenticator/AccountUtil;->getUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {p0}, Lcom/liquable/nemo/authenticator/AccountUtil;->getNickname(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-static {p0}, Lcom/liquable/nemo/authenticator/AccountUtil;->getUsername(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-static {p0}, Lcom/liquable/nemo/authenticator/AccountUtil;->getPhone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 401
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/liquable/nemo/util/Pref;->saveAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 407
    :cond_0
    return-void
.end method

.method private turnOnStrictMode()V
    .locals 4

    .prologue
    .line 411
    sget-object v2, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v2}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 416
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    .line 417
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 418
    .local v0, "threadPolicyBuilder":Landroid/os/StrictMode$ThreadPolicy$Builder;
    new-instance v2, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .line 419
    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 420
    .local v1, "vmPolicyBuilder":Landroid/os/StrictMode$VmPolicy$Builder;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    sget-object v2, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v2}, Lcom/liquable/nemo/client/ServerType;->isTestOnProduction()Z

    move-result v2

    if-nez v2, :cond_2

    .line 421
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 423
    :cond_2
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 424
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 65

    .prologue
    .line 113
    invoke-super/range {p0 .. p0}, Landroid/app/Application;->onCreate()V

    .line 115
    const-string/jumbo v4, "nXhZkGTkT9KdcVRsgH4ksm"

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->setAppsFlyerKey(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/appsflyer/AppsFlyerLib;->sendTracking(Landroid/content/Context;)V

    .line 119
    invoke-static {}, Lcom/liquable/nemo/analytics/CrittercismService;->getInstance()Lcom/liquable/nemo/analytics/CrittercismService;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/liquable/nemo/analytics/CrittercismService;->init(Landroid/content/Context;)V

    .line 124
    const/4 v4, 0x3

    invoke-static {v4}, Lcom/liquable/future/android/AndroidEventLoop;->pool(I)Lcom/liquable/future/android/AndroidEventLoop;

    move-result-object v4

    new-instance v8, Lcom/liquable/nemo/FutureExceptionHandler;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/liquable/nemo/FutureExceptionHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v8}, Lcom/liquable/future/Futures;->init(Lcom/liquable/future/EventLoop;Lcom/liquable/future/ExceptionHandler;)V

    .line 126
    new-instance v4, Lcom/liquable/nemo/util/Pref;

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/liquable/nemo/util/Pref;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 127
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/liquable/nemo/NemoApplication;->restoreAccount(Lcom/liquable/nemo/util/Pref;)V

    .line 129
    invoke-static {}, Lcom/liquable/nemo/message/model/MessageProcessor;->getInstance()Lcom/liquable/nemo/message/model/MessageProcessor;

    move-result-object v5

    .line 130
    .local v5, "messageProcessor":Lcom/liquable/nemo/message/model/MessageProcessor;
    sput-object v5, Lcom/liquable/nemo/NemoManagers;->messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

    .line 132
    new-instance v4, Lcom/liquable/nemo/regist/RegistrationDaemon;

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/liquable/nemo/regist/RegistrationDaemon;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

    .line 133
    new-instance v4, Lcom/liquable/nemo/facebook/FacebookDaemon;

    invoke-direct {v4}, Lcom/liquable/nemo/facebook/FacebookDaemon;-><init>()V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->facebookDaemon:Lcom/liquable/nemo/facebook/FacebookDaemon;

    .line 134
    new-instance v4, Lcom/liquable/nemo/friend/AccountDaemon;

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/liquable/nemo/friend/AccountDaemon;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

    .line 136
    new-instance v10, Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 137
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v8

    invoke-direct {v10, v4, v8}, Lcom/liquable/nemo/storage/NemoFileService;-><init>(Landroid/content/Context;Lcom/liquable/nemo/storage/DeviceExternalStorage;)V

    .line 138
    .local v10, "nemoFileService":Lcom/liquable/nemo/storage/NemoFileService;
    invoke-virtual {v10}, Lcom/liquable/nemo/storage/NemoFileService;->setupFoldersAndPlaceNoMediaFile()V

    .line 139
    sput-object v10, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 142
    new-instance v64, Lcom/liquable/volley/VolleyEnv;

    invoke-direct/range {v64 .. v65}, Lcom/liquable/volley/VolleyEnv;-><init>(Landroid/app/Application;)V

    .line 143
    .local v64, "volleyEnv":Lcom/liquable/volley/VolleyEnv;
    invoke-virtual/range {v64 .. v64}, Lcom/liquable/volley/VolleyEnv;->getImageLoader()Lcom/liquable/volley/toolbox/ImageLoader;

    move-result-object v4

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    .line 145
    new-instance v55, Lcom/liquable/nemo/http/NemoHttpService;

    move-object/from16 v0, v55

    invoke-direct {v0, v10}, Lcom/liquable/nemo/http/NemoHttpService;-><init>(Lcom/liquable/nemo/storage/NemoFileService;)V

    .line 146
    .local v55, "httpService":Lcom/liquable/nemo/http/NemoHttpService;
    sput-object v55, Lcom/liquable/nemo/NemoManagers;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    .line 147
    new-instance v54, Lcom/liquable/nemo/client/home/HomeServerClient;

    sget-object v4, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    .line 149
    invoke-static {}, Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;->getInstance()Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;

    move-result-object v8

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-direct {v0, v4, v1, v8}, Lcom/liquable/nemo/client/home/HomeServerClient;-><init>(Lcom/liquable/nemo/client/ServerType;Lcom/liquable/nemo/http/NemoHttpService;Lcom/liquable/nemo/notice/SystemNoticeDtoMapper;)V

    .line 150
    .local v54, "homeServerClient":Lcom/liquable/nemo/client/home/HomeServerClient;
    sput-object v54, Lcom/liquable/nemo/NemoManagers;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    .line 153
    new-instance v4, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-direct {v4, v8}, Lcom/liquable/nemo/client/rpcrest/RpcRestClient;-><init>(Lcom/liquable/nemo/util/Pref;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    .line 154
    new-instance v4, Lcom/liquable/nemo/client/service/NodeService;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-direct {v4, v8}, Lcom/liquable/nemo/client/service/NodeService;-><init>(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->nodeService:Lcom/liquable/nemo/client/service/NodeService;

    .line 155
    new-instance v58, Lcom/liquable/nemo/notice/NoticeService;

    move-object/from16 v0, v58

    move-object/from16 v1, v54

    invoke-direct {v0, v1}, Lcom/liquable/nemo/notice/NoticeService;-><init>(Lcom/liquable/nemo/client/home/HomeServerClient;)V

    .line 156
    .local v58, "noticeService":Lcom/liquable/nemo/notice/NoticeService;
    sput-object v58, Lcom/liquable/nemo/NemoManagers;->noticeService:Lcom/liquable/nemo/notice/INoticeService;

    .line 159
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v56

    .line 160
    .local v56, "mainThread":Ljava/lang/Thread;
    new-instance v4, Lcom/liquable/nemo/client/service/NemoRpcService;

    new-instance v8, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    const-class v13, Lcom/liquable/nemo/android/service/RegistrationAndroidService;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v13}, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, v8}, Lcom/liquable/nemo/client/service/NemoRpcService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForRegist:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 163
    new-instance v4, Lcom/liquable/nemo/client/service/NemoRpcService;

    new-instance v8, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;

    const-class v13, Lcom/liquable/nemo/android/service/ChattingAndroidService;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v13}, Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v4, v8}, Lcom/liquable/nemo/client/service/NemoRpcService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService$IntentServiceHelper;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 167
    new-instance v4, Lcom/liquable/nemo/client/service/ForumService;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    invoke-direct {v4, v8}, Lcom/liquable/nemo/client/service/ForumService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    .line 169
    new-instance v59, Lcom/liquable/nemo/client/service/OpenApiService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    move-object/from16 v0, v59

    invoke-direct {v0, v4, v8}, Lcom/liquable/nemo/client/service/OpenApiService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V

    .line 171
    .local v59, "openApiService":Lcom/liquable/nemo/client/service/OpenApiService;
    new-instance v4, Lcom/liquable/nemo/sdk/OpenApiDaemon;

    move-object/from16 v0, v59

    invoke-direct {v4, v0}, Lcom/liquable/nemo/sdk/OpenApiDaemon;-><init>(Lcom/liquable/nemo/client/service/OpenApiService;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->openApiDaemon:Lcom/liquable/nemo/sdk/OpenApiDaemon;

    .line 173
    new-instance v4, Lcom/liquable/nemo/client/service/PubChannelService;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    sget-object v13, Lcom/liquable/nemo/NemoManagers;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-direct {v4, v8, v13}, Lcom/liquable/nemo/client/service/PubChannelService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->pubChannelService:Lcom/liquable/nemo/client/service/PubChannelService;

    .line 176
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/android/BroadcastManager;->getInstance(Landroid/content/Context;)Lcom/liquable/nemo/android/BroadcastManager;

    move-result-object v6

    .line 177
    .local v6, "broadcastManager":Lcom/liquable/nemo/android/BroadcastManager;
    sput-object v6, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    .line 179
    new-instance v3, Lcom/liquable/nemo/client/service/ChattingService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-direct/range {v3 .. v8}, Lcom/liquable/nemo/client/service/ChattingService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/message/model/MessageProcessor;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V

    .line 182
    .local v3, "chattingService":Lcom/liquable/nemo/client/service/ChattingService;
    sput-object v3, Lcom/liquable/nemo/NemoManagers;->chattingService:Lcom/liquable/nemo/client/service/ChattingService;

    .line 184
    new-instance v61, Lcom/liquable/nemo/client/service/PushService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/liquable/nemo/client/service/PushService;-><init>(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V

    .line 185
    .local v61, "pushService":Lcom/liquable/nemo/client/service/PushService;
    sput-object v61, Lcom/liquable/nemo/NemoManagers;->pushService:Lcom/liquable/nemo/client/service/PushService;

    .line 187
    new-instance v9, Lcom/liquable/nemo/client/service/AccountService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    invoke-direct {v9, v4, v8}, Lcom/liquable/nemo/client/service/AccountService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V

    .line 189
    .local v9, "accountService":Lcom/liquable/nemo/client/service/AccountService;
    sput-object v9, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    .line 191
    new-instance v50, Lcom/liquable/nemo/client/service/ActiveService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Lcom/liquable/nemo/client/service/ActiveService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V

    .line 192
    .local v50, "activeService":Lcom/liquable/nemo/client/service/ActiveService;
    sput-object v50, Lcom/liquable/nemo/NemoManagers;->activeService:Lcom/liquable/nemo/client/service/ActiveService;

    .line 194
    new-instance v15, Lcom/liquable/nemo/client/service/FriendService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    invoke-direct {v15, v4, v5}, Lcom/liquable/nemo/client/service/FriendService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/message/model/MessageProcessor;)V

    .line 196
    .local v15, "friendService":Lcom/liquable/nemo/client/service/FriendService;
    sput-object v15, Lcom/liquable/nemo/NemoManagers;->friendService:Lcom/liquable/nemo/client/service/FriendService;

    .line 198
    new-instance v24, Lcom/liquable/nemo/client/service/ChatGroupService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v8}, Lcom/liquable/nemo/client/service/ChatGroupService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V

    .line 200
    .local v24, "chatGroupService":Lcom/liquable/nemo/client/service/ChatGroupService;
    sput-object v24, Lcom/liquable/nemo/NemoManagers;->chatGroupService:Lcom/liquable/nemo/client/service/ChatGroupService;

    .line 202
    new-instance v4, Lcom/liquable/nemo/http/AsyncHttpClient;

    move-object/from16 v0, v55

    invoke-direct {v4, v0, v6}, Lcom/liquable/nemo/http/AsyncHttpClient;-><init>(Lcom/liquable/nemo/http/NemoHttpService;Lcom/liquable/nemo/android/BroadcastManager;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->asyncHttpClient:Lcom/liquable/nemo/http/AsyncHttpClient;

    .line 204
    invoke-static/range {p0 .. p0}, Lcom/liquable/nemo/android/NotifyManager;->getInstance(Landroid/content/Context;)Lcom/liquable/nemo/android/NotifyManager;

    move-result-object v35

    .line 205
    .local v35, "notifyManager":Lcom/liquable/nemo/android/NotifyManager;
    sput-object v35, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    .line 208
    invoke-static {}, Lcom/liquable/nemo/notice/NoticeMapper;->getInstance()Lcom/liquable/nemo/notice/NoticeMapper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v5, v4}, Lcom/liquable/nemo/db/Dao;->getInstance(Landroid/content/Context;Lcom/liquable/nemo/message/model/MessageProcessor;Lcom/liquable/nemo/notice/NoticeMapper;)Lcom/liquable/nemo/db/Dao;

    move-result-object v53

    .line 210
    .local v53, "dao":Lcom/liquable/nemo/db/Dao;
    new-instance v4, Lcom/liquable/nemo/forum/model/ForumManager;

    move-object/from16 v0, v53

    iget-object v8, v0, Lcom/liquable/nemo/db/Dao;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    move-object/from16 v0, v53

    iget-object v13, v0, Lcom/liquable/nemo/db/Dao;->reportAbuseForumBoardDao:Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;

    move-object/from16 v0, v53

    iget-object v14, v0, Lcom/liquable/nemo/db/Dao;->reportAbuseForumArticleDao:Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->likedForumItemDao:Lcom/liquable/nemo/db/LikedForumItemDao;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v4, v8, v13, v14, v0}, Lcom/liquable/nemo/forum/model/ForumManager;-><init>(Lcom/liquable/nemo/db/FavoriteForumBoardDao;Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;Lcom/liquable/nemo/db/LikedForumItemDao;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    .line 214
    new-instance v4, Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/liquable/nemo/forum/ForumDaemon;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    .line 215
    new-instance v4, Lcom/liquable/nemo/friend/FriendDaemon;

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/liquable/nemo/friend/FriendDaemon;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->friendDaemon:Lcom/liquable/nemo/friend/FriendDaemon;

    .line 218
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/liquable/nemo/db/Dao;->customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

    .line 219
    new-instance v51, Lcom/liquable/nemo/db/Backup;

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-direct {v0, v1, v10}, Lcom/liquable/nemo/db/Backup;-><init>(Lcom/liquable/nemo/db/Dao;Lcom/liquable/nemo/storage/NemoFileService;)V

    .line 220
    .local v51, "backup":Lcom/liquable/nemo/db/Backup;
    sput-object v51, Lcom/liquable/nemo/NemoManagers;->backup:Lcom/liquable/nemo/db/Backup;

    .line 223
    new-instance v52, Lcom/liquable/nemo/db/Cleaner;

    invoke-direct/range {v52 .. v53}, Lcom/liquable/nemo/db/Cleaner;-><init>(Lcom/liquable/nemo/db/Dao;)V

    .line 224
    .local v52, "cleaner":Lcom/liquable/nemo/db/Cleaner;
    sput-object v52, Lcom/liquable/nemo/NemoManagers;->cleaner:Lcom/liquable/nemo/db/Cleaner;

    .line 226
    new-instance v4, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    invoke-direct {v4}, Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;-><init>()V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->s3PublicHttpClient:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    .line 227
    new-instance v4, Lcom/liquable/nemo/client/service/AwsSecurityService;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    invoke-direct {v4, v8}, Lcom/liquable/nemo/client/service/AwsSecurityService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->awsSecurityService:Lcom/liquable/nemo/client/service/AwsSecurityService;

    .line 229
    new-instance v63, Lcom/liquable/nemo/client/service/RegistrationService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/liquable/nemo/client/service/RegistrationService;-><init>(Lcom/liquable/nemo/client/rpcrest/RpcRestClient;)V

    .line 231
    .local v63, "registrationService":Lcom/liquable/nemo/client/service/RegistrationService;
    new-instance v11, Lcom/liquable/nemo/android/service/FileTransferManager;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v10, v6}, Lcom/liquable/nemo/android/service/FileTransferManager;-><init>(Landroid/content/Context;Lcom/liquable/nemo/storage/NemoFileService;Lcom/liquable/nemo/android/BroadcastManager;)V

    .line 234
    .local v11, "fileTransferManager":Lcom/liquable/nemo/android/service/FileTransferManager;
    sput-object v11, Lcom/liquable/nemo/NemoManagers;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    .line 236
    new-instance v62, Lcom/liquable/nemo/regist/model/RegistrationManager;

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 236
    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    move-object/from16 v0, v62

    move-object/from16 v1, v63

    move-object/from16 v2, v51

    invoke-direct {v0, v4, v1, v2}, Lcom/liquable/nemo/regist/model/RegistrationManager;-><init>(Landroid/accounts/AccountManager;Lcom/liquable/nemo/client/service/IRegistrationService;Lcom/liquable/nemo/db/Backup;)V

    .line 238
    .local v62, "registrationManager":Lcom/liquable/nemo/regist/model/RegistrationManager;
    sput-object v62, Lcom/liquable/nemo/NemoManagers;->registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

    .line 241
    new-instance v38, Lcom/liquable/nemo/notice/model/NoticeManager;

    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/liquable/nemo/db/Dao;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    move-object/from16 v0, v53

    iget-object v8, v0, Lcom/liquable/nemo/db/Dao;->existingSystemNoticeDao:Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;

    move-object/from16 v0, v38

    move-object/from16 v1, v58

    invoke-direct {v0, v4, v8, v1, v6}, Lcom/liquable/nemo/notice/model/NoticeManager;-><init>(Lcom/liquable/nemo/notice/NoticeDao;Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;Lcom/liquable/nemo/notice/NoticeService;Lcom/liquable/nemo/android/BroadcastManager;)V

    .line 245
    .local v38, "noticeManager":Lcom/liquable/nemo/notice/model/NoticeManager;
    sput-object v38, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    .line 247
    new-instance v7, Lcom/liquable/nemo/user/model/UserManager;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    move-object v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/liquable/nemo/user/model/UserManager;-><init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/client/service/IAccountService;Lcom/liquable/nemo/storage/NemoFileService;Lcom/liquable/nemo/android/service/FileTransferManager;Lcom/liquable/nemo/android/BroadcastManager;)V

    .line 252
    .local v7, "userManager":Lcom/liquable/nemo/user/model/UserManager;
    sput-object v7, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    .line 255
    new-instance v12, Lcom/liquable/nemo/friend/model/RecommendFriendManager;

    sget-object v13, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    move-object/from16 v0, v53

    iget-object v14, v0, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->recommendFriendDao:Lcom/liquable/nemo/db/RecommendFriendDao;

    move-object/from16 v18, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->mutualFriendRelationshipDao:Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

    move-object/from16 v19, v0

    move-object/from16 v16, v6

    move-object/from16 v17, v11

    invoke-direct/range {v12 .. v19}, Lcom/liquable/nemo/friend/model/RecommendFriendManager;-><init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/db/AccountDao;Lcom/liquable/nemo/client/service/IFriendService;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/android/service/FileTransferManager;Lcom/liquable/nemo/db/RecommendFriendDao;Lcom/liquable/nemo/db/MutualFriendRelationshipDao;)V

    .line 262
    .local v12, "recommendFriendManager":Lcom/liquable/nemo/friend/model/RecommendFriendManager;
    sput-object v12, Lcom/liquable/nemo/NemoManagers;->recommendFriendManager:Lcom/liquable/nemo/friend/model/RecommendFriendManager;

    .line 263
    new-instance v4, Lcom/liquable/nemo/NemoApplication$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/liquable/nemo/NemoApplication$1;-><init>(Lcom/liquable/nemo/NemoApplication;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    .line 272
    invoke-virtual {v4, v8}, Lcom/liquable/nemo/NemoApplication$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 275
    new-instance v16, Lcom/liquable/nemo/friend/model/FriendManager;

    sget-object v17, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    move-object/from16 v18, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->contactInfoDao:Lcom/liquable/nemo/db/ContactInfoDao;

    move-object/from16 v19, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    move-object/from16 v20, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move-object/from16 v23, v15

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    move-object/from16 v27, v6

    move-object/from16 v28, v11

    invoke-direct/range {v16 .. v28}, Lcom/liquable/nemo/friend/model/FriendManager;-><init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/db/AccountDao;Lcom/liquable/nemo/db/ContactInfoDao;Lcom/liquable/nemo/db/ChatGroupDao;Lcom/liquable/nemo/db/ChatGroupMemberDao;Lcom/liquable/nemo/client/service/IAccountService;Lcom/liquable/nemo/client/service/IFriendService;Lcom/liquable/nemo/client/service/IChatGroupService;Lcom/liquable/nemo/storage/NemoFileService;Lcom/liquable/nemo/friend/model/RecommendFriendManager;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/android/service/FileTransferManager;)V

    .line 287
    .local v16, "friendManager":Lcom/liquable/nemo/friend/model/FriendManager;
    sput-object v16, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 289
    new-instance v18, Lcom/liquable/nemo/group/model/ChatGroupManager;

    sget-object v19, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    move-object/from16 v20, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    move-object/from16 v21, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    move-object/from16 v22, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    move-object/from16 v23, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

    move-object/from16 v28, v0

    move-object/from16 v25, v3

    move-object/from16 v26, v6

    move-object/from16 v27, v16

    invoke-direct/range {v18 .. v28}, Lcom/liquable/nemo/group/model/ChatGroupManager;-><init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/db/AccountDao;Lcom/liquable/nemo/db/ChatGroupDao;Lcom/liquable/nemo/db/ChatGroupMemberDao;Lcom/liquable/nemo/db/MessageDao;Lcom/liquable/nemo/client/service/IChatGroupService;Lcom/liquable/nemo/client/service/IChattingService;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/friend/model/FriendManager;Lcom/liquable/nemo/db/DeletedMessageIdDao;)V

    .line 299
    .local v18, "chatGroupManager":Lcom/liquable/nemo/group/model/ChatGroupManager;
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->setChatGroupManager(Lcom/liquable/nemo/group/model/ChatGroupManager;)V

    .line 300
    sput-object v18, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    .line 302
    new-instance v25, Lcom/liquable/nemo/chat/model/ChattingManager;

    sget-object v26, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    move-object/from16 v27, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    move-object/from16 v28, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    move-object/from16 v29, v0

    sget-object v37, Lcom/liquable/nemo/NemoManagers;->s3PublicHttpClient:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

    move-object/from16 v39, v0

    move-object/from16 v30, v3

    move-object/from16 v31, v16

    move-object/from16 v32, v10

    move-object/from16 v33, v18

    move-object/from16 v34, v6

    move-object/from16 v36, v11

    move-object/from16 v40, v9

    invoke-direct/range {v25 .. v40}, Lcom/liquable/nemo/chat/model/ChattingManager;-><init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/db/AccountDao;Lcom/liquable/nemo/db/ChatGroupDao;Lcom/liquable/nemo/db/MessageDao;Lcom/liquable/nemo/client/service/IChattingService;Lcom/liquable/nemo/friend/model/FriendManager;Lcom/liquable/nemo/storage/NemoFileService;Lcom/liquable/nemo/group/model/ChatGroupManager;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/android/NotifyManager;Lcom/liquable/nemo/android/service/FileTransferManager;Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;Lcom/liquable/nemo/notice/model/NoticeManager;Lcom/liquable/nemo/db/DeletedMessageIdDao;Lcom/liquable/nemo/client/service/IAccountService;)V

    .line 317
    .local v25, "chattingManager":Lcom/liquable/nemo/chat/model/ChattingManager;
    sput-object v25, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    .line 319
    new-instance v57, Lcom/liquable/nemo/message/export/MessageExportManager;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    move-object/from16 v0, v53

    iget-object v8, v0, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    move-object/from16 v0, v53

    iget-object v13, v0, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    move-object/from16 v0, v57

    invoke-direct {v0, v4, v8, v13, v10}, Lcom/liquable/nemo/message/export/MessageExportManager;-><init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/db/MessageDao;Lcom/liquable/nemo/db/AccountDao;Lcom/liquable/nemo/storage/NemoFileService;)V

    .line 323
    .local v57, "messageExportManager":Lcom/liquable/nemo/message/export/MessageExportManager;
    sput-object v57, Lcom/liquable/nemo/NemoManagers;->messageExportManager:Lcom/liquable/nemo/message/export/MessageExportManager;

    .line 325
    new-instance v4, Lcom/liquable/nemo/ads/model/AdsManager;

    move-object/from16 v0, v53

    iget-object v8, v0, Lcom/liquable/nemo/db/Dao;->adsDao:Lcom/liquable/nemo/ads/model/AdsDao;

    move-object/from16 v0, v54

    invoke-direct {v4, v0, v8}, Lcom/liquable/nemo/ads/model/AdsManager;-><init>(Lcom/liquable/nemo/client/home/HomeServerClient;Lcom/liquable/nemo/ads/model/AdsDao;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->adsManager:Lcom/liquable/nemo/ads/model/AdsManager;

    .line 327
    new-instance v42, Lcom/liquable/nemo/client/service/StickerService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Lcom/liquable/nemo/client/service/StickerService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V

    .line 328
    .local v42, "stickerService":Lcom/liquable/nemo/client/service/StickerService;
    new-instance v60, Lcom/liquable/nemo/client/service/PurchaseService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    move-object/from16 v0, v60

    invoke-direct {v0, v4}, Lcom/liquable/nemo/client/service/PurchaseService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V

    .line 330
    .local v60, "purchaseService":Lcom/liquable/nemo/client/service/PurchaseService;
    new-instance v4, Lcom/liquable/nemo/purchase/model/PurchaseManager;

    move-object/from16 v0, v60

    invoke-direct {v4, v0, v6}, Lcom/liquable/nemo/purchase/model/PurchaseManager;-><init>(Lcom/liquable/nemo/client/service/PurchaseService;Lcom/liquable/nemo/android/BroadcastManager;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->purchaseManager:Lcom/liquable/nemo/purchase/model/PurchaseManager;

    .line 332
    new-instance v4, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8, v11}, Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;-><init>(Landroid/content/Context;Lcom/liquable/nemo/android/service/FileTransferManager;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

    .line 335
    new-instance v43, Lcom/liquable/nemo/client/service/AdwaysService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Lcom/liquable/nemo/client/service/AdwaysService;-><init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V

    .line 336
    .local v43, "adwaysService":Lcom/liquable/nemo/client/service/AdwaysService;
    new-instance v39, Lcom/liquable/nemo/sticker/model/StickerManager;

    sget-object v41, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    move-object/from16 v45, v0

    move-object/from16 v40, p0

    move-object/from16 v44, v38

    move-object/from16 v46, v10

    move-object/from16 v47, v11

    move-object/from16 v48, v6

    move-object/from16 v49, v35

    invoke-direct/range {v39 .. v49}, Lcom/liquable/nemo/sticker/model/StickerManager;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/client/service/StickerService;Lcom/liquable/nemo/client/service/AdwaysService;Lcom/liquable/nemo/notice/model/NoticeManager;Lcom/liquable/nemo/db/StickerDao;Lcom/liquable/nemo/storage/NemoFileService;Lcom/liquable/nemo/android/service/FileTransferManager;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/android/NotifyManager;)V

    sput-object v39, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    .line 346
    new-instance v4, Lcom/liquable/nemo/NemoApplication$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/liquable/nemo/NemoApplication$2;-><init>(Lcom/liquable/nemo/NemoApplication;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    .line 354
    invoke-virtual {v4, v8}, Lcom/liquable/nemo/NemoApplication$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 356
    new-instance v4, Lcom/liquable/nemo/voip/VoipDaemon;

    sget-object v8, Lcom/liquable/nemo/NemoManagers;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v8}, Lcom/liquable/nemo/voip/VoipDaemon;-><init>(Landroid/content/Context;Lcom/liquable/nemo/client/home/HomeServerClient;)V

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;

    .line 358
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->migrateAutoSyncContactsPreference()V

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->patchChatGroupOwnerIfRequired()V

    .line 360
    invoke-static {}, Lcom/liquable/nemo/background/Scheduler;->getInstance()Lcom/liquable/nemo/background/Scheduler;

    move-result-object v4

    sput-object v4, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    .line 361
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->scheduler:Lcom/liquable/nemo/background/Scheduler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v13, v14}, Lcom/liquable/nemo/background/Scheduler;->init(Landroid/content/Context;J)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/NemoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;->initialize(Landroid/content/Context;)V

    .line 366
    return-void
.end method
