.class public Lcom/liquable/nemo/NemoManagers;
.super Ljava/lang/Object;
.source "NemoManagers.java"


# static fields
.field public static accountDaemon:Lcom/liquable/nemo/friend/AccountDaemon;

.field public static accountService:Lcom/liquable/nemo/client/service/AccountService;

.field public static activeService:Lcom/liquable/nemo/client/service/ActiveService;

.field public static adsManager:Lcom/liquable/nemo/ads/model/AdsManager;

.field public static asyncHttpClient:Lcom/liquable/nemo/http/AsyncHttpClient;

.field public static awsSecurityService:Lcom/liquable/nemo/client/service/AwsSecurityService;

.field public static backup:Lcom/liquable/nemo/db/Backup;

.field public static broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

.field public static chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

.field public static chatGroupService:Lcom/liquable/nemo/client/service/ChatGroupService;

.field public static chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

.field public static chattingService:Lcom/liquable/nemo/client/service/ChattingService;

.field public static cleaner:Lcom/liquable/nemo/db/Cleaner;

.field public static customStickerDaemon:Lcom/liquable/nemo/sticker/custom/model/CustomStickerDaemon;

.field public static customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

.field public static facebookDaemon:Lcom/liquable/nemo/facebook/FacebookDaemon;

.field public static fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

.field public static forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

.field public static forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

.field public static forumService:Lcom/liquable/nemo/client/service/ForumService;

.field public static friendDaemon:Lcom/liquable/nemo/friend/FriendDaemon;

.field public static friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

.field public static friendService:Lcom/liquable/nemo/client/service/FriendService;

.field public static homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

.field public static httpService:Lcom/liquable/nemo/http/NemoHttpService;

.field public static imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

.field public static messageExportManager:Lcom/liquable/nemo/message/export/MessageExportManager;

.field public static messageProcessor:Lcom/liquable/nemo/message/model/MessageProcessor;

.field public static nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

.field public static nemoRpcServiceForChat:Lcom/liquable/nemo/client/service/NemoRpcService;

.field public static nemoRpcServiceForRegist:Lcom/liquable/nemo/client/service/NemoRpcService;

.field public static nodeService:Lcom/liquable/nemo/client/service/NodeService;

.field public static noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

.field public static noticeService:Lcom/liquable/nemo/notice/INoticeService;

.field public static notifyManager:Lcom/liquable/nemo/android/NotifyManager;

.field public static openApiDaemon:Lcom/liquable/nemo/sdk/OpenApiDaemon;

.field public static pref:Lcom/liquable/nemo/util/Pref;

.field public static pubChannelService:Lcom/liquable/nemo/client/service/PubChannelService;

.field public static purchaseManager:Lcom/liquable/nemo/purchase/model/PurchaseManager;

.field public static pushService:Lcom/liquable/nemo/client/service/PushService;

.field public static recommendFriendManager:Lcom/liquable/nemo/friend/model/RecommendFriendManager;

.field public static registrationDaemon:Lcom/liquable/nemo/regist/RegistrationDaemon;

.field public static registrationManager:Lcom/liquable/nemo/regist/model/RegistrationManager;

.field public static rpcRestClient:Lcom/liquable/nemo/client/rpcrest/RpcRestClient;

.field public static s3PublicHttpClient:Lcom/liquable/nemo/storage/aws/S3PublicHttpClient;

.field public static scheduler:Lcom/liquable/nemo/background/Scheduler;

.field public static stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

.field public static userManager:Lcom/liquable/nemo/user/model/UserManager;

.field public static voipDaemon:Lcom/liquable/nemo/voip/VoipDaemon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
