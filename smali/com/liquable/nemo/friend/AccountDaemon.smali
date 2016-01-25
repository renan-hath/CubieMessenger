.class public Lcom/liquable/nemo/friend/AccountDaemon;
.super Ljava/lang/Object;
.source "AccountDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/AccountDaemon$FriendEventBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final SYNC_CONTACT_COUNT_MAX:I = 0x7d0

.field private static final SYNC_CONTACT_COUNT_PER_BATCH:I = 0xc8

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/liquable/nemo/friend/AccountDaemon;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/friend/AccountDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/liquable/nemo/friend/AccountDaemon;->context:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/liquable/nemo/friend/AccountDaemon$FriendEventBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/friend/AccountDaemon$FriendEventBroadcastReceiver;-><init>(Lcom/liquable/nemo/friend/AccountDaemon;Lcom/liquable/nemo/friend/AccountDaemon$1;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/friend/AccountDaemon;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/AccountDaemon;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/liquable/nemo/friend/AccountDaemon;->processHasNewOneWayFriend()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/liquable/nemo/friend/AccountDaemon;->lambda$updateSpacePublicProfile$18(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljava/lang/Exception;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 1

    invoke-static {p0}, Lcom/liquable/nemo/friend/AccountDaemon;->lambda$repairRpcAccessTokenIfRequired$19(Ljava/lang/Exception;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 0

    invoke-static {p0}, Lcom/liquable/nemo/friend/AccountDaemon;->lambda$repairRpcAccessTokenIfRequired$20(Lcom/liquable/nemo/model/account/ProfileDto;)V

    return-void
.end method

.method private convertContactInfosToFriends(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/ContactInfo;",
            ">;)",
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
    .line 82
    .local p1, "contactInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->saveAllContactInfos(Ljava/util/Collection;)V

    .line 83
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 84
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getCountryCodeIso3166()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->importFromContacts(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$repairRpcAccessTokenIfRequired$19(Ljava/lang/Exception;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$repairRpcAccessTokenIfRequired$20(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 2
    .param p0, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 260
    if-nez p0, :cond_0

    .line 261
    sget-object v0, Lcom/liquable/nemo/friend/AccountDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "could not fetch profileDto, ignore"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;)V

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {p0}, Lcom/liquable/nemo/model/account/ProfileDto;->getRpcAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setRpcAccessToken(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/liquable/nemo/friend/AccountDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v1, "RpcAccessToken fetch success"

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static synthetic lambda$updateSpacePublicProfile$18(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->spacePublicProfileSetting(Z)V

    .line 247
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/util/Pref;->setSpacePublicProfile(Ljava/lang/Boolean;)V

    .line 248
    return-void
.end method

.method private processAndNotifyNewFriends(Ljava/util/List;)V
    .locals 2
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
    .line 207
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->notifyManager:Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewFriendFromImportContactsOnStatusBar(Ljava/util/List;)V

    .line 208
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->noticeManager:Lcom/liquable/nemo/notice/model/NoticeManager;

    sget-object v1, Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;->IMPORT_FROM_CONTACTS:Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;

    invoke-virtual {v0, p1, v1}, Lcom/liquable/nemo/notice/model/NoticeManager;->insertConfirmFriendNotices(Ljava/util/List;Lcom/liquable/nemo/notice/ConfirmFriendNotice$ConfirmFriendType;)V

    .line 210
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->broadcastService:Lcom/liquable/nemo/android/BroadcastManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/BroadcastManager;->broadcastFriendImported()V

    .line 212
    :try_start_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/model/FriendManager;->sendBecomeOneWayFriendMessages(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/liquable/nemo/client/AsyncException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private processHasNewOneWayFriend()V
    .locals 2

    .prologue
    .line 219
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isAutoScheduleSyncContactsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lcom/liquable/nemo/friend/AccountDaemon$1;

    iget-object v1, p0, Lcom/liquable/nemo/friend/AccountDaemon;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/friend/AccountDaemon$1;-><init>(Lcom/liquable/nemo/friend/AccountDaemon;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 235
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/AccountDaemon$1;->execute([Ljava/lang/Object;)V

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public findGoogleProfileIcon()Ljava/io/File;
    .locals 17

    .prologue
    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 90
    const/4 v13, 0x0

    .line 146
    :cond_0
    :goto_0
    return-object v13

    .line 93
    :cond_1
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "photo_uri"

    aput-object v2, v3, v1

    .line 96
    .local v3, "projection":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 98
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/liquable/nemo/friend/AccountDaemon;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 99
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 101
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    const-string/jumbo v1, "photo_uri"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 103
    .local v8, "columnIndex":I
    if-gez v8, :cond_2

    .line 104
    const/4 v13, 0x0

    .line 145
    if-eqz v9, :cond_0

    .line 146
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 106
    :cond_2
    :try_start_1
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, "photoUri":Ljava/lang/String;
    invoke-static {v12}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    const/4 v13, 0x0

    .line 145
    if-eqz v9, :cond_0

    .line 146
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 112
    :cond_3
    :try_start_2
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile()Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 113
    .local v13, "tempFile":Ljava/io/File;
    const/4 v11, 0x0

    .line 114
    .local v11, "inputStream":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 116
    .local v14, "tempOutputStream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 117
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/liquable/nemo/friend/AccountDaemon;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v11

    .line 118
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    .end local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    .local v15, "tempOutputStream":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-static {v11, v15}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 121
    const/16 v1, 0xfa

    invoke-static {v13, v1}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndCropAsSquare(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 124
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_4

    .line 125
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 126
    const/4 v13, 0x0

    .line 139
    .end local v13    # "tempFile":Ljava/io/File;
    :try_start_5
    invoke-static {v11}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 140
    invoke-static {v15}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    if-eqz v9, :cond_0

    .line 146
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 129
    .restart local v13    # "tempFile":Ljava/io/File;
    :cond_4
    :try_start_6
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v1, v7, v13}, Lcom/liquable/nemo/util/ImageUtils;->compressBitmapTo(Landroid/graphics/Bitmap$CompressFormat;Landroid/graphics/Bitmap;Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 139
    :try_start_7
    invoke-static {v11}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 140
    invoke-static {v15}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 145
    if-eqz v9, :cond_0

    .line 146
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 132
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v15    # "tempOutputStream":Ljava/io/FileOutputStream;
    .end local v16    # "uri":Landroid/net/Uri;
    .restart local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 133
    .local v10, "e":Ljava/io/IOException;
    :goto_1
    :try_start_8
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 134
    sget-object v1, Lcom/liquable/nemo/friend/AccountDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "IOException when preload Google profile icon, ignore"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 139
    :try_start_9
    invoke-static {v11}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 140
    invoke-static {v14}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 143
    .end local v8    # "columnIndex":I
    .end local v10    # "e":Ljava/io/IOException;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "photoUri":Ljava/lang/String;
    .end local v13    # "tempFile":Ljava/io/File;
    .end local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    :cond_5
    :goto_2
    const/4 v13, 0x0

    .line 145
    if-eqz v9, :cond_0

    .line 146
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 135
    .restart local v8    # "columnIndex":I
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "photoUri":Ljava/lang/String;
    .restart local v13    # "tempFile":Ljava/io/File;
    .restart local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    .line 136
    .local v10, "e":Ljava/lang/RuntimeException;
    :goto_3
    :try_start_a
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 137
    sget-object v1, Lcom/liquable/nemo/friend/AccountDaemon;->logger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "RuntimeException when preload Google profile icon, ignore"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->warn(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 139
    :try_start_b
    invoke-static {v11}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 140
    invoke-static {v14}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .line 145
    .end local v8    # "columnIndex":I
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .end local v12    # "photoUri":Ljava/lang/String;
    .end local v13    # "tempFile":Ljava/io/File;
    .end local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 146
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 139
    .restart local v8    # "columnIndex":I
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "photoUri":Ljava/lang/String;
    .restart local v13    # "tempFile":Ljava/io/File;
    .restart local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    :goto_4
    :try_start_c
    invoke-static {v11}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 140
    invoke-static {v14}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 139
    .end local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "tempOutputStream":Ljava/io/FileOutputStream;
    .restart local v16    # "uri":Landroid/net/Uri;
    :catchall_2
    move-exception v1

    move-object v14, v15

    .end local v15    # "tempOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 135
    .end local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "tempOutputStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    move-object v14, v15

    .end local v15    # "tempOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 132
    .end local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    .restart local v15    # "tempOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    move-object v14, v15

    .end local v15    # "tempOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "tempOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public findGoogleProfileName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    move-object v0, v7

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 157
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "display_name"

    aput-object v1, v2, v0

    .line 160
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 162
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/AccountDaemon;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 163
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 165
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const-string/jumbo v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 169
    if-eqz v6, :cond_0

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 169
    :cond_2
    if-eqz v6, :cond_3

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    .line 173
    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 170
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public findMyProfile()Lcom/liquable/future/IFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/IFuture",
            "<",
            "Lcom/liquable/nemo/model/account/ProfileDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/client/service/AccountService;->findProfile(Ljava/lang/String;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public importContacts(Z)Ljava/util/List;
    .locals 7
    .param p1, "onlyModifiedContacts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
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
    const/16 v6, 0x7d0

    .line 177
    iget-object v5, p0, Lcom/liquable/nemo/friend/AccountDaemon;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/liquable/nemo/android/provider/Contacts;->listContactInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 179
    .local v3, "contactInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    if-eqz p1, :cond_1

    .line 180
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v5, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->listNewContactInfos(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v3    # "contactInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    .local v4, "contactInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    move-object v3, v4

    .line 186
    .end local v4    # "contactInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    .restart local v3    # "contactInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 187
    invoke-static {v3}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 188
    const/4 v5, 0x0

    invoke-interface {v3, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 191
    :cond_0
    const/16 v5, 0xc8

    invoke-static {v3, v5}, Lcom/liquable/util/CollectionsLean;->partition(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 194
    .local v2, "batches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 196
    .local v1, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    invoke-direct {p0, v1}, Lcom/liquable/nemo/friend/AccountDaemon;->convertContactInfosToFriends(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 183
    .end local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    .end local v1    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;"
    .end local v2    # "batches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;>;"
    :cond_1
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/FriendManager;->deleteAllContactInfos()V

    goto :goto_0

    .line 199
    .restart local v0    # "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    .restart local v2    # "batches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/liquable/nemo/friend/model/ContactInfo;>;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 200
    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/AccountDaemon;->processAndNotifyNewFriends(Ljava/util/List;)V

    .line 203
    :cond_3
    return-object v0
.end method

.method public isPublicProfile(Ljava/lang/String;)Lcom/liquable/future/IFuture;
    .locals 1
    .param p1, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/client/service/AccountService;->isPublicProfile(Ljava/lang/String;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public prepareEmailConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/future/IFuture;
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    .line 272
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {v0, p1, p2, v1}, Lcom/liquable/nemo/client/service/AccountService;->prepareEmailConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method

.method public repairRpcAccessTokenIfRequired()Lcom/liquable/future/IFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->findRpcAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/liquable/future/Futures;->value(Ljava/lang/Object;)Lcom/liquable/future/IFuture;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/AccountDaemon;->findMyProfile()Lcom/liquable/future/IFuture;

    move-result-object v0

    const-class v1, Ljava/lang/Exception;

    invoke-static {}, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$2;->lambdaFactory$()Lcom/liquable/future/Function;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/liquable/future/IFuture;->mapError(Ljava/lang/Class;Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {}, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$3;->lambdaFactory$()Lcom/liquable/future/Consumer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public updateSpacePublicProfile(Ljava/lang/Boolean;)Lcom/liquable/future/IFuture;
    .locals 2
    .param p1, "isChecked"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->accountService:Lcom/liquable/nemo/client/service/AccountService;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/liquable/nemo/client/service/AccountService;->updatePublicProfile(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/liquable/future/IFuture;

    move-result-object v0

    invoke-static {p1}, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$1;->lambdaFactory$(Ljava/lang/Boolean;)Ljava/lang/Runnable;

    move-result-object v1

    .line 245
    invoke-interface {v0, v1}, Lcom/liquable/future/IFuture;->run(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method
