.class public Lcom/liquable/nemo/facebook/FacebookDaemon;
.super Ljava/lang/Object;
.source "FacebookDaemon.java"


# static fields
.field private static final MAX_OF_FACEBOOK_FRIENDS:I = 0x3e8

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final preloadedMyPicuture:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/liquable/nemo/facebook/FacebookDaemon;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/facebook/FacebookDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/facebook/FacebookDaemon;->preloadedMyPicuture:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private findMyPicture()Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 38
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getFbuid()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "fbuid":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    sget-object v5, Lcom/liquable/nemo/facebook/FacebookDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "no fbuid, skip findMyPicture"

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 41
    const/4 v4, 0x0

    .line 52
    :goto_0
    return-object v4

    .line 45
    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "https://graph.facebook.com/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/picture?type=large"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "largePictureUrl":Ljava/lang/String;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile()Ljava/io/File;

    move-result-object v4

    .line 47
    .local v4, "target":Ljava/io/File;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    invoke-virtual {v5, v3, v4}, Lcom/liquable/nemo/http/NemoHttpService;->download(Ljava/lang/String;Ljava/io/File;)V

    .line 49
    const/16 v5, 0xfa

    invoke-static {v4, v5}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndCropAsSquare(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v5, v0, v4}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "largePictureUrl":Ljava/lang/String;
    .end local v4    # "target":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/liquable/nemo/facebook/FacebookDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 56
    new-instance v5, Lcom/liquable/nemo/client/AsyncException;

    const v6, 0x7f0d01bb

    invoke-direct {v5, v6}, Lcom/liquable/nemo/client/AsyncException;-><init>(I)V

    throw v5
.end method

.method private listFacebookFriends(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Ljava/util/List;
    .locals 3
    .param p1, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/facebook/FacebookFriend;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x3e8

    .line 93
    invoke-virtual {p1}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;->listFriends()Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "facebookFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 95
    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 101
    .end local v0    # "facebookFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    :goto_0
    return-object v0

    .line 99
    .restart local v0    # "facebookFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    :cond_0
    new-instance v1, Lcom/liquable/nemo/friend/facebook/FacebookFriendComparator;

    invoke-direct {v1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method


# virtual methods
.method public importFacebookOneWayFriends(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Ljava/util/List;
    .locals 4
    .param p1, "facebookReadRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/liquable/nemo/facebook/FacebookDaemon;->listFacebookFriends(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "facebookFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/facebook/FacebookFriend;>;"
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/friend/model/FriendManager;->importFromFacebookFriends(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "newFriends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    sget-object v3, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->IMPORT_FROM_FACEBOOK:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    invoke-virtual {v2, v1, v3}, Lcom/liquable/nemo/notice/model/NoticeManager;->insertConfirmFriendNotices(Ljava/util/List;Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)V

    .line 67
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->sendBecomeOneWayFriendMessages(Ljava/util/List;)V

    .line 68
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendImported()V

    .line 70
    :cond_0
    return-object v1
.end method

.method public isAllowFacebookDisconnect()Z
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isAllowFacebookDisconnect()Z

    move-result v0

    return v0
.end method

.method public isFacebookConnected()Z
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isFacebookConnected()Z

    move-result v0

    return v0
.end method

.method public preloadMyPicture()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookDaemon;->preloadedMyPicuture:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lcom/liquable/nemo/facebook/FacebookDaemon;->findMyPicture()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public takePreloadedMyPicture()Ljava/io/File;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/facebook/FacebookDaemon;->preloadedMyPicuture:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public updateMyAccountIconWithFacebookIcon(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/liquable/nemo/facebook/FacebookDaemon;->findMyPicture()Ljava/io/File;

    move-result-object v0

    .line 115
    .local v0, "found":Ljava/io/File;
    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    invoke-virtual {v1, p1, v0}, Lcom/liquable/nemo/user/model/UserManager;->updateMyAccountIcon(Landroid/content/Context;Ljava/io/File;)Z

    goto :goto_0
.end method

.method public uploadImageToFacebook(Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookPublishRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;
    .param p2, "mediaFile"    # Ljava/io/File;
    .param p3, "caption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/facebook/FacebookAsyncException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1, p3, p2}, Lcom/liquable/nemo/facebook/FacebookSession$FacebookPublishRequest;->uploadPhoto(Ljava/lang/String;Ljava/io/File;)V

    .line 126
    return-void
.end method
