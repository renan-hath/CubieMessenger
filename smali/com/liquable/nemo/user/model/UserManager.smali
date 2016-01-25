.class public Lcom/liquable/nemo/user/model/UserManager;
.super Ljava/lang/Object;
.source "UserManager.java"


# static fields
.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final accountService:Lcom/liquable/nemo/client/service/IAccountService;

.field private final broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

.field private final fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

.field private final nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

.field private final pref:Lcom/liquable/nemo/util/Pref;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/liquable/nemo/user/model/UserManager;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/user/model/UserManager;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/util/Pref;Lcom/liquable/nemo/client/service/IAccountService;Lcom/liquable/nemo/storage/NemoFileService;Lcom/liquable/nemo/android/service/FileTransferManager;Lcom/liquable/nemo/android/BroadcastManager;)V
    .locals 0
    .param p1, "pref"    # Lcom/liquable/nemo/util/Pref;
    .param p2, "accountService"    # Lcom/liquable/nemo/client/service/IAccountService;
    .param p3, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;
    .param p4, "fileTransferManager"    # Lcom/liquable/nemo/android/service/FileTransferManager;
    .param p5, "broadcastService"    # Lcom/liquable/nemo/android/BroadcastManager;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 52
    iput-object p2, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    .line 53
    iput-object p3, p0, Lcom/liquable/nemo/user/model/UserManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 54
    iput-object p4, p0, Lcom/liquable/nemo/user/model/UserManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    .line 55
    iput-object p5, p0, Lcom/liquable/nemo/user/model/UserManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/user/model/UserManager;)Lcom/liquable/nemo/util/Pref;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/user/model/UserManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/user/model/UserManager;)Lcom/liquable/nemo/storage/NemoFileService;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/user/model/UserManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    return-object v0
.end method

.method static synthetic access$200()Lcom/liquable/nemo/util/Logger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/liquable/nemo/user/model/UserManager;->logger:Lcom/liquable/nemo/util/Logger;

    return-object v0
.end method

.method private uploadMyAccountIcon(Ljava/io/File;)Z
    .locals 11
    .param p1, "newIconFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 209
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 210
    .local v1, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 212
    .local v3, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v8, p0, Lcom/liquable/nemo/user/model/UserManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    iget-object v9, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 213
    invoke-virtual {v9}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/liquable/nemo/friend/model/Account;->createIconRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v9

    new-instance v10, Lcom/liquable/nemo/user/model/UserManager$3;

    invoke-direct {v10, p0, v3, v1}, Lcom/liquable/nemo/user/model/UserManager$3;-><init>(Lcom/liquable/nemo/user/model/UserManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    .line 212
    invoke-virtual {v8, p1, v9, v10}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 231
    const-wide/16 v4, 0x2d

    .line 232
    .local v4, "timeoutInSeconds":J
    const-wide/16 v8, 0x2d

    :try_start_0
    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 233
    .local v0, "await":Z
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 234
    iget-object v8, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    iget-object v9, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcom/liquable/nemo/client/service/IAccountService;->updateIconExists(Ljava/lang/String;Z)V

    .line 235
    sget-object v8, Lcom/liquable/nemo/user/model/UserManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v9, "accountService.updateIconExists completed"

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 245
    .end local v0    # "await":Z
    :goto_0
    return v6

    .line 239
    .restart local v0    # "await":Z
    :cond_0
    if-nez v0, :cond_1

    .line 240
    sget-object v6, Lcom/liquable/nemo/user/model/UserManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v8, "fileTransferManager.uploadUserIcon timeout (45s), abort"

    invoke-virtual {v6, v8}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "await":Z
    :cond_1
    :goto_1
    move v6, v7

    .line 245
    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method


# virtual methods
.method public connectPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "pincodeToken"    # Ljava/lang/String;
    .param p3, "pincode"    # Ljava/lang/String;
    .param p4, "rawPhoneNumber"    # Ljava/lang/String;
    .param p5, "defaultCountryCodeISO3166"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/InvalidPhoneNumberException;,
            Lcom/liquable/nemo/model/InvalidPincodeException;,
            Lcom/liquable/nemo/model/PhoneAlreadyInUseException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/liquable/nemo/client/service/IAccountService;->connectPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    return-object v0
.end method

.method public connectToFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "fbuid"    # Ljava/lang/String;
    .param p3, "gender"    # Ljava/lang/String;
    .param p4, "birthday"    # Ljava/lang/String;
    .param p5, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/FacebookAlreadyInUseException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/liquable/nemo/client/service/IAccountService;->connectFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public disableAccount(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/client/service/IAccountService;->disableUser(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public discardCover()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 84
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 85
    .local v1, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 87
    .local v3, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v5, p0, Lcom/liquable/nemo/user/model/UserManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    iget-object v6, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/liquable/nemo/friend/model/Account;->createCoverRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v6

    new-instance v7, Lcom/liquable/nemo/user/model/UserManager$1;

    invoke-direct {v7, p0, v3, v1}, Lcom/liquable/nemo/user/model/UserManager$1;-><init>(Lcom/liquable/nemo/user/model/UserManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/android/service/FileTransferManager;->discard(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 104
    const-wide/16 v5, 0x2d

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 105
    .local v0, "await":Z
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 111
    .end local v0    # "await":Z
    :cond_0
    :goto_0
    return v4

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public discardIcon()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/client/service/IAccountService;->updateIconExists(Ljava/lang/String;Z)V

    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/friend/model/Account;->createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 117
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/friend/model/Account;->createSmallIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/NemoFileService;->delete(Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 118
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastAccountIconUpdated(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public disconnectFacebook(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/client/service/IAccountService;->disconnectFacebook(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public disconnectTwitter(Ljava/lang/String;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/client/service/IAccountService;->disconnectTwitter(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public listAccountsByFbuids(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "fbuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/client/service/IAccountService;->listAccountsByFbuids(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public listAccountsByTwitterIds(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/liquable/nemo/model/account/AccountDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "twitterIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/client/service/IAccountService;->listAccountsByTwitterIds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public updateExcludeInMutualFriendsPreference(Z)V
    .locals 2
    .param p1, "isExcludeInMutualFriends"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/liquable/nemo/client/service/IAccountService;->setExcludeInMutualFriends(Ljava/lang/String;Z)V

    .line 142
    return-void
.end method

.method public updateMyAccountIcon(Landroid/content/Context;Ljava/io/File;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newIconFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-direct {p0, p2}, Lcom/liquable/nemo/user/model/UserManager;->uploadMyAccountIcon(Ljava/io/File;)Z

    move-result v2

    .line 148
    .local v2, "result":Z
    if-nez v2, :cond_0

    .line 162
    :goto_0
    return v4

    .line 152
    :cond_0
    iget-object v5, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/friend/model/Account;->createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    .line 153
    .local v1, "iconLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    iget-object v5, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/friend/model/Account;->createSmallIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    .line 155
    .local v3, "smallIconLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/user/model/UserManager;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, p2, v1}, Lcom/liquable/nemo/storage/NemoFileService;->copyFileToLocalKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/LocalKeyPath;)V

    .line 156
    invoke-static {p1, v1, v3}, Lcom/liquable/nemo/util/ImageUtils;->saveSmallUserIcon(Landroid/content/Context;Lcom/liquable/nemo/storage/LocalKeyPath;Lcom/liquable/nemo/storage/LocalKeyPath;)Landroid/graphics/Bitmap;

    .line 157
    iget-object v5, p0, Lcom/liquable/nemo/user/model/UserManager;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    iget-object v6, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastAccountIconUpdated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v4, 0x1

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/liquable/nemo/user/model/UserManager;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "update my icon failed"

    invoke-virtual {v5, v6, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateNickname(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nickname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/user/model/UserManager;->accountService:Lcom/liquable/nemo/client/service/IAccountService;

    iget-object v1, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/liquable/nemo/client/service/IAccountService;->updateNickname(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {p1, p2}, Lcom/liquable/nemo/authenticator/AccountUtil;->updateNickname(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public uploadCover(Ljava/io/File;)Z
    .locals 8
    .param p1, "newCoverFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 171
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 172
    .local v1, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 174
    .local v3, "result":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v5, p0, Lcom/liquable/nemo/user/model/UserManager;->fileTransferManager:Lcom/liquable/nemo/android/service/FileTransferManager;

    iget-object v6, p0, Lcom/liquable/nemo/user/model/UserManager;->pref:Lcom/liquable/nemo/util/Pref;

    .line 175
    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/liquable/nemo/friend/model/Account;->createCoverRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v6

    new-instance v7, Lcom/liquable/nemo/user/model/UserManager$2;

    invoke-direct {v7, p0, p1, v3, v1}, Lcom/liquable/nemo/user/model/UserManager$2;-><init>(Lcom/liquable/nemo/user/model/UserManager;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    .line 174
    invoke-virtual {v5, p1, v6, v7}, Lcom/liquable/nemo/android/service/FileTransferManager;->uploadKeyPath(Ljava/io/File;Lcom/liquable/nemo/storage/aws/RemoteKeyPath;Lcom/liquable/nemo/android/service/FileTransferManager$FileTransferListener;)V

    .line 198
    const-wide/16 v5, 0x2d

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 199
    .local v0, "await":Z
    if-eqz v0, :cond_0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 205
    .end local v0    # "await":Z
    :cond_0
    :goto_0
    return v4

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
