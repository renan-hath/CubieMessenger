.class public Lcom/liquable/nemo/forum/ForumDaemon;
.super Ljava/lang/Object;
.source "ForumDaemon.java"


# static fields
.field static final ARTICLE_LIST_PAGE_SIZE:I = 0x1e

.field static final ARTICLE_REPLY_PAGE_SIZE:I = 0x1e

.field public static final ARTICLE_REPLY_TITLE_LINE_MAX_COUNT:I = 0x1e

.field public static final ARTICLE_TITLE_LINE_MAX_COUNT:I = 0x14

.field private static final ARTICLE_URL_PATTERN:Ljava/util/regex/Pattern;

.field public static final AUTO_SYNC_FAVORITE_BOARDS_INTERVAL:J = 0x493e0L

.field public static final BOARD_DESCRIPTION_LINE_MAX_COUNT:I = 0x32

.field private static final CREATE_ARTICLE_INTERVAL:J = 0x7530L

.field private static final CREATE_ARTICLE_REPLY_INTERVAL:J = 0x1388L

.field private static final CREATE_BOARD_INTERVAL:J = 0x1b7740L

.field private static final PICTURE_CACHE_DURATION_IN_SECONDS:I = 0x93a80

.field public static final RELOAD_HOT_ARTICLES_INTERVAL:J = 0xdbba0L

.field private static final SHARE_URL_TEMPLATE:Ljava/lang/String; = "%s http://cubie.com/space/%s/%s %s"


# instance fields
.field private final context:Landroid/content/Context;

.field private final isInSupportedCountry:Z

.field private final lastCreateArticleReplyTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastCreateArticleTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastCreateBoardTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lastLoadHotArticlesTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final supportedCountry:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    const-string/jumbo v0, "(https?://cubie\\.com/|cubie://)space/([\\w\\-]+)/([\\w\\-]+)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/forum/ForumDaemon;->ARTICLE_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastCreateBoardTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastCreateArticleTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastCreateArticleReplyTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastLoadHotArticlesTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 104
    iput-object p1, p0, Lcom/liquable/nemo/forum/ForumDaemon;->context:Landroid/content/Context;

    .line 105
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->initBelongCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon;->supportedCountry:Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lcom/liquable/nemo/forum/ForumDaemon;->checkIsInSupportedCountry(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/forum/ForumDaemon;->isInSupportedCountry:Z

    .line 108
    return-void
.end method

.method private checkIsInSupportedCountry(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    sget-object v3, Lcom/liquable/nemo/client/ServerType;->PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    sget-object v4, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    if-eq v3, v4, :cond_0

    .line 129
    const/4 v3, 0x1

    .line 149
    :goto_0
    return v3

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 134
    .local v0, "countryIso":Ljava/lang/String;
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 135
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_1
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_2
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    const/4 v3, 0x0

    goto :goto_0

    .line 147
    :cond_3
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->listSupportedCountry()Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "supports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method private convertToBoards(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "originals":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "boards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 159
    .local v2, "original":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-static {v2}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->createBoardFromRemote(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Lcom/liquable/nemo/forum/model/board/ForumBoard;

    move-result-object v0

    .line 160
    .local v0, "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v0    # "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    .end local v2    # "original":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    :cond_0
    invoke-direct {p0, v1}, Lcom/liquable/nemo/forum/ForumDaemon;->updateReportMark(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private createAndUploadArticlePicture(Landroid/net/Uri;)Lcom/liquable/util/Tuple;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/liquable/util/Tuple",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            "Lcom/liquable/nemo/util/Dimension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/client/InterruptedErrorException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 169
    :try_start_0
    const-string/jumbo v9, "article"

    invoke-direct {p0, p1, v9}, Lcom/liquable/nemo/forum/ForumDaemon;->createPictureRemoteKeyPath(Landroid/net/Uri;Ljava/lang/String;)Lcom/liquable/util/Tuple;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 173
    .local v6, "pictureKeyPaths":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    iget-object v5, v6, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    check-cast v5, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 174
    .local v5, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v7, v6, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    check-cast v7, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 176
    .local v7, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-direct {p0, p1, v5, v7}, Lcom/liquable/nemo/forum/ForumDaemon;->savePictureFile(Landroid/net/Uri;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/liquable/nemo/util/Dimension;

    move-result-object v1

    .line 178
    .local v1, "dimension":Lcom/liquable/nemo/util/Dimension;
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 180
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v8, v11, [Z

    aput-boolean v10, v8, v10

    .line 181
    .local v8, "uploadResult":[Z
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    const v10, 0x93a80

    new-instance v11, Lcom/liquable/nemo/forum/ForumDaemon$1;

    invoke-direct {v11, p0, v8, v4}, Lcom/liquable/nemo/forum/ForumDaemon$1;-><init>(Lcom/liquable/nemo/forum/ForumDaemon;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v9, v5, v7, v10, v11}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 202
    const-wide/16 v9, 0x1e

    :try_start_1
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 203
    .local v0, "await":Z
    if-eqz v0, :cond_0

    const/4 v9, 0x0

    aget-boolean v9, v8, v9

    if-nez v9, :cond_1

    .line 204
    :cond_0
    new-instance v9, Lcom/liquable/nemo/client/AsyncException;

    const v10, 0x7f0d01c6

    invoke-direct {v9, v10}, Lcom/liquable/nemo/client/AsyncException;-><init>(I)V

    throw v9
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    .end local v0    # "await":Z
    :catch_0
    move-exception v3

    .line 207
    .local v3, "exception":Ljava/lang/InterruptedException;
    new-instance v9, Lcom/liquable/nemo/client/InterruptedErrorException;

    invoke-direct {v9}, Lcom/liquable/nemo/client/InterruptedErrorException;-><init>()V

    throw v9

    .line 170
    .end local v1    # "dimension":Lcom/liquable/nemo/util/Dimension;
    .end local v3    # "exception":Ljava/lang/InterruptedException;
    .end local v4    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v5    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v6    # "pictureKeyPaths":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    .end local v7    # "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .end local v8    # "uploadResult":[Z
    :catch_1
    move-exception v2

    .line 171
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v9, Lcom/liquable/nemo/client/AsyncException;

    const v10, 0x7f0d01b8

    invoke-direct {v9, v10}, Lcom/liquable/nemo/client/AsyncException;-><init>(I)V

    throw v9

    .line 209
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "await":Z
    .restart local v1    # "dimension":Lcom/liquable/nemo/util/Dimension;
    .restart local v4    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v5    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .restart local v6    # "pictureKeyPaths":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    .restart local v7    # "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .restart local v8    # "uploadResult":[Z
    :cond_1
    new-instance v9, Lcom/liquable/util/Tuple;

    invoke-direct {v9, v7, v1}, Lcom/liquable/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9
.end method

.method private createAndUploadBoardIcon(Landroid/net/Uri;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 11
    .param p1, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 215
    :try_start_0
    const-string/jumbo v8, "board"

    invoke-direct {p0, p1, v8}, Lcom/liquable/nemo/forum/ForumDaemon;->createPictureRemoteKeyPath(Landroid/net/Uri;Ljava/lang/String;)Lcom/liquable/util/Tuple;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 219
    .local v1, "boardIconKeyPaths":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    iget-object v5, v1, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    check-cast v5, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 220
    .local v5, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v6, v1, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    check-cast v6, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 222
    .local v6, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-direct {p0, p1, v5, v6}, Lcom/liquable/nemo/forum/ForumDaemon;->savePictureFile(Landroid/net/Uri;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/liquable/nemo/util/Dimension;

    .line 224
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v4, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 226
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    new-array v7, v10, [Z

    aput-boolean v9, v7, v9

    .line 227
    .local v7, "uploadResult":[Z
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    const v9, 0x93a80

    new-instance v10, Lcom/liquable/nemo/forum/ForumDaemon$2;

    invoke-direct {v10, p0, v7, v4}, Lcom/liquable/nemo/forum/ForumDaemon$2;-><init>(Lcom/liquable/nemo/forum/ForumDaemon;[ZLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v8, v5, v6, v9, v10}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 248
    const-wide/16 v8, 0x1e

    :try_start_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 249
    .local v0, "await":Z
    if-eqz v0, :cond_0

    const/4 v8, 0x0

    aget-boolean v8, v7, v8

    if-nez v8, :cond_1

    .line 250
    :cond_0
    new-instance v8, Lcom/liquable/nemo/client/AsyncException;

    const v9, 0x7f0d01c6

    invoke-direct {v8, v9}, Lcom/liquable/nemo/client/AsyncException;-><init>(I)V

    throw v8
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 252
    .end local v0    # "await":Z
    :catch_0
    move-exception v3

    .line 253
    .local v3, "exception":Ljava/lang/InterruptedException;
    new-instance v8, Lcom/liquable/nemo/client/InterruptedErrorException;

    invoke-direct {v8}, Lcom/liquable/nemo/client/InterruptedErrorException;-><init>()V

    throw v8

    .line 216
    .end local v1    # "boardIconKeyPaths":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    .end local v3    # "exception":Ljava/lang/InterruptedException;
    .end local v4    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v5    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v6    # "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .end local v7    # "uploadResult":[Z
    :catch_1
    move-exception v2

    .line 217
    .local v2, "e":Ljava/io/FileNotFoundException;
    new-instance v8, Lcom/liquable/nemo/client/AsyncException;

    const v9, 0x7f0d01b8

    invoke-direct {v8, v9}, Lcom/liquable/nemo/client/AsyncException;-><init>(I)V

    throw v8

    .line 255
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "await":Z
    .restart local v1    # "boardIconKeyPaths":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    .restart local v4    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v5    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .restart local v6    # "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .restart local v7    # "uploadResult":[Z
    :cond_1
    return-object v6
.end method

.method private createPictureRemoteKeyPath(Landroid/net/Uri;Ljava/lang/String;)Lcom/liquable/util/Tuple;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "directoryPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Lcom/liquable/util/Tuple",
            "<",
            "Lcom/liquable/nemo/storage/LocalKeyPath;",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "pictureId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forum/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;->createTempLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    move-result-object v0

    .line 408
    .local v0, "localKeyPath":Lcom/liquable/nemo/storage/ExternalLocalKeyPath;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getBestS3Endpoint()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cubie/forum/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createRegionKeyPath(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    .line 411
    .local v2, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    new-instance v3, Lcom/liquable/util/Tuple;

    invoke-direct {v3, v0, v2}, Lcom/liquable/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon;->supportedCountry:Ljava/lang/String;

    return-object v0
.end method

.method private initBelongCountry()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    sget-object v2, Lcom/liquable/nemo/client/ServerType;->PRODUCTION:Lcom/liquable/nemo/client/ServerType;

    sget-object v3, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    if-eq v2, v3, :cond_0

    .line 113
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getCurrentForumCountry()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "forumCountry":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    .end local v1    # "forumCountry":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 119
    :cond_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getCountryCodeIso3166()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "countryCodeIso3166":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 123
    goto :goto_0
.end method

.method private isThrottlingEnabled()Z
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/ServerType;->isProduction()Z

    move-result v0

    return v0
.end method

.method private listSupportedCountry()Ljava/util/List;
    .locals 6
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
    .line 881
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getForumSupportedCountry()Ljava/util/List;

    move-result-object v0

    .line 882
    .local v0, "countries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 891
    .end local v0    # "countries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v0

    .line 886
    .restart local v0    # "countries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 887
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/liquable/nemo/model/forum/ForumCountry;->listSupported()Ljava/util/List;

    move-result-object v1

    .line 888
    .local v1, "defaults":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumCountry;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/forum/ForumCountry;

    .line 889
    .local v2, "forumCountry":Lcom/liquable/nemo/model/forum/ForumCountry;
    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/ForumCountry;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "forumCountry":Lcom/liquable/nemo/model/forum/ForumCountry;
    :cond_1
    move-object v0, v3

    .line 891
    goto :goto_0
.end method

.method private savePictureFile(Landroid/net/Uri;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/liquable/nemo/util/Dimension;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "localKeyPath"    # Lcom/liquable/nemo/storage/LocalKeyPath;
    .param p3, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 791
    iget-object v4, p0, Lcom/liquable/nemo/forum/ForumDaemon;->context:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 793
    .local v3, "mediaInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    iget-object v6, p0, Lcom/liquable/nemo/forum/ForumDaemon;->context:Landroid/content/Context;

    if-nez v3, :cond_0

    move v4, v5

    :goto_0
    invoke-static {v6, p1, v5, v4}, Lcom/liquable/nemo/util/ImageUtils;->decodeToPictureMessageBitmap(Landroid/content/Context;Landroid/net/Uri;ZI)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    .line 798
    .local v1, "decoded":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_1

    .line 799
    new-instance v4, Lcom/liquable/nemo/client/AsyncException;

    const v5, 0x7f0d01b8

    invoke-direct {v4, v5}, Lcom/liquable/nemo/client/AsyncException;-><init>(I)V

    throw v4

    .line 796
    .end local v1    # "decoded":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :cond_0
    invoke-virtual {v3}, Lcom/liquable/nemo/android/provider/PictureInfo;->getRotateDegree()I

    move-result v4

    goto :goto_0

    .line 802
    .restart local v1    # "decoded":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :cond_1
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 803
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Lcom/liquable/nemo/util/Dimension;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/liquable/nemo/util/Dimension;-><init>(II)V

    .line 805
    .local v2, "dimension":Lcom/liquable/nemo/util/Dimension;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 807
    invoke-virtual {p2, v5}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v5

    const/16 v6, 0x50

    .line 805
    invoke-static {v4, v0, v5, v6}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    .line 810
    return-object v2
.end method

.method private updateReportMark(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, "boards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/ForumManager;->listReportAbuseBoardIds()Ljava/util/List;

    move-result-object v0

    .line 847
    .local v0, "abuseBoardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .line 848
    .local v1, "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 849
    .local v2, "reported":Z
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->setReported(Z)V

    goto :goto_0

    .line 851
    .end local v1    # "board":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    .end local v2    # "reported":Z
    :cond_0
    return-object p1
.end method


# virtual methods
.method public changeForumCountry()Ljava/lang/String;
    .locals 5

    .prologue
    .line 896
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->listSupportedCountry()Ljava/util/List;

    move-result-object v2

    .line 897
    .local v2, "supporteds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 898
    .local v1, "index":I
    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 899
    .local v0, "country":Ljava/lang/String;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/util/Pref;->saveCurrentForumCountry(Ljava/lang/String;)V

    .line 900
    return-object v0
.end method

.method public clearFavoriteForumBoard()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/ForumManager;->clearFavorites()V

    .line 154
    return-void
.end method

.method public createForumBoard(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Landroid/net/Uri;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "category"    # Lcom/liquable/nemo/model/forum/BoardCategory;
    .param p4, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->isThrottlingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastCreateBoardTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 269
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;

    invoke-direct {v0}, Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;-><init>()V

    throw v0

    .line 272
    :cond_0
    const/4 v4, 0x0

    .line 273
    .local v4, "iconUrl":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 274
    invoke-direct {p0, p4}, Lcom/liquable/nemo/forum/ForumDaemon;->createAndUploadBoardIcon(Landroid/net/Uri;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v8

    .line 275
    .local v8, "boardIconRemoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-virtual {v8}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toPublicUrl()Ljava/lang/String;

    move-result-object v4

    .line 278
    .end local v8    # "boardIconRemoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    :cond_1
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    .line 282
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->getCountry()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 283
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 278
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/client/service/ForumService;->createBoard(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v7

    .line 284
    .local v7, "board":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastCreateBoardTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 286
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/liquable/nemo/forum/ForumDaemon;->favoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    :try_end_0
    .catch Lcom/liquable/nemo/forum/model/FavoriteBoardExceedLimitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-object v7

    .line 287
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public createNormalArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 8
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->isThrottlingEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastCreateArticleTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 301
    new-instance v4, Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;

    invoke-direct {v4}, Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;-><init>()V

    throw v4

    .line 305
    :cond_0
    if-eqz p4, :cond_1

    .line 306
    invoke-direct {p0, p4}, Lcom/liquable/nemo/forum/ForumDaemon;->createAndUploadArticlePicture(Landroid/net/Uri;)Lcom/liquable/util/Tuple;

    move-result-object v3

    .line 307
    .local v3, "results":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/util/Dimension;>;"
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v4, v3, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    check-cast v4, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    invoke-virtual {v4}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toPublicUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 309
    .local v2, "pictureUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, v3, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    check-cast v4, Lcom/liquable/nemo/util/Dimension;

    iget v5, v4, Lcom/liquable/nemo/util/Dimension;->width:I

    iget-object v4, v3, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    check-cast v4, Lcom/liquable/nemo/util/Dimension;

    iget v4, v4, Lcom/liquable/nemo/util/Dimension;->height:I

    invoke-static {p2, p3, v2, v5, v4}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->create(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)Lcom/liquable/nemo/forum/model/article/NormalArticle;

    move-result-object v0

    .line 318
    .end local v2    # "pictureUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "results":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/util/Dimension;>;"
    .local v0, "article":Lcom/liquable/nemo/forum/model/article/NormalArticle;
    :goto_0
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v5

    .line 320
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->encodeArticleBody(Lcom/liquable/nemo/forum/model/article/IArticleBody;)Ljava/lang/String;

    move-result-object v6

    .line 318
    invoke-virtual {v4, v5, p1, v6}, Lcom/liquable/nemo/client/service/ForumService;->createArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-result-object v1

    .line 322
    .local v1, "articleDto":Lcom/liquable/nemo/model/forum/ForumArticleDto;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v4, p1, v1}, Lcom/liquable/nemo/forum/model/ForumManager;->updateFavoriteBoardLastArticleByLocalArticle(Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDto;)V

    .line 323
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastForumBoardUpdate(Ljava/lang/String;)V

    .line 324
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastReloadForumFavoriteBoards()V

    .line 326
    iget-object v4, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastCreateArticleTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 328
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decodeArticle(Lcom/liquable/nemo/model/forum/ForumArticleDto;)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v4

    return-object v4

    .line 315
    .end local v0    # "article":Lcom/liquable/nemo/forum/model/article/NormalArticle;
    .end local v1    # "articleDto":Lcom/liquable/nemo/model/forum/ForumArticleDto;
    :cond_1
    invoke-static {p2, p3}, Lcom/liquable/nemo/forum/model/article/NormalArticle;->createWithoutPicture(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/forum/model/article/NormalArticle;

    move-result-object v0

    .restart local v0    # "article":Lcom/liquable/nemo/forum/model/article/NormalArticle;
    goto :goto_0
.end method

.method public createPictureArticleReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Lcom/liquable/nemo/forum/model/article/ArticleReply;
    .locals 19
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/liquable/nemo/forum/ForumDaemon;->isArticleReplyCreatable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    new-instance v3, Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;

    invoke-direct {v3}, Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;-><init>()V

    throw v3

    .line 340
    :cond_0
    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v13, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 344
    .local v13, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    const-string/jumbo v3, "article_reply"

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/forum/ForumDaemon;->createPictureRemoteKeyPath(Landroid/net/Uri;Ljava/lang/String;)Lcom/liquable/util/Tuple;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 348
    .local v16, "pictureReplyKeyPaths":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    move-object/from16 v0, v16

    iget-object v14, v0, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    check-cast v14, Lcom/liquable/nemo/storage/LocalKeyPath;

    .line 349
    .local v14, "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .line 351
    .local v17, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v14, v2}, Lcom/liquable/nemo/forum/ForumDaemon;->savePictureFile(Landroid/net/Uri;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)Lcom/liquable/nemo/util/Dimension;

    .line 353
    new-instance v15, Lcom/liquable/nemo/forum/model/article/PictureReply;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 354
    invoke-virtual/range {v17 .. v17}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toPublicUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-direct {v15, v0, v3}, Lcom/liquable/nemo/forum/model/article/PictureReply;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 356
    .local v15, "pictureReply":Lcom/liquable/nemo/forum/model/article/PictureReply;
    const/4 v3, 0x1

    new-array v0, v3, [Z

    move-object/from16 v18, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-boolean v4, v18, v3

    .line 357
    .local v18, "uploadResult":[Z
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    const v4, 0x93a80

    new-instance v5, Lcom/liquable/nemo/forum/ForumDaemon$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1, v13}, Lcom/liquable/nemo/forum/ForumDaemon$3;-><init>(Lcom/liquable/nemo/forum/ForumDaemon;[ZLjava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v14, v0, v4, v5}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;ILcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 378
    const-wide/16 v3, 0x1e

    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v10

    .line 379
    .local v10, "await":Z
    if-eqz v10, :cond_1

    const/4 v3, 0x0

    aget-boolean v3, v18, v3

    if-nez v3, :cond_2

    .line 380
    :cond_1
    new-instance v3, Lcom/liquable/nemo/client/AsyncException;

    const v4, 0x7f0d01c6

    invoke-direct {v3, v4}, Lcom/liquable/nemo/client/AsyncException;-><init>(I)V

    throw v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 397
    .end local v10    # "await":Z
    :catch_0
    move-exception v12

    .line 398
    .local v12, "exception":Ljava/lang/InterruptedException;
    new-instance v3, Lcom/liquable/nemo/client/InterruptedErrorException;

    invoke-direct {v3}, Lcom/liquable/nemo/client/InterruptedErrorException;-><init>()V

    throw v3

    .line 345
    .end local v12    # "exception":Ljava/lang/InterruptedException;
    .end local v14    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v15    # "pictureReply":Lcom/liquable/nemo/forum/model/article/PictureReply;
    .end local v16    # "pictureReplyKeyPaths":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    .end local v17    # "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .end local v18    # "uploadResult":[Z
    :catch_1
    move-exception v11

    .line 346
    .local v11, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Lcom/liquable/nemo/client/AsyncException;

    const v4, 0x7f0d01b8

    invoke-direct {v3, v4}, Lcom/liquable/nemo/client/AsyncException;-><init>(I)V

    throw v3

    .line 383
    .end local v11    # "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "await":Z
    .restart local v14    # "localKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .restart local v15    # "pictureReply":Lcom/liquable/nemo/forum/model/article/PictureReply;
    .restart local v16    # "pictureReplyKeyPaths":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    .restart local v17    # "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .restart local v18    # "uploadResult":[Z
    :cond_2
    :try_start_2
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 386
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    .line 387
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->encodeArticleReplyBody(Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;)Ljava/lang/String;

    move-result-object v7

    .line 388
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    .line 383
    invoke-virtual/range {v3 .. v8}, Lcom/liquable/nemo/client/service/ForumService;->createArticleReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    move-result-object v9

    .line 390
    .local v9, "articleReplyDto":Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    .line 391
    invoke-virtual {v9}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->getCreateTime()J

    move-result-wide v4

    .line 390
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4, v5}, Lcom/liquable/nemo/forum/model/ForumManager;->updateFavoriteBoardLastUpdateTimeByLocalReply(Ljava/lang/String;J)V

    .line 392
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastForumBoardUpdate(Ljava/lang/String;)V

    .line 393
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastReloadForumFavoriteBoards()V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/liquable/nemo/forum/ForumDaemon;->lastCreateArticleReplyTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 396
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decodeArticleReply(Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;)Lcom/liquable/nemo/forum/model/article/ArticleReply;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    return-object v3
.end method

.method public createTextArticleReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/forum/model/article/ArticleReply;
    .locals 8
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->isArticleReplyCreatable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;

    invoke-direct {v0}, Lcom/liquable/nemo/forum/model/ForumCreateTooFastException;-><init>()V

    throw v0

    .line 422
    :cond_0
    new-instance v7, Lcom/liquable/nemo/forum/model/article/TextReply;

    invoke-direct {v7, p3}, Lcom/liquable/nemo/forum/model/article/TextReply;-><init>(Ljava/lang/String;)V

    .line 424
    .local v7, "textReply":Lcom/liquable/nemo/forum/model/article/TextReply;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 427
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->encodeArticleReplyBody(Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;)Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    .line 424
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/client/service/ForumService;->createArticleReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    move-result-object v6

    .line 431
    .local v6, "articleReplyDto":Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    .line 432
    invoke-virtual {v6}, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;->getCreateTime()J

    move-result-wide v1

    .line 431
    invoke-virtual {v0, p1, v1, v2}, Lcom/liquable/nemo/forum/model/ForumManager;->updateFavoriteBoardLastUpdateTimeByLocalReply(Ljava/lang/String;J)V

    .line 433
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastForumBoardUpdate(Ljava/lang/String;)V

    .line 434
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastReloadForumFavoriteBoards()V

    .line 436
    iget-object v0, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastCreateArticleReplyTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 437
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decodeArticleReply(Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;)Lcom/liquable/nemo/forum/model/article/ArticleReply;

    move-result-object v0

    return-object v0
.end method

.method public deleteArticle(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 4
    .param p1, "board"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .param p2, "article"    # Lcom/liquable/nemo/forum/model/article/Article;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 442
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "myUid":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreatorUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 444
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    .line 445
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v2

    .line 446
    invoke-virtual {p2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-virtual {v1, v0, v2, v3}, Lcom/liquable/nemo/client/service/ForumService;->deleteArticleByBoardCreator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :goto_0
    return-void

    .line 448
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    .line 449
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-virtual {p2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-virtual {v1, v0, v2, v3}, Lcom/liquable/nemo/client/service/ForumService;->deleteArticleByAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public editForumBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Landroid/net/Uri;)V
    .locals 9
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "boardTitle"    # Ljava/lang/String;
    .param p3, "boardDescription"    # Ljava/lang/String;
    .param p4, "boardCategory"    # Lcom/liquable/nemo/model/forum/BoardCategory;
    .param p5, "iconUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 460
    const/4 v5, 0x0

    .line 461
    .local v5, "iconUrl":Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 462
    invoke-direct {p0, p5}, Lcom/liquable/nemo/forum/ForumDaemon;->createAndUploadBoardIcon(Landroid/net/Uri;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v7

    .line 463
    .local v7, "boardIconRemoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    invoke-virtual {v7}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toPublicUrl()Ljava/lang/String;

    move-result-object v5

    .line 466
    .end local v7    # "boardIconRemoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 471
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 466
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/client/service/ForumService;->editBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v8

    .line 473
    .local v8, "edited":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/liquable/nemo/model/forum/ForumBoardDto;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/model/ForumManager;->updateFavorites(Ljava/util/List;)V

    .line 474
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    .line 475
    invoke-virtual {v8}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastUpdateTime()J

    move-result-wide v1

    .line 474
    invoke-virtual {v0, p1, v1, v2}, Lcom/liquable/nemo/forum/model/ForumManager;->updateFavoriteBoardLocalLastUpdateTime(Ljava/lang/String;J)V

    .line 476
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastForumBoardUpdate(Ljava/lang/String;)V

    .line 477
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastReloadForumFavoriteBoards()V

    .line 478
    return-void
.end method

.method public editForumBoardWithoutIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;)V
    .locals 8
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "boardTitle"    # Ljava/lang/String;
    .param p3, "boardDescription"    # Ljava/lang/String;
    .param p4, "boardCategory"    # Lcom/liquable/nemo/model/forum/BoardCategory;
    .param p5, "originalIconUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 486
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 491
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 486
    invoke-virtual/range {v0 .. v6}, Lcom/liquable/nemo/client/service/ForumService;->editBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v7

    .line 493
    .local v7, "edited":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/liquable/nemo/model/forum/ForumBoardDto;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/model/ForumManager;->updateFavorites(Ljava/util/List;)V

    .line 494
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    .line 495
    invoke-virtual {v7}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastUpdateTime()J

    move-result-wide v1

    .line 494
    invoke-virtual {v0, p1, v1, v2}, Lcom/liquable/nemo/forum/model/ForumManager;->updateFavoriteBoardLocalLastUpdateTime(Ljava/lang/String;J)V

    .line 496
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastForumBoardUpdate(Ljava/lang/String;)V

    .line 497
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastReloadForumFavoriteBoards()V

    .line 498
    return-void
.end method

.method public enterForumBoard(Ljava/lang/String;)V
    .locals 3
    .param p1, "boardId"    # Ljava/lang/String;

    .prologue
    .line 501
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 501
    invoke-virtual {v0, p1, v1, v2}, Lcom/liquable/nemo/forum/model/ForumManager;->updateFavoriteBoardLocalLastUpdateTime(Ljava/lang/String;J)V

    .line 503
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastEnterForumBoard(Ljava/lang/String;J)V

    .line 504
    return-void
.end method

.method public extractBoardIdAndArticleId(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    sget-object v1, Lcom/liquable/nemo/forum/ForumDaemon;->ARTICLE_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 865
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 868
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public favoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 3
    .param p1, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/forum/model/FavoriteBoardExceedLimitException;
        }
    .end annotation

    .prologue
    .line 508
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/model/ForumManager;->isFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 512
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/ForumManager;->isReachMaxFavoriteBoardCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 513
    new-instance v0, Lcom/liquable/nemo/forum/model/FavoriteBoardExceedLimitException;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/liquable/nemo/forum/model/FavoriteBoardExceedLimitException;-><init>(I)V

    throw v0

    .line 515
    :cond_1
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/model/ForumManager;->addFavorite(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    .line 516
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/client/service/ForumService;->favoriteBoard(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastReloadForumFavoriteBoards()V

    goto :goto_0
.end method

.method public findArticleById(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 4
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumArticleNotFoundException;
        }
    .end annotation

    .prologue
    .line 559
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    invoke-virtual {v3, p1, p2}, Lcom/liquable/nemo/client/service/ForumService;->findArticle(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-result-object v0

    .line 562
    .local v0, "forumArticleDto":Lcom/liquable/nemo/model/forum/ForumArticleDto;
    if-nez v0, :cond_0

    .line 563
    const/4 v3, 0x0

    .line 568
    :goto_0
    return-object v3

    .line 566
    :cond_0
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/forum/model/ForumManager;->listReportAbuseArticleIds()Ljava/util/List;

    move-result-object v1

    .line 567
    .local v1, "reportArticleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 568
    .local v2, "reported":Z
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decodeArticle(Lcom/liquable/nemo/model/forum/ForumArticleDto;Z)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v3

    goto :goto_0
.end method

.method public findForumBoardById(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 4
    .param p1, "boardId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 549
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/client/service/ForumService;->listBoardsByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 551
    .local v0, "boards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 552
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 554
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findIconBitmap(Ljava/lang/String;)Lcom/liquable/future/IFuture;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 521
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/liquable/future/Futures;->value(Ljava/lang/Object;)Lcom/liquable/future/IFuture;

    move-result-object v1

    .line 545
    :goto_0
    return-object v1

    .line 524
    :cond_0
    invoke-static {}, Lcom/liquable/future/Futures;->createCompleter()Lcom/liquable/future/Completer;

    move-result-object v0

    .line 526
    .local v0, "completer":Lcom/liquable/future/Completer;, "Lcom/liquable/future/Completer<Landroid/graphics/Bitmap;>;"
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    new-instance v2, Lcom/liquable/nemo/forum/ForumDaemon$4;

    invoke-direct {v2, p0, v0}, Lcom/liquable/nemo/forum/ForumDaemon$4;-><init>(Lcom/liquable/nemo/forum/ForumDaemon;Lcom/liquable/future/Completer;)V

    invoke-virtual {v1, p1, v2}, Lcom/liquable/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader$ImageListener;)Lcom/liquable/volley/toolbox/ImageLoader$ImageContainer;

    .line 545
    invoke-virtual {v0}, Lcom/liquable/future/Completer;->getFuture()Lcom/liquable/future/IFuture;

    move-result-object v1

    goto :goto_0
.end method

.method public getBoardCategoryDrawableResId(Lcom/liquable/nemo/model/forum/BoardCategory;)I
    .locals 2
    .param p1, "boardCategory"    # Lcom/liquable/nemo/model/forum/BoardCategory;

    .prologue
    .line 572
    sget-object v0, Lcom/liquable/nemo/forum/ForumDaemon$7;->$SwitchMap$com$liquable$nemo$model$forum$BoardCategory:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/BoardCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 594
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 574
    :pswitch_0
    const v0, 0x7f0203c9

    goto :goto_0

    .line 576
    :pswitch_1
    const v0, 0x7f0203c6

    goto :goto_0

    .line 578
    :pswitch_2
    const v0, 0x7f0203de

    goto :goto_0

    .line 580
    :pswitch_3
    const v0, 0x7f0203d8

    goto :goto_0

    .line 582
    :pswitch_4
    const v0, 0x7f0203d2

    goto :goto_0

    .line 584
    :pswitch_5
    const v0, 0x7f0203e1

    goto :goto_0

    .line 586
    :pswitch_6
    const v0, 0x7f0203d5

    goto :goto_0

    .line 588
    :pswitch_7
    const v0, 0x7f0203cf

    goto :goto_0

    .line 590
    :pswitch_8
    const v0, 0x7f0203db

    goto :goto_0

    .line 592
    :pswitch_9
    const v0, 0x7f0203cc

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getBoardCategoryHotArticleDrawableResId(Lcom/liquable/nemo/model/forum/BoardCategory;)I
    .locals 3
    .param p1, "boardCategory"    # Lcom/liquable/nemo/model/forum/BoardCategory;

    .prologue
    const v0, 0x7f02041b

    .line 599
    sget-object v1, Lcom/liquable/nemo/forum/ForumDaemon$7;->$SwitchMap$com$liquable$nemo$model$forum$BoardCategory:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/BoardCategory;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 621
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 601
    :pswitch_1
    const v0, 0x7f020415

    goto :goto_0

    .line 603
    :pswitch_2
    const v0, 0x7f020414

    goto :goto_0

    .line 605
    :pswitch_3
    const v0, 0x7f02041c

    goto :goto_0

    .line 607
    :pswitch_4
    const v0, 0x7f02041a

    goto :goto_0

    .line 609
    :pswitch_5
    const v0, 0x7f020417

    goto :goto_0

    .line 611
    :pswitch_6
    const v0, 0x7f02041d

    goto :goto_0

    .line 613
    :pswitch_7
    const v0, 0x7f020418

    goto :goto_0

    .line 615
    :pswitch_8
    const v0, 0x7f020416

    goto :goto_0

    .line 599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getForumBoardLastUpdateTime(Lcom/liquable/nemo/model/forum/ForumBoardDto;)J
    .locals 5
    .param p1, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    const/4 v4, 0x0

    .line 855
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 856
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 855
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/forum/model/ForumManager;->listFavoritesByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 857
    .local v0, "forumBoards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 858
    const-wide v1, 0x7fffffffffffffffL

    .line 860
    :goto_0
    return-wide v1

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/board/ForumBoard;->getLocalLastUpdateTime()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getShareTextForArticle(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .param p3, "article"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 872
    invoke-virtual {p3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/forum/model/article/IArticleBody;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "title":Ljava/lang/String;
    const-string/jumbo v1, "%s http://cubie.com/space/%s/%s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f0d0496

    .line 874
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 875
    invoke-virtual {p2}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 876
    invoke-virtual {p3}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x2a

    .line 877
    invoke-static {v0, v4}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 873
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isArticleReplyCreatable()Z
    .locals 4

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->isThrottlingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->isThrottlingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastCreateArticleReplyTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSupportedCountries()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/liquable/nemo/forum/ForumDaemon;->isInSupportedCountry:Z

    return v0
.end method

.method public likeArticle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 822
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 824
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 822
    invoke-virtual {v1, p1, p2, v2}, Lcom/liquable/nemo/client/service/ForumService;->likeArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 825
    .local v0, "likeSuccess":Z
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v1, p2}, Lcom/liquable/nemo/forum/model/ForumManager;->likeArticle(Ljava/lang/String;)V

    .line 826
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    invoke-interface {v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->likeArticle()V

    .line 827
    return v0
.end method

.method public listArticleRepliesByArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .param p3, "startReplyId"    # Ljava/lang/String;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/ArticleReply;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumArticleNotFoundException;
        }
    .end annotation

    .prologue
    .line 644
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v1, "replies":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/article/ArticleReply;>;"
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/liquable/nemo/client/service/ForumService;->listArticleReplies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 650
    .local v0, "articleReplieDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    .line 651
    .local v2, "replyDto":Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decodeArticleReply(Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;)Lcom/liquable/nemo/forum/model/article/ArticleReply;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 653
    .end local v2    # "replyDto":Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;
    :cond_0
    return-object v1
.end method

.method public listArticlesByBoard(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "startArticleId"    # Ljava/lang/String;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/article/Article;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 659
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    invoke-virtual {v6, p1, p2, p3}, Lcom/liquable/nemo/client/service/ForumService;->listArticles(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 663
    .local v3, "forumArticleDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumArticleDto;>;"
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v6}, Lcom/liquable/nemo/forum/model/ForumManager;->listReportAbuseArticleIds()Ljava/util/List;

    move-result-object v4

    .line 665
    .local v4, "reportArticleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 666
    .local v1, "articles":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/article/Article;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .line 667
    .local v0, "articleDto":Lcom/liquable/nemo/model/forum/ForumArticleDto;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 668
    .local v5, "reported":Z
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v7

    invoke-virtual {v7, v0, v5}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decodeArticle(Lcom/liquable/nemo/model/forum/ForumArticleDto;Z)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v2

    .line 669
    .local v2, "decodeArticle":Lcom/liquable/nemo/forum/model/article/Article;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 671
    .end local v0    # "articleDto":Lcom/liquable/nemo/model/forum/ForumArticleDto;
    .end local v2    # "decodeArticle":Lcom/liquable/nemo/forum/model/article/Article;
    .end local v5    # "reported":Z
    :cond_0
    return-object v1
.end method

.method public listBoardsByCategory(Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 678
    sget-object v1, Lcom/liquable/nemo/model/forum/BoardCategory;->LATEST:Lcom/liquable/nemo/model/forum/BoardCategory;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/BoardCategory;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 679
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/liquable/nemo/client/service/ForumService;->listLatestBoards(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 687
    .local v0, "boards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    :goto_0
    invoke-direct {p0, v0}, Lcom/liquable/nemo/forum/ForumDaemon;->convertToBoards(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 681
    .end local v0    # "boards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    .line 682
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 681
    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/liquable/nemo/client/service/ForumService;->listBoardsByCategory(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .restart local v0    # "boards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    goto :goto_0
.end method

.method public listFavoriteBoards()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/ForumManager;->listFavorites()Ljava/util/List;

    move-result-object v0

    .line 692
    .local v0, "favorites":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    invoke-direct {p0, v0}, Lcom/liquable/nemo/forum/ForumDaemon;->updateReportMark(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public listHotArticles(I)Ljava/util/List;
    .locals 11
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/HotArticle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 713
    iget-object v6, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastLoadHotArticlesTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 714
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v6}, Lcom/liquable/nemo/forum/model/ForumManager;->listReportAbuseArticleIds()Ljava/util/List;

    move-result-object v4

    .line 715
    .local v4, "reportArticleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->homeServerClient:Lcom/liquable/nemo/client/home/HomeServerClient;

    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->getCountry()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1e

    invoke-virtual {v6, v7, p1, v8}, Lcom/liquable/nemo/client/home/HomeServerClient;->listHotArticles(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    .line 719
    .local v3, "hotArticleDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/HotArticleDto;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 720
    .local v0, "articles":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/HotArticle;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/forum/HotArticleDto;

    .line 721
    .local v2, "hotArticleDto":Lcom/liquable/nemo/model/forum/HotArticleDto;
    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/HotArticleDto;->getForumArticleDto()Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-result-object v7

    .line 722
    invoke-virtual {v7}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getId()Ljava/lang/String;

    move-result-object v7

    .line 721
    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 723
    .local v5, "reported":Z
    invoke-static {}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->getInstance()Lcom/liquable/nemo/forum/model/article/ForumMapper;

    move-result-object v7

    .line 724
    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/HotArticleDto;->getForumArticleDto()Lcom/liquable/nemo/model/forum/ForumArticleDto;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/liquable/nemo/forum/model/article/ForumMapper;->decodeArticle(Lcom/liquable/nemo/model/forum/ForumArticleDto;Z)Lcom/liquable/nemo/forum/model/article/Article;

    move-result-object v1

    .line 725
    .local v1, "decodeArticle":Lcom/liquable/nemo/forum/model/article/Article;
    new-instance v7, Lcom/liquable/nemo/forum/model/HotArticle;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/HotArticleDto;->getBoardId()Ljava/lang/String;

    move-result-object v8

    .line 726
    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/HotArticleDto;->getBoardTitle()Ljava/lang/String;

    move-result-object v9

    .line 727
    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/HotArticleDto;->getBoardCategory()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v1}, Lcom/liquable/nemo/forum/model/HotArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/forum/model/article/Article;)V

    .line 725
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 731
    .end local v1    # "decodeArticle":Lcom/liquable/nemo/forum/model/article/Article;
    .end local v2    # "hotArticleDto":Lcom/liquable/nemo/model/forum/HotArticleDto;
    .end local v5    # "reported":Z
    :cond_0
    return-object v0
.end method

.method public listRecommendBoards()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 696
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/model/ForumManager;->listFavoriteIds()Ljava/util/List;

    move-result-object v1

    .line 697
    .local v1, "favIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/client/service/ForumService;->listRecommendBoards(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 699
    .local v0, "boards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 700
    .local v2, "recommendBoard":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 701
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 704
    .end local v2    # "recommendBoard":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    :cond_1
    invoke-direct {p0, v3}, Lcom/liquable/nemo/forum/ForumDaemon;->convertToBoards(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public localUnfavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 1
    .param p1, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 837
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/model/ForumManager;->isFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 842
    :goto_0
    return-void

    .line 840
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/model/ForumManager;->removeFavorite(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    .line 841
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastReloadForumFavoriteBoards()V

    goto :goto_0
.end method

.method public logBoardBannerClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "forumBoardId"    # Ljava/lang/String;
    .param p2, "forumBoardBannerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 736
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 738
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-virtual {v0, p1, p2, v1}, Lcom/liquable/nemo/client/service/ForumService;->logBoardBannerClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public refreshFavoriteBoards(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 744
    .local p1, "boards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    new-instance v4, Lcom/liquable/nemo/forum/ForumDaemon$5;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/forum/ForumDaemon$5;-><init>(Lcom/liquable/nemo/forum/ForumDaemon;)V

    invoke-static {p1, v4}, Lcom/liquable/util/CollectionsLean;->transform(Ljava/util/List;Lcom/liquable/util/Function;)Ljava/util/List;

    move-result-object v2

    .line 752
    .local v2, "reloadIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/client/service/ForumService;->listBoardsByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 754
    .local v0, "refreshedBoardDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/forum/model/ForumManager;->updateFavorites(Ljava/util/List;)V

    .line 755
    new-instance v4, Lcom/liquable/nemo/forum/ForumDaemon$6;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/forum/ForumDaemon$6;-><init>(Lcom/liquable/nemo/forum/ForumDaemon;)V

    invoke-static {v0, v4}, Lcom/liquable/util/CollectionsLean;->transform(Ljava/util/List;Lcom/liquable/util/Function;)Ljava/util/List;

    move-result-object v3

    .line 763
    .local v3, "resultIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v4, v3}, Lcom/liquable/nemo/forum/model/ForumManager;->listFavoritesByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 764
    .local v1, "refreshedBoards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/forum/model/board/ForumBoard;>;"
    invoke-direct {p0, v1}, Lcom/liquable/nemo/forum/ForumDaemon;->updateReportMark(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public reportAbuseArticle(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;Lcom/liquable/nemo/model/forum/ForumAbuseReason;)V
    .locals 6
    .param p1, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .param p2, "article"    # Lcom/liquable/nemo/forum/model/article/Article;
    .param p3, "forumAbuseReason"    # Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 770
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual {p2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 772
    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v3

    .line 773
    invoke-virtual {p2}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getCreatorUid()Ljava/lang/String;

    move-result-object v4

    .line 774
    invoke-virtual {p3}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->name()Ljava/lang/String;

    move-result-object v5

    .line 770
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/client/service/ForumService;->reportArticleAbuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v0, p2}, Lcom/liquable/nemo/forum/model/ForumManager;->reportAbuseArticle(Lcom/liquable/nemo/forum/model/article/Article;)V

    .line 776
    return-void
.end method

.method public reportAbuseBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/model/forum/ForumAbuseReason;)V
    .locals 5
    .param p1, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .param p2, "forumAbuseReason"    # Lcom/liquable/nemo/model/forum/ForumAbuseReason;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 780
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 781
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v2

    .line 782
    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreatorUid()Ljava/lang/String;

    move-result-object v3

    .line 783
    invoke-virtual {p2}, Lcom/liquable/nemo/model/forum/ForumAbuseReason;->name()Ljava/lang/String;

    move-result-object v4

    .line 780
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/ForumService;->reportBoardAbuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumDaemon;->unfavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    .line 785
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumManager:Lcom/liquable/nemo/forum/model/ForumManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/forum/model/ForumManager;->reportAbuseBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    .line 786
    return-void
.end method

.method public searchBoard(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 814
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    .line 815
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ForumDaemon;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 814
    invoke-virtual {v1, p1, v2, p2}, Lcom/liquable/nemo/client/service/ForumService;->searchBoards(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 817
    .local v0, "boards":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    invoke-direct {p0, v0}, Lcom/liquable/nemo/forum/ForumDaemon;->convertToBoards(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public shouldReloadHotArticles()Z
    .locals 4

    .prologue
    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumDaemon;->lastLoadHotArticlesTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncForumSupportedCountry()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 904
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    invoke-virtual {v1}, Lcom/liquable/nemo/client/service/ForumService;->listSupportedCountry()Ljava/util/List;

    move-result-object v0

    .line 905
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/util/Pref;->saveForumSupportedCountry(Ljava/util/List;)V

    .line 906
    return-void
.end method

.method public unfavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 3
    .param p1, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 832
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/ForumDaemon;->localUnfavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    .line 833
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->forumService:Lcom/liquable/nemo/client/service/ForumService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/client/service/ForumService;->unfavoriteBoard(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    return-void
.end method
