.class public Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "WallpaperSettingActivity.java"


# static fields
.field private static final CROP_IMAGE_CODE:I = 0x3


# instance fields
.field private chatGroupTopic:Ljava/lang/String;

.field private customize:Z

.field private fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

.field private isFileTransferServiceBound:Z

.field private originalWallpaperCode:Ljava/lang/String;

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private toastSetSuccess:Landroid/widget/Toast;

.field private wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

.field private wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

.field private wallpaperView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$1;-><init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->serviceConnection:Landroid/content/ServiceConnection;

    .line 75
    new-instance v0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$2;-><init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 106
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->originalWallpaperCode:Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->customize:Z

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Lcom/liquable/nemo/android/service/FileTransferInfo;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;Lcom/liquable/nemo/android/service/FileTransferInfo;)Lcom/liquable/nemo/android/service/FileTransferInfo;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/android/service/FileTransferInfo;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->fileTransferInfo:Lcom/liquable/nemo/android/service/FileTransferInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->customize:Z

    return v0
.end method

.method static synthetic access$202(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->customize:Z

    return p1
.end method

.method static synthetic access$300(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->saveSelectedWallpaperFile(Z)V

    return-void
.end method

.method private deletePreviousBackgroudFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "prevBgName"    # Ljava/lang/String;

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-static {p1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->isCustomize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-static {p1}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 125
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 126
    .local v0, "preFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private deleteTempFile()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->getTempWallpaperFile()Ljava/io/File;

    move-result-object v0

    .line 133
    .local v0, "tempWallpaperFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 136
    :cond_0
    return-void
.end method

.method private doBindService()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/android/service/FileTransferAndroidService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 142
    iput-boolean v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->isFileTransferServiceBound:Z

    .line 144
    return-void
.end method

.method private doUnbindService()V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->isFileTransferServiceBound:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->isFileTransferServiceBound:Z

    .line 151
    :cond_0
    return-void
.end method

.method public static getTempWallpaperFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "temp-wallpaper"

    invoke-static {v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private saveSelectedWallpaperFile(Z)V
    .locals 12
    .param p1, "customize"    # Z

    .prologue
    .line 275
    const-string/jumbo v0, ""

    .line 276
    .local v0, "bgFileName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 277
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "fileBaseName":Ljava/lang/String;
    invoke-static {v5}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->createLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v10

    sget-object v11, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 279
    invoke-virtual {v10, v11}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v2

    .line 281
    .local v2, "destFile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->getTempWallpaperFile()Ljava/io/File;

    move-result-object v8

    .line 282
    .local v8, "srcFile":Ljava/io/File;
    invoke-static {v8, v2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    iget-object v10, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v10, v2}, Lcom/liquable/nemo/widget/Wallpaper;->setImageDrawable(Ljava/io/File;)V

    .line 290
    move-object v0, v5

    .line 303
    .end local v2    # "destFile":Ljava/io/File;
    .end local v5    # "fileBaseName":Ljava/lang/String;
    .end local v8    # "srcFile":Ljava/io/File;
    :goto_0
    const/4 v6, 0x0

    .line 304
    .local v6, "prevBgName":Ljava/lang/String;
    iget-object v10, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->chatGroupTopic:Ljava/lang/String;

    invoke-static {v10}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 305
    sget-object v10, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v11, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->chatGroupTopic:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 307
    .local v1, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getBackgroundFileName()Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/group/model/ChatGroup;->setBackgroundFileName(Ljava/lang/String;)V

    .line 310
    sget-object v10, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v10, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->modifyChatGroupBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 316
    .end local v1    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_0
    :goto_1
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->setResult(I)V

    .line 317
    iget-object v10, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->toastSetSuccess:Landroid/widget/Toast;

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 318
    invoke-direct {p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->deleteTempFile()V

    .line 319
    invoke-direct {p0, v6}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->deletePreviousBackgroudFile(Ljava/lang/String;)V

    .line 320
    .end local v6    # "prevBgName":Ljava/lang/String;
    :goto_2
    return-void

    .line 283
    .restart local v2    # "destFile":Ljava/io/File;
    .restart local v5    # "fileBaseName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 284
    .local v3, "e":Ljava/io/IOException;
    const v10, 0x7f0d01c6

    .line 285
    invoke-virtual {p0, v10}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x0

    .line 284
    invoke-static {p0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 286
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 292
    .end local v2    # "destFile":Ljava/io/File;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fileBaseName":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    invoke-virtual {v10}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->getSelectedPosition()I

    move-result v7

    .line 293
    .local v7, "selectedPosition":I
    iget-object v10, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    invoke-virtual {v10}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;->getSelectedWallpaperData()Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    move-result-object v9

    .line 294
    .local v9, "wallpaperData":Lcom/liquable/nemo/setting/wallpaper/WallpaperData;
    if-nez v7, :cond_2

    .line 295
    iget-object v10, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    const v11, 0x7f02010d

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/widget/Wallpaper;->setImageResource(I)V

    .line 300
    :goto_3
    invoke-virtual {v9}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 297
    :cond_2
    invoke-virtual {v9}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->getLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v10

    sget-object v11, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v10, v11}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v4

    .line 298
    .local v4, "file":Ljava/io/File;
    iget-object v10, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v10, v4}, Lcom/liquable/nemo/widget/Wallpaper;->setImageDrawable(Ljava/io/File;)V

    goto :goto_3

    .line 313
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "selectedPosition":I
    .end local v9    # "wallpaperData":Lcom/liquable/nemo/setting/wallpaper/WallpaperData;
    .restart local v6    # "prevBgName":Ljava/lang/String;
    :cond_3
    sget-object v10, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v10}, Lcom/liquable/nemo/util/Pref;->getDefaultWallpaperFileName()Ljava/lang/String;

    move-result-object v6

    .line 314
    sget-object v10, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v10, v0}, Lcom/liquable/nemo/util/Pref;->saveDefaultWallpaperCode(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onDestroy()V
    .locals 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->customize:Z

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    invoke-interface {v0}, Lcom/liquable/nemo/analytics/IAnalyticsService;->changeWallpaperUsingCustomizedPhoto()V

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    invoke-direct {p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->doUnbindService()V

    .line 164
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 165
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->originalWallpaperCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->originalWallpaperCode:Ljava/lang/String;

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getDefaultWallpaperFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 159
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getDefaultWallpaperFileName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->changeWallpaperWithDownloaded(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onLoggedInActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 171
    if-nez p2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->customize:Z

    .line 177
    iget-boolean v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->customize:Z

    invoke-direct {p0, v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->saveSelectedWallpaperFile(Z)V

    goto :goto_0
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 184
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "ON_WALLPAPER_CLICK"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v0, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v9}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->chatGroupTopic:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d053e

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 192
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->setContentView(I)V

    .line 194
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getDefaultWallpaperFileName()Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "defaultWallpaperFileName":Ljava/lang/String;
    invoke-static {v8}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->isCustomize(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->customize:Z

    .line 197
    const v0, 0x7f080120

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/Wallpaper;

    iput-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    .line 198
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getDefaultWallpaperFileName()Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "selectedWallaperCode":Ljava/lang/String;
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->chatGroupTopic:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/Wallpaper;->loadUserDefaultBackground()V

    .line 210
    :cond_0
    :goto_0
    iput-object v8, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->originalWallpaperCode:Ljava/lang/String;

    .line 213
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperView:Landroid/widget/ListView;

    .line 214
    const v0, 0x7f0d0482

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->toastSetSuccess:Landroid/widget/Toast;

    .line 217
    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 218
    .local v10, "pickImageBtn":Landroid/widget/Button;
    new-instance v0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity$3;-><init>(Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    new-instance v0, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    .line 236
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    .line 237
    invoke-static {}, Lcom/liquable/nemo/setting/wallpaper/WallpaperData;->values()[Lcom/liquable/nemo/setting/wallpaper/WallpaperData;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 238
    invoke-static {p0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    .line 240
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaperAdapter:Lcom/liquable/nemo/setting/wallpaper/WallpaperAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 242
    invoke-direct {p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->doBindService()V

    .line 243
    return-void

    .line 203
    .end local v10    # "pickImageBtn":Landroid/widget/Button;
    :cond_1
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->chatGroupTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v7

    .line 204
    .local v7, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v0, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v0, v7}, Lcom/liquable/nemo/widget/Wallpaper;->loadChatGroupBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 205
    invoke-virtual {v7}, Lcom/liquable/nemo/group/model/ChatGroup;->getBackgroundFileName()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "backgroundFileName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 207
    move-object v5, v6

    goto :goto_0
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->chatGroupTopic:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 252
    :goto_0
    return v1

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 251
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0f0013

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 252
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 257
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 269
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    .line 271
    :goto_0
    return v1

    .line 259
    :pswitch_0
    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->chatGroupTopic:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v2, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->chatGroupTopic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 261
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_0

    .line 262
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/group/model/ChatGroup;->setBackgroundFileName(Ljava/lang/String;)V

    .line 263
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->modifyChatGroupBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 264
    iget-object v1, p0, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;->wallpaper:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v1}, Lcom/liquable/nemo/widget/Wallpaper;->loadUserDefaultBackground()V

    .line 271
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x7f080381
        :pswitch_0
    .end packed-switch
.end method
