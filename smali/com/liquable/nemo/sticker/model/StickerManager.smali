.class public Lcom/liquable/nemo/sticker/model/StickerManager;
.super Ljava/lang/Object;
.source "StickerManager.java"


# static fields
.field public static final STICKER_ROOT_MIN_UPDATE_INTERVAL:I = 0x493e0

.field public static final STICKER_ROOT_UPDATE_INTERVAL:I = 0x5265c00

.field public static devRevision:I

.field private static final legacyPackageToNewPackageMap:Ljava/util/Map;
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

.field private static final logger:Lcom/liquable/nemo/util/Logger;

.field public static testStickerNotFoundAndNotVisible:Z


# instance fields
.field private final adwaysService:Lcom/liquable/nemo/client/service/AdwaysService;

.field private final broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

.field private final context:Landroid/content/Context;

.field private final downloadingPackages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

.field private final nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

.field private final noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

.field private final notifyManager:Lcom/liquable/nemo/android/NotifyManager;

.field private final pref:Lcom/liquable/nemo/util/Pref;

.field private final rootDto:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerRootDto;",
            ">;"
        }
    .end annotation
.end field

.field private final stickerDao:Lcom/liquable/nemo/db/StickerDao;

.field private final stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
            ">;"
        }
    .end annotation
.end field

.field private final stickerService:Lcom/liquable/nemo/client/service/StickerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    sput-boolean v3, Lcom/liquable/nemo/sticker/model/StickerManager;->testStickerNotFoundAndNotVisible:Z

    .line 124
    const-class v0, Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    .line 129
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "girlcomic1"

    const-string/jumbo v2, "girlcomic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "girlcomic2"

    const-string/jumbo v2, "girlcomic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "cupcake1"

    const-string/jumbo v2, "cupcake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "cupcake2"

    const-string/jumbo v2, "cupcake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "cupcake3"

    const-string/jumbo v2, "cupcake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "cupcake4"

    const-string/jumbo v2, "cupcake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "cupcake5"

    const-string/jumbo v2, "cupcake"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "sea_otter"

    const-string/jumbo v2, "seaotter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "seaotter2"

    const-string/jumbo v2, "seaotter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "seaotter3"

    const-string/jumbo v2, "seaotter"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "madbros1"

    const-string/jumbo v2, "madbros"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "madbros2"

    const-string/jumbo v2, "madbros"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "madbros3"

    const-string/jumbo v2, "madbros"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "casper"

    const-string/jumbo v2, "genie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "casper2"

    const-string/jumbo v2, "genie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "casper3"

    const-string/jumbo v2, "genie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "casper4"

    const-string/jumbo v2, "genie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "casper5"

    const-string/jumbo v2, "genie"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "chichi1"

    const-string/jumbo v2, "chichi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "chichi2"

    const-string/jumbo v2, "chichi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "chichi3"

    const-string/jumbo v2, "chichi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "chichi4"

    const-string/jumbo v2, "chichi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "pockymo1"

    const-string/jumbo v2, "pockymoGerm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "germ1"

    const-string/jumbo v2, "pockymoGerm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "catblock"

    const-string/jumbo v2, "pockymoGerm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "dali1"

    const-string/jumbo v2, "dali"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    const-string/jumbo v1, "dali2"

    const-string/jumbo v2, "dali"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sput v3, Lcom/liquable/nemo/sticker/model/StickerManager;->devRevision:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/client/service/StickerService;Lcom/liquable/nemo/client/service/AdwaysService;Lcom/liquable/nemo/notice/model/NoticeManager;Lcom/liquable/nemo/db/StickerDao;Lcom/liquable/nemo/storage/NemoFileService;Lcom/liquable/nemo/android/service/FileTransferManager;Lcom/liquable/nemo/android/BroadcastManager;Lcom/liquable/nemo/android/NotifyManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p3, "stickerService"    # Lcom/liquable/nemo/client/service/StickerService;
    .param p4, "adwaysService"    # Lcom/liquable/nemo/client/service/AdwaysService;
    .param p5, "noticeManager"    # Lcom/liquable/nemo/notice/model/NoticeManager;
    .param p6, "stickerDao"    # Lcom/liquable/nemo/db/StickerDao;
    .param p7, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;
    .param p8, "fileTransferManager"    # Lcom/liquable/nemo/android/service/FileTransferManager;
    .param p9, "broadcastManager"    # Lcom/liquable/nemo/android/BroadcastManager;
    .param p10, "notifyManager"    # Lcom/liquable/nemo/android/NotifyManager;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 180
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadingPackages:Ljava/util/concurrent/ConcurrentHashMap;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->context:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 198
    iput-object p3, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerService:Lcom/liquable/nemo/client/service/StickerService;

    .line 199
    iput-object p4, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->adwaysService:Lcom/liquable/nemo/client/service/AdwaysService;

    .line 200
    iput-object p5, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    .line 201
    iput-object p6, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    .line 202
    iput-object p7, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 203
    iput-object p8, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    .line 204
    iput-object p9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    .line 205
    iput-object p10, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sticker/model/StickerManager;)Lcom/liquable/nemo/android/BroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/model/StickerManager;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/sticker/model/StickerManager;)Lcom/liquable/nemo/android/NotifyManager;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/model/StickerManager;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    return-object v0
.end method

.method private createAdwaysContext(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v0, "adwaysContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "platform"

    sget-object v5, Lcom/liquable/util/ClientPlatform;->ANDROID:Lcom/liquable/util/ClientPlatform;

    invoke-virtual {v5}, Lcom/liquable/util/ClientPlatform;->getClientValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v4, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    sget-object v5, Lcom/liquable/nemo/client/ServerType;->TEST:Lcom/liquable/nemo/client/ServerType;

    if-eq v4, v5, :cond_0

    sget-object v4, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    sget-object v5, Lcom/liquable/nemo/client/ServerType;->LOCAL:Lcom/liquable/nemo/client/ServerType;

    if-ne v4, v5, :cond_2

    .line 213
    :cond_0
    const-string/jumbo v4, "imei"

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const v6, 0x5f5e0ff

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v4, "mcc"

    const-string/jumbo v5, "466"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    :goto_0
    return-object v0

    .line 218
    :cond_2
    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 219
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "imei":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 225
    const-string/jumbo v4, "imei"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_3
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "mccmnc":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 230
    const-string/jumbo v4, "mcc"

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private deleteWrongPackages(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v7, "stickerCodeToPackage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 238
    .local v2, "packagesToDelete":Ljava/util/Set;, "Ljava/util/Set<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 239
    .local v3, "pkg":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getStickers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 240
    .local v6, "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-virtual {v6}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 241
    .local v0, "oldPackage":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    if-nez v0, :cond_1

    .line 242
    invoke-virtual {v6}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 244
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 250
    .end local v0    # "oldPackage":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .end local v3    # "pkg":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .end local v6    # "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 251
    .local v4, "pkgToDelete":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    sget-object v9, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "deleteWrongPackages:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 253
    invoke-virtual {v11}, Lcom/liquable/nemo/android/service/ExtraFileType;->getLocalPreserveFolder()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 254
    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 253
    invoke-virtual {v9, v10}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 255
    .local v1, "packageDir":Ljava/io/File;
    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    goto :goto_2

    .line 257
    .end local v1    # "packageDir":Ljava/io/File;
    .end local v4    # "pkgToDelete":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    :cond_3
    iget-object v8, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/db/StickerDao;->deletePackages(Ljava/util/List;)V

    .line 259
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v5, "resultPackages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 261
    .restart local v3    # "pkg":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 262
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 265
    .end local v3    # "pkg":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    :cond_5
    return-object v5
.end method

.method private downloadSticker(Lcom/liquable/nemo/model/sticker/StickerDto;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)I
    .locals 10
    .param p1, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;
    .param p2, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 308
    const/4 v3, 0x0

    .line 310
    .local v3, "needToDownloadCount":I
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/liquable/nemo/sticker/model/StickerManager;->findPackageByStickerCode(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v5

    .line 311
    .local v5, "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    if-nez v5, :cond_0

    move v4, v3

    .line 330
    .end local v3    # "needToDownloadCount":I
    .local v4, "needToDownloadCount":I
    :goto_0
    return v4

    .line 315
    .end local v4    # "needToDownloadCount":I
    .restart local v3    # "needToDownloadCount":I
    :cond_0
    invoke-virtual {v5}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v6

    .line 316
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-virtual {p1, v6, v7}, Lcom/liquable/nemo/model/sticker/StickerDto;->resolvePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 318
    .local v2, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    .local v0, "keyPath":Ljava/lang/String;
    iget-object v7, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v7, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 320
    .local v1, "keyPathFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 321
    invoke-interface {p2}, Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;->onComplete()V

    goto :goto_1

    .line 323
    :cond_1
    iget-object v7, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    sget-object v8, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 325
    invoke-virtual {v9, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 323
    invoke-virtual {v7, v8, v0, v9, p2}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadExtraFile(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "keyPath":Ljava/lang/String;
    .end local v1    # "keyPathFile":Ljava/io/File;
    :cond_2
    move v4, v3

    .line 330
    .end local v3    # "needToDownloadCount":I
    .restart local v4    # "needToDownloadCount":I
    goto :goto_0
.end method

.method private downloadStickerThumbnail(Lcom/liquable/nemo/model/sticker/StickerDto;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)I
    .locals 6
    .param p1, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;
    .param p2, "fileTransferListener"    # Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;

    .prologue
    .line 433
    const/4 v2, 0x0

    .line 435
    .local v2, "needToDownloadCount":I
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/liquable/nemo/sticker/model/StickerManager;->findPackageByStickerCode(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v3

    .line 436
    .local v3, "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v5

    .line 436
    invoke-virtual {p1, v4, v5}, Lcom/liquable/nemo/model/sticker/StickerDto;->resolveThumbnailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "keyPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 440
    .local v1, "keyPathFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    invoke-interface {p2}, Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;->onComplete()V

    .line 450
    :goto_0
    return v2

    .line 443
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    sget-object v5, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    invoke-virtual {v4, v5, v0, v1, p2}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadExtraFile(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private findPackageByStickerCode(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .locals 5
    .param p1, "stickerCode"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 459
    .local v1, "stickerPackage":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getStickers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 460
    .local v0, "stickerDto":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    .end local v0    # "stickerDto":Lcom/liquable/nemo/model/sticker/StickerDto;
    .end local v1    # "stickerPackage":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPackageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "stickerCode"    # Ljava/lang/String;

    .prologue
    .line 77
    const/4 v0, 0x0

    const-string/jumbo v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->toNewPackageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "priceCurrency"    # Ljava/lang/String;
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "blank"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    .prologue
    .line 84
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    .end local p2    # "blank":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 87
    .restart local p2    # "blank":Ljava/lang/String;
    :cond_0
    invoke-static {p3}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 88
    .local v0, "currencyFormatter":Ljava/text/NumberFormat;
    invoke-static {p3}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    .line 89
    .local v1, "currencyParser":Ljava/text/NumberFormat;
    invoke-static {p0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 91
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/text/ParseException;
    move-object p2, p1

    .line 93
    goto :goto_0
.end method

.method private getSelectedStickerCategories()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getSelectedStickerCategories()Ljava/util/List;

    move-result-object v2

    .line 564
    .local v2, "selectedPackageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 565
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 566
    .local v0, "packageCode":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->toNewPackageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 568
    .end local v0    # "packageCode":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method private getStickerKeyPathFiles(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Lcom/liquable/nemo/model/sticker/StickerDto;)Ljava/util/List;
    .locals 4
    .param p1, "packageDto"    # Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .param p2, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
            "Lcom/liquable/nemo/model/sticker/StickerDto;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 674
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-virtual {p2, v2, v3}, Lcom/liquable/nemo/model/sticker/StickerDto;->resolvePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 675
    .local v1, "keyPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 677
    .end local v1    # "keyPath":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private saveNewPackage(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageDto"    # Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 1048
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveNewPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/db/StickerDao;->savePackages(Ljava/util/List;)V

    .line 1050
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    return-void
.end method

.method private static setClientContextCurrency(Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/util/Locale;)Z
    .locals 3
    .param p0, "clientContext"    # Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    :goto_0
    return v1

    .line 104
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->setCurrency(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v1, 0x1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method private static toNewPackageCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 112
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/liquable/nemo/sticker/model/StickerManager;->legacyPackageToNewPackageMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public downloadCategoryIcons(Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)V
    .locals 6
    .param p1, "categoryDto"    # Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .prologue
    .line 269
    sget-object v3, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "downloadCategoryIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcom/liquable/nemo/sticker/model/StickerManager$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager$1;-><init>(Lcom/liquable/nemo/sticker/model/StickerManager;Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)V

    .line 279
    .local v0, "fileTransferListener":Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->resolveIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "iconKeyPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->resolvePressedIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "iconPressedKeyPath":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    sget-object v4, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_CATEGORY_ICON:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v5, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 283
    invoke-virtual {v5, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 281
    invoke-virtual {v3, v4, v1, v5, v0}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadExtraFile(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 285
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    sget-object v4, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_CATEGORY_ICON:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v5, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 287
    invoke-virtual {v5, v2}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 285
    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadExtraFile(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 289
    return-void
.end method

.method public downloadSticker(Lcom/liquable/nemo/model/sticker/StickerDto;)V
    .locals 1
    .param p1, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;

    .prologue
    .line 292
    new-instance v0, Lcom/liquable/nemo/sticker/model/StickerManager$2;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager$2;-><init>(Lcom/liquable/nemo/sticker/model/StickerManager;Lcom/liquable/nemo/model/sticker/StickerDto;)V

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadSticker(Lcom/liquable/nemo/model/sticker/StickerDto;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)I

    .line 304
    return-void
.end method

.method public downloadStickerCategoryThumbnail(Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)V
    .locals 5
    .param p1, "categoryDto"    # Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .prologue
    .line 334
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "keyPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 337
    invoke-virtual {v3, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/sticker/model/StickerManager$3;

    invoke-direct {v4, p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager$3;-><init>(Lcom/liquable/nemo/sticker/model/StickerManager;Lcom/liquable/nemo/model/sticker/StickerCategoryDto;)V

    .line 335
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadExtraFile(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 345
    return-void
.end method

.method public downloadStickerItemThumbnail(Lcom/liquable/nemo/model/sticker/StickerItemDto;Ljava/lang/String;)V
    .locals 5
    .param p1, "stickerItemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .param p2, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getThumbnailPath()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "keyPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    sget-object v2, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 352
    invoke-virtual {v3, v0}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/sticker/model/StickerManager$4;

    invoke-direct {v4, p0, p2}, Lcom/liquable/nemo/sticker/model/StickerManager$4;-><init>(Lcom/liquable/nemo/sticker/model/StickerManager;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadExtraFile(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 360
    return-void
.end method

.method public downloadStickerPackage(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Ljava/lang/String;)V
    .locals 8
    .param p1, "packageDto"    # Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .param p2, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 363
    sget-object v5, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "downloadStickerPackage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/sticker/model/StickerManager;->setStickerPackageDownloadingBegin(Ljava/lang/String;)V

    .line 365
    const/4 v4, 0x0

    .line 366
    .local v4, "totalFiles":I
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getStickers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 367
    .local v2, "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerDto;->getFrames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    .line 368
    goto :goto_0

    .line 369
    .end local v2    # "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    :cond_0
    move v3, v4

    .line 371
    .local v3, "total":I
    new-instance v0, Lcom/liquable/nemo/sticker/model/StickerManager$5;

    invoke-direct {v0, p0, p1, v3, p2}, Lcom/liquable/nemo/sticker/model/StickerManager$5;-><init>(Lcom/liquable/nemo/sticker/model/StickerManager;Lcom/liquable/nemo/model/sticker/StickerPackageDto;ILjava/lang/String;)V

    .line 408
    .local v0, "listener":Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;
    const/4 v1, 0x0

    .line 409
    .local v1, "needToDownloadCount":I
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getStickers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 410
    .restart local v2    # "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-direct {p0, v2, v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadSticker(Lcom/liquable/nemo/model/sticker/StickerDto;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)I

    move-result v6

    add-int/2addr v1, v6

    .line 411
    invoke-direct {p0, v2, v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadStickerThumbnail(Lcom/liquable/nemo/model/sticker/StickerDto;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)I

    move-result v6

    add-int/2addr v1, v6

    .line 412
    goto :goto_1

    .line 414
    .end local v2    # "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    :cond_1
    if-lez v1, :cond_2

    .line 415
    iget-object v5, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v3, v6, p2}, Lcom/liquable/nemo/android/NotifyManager;->notifyDownloadStickerStart(Lcom/liquable/nemo/model/sticker/StickerPackageDto;IILjava/lang/String;)V

    .line 416
    iget-object v5, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    sget-object v6, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_PACKAGE:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 417
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v7

    .line 416
    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastExtraFileDownloadAdd(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;)V

    .line 419
    :cond_2
    return-void
.end method

.method public downloadStickerThumbnail(Lcom/liquable/nemo/model/sticker/StickerDto;)V
    .locals 1
    .param p1, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;

    .prologue
    .line 422
    new-instance v0, Lcom/liquable/nemo/sticker/model/StickerManager$6;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager$6;-><init>(Lcom/liquable/nemo/sticker/model/StickerManager;Lcom/liquable/nemo/model/sticker/StickerDto;)V

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadStickerThumbnail(Lcom/liquable/nemo/model/sticker/StickerDto;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)I

    .line 429
    return-void
.end method

.method public findPackage(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .locals 1
    .param p1, "stickerPackageCode"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    return-object v0
.end method

.method public findVisibleSticker(Ljava/lang/String;Z)Lcom/liquable/nemo/sticker/model/VisibleSticker;
    .locals 8
    .param p1, "stickerCode"    # Ljava/lang/String;
    .param p2, "isSentByMe"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 478
    sget-boolean v2, Lcom/liquable/nemo/sticker/model/StickerManager;->testStickerNotFoundAndNotVisible:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v2}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 479
    const-string/jumbo v2, "chichi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 480
    new-instance v2, Lcom/liquable/nemo/sticker/model/VisibleSticker;

    invoke-direct {v2, v5, v6}, Lcom/liquable/nemo/sticker/model/VisibleSticker;-><init>(ZLcom/liquable/nemo/model/sticker/StickerDto;)V

    .line 500
    :goto_0
    return-object v2

    .line 482
    :cond_0
    const-string/jumbo v2, "casper"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 483
    new-instance v2, Lcom/liquable/nemo/sticker/model/VisibleSticker;

    invoke-direct {v2, v7, v6}, Lcom/liquable/nemo/sticker/model/VisibleSticker;-><init>(ZLcom/liquable/nemo/model/sticker/StickerDto;)V

    goto :goto_0

    .line 487
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 488
    .local v0, "pkg":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getStickers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 489
    .local v1, "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 490
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSend(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    new-instance v2, Lcom/liquable/nemo/sticker/model/VisibleSticker;

    invoke-direct {v2, v5, v1}, Lcom/liquable/nemo/sticker/model/VisibleSticker;-><init>(ZLcom/liquable/nemo/model/sticker/StickerDto;)V

    goto :goto_0

    .line 492
    :cond_4
    if-nez p2, :cond_5

    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canVisible(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 493
    new-instance v2, Lcom/liquable/nemo/sticker/model/VisibleSticker;

    invoke-direct {v2, v5, v1}, Lcom/liquable/nemo/sticker/model/VisibleSticker;-><init>(ZLcom/liquable/nemo/model/sticker/StickerDto;)V

    goto :goto_0

    .line 495
    :cond_5
    new-instance v2, Lcom/liquable/nemo/sticker/model/VisibleSticker;

    invoke-direct {v2, v5, v6}, Lcom/liquable/nemo/sticker/model/VisibleSticker;-><init>(ZLcom/liquable/nemo/model/sticker/StickerDto;)V

    goto :goto_0

    .line 500
    .end local v0    # "pkg":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .end local v1    # "sticker":Lcom/liquable/nemo/model/sticker/StickerDto;
    :cond_6
    new-instance v2, Lcom/liquable/nemo/sticker/model/VisibleSticker;

    invoke-direct {v2, v7, v6}, Lcom/liquable/nemo/sticker/model/VisibleSticker;-><init>(ZLcom/liquable/nemo/model/sticker/StickerDto;)V

    goto/16 :goto_0
.end method

.method public getCategory(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    .locals 3
    .param p1, "categoryCode"    # Ljava/lang/String;

    .prologue
    .line 504
    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 505
    .local v0, "categoryDto":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    .end local v0    # "categoryDto":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadingStickerTitles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v2, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadingPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 515
    .local v0, "packageCode":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->findPackage(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v1

    .line 516
    .local v1, "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 520
    .end local v0    # "packageCode":Ljava/lang/String;
    .end local v1    # "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    :cond_1
    return-object v2
.end method

.method public getImagePathEndDecoration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/liquable/nemo/util/NemoUIs;->getDensity(Landroid/content/Context;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 525
    const-string/jumbo v0, "-android@2x"

    .line 527
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "-android@1x"

    goto :goto_0
.end method

.method public getLegacyThumbnailUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "legacyPackageCode"    # Ljava/lang/String;

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://s3.amazonaws.com/en-static.liquable.com/cubie/sticker/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->toNewPackageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 534
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfDownloadingStickers()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadingPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getRepresentativePackage(Ljava/lang/String;)Lcom/liquable/nemo/util/Optional;
    .locals 3
    .param p1, "categoryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getCanSends()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 544
    .local v0, "immutablePackageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 545
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    .line 555
    :goto_0
    return-object v2

    .line 549
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 550
    .local v1, "packageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 551
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 552
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->findPackage(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/util/Optional;->of(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    goto :goto_0

    .line 555
    :cond_1
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    goto :goto_0
.end method

.method public getRootLastUpdatedTime()J
    .locals 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/StickerDao;->getRootLastUpdatedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStickerBitmaps(Lcom/liquable/nemo/model/sticker/StickerDto;F)Ljava/util/List;
    .locals 14
    .param p1, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;
    .param p2, "density"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/sticker/StickerDto;",
            "F)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/liquable/nemo/sticker/model/StickerManager;->findPackageByStickerCode(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v5

    .line 573
    .local v5, "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    if-nez v5, :cond_1

    .line 574
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 594
    :cond_0
    :goto_0
    return-object v1

    .line 577
    :cond_1
    invoke-virtual {v5}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v6

    .line 578
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v7

    .line 577
    invoke-virtual {p1, v6, v7}, Lcom/liquable/nemo/model/sticker/StickerDto;->resolvePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 579
    .local v4, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 581
    .local v3, "keyPath":Ljava/lang/String;
    iget-object v7, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v7, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 582
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 583
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 587
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerDto;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, p2

    float-to-double v9, v9

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    double-to-int v9, v9

    .line 588
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerDto;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, p2

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v10, v10

    .line 585
    invoke-static {v7, v8, v9, v10}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 589
    .local v0, "bitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v7

    if-nez v7, :cond_3

    .line 590
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 592
    :cond_3
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    .line 598
    new-instance v0, Lcom/liquable/nemo/model/sticker/StickerClientContext;

    const/4 v7, 0x2

    .line 599
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Lcom/liquable/nemo/model/sticker/StickerClientContext;-><init>(ILjava/lang/String;)V

    .line 600
    .local v0, "clientContext":Lcom/liquable/nemo/model/sticker/StickerClientContext;
    sget-object v7, Lcom/liquable/nemo/Constants;->CURRENT_VERSION:Lcom/liquable/nemo/NemoVersion;

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->setClientVersion(Lcom/liquable/nemo/NemoVersion;)V

    .line 601
    sget-object v7, Lcom/liquable/util/ClientPlatform;->ANDROID:Lcom/liquable/util/ClientPlatform;

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->setPlatform(Lcom/liquable/util/ClientPlatform;)V

    .line 602
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->setLocale(Ljava/lang/String;)V

    .line 603
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/liquable/nemo/sticker/model/StickerManager;->setClientContextCurrency(Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/util/Locale;)Z

    move-result v3

    .line 605
    .local v3, "isCurrencySet":Z
    const-string/jumbo v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 606
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v6, :cond_1

    .line 607
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "countryIso":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 609
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 610
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->setCountryCodeISO3166(Ljava/lang/String;)V

    .line 611
    invoke-static {}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getInstance()Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;

    move-result-object v7

    .line 612
    invoke-virtual {v7, v1}, Lcom/liquable/nemo/regist/CountryNameRegionCodeUtils;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 613
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "countryCode"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->setInternationalCallingCode(Ljava/lang/String;)V

    .line 617
    if-nez v3, :cond_0

    .line 618
    new-instance v7, Ljava/util/Locale;

    const-string/jumbo v8, ""

    invoke-direct {v7, v8, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7}, Lcom/liquable/nemo/sticker/model/StickerManager;->setClientContextCurrency(Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/util/Locale;)Z

    .line 621
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    .line 622
    .local v5, "mccmnc":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_1

    .line 623
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->setMobileCountryCode(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->setMobileNetworkCode(Ljava/lang/String;)V

    .line 628
    .end local v1    # "countryIso":Ljava/lang/String;
    .end local v5    # "mccmnc":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getMyIP()Ljava/lang/String;

    move-result-object v2

    .line 629
    .local v2, "ip":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 630
    invoke-virtual {v0, v2}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->setIPAddress(Ljava/lang/String;)V

    .line 632
    :cond_2
    sget-object v7, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v7}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v7

    if-nez v7, :cond_3

    sget v7, Lcom/liquable/nemo/sticker/model/StickerManager;->devRevision:I

    if-lez v7, :cond_3

    .line 633
    sget v7, Lcom/liquable/nemo/sticker/model/StickerManager;->devRevision:I

    int-to-long v7, v7

    invoke-virtual {v0, v7, v8}, Lcom/liquable/nemo/model/sticker/StickerClientContext;->setRevisionForDev(J)V

    .line 635
    :cond_3
    return-object v0
.end method

.method public getStickerItemSampleBitmaps(Lcom/liquable/nemo/model/sticker/StickerItemDto;I)Ljava/util/List;
    .locals 10
    .param p1, "stickerItemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .param p2, "widthPx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getSampleImagePaths()Ljava/util/List;

    move-result-object v4

    .line 641
    .local v4, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v1, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 643
    .local v3, "keyPath":Ljava/lang/String;
    iget-object v6, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v6, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 644
    .local v2, "file":Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 645
    sget-object v6, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getStickerItemSampleBitmaps:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-static {v6, v7, p2, v8}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap565(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 650
    .local v0, "bitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 655
    .end local v0    # "bitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :cond_0
    iget-object v6, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    sget-object v7, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_ITEM_SAMPLE:Lcom/liquable/nemo/android/service/ExtraFileType;

    iget-object v8, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 657
    invoke-virtual {v8, v3}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    new-instance v9, Lcom/liquable/nemo/sticker/model/StickerManager$7;

    invoke-direct {v9, p0, p1, v3}, Lcom/liquable/nemo/sticker/model/StickerManager$7;-><init>(Lcom/liquable/nemo/sticker/model/StickerManager;Lcom/liquable/nemo/model/sticker/StickerItemDto;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v6, v7, v3, v8, v9}, Lcom/liquable/nemo/android/service/FileTransferManager;->downloadExtraFile(Lcom/liquable/nemo/android/service/ExtraFileType;Ljava/lang/String;Ljava/io/File;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    goto :goto_0

    .line 667
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "keyPath":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getStickerPackageFromServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "packageCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 683
    sget-object v2, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStickerPackageFromServer:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v2, p3}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->canSend(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 686
    sget-object v2, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downloadStickerPackage: canSend("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 687
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/sticker/model/StickerManager;->updateStickerRoot(Landroid/content/Context;Ljava/lang/String;)V

    .line 690
    :cond_0
    invoke-virtual {p0, p3}, Lcom/liquable/nemo/sticker/model/StickerManager;->findPackage(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v0

    .line 691
    .local v0, "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 703
    :goto_0
    return-object v2

    .line 694
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerService:Lcom/liquable/nemo/client/service/StickerService;

    .line 695
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object p3, v4, v5

    .line 696
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 694
    invoke-virtual {v2, p2, v3, v4}, Lcom/liquable/nemo/client/service/StickerService;->listStickerPackages(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 697
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v6, :cond_2

    .line 698
    sget-object v2, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downloadStickerPackage: listStickerPackages("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 699
    const/4 v2, 0x0

    goto :goto_0

    .line 701
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 702
    .restart local v0    # "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    invoke-direct {p0, v0, p2}, Lcom/liquable/nemo/sticker/model/StickerManager;->saveNewPackage(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Ljava/lang/String;)V

    move-object v2, v0

    .line 703
    goto :goto_0
.end method

.method public getStickerShop(Landroid/content/Context;Ljava/lang/String;I)Lcom/liquable/nemo/model/sticker/StickerShopDto;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "itemSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 708
    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerService:Lcom/liquable/nemo/client/service/StickerService;

    .line 709
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;

    move-result-object v2

    .line 708
    invoke-virtual {v1, p2, v2, p3}, Lcom/liquable/nemo/client/service/StickerService;->getStickerShop(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;I)Lcom/liquable/nemo/model/sticker/StickerShopDto;

    move-result-object v0

    .line 711
    .local v0, "shop":Lcom/liquable/nemo/model/sticker/StickerShopDto;
    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 712
    const/4 v0, 0x0

    .line 717
    .end local v0    # "shop":Lcom/liquable/nemo/model/sticker/StickerShopDto;
    :cond_0
    :goto_0
    return-object v0

    .line 714
    .restart local v0    # "shop":Lcom/liquable/nemo/model/sticker/StickerShopDto;
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerShopDto;->getRevision()J

    move-result-wide v2

    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getRevision()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 715
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/sticker/model/StickerManager;->updateStickerRoot(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStickerThumbnailKeyPathFile(Lcom/liquable/nemo/model/sticker/StickerDto;)Ljava/io/File;
    .locals 4
    .param p1, "stickerDto"    # Lcom/liquable/nemo/model/sticker/StickerDto;

    .prologue
    .line 721
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->findPackageByStickerCode(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v0

    .line 722
    .local v0, "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 723
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-virtual {p1, v2, v3}, Lcom/liquable/nemo/model/sticker/StickerDto;->resolveThumbnailPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public getVisibleStickerFromServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerDto;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "stickerCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/StickerNotFoundException;,
            Lcom/liquable/nemo/model/StickerCanNotVisibleException;
        }
    .end annotation

    .prologue
    .line 730
    iget-object v2, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerService:Lcom/liquable/nemo/client/service/StickerService;

    .line 731
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;

    move-result-object v3

    .line 730
    invoke-virtual {v2, p2, v3, p3}, Lcom/liquable/nemo/client/service/StickerService;->getVisibleSticker(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v1

    .line 734
    .local v1, "stickerPackageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    sget-boolean v2, Lcom/liquable/nemo/sticker/model/StickerManager;->testStickerNotFoundAndNotVisible:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v2}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 735
    const-string/jumbo v2, "casper"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    new-instance v2, Lcom/liquable/nemo/model/StickerNotFoundException;

    invoke-direct {v2, p3}, Lcom/liquable/nemo/model/StickerNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 740
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/liquable/nemo/sticker/model/StickerManager;->saveNewPackage(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Ljava/lang/String;)V

    .line 742
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getStickers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 743
    .local v0, "stickerDto":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerDto;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 744
    return-object v0

    .line 747
    .end local v0    # "stickerDto":Lcom/liquable/nemo/model/sticker/StickerDto;
    :cond_2
    new-instance v2, Lcom/liquable/nemo/model/StickerNotFoundException;

    invoke-direct {v2, p3}, Lcom/liquable/nemo/model/StickerNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hasAnyAdwaysCampaigns(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->adwaysService:Lcom/liquable/nemo/client/service/AdwaysService;

    .line 753
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->createAdwaysContext(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 754
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;

    move-result-object v2

    .line 752
    invoke-virtual {v0, p2, v1, v2}, Lcom/liquable/nemo/client/service/AdwaysService;->hasAnyCampaigns(Ljava/lang/String;Ljava/util/Map;Lcom/liquable/nemo/model/sticker/StickerClientContext;)Z

    move-result v0

    return v0
.end method

.method public isAnyStickerThumbnailDownloaded(Ljava/lang/String;)Z
    .locals 5
    .param p1, "categoryCode"    # Ljava/lang/String;

    .prologue
    .line 758
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->listSendableStickers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 759
    .local v2, "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerDto;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 760
    .local v0, "stickerDto":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerThumbnailKeyPathFile(Lcom/liquable/nemo/model/sticker/StickerDto;)Ljava/io/File;

    move-result-object v1

    .line 761
    .local v1, "stickerThumbnailFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 762
    const/4 v3, 0x1

    .line 765
    .end local v0    # "stickerDto":Lcom/liquable/nemo/model/sticker/StickerDto;
    .end local v1    # "stickerThumbnailFile":Ljava/io/File;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStickerPackageDownloaded(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 773
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->findPackage(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v0

    .line 774
    .local v0, "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    if-nez v0, :cond_1

    .line 789
    :cond_0
    :goto_0
    return v5

    .line 777
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getStickers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerDto;

    .line 778
    .local v1, "stickerDto":Lcom/liquable/nemo/model/sticker/StickerDto;
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerThumbnailKeyPathFile(Lcom/liquable/nemo/model/sticker/StickerDto;)Ljava/io/File;

    move-result-object v4

    .line 779
    .local v4, "stickerThumbnailFile":Ljava/io/File;
    invoke-static {v4}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 782
    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerKeyPathFiles(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Lcom/liquable/nemo/model/sticker/StickerDto;)Ljava/util/List;

    move-result-object v3

    .line 783
    .local v3, "stickerFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 784
    .local v2, "stickerFile":Ljava/io/File;
    invoke-static {v2}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    .line 789
    .end local v1    # "stickerDto":Lcom/liquable/nemo/model/sticker/StickerDto;
    .end local v2    # "stickerFile":Ljava/io/File;
    .end local v3    # "stickerFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v4    # "stickerThumbnailFile":Ljava/io/File;
    :cond_4
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public isStickerPackageDownloading(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadingPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public listAdwaysCampaigns(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "stickerProductId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 799
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->adwaysService:Lcom/liquable/nemo/client/service/AdwaysService;

    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->createAdwaysContext(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/liquable/nemo/client/service/AdwaysService;->listCampaigns(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listCampaignStickerCodes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;

    move-result-object v2

    .line 805
    .local v2, "stickerContext":Lcom/liquable/nemo/model/sticker/StickerClientContext;
    iget-object v5, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->adwaysService:Lcom/liquable/nemo/client/service/AdwaysService;

    .line 806
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->createAdwaysContext(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    .line 805
    invoke-virtual {v5, p2, v6, v2}, Lcom/liquable/nemo/client/service/AdwaysService;->listCampaignStickerItems(Ljava/lang/String;Ljava/util/Map;Lcom/liquable/nemo/model/sticker/StickerClientContext;)Ljava/util/List;

    move-result-object v3

    .line 808
    .local v3, "stickerItemCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->listStickerItemsByCodes(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 811
    .local v0, "campaignStickerItemDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 812
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 813
    .local v4, "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isOwned()Z

    move-result v6

    if-nez v6, :cond_0

    .line 814
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 817
    .end local v4    # "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    :cond_1
    return-object v1
.end method

.method public listCategoriesByOrder()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    iget-object v4, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getSortedStickerCategories()Ljava/util/List;

    move-result-object v3

    .line 822
    .local v3, "sortedStickerCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getCategories()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 823
    .local v1, "categoryDto":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 824
    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 827
    .end local v1    # "categoryDto":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 828
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 829
    .local v2, "code":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 832
    .end local v2    # "code":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "listCategoriesByOrder:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 833
    return-object v3
.end method

.method public listSelectedCategoriesByOrder()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerCategoryDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 837
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 839
    .local v8, "sendableCategoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerCategoryDto;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->isReady()Z

    move-result v10

    if-nez v10, :cond_0

    .line 840
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 889
    :goto_0
    return-object v7

    .line 843
    :cond_0
    iget-object v10, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v10}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getCategories()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 845
    .local v2, "category":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    iget-object v10, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    .line 846
    invoke-virtual {v10}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getCanSends()Ljava/util/Map;

    move-result-object v10

    .line 847
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 848
    .local v5, "immutablePackageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 853
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 854
    .local v6, "packageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 855
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 856
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 860
    .end local v2    # "category":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    .end local v5    # "immutablePackageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "packageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->listCategoriesByOrder()Ljava/util/List;

    move-result-object v9

    .line 861
    .local v9, "sortedCategoryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v10}, Lcom/liquable/nemo/util/Pref;->getDisabledStickerCategories()Ljava/util/List;

    move-result-object v4

    .line 862
    .local v4, "disabledCategorycodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 865
    .local v7, "resultCategories":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerCategoryDto;>;"
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 866
    .local v3, "categoryCode":Ljava/lang/String;
    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 867
    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 872
    .end local v3    # "categoryCode":Ljava/lang/String;
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 873
    .restart local v3    # "categoryCode":Ljava/lang/String;
    invoke-interface {v8, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 874
    invoke-interface {v8, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 878
    .end local v3    # "categoryCode":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 879
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    .line 880
    .local v1, "cat":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    if-nez v1, :cond_7

    .line 881
    const-string/jumbo v11, "null"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 885
    :goto_5
    const-string/jumbo v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 883
    :cond_7
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 887
    .end local v1    # "cat":Lcom/liquable/nemo/model/sticker/StickerCategoryDto;
    :cond_8
    sget-object v10, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "listSendableCategoriesByOrder:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public listSendableStickerPackageCodes(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "categoryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getCanSends()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public listSendableStickers(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "categoryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 897
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 898
    .local v3, "stickers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerDto;>;"
    iget-object v4, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getCanSends()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 899
    .local v0, "packageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 909
    :cond_0
    return-object v3

    .line 903
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 904
    .local v2, "pkgCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 905
    .local v1, "pkg":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    if-eqz v1, :cond_2

    .line 906
    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getStickers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public listStickerItems(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "tabCode"    # Ljava/lang/String;
    .param p4, "startIndex"    # I
    .param p5, "itemSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 917
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerService:Lcom/liquable/nemo/client/service/StickerService;

    .line 918
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;

    move-result-object v2

    move-object v1, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 917
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/client/service/StickerService;->listStickerItems(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listStickerItemsByCodes(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 927
    .local p3, "stickerItemCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerService:Lcom/liquable/nemo/client/service/StickerService;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/liquable/nemo/client/service/StickerService;->listStickerItemsByCodes(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listStickerItemsByProductIds(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 933
    .local p3, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerService:Lcom/liquable/nemo/client/service/StickerService;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/liquable/nemo/client/service/StickerService;->listStickerItemsByProductIds(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadStickerConfig()V
    .locals 14

    .prologue
    .line 937
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    invoke-virtual {v9}, Lcom/liquable/nemo/db/StickerDao;->findRoot()Lcom/liquable/nemo/model/sticker/StickerRootDto;

    move-result-object v5

    .line 938
    .local v5, "root":Lcom/liquable/nemo/model/sticker/StickerRootDto;
    if-nez v5, :cond_0

    .line 939
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v9}, Lcom/liquable/nemo/storage/NemoFileService;->getDefaultStickerRootJson()Lcom/liquable/nemo/util/Optional;

    move-result-object v4

    .line 940
    .local v4, "raw":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 942
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v10

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-class v11, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v10, v9, v11}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    move-object v5, v0

    .line 943
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v5, v10, v11}, Lcom/liquable/nemo/db/StickerDao;->saveRoot(Lcom/liquable/nemo/model/sticker/StickerRootDto;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 949
    .end local v4    # "raw":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 950
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 953
    :cond_1
    sget-object v10, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "root revision: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/model/sticker/StickerRootDto;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/sticker/StickerRootDto;->getRevision()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 955
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    invoke-virtual {v9}, Lcom/liquable/nemo/db/StickerDao;->listAllPackage()Ljava/util/List;

    move-result-object v1

    .line 956
    .local v1, "allPackage":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 957
    .local v6, "selectedPackage":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 959
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v9}, Lcom/liquable/nemo/storage/NemoFileService;->getDefaultStickerPackagesJson()Lcom/liquable/nemo/util/Optional;

    move-result-object v4

    .line 960
    .restart local v4    # "raw":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 962
    :try_start_1
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v10

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v11, Lcom/liquable/nemo/sticker/model/StickerManager$8;

    invoke-direct {v11, p0}, Lcom/liquable/nemo/sticker/model/StickerManager$8;-><init>(Lcom/liquable/nemo/sticker/model/StickerManager;)V

    invoke-virtual {v10, v9, v11}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 964
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getSelectedStickerCategories()Ljava/util/List;

    move-result-object v7

    .line 965
    .local v7, "selectedPackageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 966
    .local v3, "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    invoke-virtual {v3}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 967
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 972
    .end local v3    # "packageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .end local v7    # "selectedPackageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 973
    .local v2, "e":Ljava/io/IOException;
    sget-object v9, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v10, "loadStickerConfig parse packages json failed "

    invoke-virtual {v9, v10, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 980
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "raw":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Ljava/lang/String;>;"
    :cond_3
    :goto_2
    invoke-direct {p0, v6}, Lcom/liquable/nemo/sticker/model/StickerManager;->deleteWrongPackages(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 982
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 983
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 984
    .local v8, "stickerPackageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    iget-object v10, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 944
    .end local v1    # "allPackage":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    .end local v6    # "selectedPackage":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    .end local v8    # "stickerPackageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .restart local v4    # "raw":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Ljava/lang/String;>;"
    :catch_1
    move-exception v2

    .line 945
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v10, "loadStickerConfig parse root json failed "

    invoke-virtual {v9, v10, v2}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 971
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "allPackage":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    .restart local v6    # "selectedPackage":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    .restart local v7    # "selectedPackageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    invoke-virtual {v9, v6}, Lcom/liquable/nemo/db/StickerDao;->savePackages(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 977
    .end local v4    # "raw":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Ljava/lang/String;>;"
    .end local v7    # "selectedPackageCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move-object v6, v1

    goto :goto_2

    .line 989
    :cond_6
    return-void
.end method

.method public migrateLegacyImageFiles()Z
    .locals 16

    .prologue
    .line 992
    sget-object v10, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v11, "migrateLegacyImageFiles"

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 994
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cubie"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "cubie_sticker"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 996
    .local v0, "cubieStickerDir":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 997
    const/4 v10, 0x1

    .line 1037
    :goto_0
    return v10

    .line 1000
    :cond_0
    sget-object v10, Lorg/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    invoke-virtual {v0, v10}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v8

    .line 1001
    .local v8, "packageDirNames":[Ljava/lang/String;
    array-length v12, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_1
    if-ge v11, v12, :cond_4

    aget-object v7, v8, v11

    .line 1002
    .local v7, "packageDirName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1003
    .local v6, "oldPkgDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v13, "mini"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1004
    .local v1, "miniDir":Ljava/io/File;
    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER:Lcom/liquable/nemo/android/service/ExtraFileType;

    .line 1005
    invoke-virtual {v14}, Lcom/liquable/nemo/android/service/ExtraFileType;->getLocalPreserveFolder()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1006
    invoke-static {v7}, Lcom/liquable/nemo/sticker/model/StickerManager;->toNewPackageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1005
    invoke-virtual {v10, v13}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1007
    .local v4, "newPkgDir":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1001
    :cond_1
    :goto_2
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_1

    .line 1013
    :cond_2
    :try_start_0
    new-instance v10, Lorg/apache/commons/io/filefilter/WildcardFileFilter;

    const-string/jumbo v13, "*.png"

    invoke-direct {v10, v13}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v1, v10, v13}, Lorg/apache/commons/io/FileUtils;->iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;

    move-result-object v2

    .line 1016
    .local v2, "miniFilesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1017
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/File;

    const/4 v13, 0x0

    invoke-static {v10, v6, v13}, Lorg/apache/commons/io/FileUtils;->moveFileToDirectory(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_3

    .line 1030
    .end local v2    # "miniFilesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :catch_0
    move-exception v10

    goto :goto_2

    .line 1021
    .restart local v2    # "miniFilesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_3
    new-instance v10, Lorg/apache/commons/io/filefilter/WildcardFileFilter;

    const-string/jumbo v13, "*.png"

    invoke-direct {v10, v13}, Lorg/apache/commons/io/filefilter/WildcardFileFilter;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v6, v10, v13}, Lorg/apache/commons/io/FileUtils;->iterateFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Iterator;

    move-result-object v9

    .line 1024
    .local v9, "packageFilesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1025
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 1026
    .local v5, "oldName":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v13, ".png"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1026
    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1028
    .local v3, "newName":Ljava/io/File;
    invoke-static {v5, v3}, Lorg/apache/commons/io/FileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1036
    .end local v1    # "miniDir":Ljava/io/File;
    .end local v2    # "miniFilesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    .end local v3    # "newName":Ljava/io/File;
    .end local v4    # "newPkgDir":Ljava/io/File;
    .end local v5    # "oldName":Ljava/io/File;
    .end local v6    # "oldPkgDir":Ljava/io/File;
    .end local v7    # "packageDirName":Ljava/lang/String;
    .end local v9    # "packageFilesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_4
    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 1037
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method public reloadStickerTables(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/StickerDao;->deleteRoot()V

    .line 1042
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/StickerDao;->deletePackages()V

    .line 1043
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->loadStickerConfig()V

    .line 1044
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->writeImageFilesFromAssetsToFileSystem(Landroid/content/Context;)Z

    .line 1045
    return-void
.end method

.method final setRootDto(Lcom/liquable/nemo/model/sticker/StickerRootDto;)V
    .locals 1
    .param p1, "testRootDto"    # Lcom/liquable/nemo/model/sticker/StickerRootDto;

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1056
    return-void
.end method

.method public setStickerPackageDownloadingBegin(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadingPackages:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastStickerPackageDownloadingStateChanged(Ljava/lang/String;)V

    .line 1061
    return-void
.end method

.method public setStickerPackageDownloadingEnd(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadingPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastStickerPackageDownloadingStateChanged(Ljava/lang/String;)V

    .line 1066
    return-void
.end method

.method final setStickerPackages(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/sticker/StickerPackageDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1070
    .local p1, "testStickerPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1071
    iget-object v0, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerPackages:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 1072
    return-void
.end method

.method public tryFinishAdwaysCampaign()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 1079
    iget-object v8, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getAdwaysCampaignRecords()Ljava/util/Map;

    move-result-object v0

    .line 1080
    .local v0, "campaignRecords":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v7, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .local v6, "successRecords":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-object v6

    .line 1087
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;

    .line 1088
    .local v3, "record":Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->adwaysService:Lcom/liquable/nemo/client/service/AdwaysService;

    iget-object v10, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v10}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v10

    .line 1089
    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getProductId()Ljava/lang/String;

    move-result-object v11

    .line 1088
    invoke-virtual {v9, v10, v11}, Lcom/liquable/nemo/client/service/AdwaysService;->isCampaignComplete(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1090
    .local v1, "complete":Z
    if-eqz v1, :cond_3

    .line 1091
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getProductId()Ljava/lang/String;

    move-result-object v10

    .line 1092
    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getProductName()Ljava/lang/String;

    move-result-object v11

    .line 1091
    invoke-virtual {v9, v10, v11}, Lcom/liquable/nemo/notice/model/NoticeManager;->insertAdwaysCampaignNotice(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/notice/AdwaysCampaignNotice;

    move-result-object v2

    .line 1093
    .local v2, "notice":Lcom/liquable/nemo/notice/AdwaysCampaignNotice;
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v9, v2}, Lcom/liquable/nemo/android/NotifyManager;->notifyAdwaysCampaignNoticeOnStatusBar(Lcom/liquable/nemo/notice/AdwaysCampaignNotice;)V

    .line 1095
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 1096
    invoke-virtual {v10}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v10

    .line 1097
    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getPackageCode()Ljava/lang/String;

    move-result-object v11

    .line 1095
    invoke-virtual {p0, v9, v10, v11}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerPackageFromServer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    move-result-object v5

    .line 1098
    .local v5, "stickerPackageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getThumbnailPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/liquable/nemo/sticker/model/StickerManager;->downloadStickerPackage(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Ljava/lang/String;)V

    .line 1100
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getProductId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1102
    .end local v2    # "notice":Lcom/liquable/nemo/notice/AdwaysCampaignNotice;
    .end local v5    # "stickerPackageDto":Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    :cond_3
    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->isExpired()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1103
    invoke-virtual {v3}, Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;->getProductId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1107
    .end local v1    # "complete":Z
    .end local v3    # "record":Lcom/liquable/nemo/sticker/model/AdwaysCampaignRecord;
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1108
    .local v4, "removedProductId":Ljava/lang/String;
    iget-object v9, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v9, v4}, Lcom/liquable/nemo/util/Pref;->deleteAdwaysProductId(Ljava/lang/String;)V

    goto :goto_2

    .line 1111
    .end local v4    # "removedProductId":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1112
    iget-object v8, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->broadcastManager:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v8}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastNoticeViewUpdate()V

    goto/16 :goto_0
.end method

.method public updateStickerRoot(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 1119
    sget-object v1, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "updateStickerRoot"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 1120
    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerService:Lcom/liquable/nemo/client/service/StickerService;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerContext(Landroid/content/Context;)Lcom/liquable/nemo/model/sticker/StickerClientContext;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/liquable/nemo/client/service/StickerService;->getStickerRoot(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerClientContext;)Lcom/liquable/nemo/model/sticker/StickerRootDto;

    move-result-object v0

    .line 1121
    .local v0, "root":Lcom/liquable/nemo/model/sticker/StickerRootDto;
    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/liquable/nemo/db/StickerDao;->saveRoot(Lcom/liquable/nemo/model/sticker/StickerRootDto;J)V

    .line 1122
    iget-object v1, p0, Lcom/liquable/nemo/sticker/model/StickerManager;->rootDto:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1123
    return-void
.end method

.method public writeImageFilesFromAssetsToFileSystem(Landroid/content/Context;)Z
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1126
    sget-object v10, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v11, "writeImageFilesFromAssetsToFileSystem"

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 1130
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string/jumbo v11, "sticker"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1135
    .local v9, "subFolders":[Ljava/lang/String;
    array-length v12, v9

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v8, v9, v11

    .line 1138
    .local v8, "subFolder":Ljava/lang/String;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sticker"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1143
    .local v3, "imageFiles":[Ljava/lang/String;
    array-length v13, v3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v2, v3, v10

    .line 1144
    .local v2, "imageFile":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getImagePathEndDecoration()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 1143
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1131
    .end local v2    # "imageFile":Ljava/lang/String;
    .end local v3    # "imageFiles":[Ljava/lang/String;
    .end local v8    # "subFolder":Ljava/lang/String;
    .end local v9    # "subFolders":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1132
    .local v1, "e1":Ljava/io/IOException;
    const/4 v10, 0x0

    .line 1166
    .end local v1    # "e1":Ljava/io/IOException;
    :goto_3
    return v10

    .line 1139
    .restart local v8    # "subFolder":Ljava/lang/String;
    .restart local v9    # "subFolders":[Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/io/IOException;
    sget-object v10, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v11, "list asset folder error"

    invoke-virtual {v10, v11, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1141
    const/4 v10, 0x0

    goto :goto_3

    .line 1148
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "imageFile":Ljava/lang/String;
    .restart local v3    # "imageFiles":[Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 1149
    .local v4, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1151
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "sticker"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1152
    .local v7, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1153
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getInstance()Lcom/liquable/nemo/storage/DeviceExternalStorage;

    move-result-object v14

    invoke-virtual {v14, v7}, Lcom/liquable/nemo/storage/DeviceExternalStorage;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    invoke-direct {v6, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1154
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    :try_start_3
    invoke-static {v4, v6}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 1155
    sget-object v14, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "write asset to fs: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1160
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1161
    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 1156
    .end local v6    # "out":Ljava/io/OutputStream;
    .end local v7    # "path":Ljava/lang/String;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    .line 1157
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    sget-object v10, Lcom/liquable/nemo/sticker/model/StickerManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v11, "copy assets to sdcard error"

    invoke-virtual {v10, v11, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1158
    const/4 v10, 0x0

    .line 1160
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1161
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_3

    .line 1160
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_5
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1161
    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v10

    .line 1135
    .end local v2    # "imageFile":Ljava/lang/String;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto/16 :goto_0

    .line 1166
    .end local v3    # "imageFiles":[Ljava/lang/String;
    .end local v8    # "subFolder":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 1160
    .restart local v2    # "imageFile":Ljava/lang/String;
    .restart local v3    # "imageFiles":[Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "subFolder":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    goto :goto_5

    .line 1156
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    goto :goto_4
.end method
