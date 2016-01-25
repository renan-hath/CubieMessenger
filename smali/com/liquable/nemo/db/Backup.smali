.class public Lcom/liquable/nemo/db/Backup;
.super Ljava/lang/Object;
.source "Backup.java"


# static fields
.field private static final RESTORE_BATCH_SIZE:I = 0x1f4

.field private static final path:Ljava/lang/String; = "/data/data/com.liquable.nemo/databases/nemo"


# instance fields
.field private final dao:Lcom/liquable/nemo/db/Dao;

.field private final logger:Lcom/liquable/nemo/util/Logger;

.field private final nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/db/Dao;Lcom/liquable/nemo/storage/NemoFileService;)V
    .locals 1
    .param p1, "dao"    # Lcom/liquable/nemo/db/Dao;
    .param p2, "nemoFileService"    # Lcom/liquable/nemo/storage/NemoFileService;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/liquable/nemo/util/Logger;->getInstance()Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/db/Backup;->logger:Lcom/liquable/nemo/util/Logger;

    .line 50
    iput-object p1, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    .line 51
    iput-object p2, p0, Lcom/liquable/nemo/db/Backup;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 52
    return-void
.end method

.method private clearSqliteDbFiles(Ljava/io/File;)V
    .locals 5
    .param p1, "dbFile"    # Ljava/io/File;

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/io/filefilter/PrefixFileFilter;

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/io/filefilter/PrefixFileFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 81
    invoke-static {v2, v3, v4}, Lorg/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object v1

    .line 85
    .local v1, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 86
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 88
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private deleteOldBackups(Ljava/lang/String;)V
    .locals 5
    .param p1, "ownerUid"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/liquable/nemo/db/Backup;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v3, p1}, Lcom/liquable/nemo/storage/NemoFileService;->listAllBackups(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .local v0, "backups":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    .line 127
    :cond_0
    return-void

    .line 116
    :cond_1
    new-instance v3, Lcom/liquable/nemo/db/Backup$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/db/Backup$1;-><init>(Lcom/liquable/nemo/db/Backup;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "removables":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 125
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private latestBackup(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "myUid"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/liquable/nemo/db/Backup;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/storage/NemoFileService;->listAllBackups(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 155
    .local v0, "backups":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 166
    :goto_0
    return-object v1

    .line 158
    :cond_0
    new-instance v2, Lcom/liquable/nemo/db/Backup$2;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/db/Backup$2;-><init>(Lcom/liquable/nemo/db/Backup;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 166
    .local v1, "latest":Ljava/io/File;
    goto :goto_0
.end method

.method private restoreArchiveMessages(Lcom/liquable/nemo/db/Dao;)V
    .locals 5
    .param p1, "backupDao"    # Lcom/liquable/nemo/db/Dao;

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "count":I
    :goto_0
    iget-object v2, p1, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    mul-int/lit16 v3, v0, 0x1f4

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/db/MessageDao;->rawListArchive(II)Ljava/util/List;

    move-result-object v1

    .line 174
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 180
    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v2, v2, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/db/MessageDao;->insertAllArchive(Ljava/util/List;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    .line 179
    goto :goto_0
.end method

.method private restoreChatGroupMembers(Lcom/liquable/nemo/db/Dao;)V
    .locals 5
    .param p1, "backupDao"    # Lcom/liquable/nemo/db/Dao;

    .prologue
    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "count":I
    :goto_0
    iget-object v2, p1, Lcom/liquable/nemo/db/Dao;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    mul-int/lit16 v3, v1, 0x1f4

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->rawList(II)Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, "chatGroupMembers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroupMember;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 254
    return-void

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v2, v2, Lcom/liquable/nemo/db/Dao;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/ChatGroupMemberDao;->insertAll(Ljava/util/List;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    .line 253
    goto :goto_0
.end method

.method private restoreChatGroups(Lcom/liquable/nemo/db/Dao;)V
    .locals 5
    .param p1, "backupDao"    # Lcom/liquable/nemo/db/Dao;

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 259
    .local v1, "count":I
    :goto_0
    iget-object v2, p1, Lcom/liquable/nemo/db/Dao;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    mul-int/lit16 v3, v1, 0x1f4

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/db/ChatGroupDao;->rawListAll(II)Ljava/util/List;

    move-result-object v0

    .line 261
    .local v0, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 267
    return-void

    .line 264
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v2, v2, Lcom/liquable/nemo/db/Dao;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/db/ChatGroupDao;->insertAll(Ljava/util/List;)V

    .line 265
    add-int/lit8 v1, v1, 0x1

    .line 266
    goto :goto_0
.end method

.method private restoreCustomSticker(Lcom/liquable/nemo/db/Dao;)V
    .locals 4
    .param p1, "backupDao"    # Lcom/liquable/nemo/db/Dao;

    .prologue
    .line 270
    iget-object v2, p1, Lcom/liquable/nemo/db/Dao;->customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

    invoke-virtual {v2}, Lcom/liquable/nemo/db/CustomStickerDao;->listAll()Ljava/util/List;

    move-result-object v1

    .line 271
    .local v1, "customStickers":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/custom/model/CustomSticker;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 278
    :cond_0
    return-void

    .line 275
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    .line 276
    .local v0, "customSticker":Lcom/liquable/nemo/sticker/custom/model/CustomSticker;
    iget-object v3, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v3, v3, Lcom/liquable/nemo/db/Dao;->customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/db/CustomStickerDao;->create(Lcom/liquable/nemo/sticker/custom/model/CustomSticker;)Lcom/liquable/nemo/sticker/custom/model/CustomSticker;

    goto :goto_0
.end method

.method private restoreFriends(Lcom/liquable/nemo/db/Dao;)V
    .locals 5
    .param p1, "backupDao"    # Lcom/liquable/nemo/db/Dao;

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, "count":I
    :goto_0
    iget-object v2, p1, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    mul-int/lit16 v3, v0, 0x1f4

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/db/AccountDao;->rawList(II)Ljava/util/List;

    move-result-object v1

    .line 285
    .local v1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 291
    return-void

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v2, v2, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/db/AccountDao;->saveAll(Ljava/util/List;)V

    .line 289
    add-int/lit8 v0, v0, 0x1

    .line 290
    goto :goto_0
.end method

.method private restoreMessages(Lcom/liquable/nemo/db/Dao;)V
    .locals 5
    .param p1, "backupDao"    # Lcom/liquable/nemo/db/Dao;

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, "count":I
    :goto_0
    iget-object v2, p1, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    mul-int/lit16 v3, v0, 0x1f4

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/db/MessageDao;->rawList(II)Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 304
    return-void

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v2, v2, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/db/MessageDao;->insertAll(Ljava/util/List;)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    .line 303
    goto :goto_0
.end method

.method private restoreReadedAcks(Lcom/liquable/nemo/db/Dao;)V
    .locals 5
    .param p1, "backupDao"    # Lcom/liquable/nemo/db/Dao;

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "count":I
    :goto_0
    iget-object v2, p1, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    mul-int/lit16 v3, v0, 0x1f4

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/db/MessageDao;->rawListReadedAcks(II)Ljava/util/List;

    move-result-object v1

    .line 315
    .local v1, "readedAcks":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/ReadedAck;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 321
    return-void

    .line 318
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v2, v2, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/db/MessageDao;->insertReadedAcks(Ljava/util/List;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    .line 320
    goto :goto_0
.end method


# virtual methods
.method public backup(Ljava/lang/String;)Z
    .locals 8
    .param p1, "ownerUid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/Backup;->deleteOldBackups(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/db/Backup;->backupPrefs(Ljava/lang/String;)Z

    .line 58
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "/data/data/com.liquable.nemo/databases/nemo"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, "srcFile":Ljava/io/File;
    iget-object v5, p0, Lcom/liquable/nemo/db/Backup;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, p1, v6}, Lcom/liquable/nemo/storage/NemoFileService;->getSqliteBackupFile(Ljava/lang/String;Ljava/util/Date;)Ljava/io/File;

    move-result-object v1

    .line 60
    .local v1, "backupFile":Ljava/io/File;
    if-nez v1, :cond_0

    .line 61
    iget-object v5, p0, Lcom/liquable/nemo/db/Backup;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v6, "back up database, external storage unavailable"

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    .line 69
    .end local v1    # "backupFile":Ljava/io/File;
    .end local v3    # "srcFile":Ljava/io/File;
    :goto_0
    return v4

    .line 64
    .restart local v1    # "backupFile":Ljava/io/File;
    .restart local v3    # "srcFile":Ljava/io/File;
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/crypt/Encryption;->createDESEncryption()Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v0

    .line 65
    .local v0, "aesEncryption":Lcom/liquable/nemo/crypt/Encryption;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/liquable/nemo/crypt/Encryption;->encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v4, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "aesEncryption":Lcom/liquable/nemo/crypt/Encryption;
    .end local v1    # "backupFile":Ljava/io/File;
    .end local v3    # "srcFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/liquable/nemo/db/Backup;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "back up database fail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public backupPrefs(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ownerUid"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    iget-object v1, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v1, v1, Lcom/liquable/nemo/db/Dao;->preferenceDao:Lcom/liquable/nemo/db/PreferenceDao;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/util/Pref;->backup(Ljava/lang/String;Lcom/liquable/nemo/db/PreferenceDao;)Z

    move-result v0

    return v0
.end method

.method public createChatGroup(Lcom/liquable/nemo/model/group/ChatGroupDto;ZLjava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 3
    .param p1, "groupDto"    # Lcom/liquable/nemo/model/group/ChatGroupDto;
    .param p2, "visible"    # Z
    .param p3, "myUid"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getMemberUids()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    .line 96
    invoke-virtual {p1}, Lcom/liquable/nemo/model/group/ChatGroupDto;->getCreateTime()J

    move-result-wide v1

    .line 94
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/liquable/nemo/db/ChatGroupDao;->insertOrUpdateChatGroupWithMembers(Lcom/liquable/nemo/model/group/ChatGroupDto;ZJ)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method public deleteAllBackups(Ljava/lang/String;)V
    .locals 4
    .param p1, "ownerUid"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/liquable/nemo/db/Backup;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v2, p1}, Lcom/liquable/nemo/storage/NemoFileService;->listAllBackups(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v1, "backups":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 102
    .local v0, "backup":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 104
    .end local v0    # "backup":Ljava/io/File;
    :cond_0
    return-void
.end method

.method public findAccountById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/AccountDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    return-object v0
.end method

.method public findMultiChatGroupByUid(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->findByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method public findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p1, "account"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/ChatGroupDao;->findOneToOneByAccount(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method public getLastBackupTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "myUid"    # Ljava/lang/String;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/Backup;->latestBackup(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 143
    .local v0, "latest":Ljava/io/File;
    if-nez v0, :cond_0

    .line 144
    const/4 v1, 0x0

    .line 146
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public isBackupExists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "myUid"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/db/Backup;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/storage/NemoFileService;->listAllBackups(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreBackup(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "myUid"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 183
    invoke-direct {p0, p1}, Lcom/liquable/nemo/db/Backup;->latestBackup(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 184
    .local v5, "latest":Ljava/io/File;
    if-nez v5, :cond_0

    .line 239
    :goto_0
    return v7

    .line 188
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/crypt/Encryption;->createDESEncryption()Lcom/liquable/nemo/crypt/Encryption;

    move-result-object v0

    .line 189
    .local v0, "aesEncryption":Lcom/liquable/nemo/crypt/Encryption;
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v6, "plainFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v6}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/liquable/nemo/crypt/Encryption;->decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    const/4 v2, 0x0

    .line 201
    .local v2, "backupDatabase":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v8, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    invoke-virtual {v8}, Lcom/liquable/nemo/db/Dao;->beginTransaction()V

    .line 203
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 207
    .local v3, "backupVersion":I
    const/16 v8, 0x2d

    invoke-static {v2, v3, v8}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->upgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 211
    const/16 v8, 0x2d

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 212
    new-instance v1, Lcom/liquable/nemo/db/Dao;

    .line 213
    invoke-static {}, Lcom/liquable/nemo/message/model/MessageProcessor;->getInstance()Lcom/liquable/nemo/message/model/MessageProcessor;

    move-result-object v8

    .line 214
    invoke-static {}, Lcom/liquable/nemo/notice/NoticeMapper;->getInstance()Lcom/liquable/nemo/notice/NoticeMapper;

    move-result-object v9

    invoke-direct {v1, v2, v8, v9, p2}, Lcom/liquable/nemo/db/Dao;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/liquable/nemo/message/model/MessageProcessor;Lcom/liquable/nemo/notice/NoticeMapper;Ljava/lang/String;)V

    .line 217
    .local v1, "backupDao":Lcom/liquable/nemo/db/Dao;
    invoke-virtual {p0, p1, v1}, Lcom/liquable/nemo/db/Backup;->restorePrefs(Ljava/lang/String;Lcom/liquable/nemo/db/Dao;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_2

    .line 235
    iget-object v8, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    invoke-virtual {v8}, Lcom/liquable/nemo/db/Dao;->endTransaction()V

    .line 236
    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 239
    :cond_1
    invoke-direct {p0, v6}, Lcom/liquable/nemo/db/Backup;->clearSqliteDbFiles(Ljava/io/File;)V

    goto :goto_0

    .line 192
    .end local v1    # "backupDao":Lcom/liquable/nemo/db/Dao;
    .end local v2    # "backupDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "backupVersion":I
    :catch_0
    move-exception v4

    .line 194
    .local v4, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/liquable/nemo/db/Backup;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restore backup failed:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, v6}, Lcom/liquable/nemo/db/Backup;->clearSqliteDbFiles(Ljava/io/File;)V

    goto/16 :goto_0

    .line 220
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "backupDao":Lcom/liquable/nemo/db/Dao;
    .restart local v2    # "backupDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "backupVersion":I
    :cond_2
    :try_start_2
    invoke-direct {p0, v1}, Lcom/liquable/nemo/db/Backup;->restoreChatGroups(Lcom/liquable/nemo/db/Dao;)V

    .line 221
    invoke-direct {p0, v1}, Lcom/liquable/nemo/db/Backup;->restoreFriends(Lcom/liquable/nemo/db/Dao;)V

    .line 222
    invoke-direct {p0, v1}, Lcom/liquable/nemo/db/Backup;->restoreChatGroupMembers(Lcom/liquable/nemo/db/Dao;)V

    .line 223
    invoke-direct {p0, v1}, Lcom/liquable/nemo/db/Backup;->restoreMessages(Lcom/liquable/nemo/db/Dao;)V

    .line 224
    invoke-direct {p0, v1}, Lcom/liquable/nemo/db/Backup;->restoreArchiveMessages(Lcom/liquable/nemo/db/Dao;)V

    .line 225
    invoke-direct {p0, v1}, Lcom/liquable/nemo/db/Backup;->restoreReadedAcks(Lcom/liquable/nemo/db/Dao;)V

    .line 226
    invoke-direct {p0, v1}, Lcom/liquable/nemo/db/Backup;->restoreCustomSticker(Lcom/liquable/nemo/db/Dao;)V

    .line 227
    iget-object v8, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    invoke-virtual {v8}, Lcom/liquable/nemo/db/Dao;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 228
    const/4 v7, 0x1

    .line 235
    iget-object v8, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    invoke-virtual {v8}, Lcom/liquable/nemo/db/Dao;->endTransaction()V

    .line 236
    if-eqz v2, :cond_3

    .line 237
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 239
    :cond_3
    invoke-direct {p0, v6}, Lcom/liquable/nemo/db/Backup;->clearSqliteDbFiles(Ljava/io/File;)V

    goto/16 :goto_0

    .line 229
    .end local v1    # "backupDao":Lcom/liquable/nemo/db/Dao;
    .end local v3    # "backupVersion":I
    :catch_1
    move-exception v4

    .line 231
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 232
    iget-object v8, p0, Lcom/liquable/nemo/db/Backup;->logger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    iget-object v8, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    invoke-virtual {v8}, Lcom/liquable/nemo/db/Dao;->endTransaction()V

    .line 236
    if-eqz v2, :cond_4

    .line 237
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 239
    :cond_4
    invoke-direct {p0, v6}, Lcom/liquable/nemo/db/Backup;->clearSqliteDbFiles(Ljava/io/File;)V

    goto/16 :goto_0

    .line 235
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    invoke-virtual {v8}, Lcom/liquable/nemo/db/Dao;->endTransaction()V

    .line 236
    if-eqz v2, :cond_5

    .line 237
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 239
    :cond_5
    invoke-direct {p0, v6}, Lcom/liquable/nemo/db/Backup;->clearSqliteDbFiles(Ljava/io/File;)V

    throw v7
.end method

.method public restorePrefs(Ljava/lang/String;Lcom/liquable/nemo/db/Dao;)Z
    .locals 2
    .param p1, "ownerUid"    # Ljava/lang/String;
    .param p2, "dao"    # Lcom/liquable/nemo/db/Dao;

    .prologue
    .line 307
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    iget-object v1, p2, Lcom/liquable/nemo/db/Dao;->preferenceDao:Lcom/liquable/nemo/db/PreferenceDao;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/util/Pref;->restore(Ljava/lang/String;Lcom/liquable/nemo/db/PreferenceDao;)Z

    move-result v0

    return v0
.end method

.method public saveAllAccounts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    iget-object v0, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/AccountDao;->saveAll(Ljava/util/List;)V

    .line 325
    return-void
.end method

.method public saveFriendData(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/friend/FriendDto;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "friendsFromServer":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/friend/FriendDto;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v9, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/liquable/nemo/model/friend/FriendDto;

    .line 330
    .local v11, "friendDto":Lcom/liquable/nemo/model/friend/FriendDto;
    invoke-virtual {v11}, Lcom/liquable/nemo/model/friend/FriendDto;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v8

    .line 332
    .local v8, "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    sget-object v5, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 333
    .local v5, "friendState":Lcom/liquable/nemo/friend/model/Account$FriendState;
    invoke-virtual {v11}, Lcom/liquable/nemo/model/friend/FriendDto;->getFriendState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {v11}, Lcom/liquable/nemo/model/friend/FriendDto;->getFriendState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/friend/model/Account$FriendState;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    .line 337
    :cond_0
    sget-object v10, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 338
    .local v10, "beforeBlockState":Lcom/liquable/nemo/friend/model/Account$FriendState;
    invoke-virtual {v11}, Lcom/liquable/nemo/model/friend/FriendDto;->getFriendStateBeforeBlock()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    invoke-virtual {v11}, Lcom/liquable/nemo/model/friend/FriendDto;->getFriendStateBeforeBlock()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/friend/model/Account$FriendState;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v10

    .line 342
    :cond_1
    new-instance v0, Lcom/liquable/nemo/friend/model/Account$Builder;

    invoke-virtual {v8}, Lcom/liquable/nemo/model/account/AccountDto;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {v8}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v8}, Lcom/liquable/nemo/model/account/AccountDto;->getLastUpdateTime()J

    move-result-wide v3

    .line 346
    invoke-virtual {v8}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/friend/model/Account$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/friend/model/Account$FriendState;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/liquable/nemo/friend/model/Account$Builder;->beforeBlockFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 347
    invoke-virtual {v8}, Lcom/liquable/nemo/model/account/AccountDto;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->phoneNumber(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 348
    invoke-virtual {v8}, Lcom/liquable/nemo/model/account/AccountDto;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->email(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {v8}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->iconExists(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v8}, Lcom/liquable/nemo/model/account/AccountDto;->isBroadcaster()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->isBroadcaster(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->lastSyncTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account$Builder;->build()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v7

    .line 353
    .local v7, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    .end local v5    # "friendState":Lcom/liquable/nemo/friend/model/Account$FriendState;
    .end local v7    # "account":Lcom/liquable/nemo/friend/model/Account;
    .end local v8    # "accountDto":Lcom/liquable/nemo/model/account/AccountDto;
    .end local v10    # "beforeBlockState":Lcom/liquable/nemo/friend/model/Account$FriendState;
    .end local v11    # "friendDto":Lcom/liquable/nemo/model/friend/FriendDto;
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    iget-object v0, v0, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    invoke-virtual {v0, v9}, Lcom/liquable/nemo/db/AccountDao;->saveAllWithoutUpdatingContacts(Ljava/util/List;)V

    .line 356
    return-object v9
.end method

.method public saveMultiChatGroups(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p2, "myUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/group/ChatGroupDto;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "chatGroupDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/group/ChatGroupDto;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/group/ChatGroupDto;

    .line 363
    .local v0, "chatGroupDto":Lcom/liquable/nemo/model/group/ChatGroupDto;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, p2}, Lcom/liquable/nemo/db/Backup;->createChatGroup(Lcom/liquable/nemo/model/group/ChatGroupDto;ZLjava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 365
    .end local v0    # "chatGroupDto":Lcom/liquable/nemo/model/group/ChatGroupDto;
    :cond_0
    return-object v1
.end method

.method public truncateNemoDb()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/liquable/nemo/db/Backup;->dao:Lcom/liquable/nemo/db/Dao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/Dao;->truncate()V

    .line 370
    return-void
.end method
