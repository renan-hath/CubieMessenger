.class public Lcom/liquable/nemo/android/NotifyManager;
.super Ljava/lang/Object;
.source "NotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;,
        Lcom/liquable/nemo/android/NotifyManager$NotificationType;
    }
.end annotation


# static fields
.field public static final COMFIRM_FRIEND_NOTIFICATION:Ljava/lang/String; = "COMFIRM_FRIEND_NOTIFICATION"

.field public static final FRIEND_INVITATION_NOTIFICATION:Ljava/lang/String; = "FRIEND_INVITATION_NOTIFICATION"

.field private static final INBOX_STYLE_MAX_LINES:I = 0x5

.field private static final THROTTLE_DURATION:J = 0x7d0L

.field static debugLogger:Lcom/liquable/nemo/util/Logger;

.field private static instance:Lcom/liquable/nemo/android/NotifyManager;


# instance fields
.field private final context:Landroid/content/Context;

.field private downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

.field private downloadWallerpaperBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private inboxLines:I

.field private inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

.field private largeIconHeight:I

.field private largeIconWidth:I

.field private lastMessageId:Ljava/lang/String;

.field private lastNotifyTime:J

.field private final newConfirmFriendIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final newInviteFriendIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final newMsgChatRoomTopics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private ringtone:Landroid/media/Ringtone;

.field private final sendFailedTopics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const-class v0, Lcom/liquable/nemo/android/NotifyManager;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x40

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/liquable/nemo/android/NotifyManager;->lastNotifyTime:J

    .line 147
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 148
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgChatRoomTopics:Ljava/util/Set;

    .line 149
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->newInviteFriendIds:Ljava/util/Set;

    .line 150
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->newConfirmFriendIds:Ljava/util/Set;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    .line 162
    iput-object p1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 163
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    .line 164
    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_STICKER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 165
    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_WALLPAPER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 175
    invoke-static {p1, v3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconWidth:I

    .line 176
    invoke-static {p1, v3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconHeight:I

    .line 179
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050005

    .line 181
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconWidth:I

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050006

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/liquable/nemo/android/NotifyManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "get android.r.dimen.notification_large_icon_width failed"

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private cancelNotificationSafely(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/liquable/nemo/android/NotifyManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    const-string/jumbo v2, "setNotificationVisible: cancel notificationManager npe"

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 258
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0204b5

    .line 259
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, -0xff0100

    const/16 v2, 0x12c

    const/16 v3, 0x3e8

    .line 260
    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private decorateDownloadFailedBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    const/4 v3, 0x0

    .line 264
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x108008a

    .line 266
    invoke-direct {p0, v1, v3}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconFromResource(IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 267
    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private getChatGroupIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "chatGroupTopic"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 271
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-class v3, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "CHAT_GROUP_TOPIC"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, p2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 278
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/liquable/nemo/android/NotifyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager;->instance:Lcom/liquable/nemo/android/NotifyManager;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/android/NotifyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/liquable/nemo/android/NotifyManager;->instance:Lcom/liquable/nemo/android/NotifyManager;

    .line 117
    :cond_0
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager;->instance:Lcom/liquable/nemo/android/NotifyManager;

    return-object v0
.end method

.method private getLargeIconDefault()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 294
    const v0, 0x7f0204b3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconFromResource(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getLargeIconForChatGroup(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "chatGroupId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 299
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v4, p1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    .line 300
    .local v2, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0202a7

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconWidth:I

    iget v6, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconHeight:I

    invoke-static {v4, v5, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 318
    :goto_0
    return-object v4

    .line 303
    :cond_1
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v4

    if-nez v4, :cond_3

    .line 304
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v4, v5}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v3

    .line 305
    .local v3, "iconFile":Ljava/io/File;
    invoke-static {v3}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 306
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 307
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 308
    iget v4, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconWidth:I

    iget v5, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconHeight:I

    invoke-static {v1, v4, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 312
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0204b2

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconWidth:I

    iget v6, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconHeight:I

    invoke-static {v4, v5, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 314
    .end local v3    # "iconFile":Ljava/io/File;
    :cond_3
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 315
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 316
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconForFriend(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 318
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_4
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0204b4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget v5, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconWidth:I

    iget v6, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconHeight:I

    invoke-static {v4, v5, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method private getLargeIconForFriend(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 323
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account;->createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 324
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v1

    .line 326
    .local v1, "iconFile":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 327
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 329
    iget v2, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconWidth:I

    iget v3, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconHeight:I

    invoke-static {v0, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 332
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204b4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconWidth:I

    iget v4, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconHeight:I

    invoke-static {v2, v3, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private getLargeIconForSticker(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 338
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v1, p1}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 339
    .local v0, "keyPathFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 343
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconWidth:I

    iget v3, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconHeight:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method private getLargeIconFromResource(IZ)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "resourceId"    # I
    .param p2, "needToScale"    # Z

    .prologue
    .line 350
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 352
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 353
    iget v1, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconWidth:I

    iget v2, p0, Lcom/liquable/nemo/android/NotifyManager;->largeIconHeight:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 355
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-object v0
.end method

.method private getLastChatGroupIntent(Lcom/liquable/nemo/message/model/IDomainMessage;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 359
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-class v3, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 360
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "CHAT_GROUP_TOPIC"

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 362
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 366
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private getMainChatGroupListIntent()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 370
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-class v3, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "SHOW_CHATGROUP_LIST"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 372
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 373
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 378
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private getMainFriendListIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 382
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-class v3, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "FROM"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 385
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 390
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private getNewMsgNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 3

    .prologue
    .line 394
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 396
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 397
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method private varargs getParamResults([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 401
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 402
    .local v2, "paramResults":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 403
    aget-object v1, p1, v0

    .line 404
    .local v1, "param":Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 405
    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "param":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 402
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    .restart local v1    # "param":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 410
    .end local v1    # "param":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method private getViewNewFriendProfileIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "friendUid"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/liquable/nemo/profile/ViewFriendProfileActivity;->createIntentFromNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 416
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 417
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 422
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private getViewNewWaitConfirmFriendProfileIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "friendUid"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/liquable/nemo/profile/ViewWaitConfirmFriendProfileActivity;->createIntentFromNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 428
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 429
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 434
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private isCallStateIdle()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 438
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 439
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinNotificationTime()Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1156
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isNotificationTimeEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1157
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 1158
    .local v9, "now":Ljava/util/Date;
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1159
    .local v6, "calendar":Ljava/util/Calendar;
    invoke-virtual {v6, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1160
    const/16 v2, 0xb

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1161
    .local v4, "hour":I
    const/16 v2, 0xc

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1163
    .local v5, "minute":I
    new-instance v0, Ljava/util/Date;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    .line 1165
    .local v0, "date":Ljava/util/Date;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getNotificationStartTime()Ljava/util/Date;

    move-result-object v8

    .line 1166
    .local v8, "notificationStartTime":Ljava/util/Date;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getNotificationEndTime()Ljava/util/Date;

    move-result-object v7

    .line 1167
    .local v7, "notificationEndTime":Ljava/util/Date;
    invoke-virtual {v0, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v7}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1171
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    .end local v6    # "calendar":Ljava/util/Calendar;
    .end local v7    # "notificationEndTime":Ljava/util/Date;
    .end local v8    # "notificationStartTime":Ljava/util/Date;
    .end local v9    # "now":Ljava/util/Date;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private notifyNewNotices(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/INotice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/INotice;>;"
    const/4 v11, 0x0

    .line 970
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 972
    .local v6, "numberOfNewNotices":I
    iget-object v8, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v9, 0x7f0d0387

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 973
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    .line 972
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 974
    .local v7, "title":Ljava/lang/String;
    add-int/lit8 v8, v6, -0x1

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/notice/BaseNotice;

    .line 975
    .local v4, "latestNotice":Lcom/liquable/nemo/notice/BaseNotice;
    iget-object v8, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v4, v8}, Lcom/liquable/nemo/notice/BaseNotice;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 977
    .local v1, "content":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-class v9, Lcom/liquable/nemo/ShowNoticeActivity;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 978
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v8, 0x14000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 979
    iget-object v8, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/high16 v9, 0x8000000

    invoke-static {v8, v11, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 984
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v9, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 985
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 986
    invoke-virtual {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 987
    invoke-virtual {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 988
    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 989
    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 990
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 991
    invoke-virtual {v8, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 993
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 994
    .local v5, "notification":Landroid/app/Notification;
    iput v6, v5, Landroid/app/Notification;->number:I

    .line 995
    iget-object v8, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v9, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->SYSTEM_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v9}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v9

    invoke-virtual {v8, v9, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 996
    return-void
.end method

.method private notifyVersionUpgrade(Lcom/liquable/nemo/notice/VersionNotice;)V
    .locals 7
    .param p1, "versionNotice"    # Lcom/liquable/nemo/notice/VersionNotice;

    .prologue
    .line 1111
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/liquable/nemo/notice/VersionNotice;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 1113
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/liquable/nemo/util/ExternalIntents;->createGooglePlayIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1115
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1120
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1122
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1123
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1124
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1125
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1127
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v5, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->VERSION_UPGRADE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v5}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1128
    return-void
.end method

.method private setBigPictureStyle(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/liquable/nemo/message/model/IDomainMessage;)Z
    .locals 8
    .param p1, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1245
    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-eq v6, v5, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return v4

    .line 1249
    :cond_1
    instance-of v6, p2, Lcom/liquable/nemo/message/model/IMediaMessage;

    if-eqz v6, :cond_0

    move-object v1, p2

    .line 1253
    check-cast v1, Lcom/liquable/nemo/message/model/IMediaMessage;

    .line 1254
    .local v1, "mediaMessage":Lcom/liquable/nemo/message/model/IMediaMessage;
    invoke-interface {v1}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v6

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v6, v7}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 1255
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1259
    instance-of v6, p2, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v6, :cond_2

    .line 1260
    new-instance v4, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v4, p1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    const v6, -0x121213

    .line 1261
    invoke-static {v0, v6}, Lcom/liquable/nemo/util/ImageUtils;->createBitmapWithBackground(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v3

    .line 1263
    .local v3, "picStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move v4, v5

    .line 1264
    goto :goto_0

    .line 1267
    .end local v3    # "picStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    :cond_2
    instance-of v6, p2, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v6, :cond_0

    .line 1268
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 1270
    invoke-static {v7}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v7

    .line 1268
    invoke-static {v6, v4, v7}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;II)Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    .line 1271
    .local v2, "optBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1274
    new-instance v6, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v6, p1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1275
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v4}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v3

    .line 1276
    .restart local v3    # "picStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move v4, v5

    .line 1277
    goto :goto_0
.end method

.method private setMultiChatGroupsStyle(Landroid/support/v4/app/NotificationCompat$Builder;ILcom/liquable/nemo/message/model/IDomainMessage;[Ljava/lang/String;)V
    .locals 11
    .param p1, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "count"    # I
    .param p3, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .param p4, "paramResults"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1288
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgChatRoomTopics:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1290
    .local v4, "topics":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 1291
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0204b3

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 1293
    invoke-interface {p3, v6, p4}, Lcom/liquable/nemo/message/model/IDomainMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v7, 0x7f0d0386

    .line 1294
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1295
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    .line 1296
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 1294
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 1297
    invoke-interface {p3, v6, p4}, Lcom/liquable/nemo/message/model/IDomainMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 1298
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getMainChatGroupListIntent()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1299
    const/4 v1, 0x1

    .line 1300
    .local v1, "requestCode":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1301
    .local v3, "topic":Ljava/lang/String;
    sget-object v6, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v6, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 1302
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_0

    .line 1305
    const v6, 0x7f0204b1

    .line 1306
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v2, v1, 0x1

    .line 1307
    .end local v1    # "requestCode":I
    .local v2, "requestCode":I
    invoke-direct {p0, v3, v1}, Lcom/liquable/nemo/android/NotifyManager;->getChatGroupIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 1305
    invoke-virtual {p1, v6, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move v1, v2

    .line 1308
    .end local v2    # "requestCode":I
    .restart local v1    # "requestCode":I
    goto :goto_0

    .line 1310
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v3    # "topic":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    if-eqz v5, :cond_2

    .line 1312
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_3

    .line 1313
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-interface {p3, v6, p4}, Lcom/liquable/nemo/message/model/IDomainMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1314
    iget v5, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxLines:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxLines:I

    .line 1319
    :goto_1
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {p1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1321
    :cond_2
    return-void

    .line 1316
    :cond_3
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v7, 0x7f0d0385

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1317
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    iget v9, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxLines:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    .line 1316
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_1
.end method

.method private setSingleChatGroupStyle(Landroid/support/v4/app/NotificationCompat$Builder;ILcom/liquable/nemo/message/model/IDomainMessage;[Ljava/lang/String;)V
    .locals 6
    .param p1, "notificationBuilder"    # Landroid/support/v4/app/NotificationCompat$Builder;
    .param p2, "count"    # I
    .param p3, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .param p4, "paramResults"    # [Ljava/lang/String;

    .prologue
    .line 1327
    .line 1328
    invoke-interface {p3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconForChatGroup(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 1329
    invoke-interface {p3, v1, p4}, Lcom/liquable/nemo/message/model/IDomainMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    .line 1330
    invoke-interface {p3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    .line 1331
    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 1330
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 1332
    invoke-interface {p3, v1, p4}, Lcom/liquable/nemo/message/model/IDomainMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1333
    invoke-direct {p0, p3}, Lcom/liquable/nemo/android/NotifyManager;->getLastChatGroupIntent(Lcom/liquable/nemo/message/model/IDomainMessage;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1334
    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1336
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 1339
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-interface {p3, v1, p4}, Lcom/liquable/nemo/message/model/IDomainMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1340
    iget v0, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxLines:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxLines:I

    .line 1347
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/liquable/nemo/android/NotifyManager;->setBigPictureStyle(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1355
    :cond_1
    :goto_1
    return-void

    .line 1342
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v2, 0x7f0d0385

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1343
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxLines:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1342
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_0

    .line 1351
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    if-eqz v0, :cond_1

    .line 1353
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method

.method private setStickerDownloadInbox(Lcom/liquable/nemo/model/sticker/StickerPackageDto;)V
    .locals 11
    .param p1, "packageDto"    # Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .prologue
    const v10, 0x7f0d0197

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1358
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/sticker/model/StickerManager;->getDownloadingStickerTitles()Ljava/util/List;

    move-result-object v3

    .line 1359
    .local v3, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_2

    .line 1360
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 1361
    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 1362
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1361
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1363
    new-instance v4, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    invoke-virtual {v5}, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 1364
    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 1365
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    .line 1364
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1363
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v1

    .line 1366
    .local v1, "style":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    const/4 v0, 0x0

    .line 1367
    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1368
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1369
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 1370
    add-int/lit8 v0, v0, 0x1

    .line 1371
    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    .line 1379
    .end local v0    # "i":I
    .end local v1    # "style":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1377
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private setStickerDownloadLargeIcon(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageDto"    # Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .param p2, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 1384
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->getCurrentSticker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1385
    invoke-direct {p0, p2}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconForSticker(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1386
    .local v0, "largeIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1388
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->setCurrentSticker(Ljava/lang/String;)V

    .line 1391
    .end local v0    # "largeIcon":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private showContent()Z
    .locals 1

    .prologue
    .line 1394
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isNotificationShowContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    invoke-static {}, Lcom/liquable/nemo/setting/PasscodeLockManager;->isNotificationShowContent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelAllNoticeNotification()V
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->SYSTEM_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 210
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->PURCHASED_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 211
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->REACTIVATION_STICKER_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 212
    invoke-virtual {p0}, Lcom/liquable/nemo/android/NotifyManager;->cancelFriendInviteNotification()V

    .line 213
    invoke-virtual {p0}, Lcom/liquable/nemo/android/NotifyManager;->cancelConfirmFriendNotification()V

    .line 214
    return-void
.end method

.method public cancelConfirmFriendNotification()V
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CONFIRM_FRIEND:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 218
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->newConfirmFriendIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 219
    return-void
.end method

.method public cancelFriendInviteNotification()V
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->FRIEND_INVITE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 223
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->newInviteFriendIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 224
    return-void
.end method

.method public cancelMessageSendFailedNotification()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    return-void
.end method

.method public cancelMessageSendFailedNotification(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->MSG_SEND_FAILED:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/android/NotifyManager;->notifyMessageSendFailed()V

    goto :goto_0
.end method

.method public cancelNewMsgNotification()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->clear(Landroid/content/Context;)V

    .line 241
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->NEW_MESSAGE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 242
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 243
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgChatRoomTopics:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 244
    iput v1, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxLines:I

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 246
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->lastMessageId:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public cancelShareDetectedNewExternalImage()V
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DETECTED_NEW_PICTURE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 251
    return-void
.end method

.method public cancelVoipNotification()V
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->VOIP:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 255
    return-void
.end method

.method public getCubieHeadNotification()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 282
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v3, 0x7f0d0156

    .line 283
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 284
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 285
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 286
    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, -0x2

    .line 287
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f0204b5

    .line 288
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 290
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CUBIE_HEAD:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public notifyAdwaysCampaignNoticeOnStatusBar(Lcom/liquable/nemo/notice/AdwaysCampaignNotice;)V
    .locals 7
    .param p1, "notice"    # Lcom/liquable/nemo/notice/AdwaysCampaignNotice;

    .prologue
    .line 447
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/liquable/nemo/notice/AdwaysCampaignNotice;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 449
    .local v3, "title":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-class v5, Lcom/liquable/nemo/ShowNoticeActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 450
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x14000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 456
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 458
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 459
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 460
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 461
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 463
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v5, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ADWAYS_CAMPAIGN_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v5}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 464
    return-void
.end method

.method public notifyChannelSubscription(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 9
    .param p1, "channelAccount"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    const v8, 0x7f0d0116

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 467
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 468
    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 470
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->showContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/Object;

    .line 472
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 471
    invoke-virtual {v2, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/Object;

    .line 474
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 473
    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 475
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconForFriend(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 476
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/NotifyManager;->getViewNewFriendProfileIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 484
    :goto_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 492
    :goto_1
    return-void

    .line 478
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v3, 0x7f0d0074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v4, 0x7f0d04ec

    .line 479
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    .line 480
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 479
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string/jumbo v3, "COMFIRM_FRIEND_NOTIFICATION"

    .line 481
    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/NotifyManager;->getMainFriendListIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 488
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 489
    .local v1, "notification":Landroid/app/Notification;
    iput v6, v1, Landroid/app/Notification;->number:I

    .line 490
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v3, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CONFIRM_CHANNEL_SUBSCRIPTION:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v3}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method

.method public notifyChannelUnsubscription(Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 8
    .param p1, "channelUnsubscribeMessage"    # Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;
    .param p2, "channelAccount"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 496
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 497
    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 499
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->showContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    new-array v3, v6, [Ljava/lang/String;

    .line 501
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 500
    invoke-virtual {p1, v2, v3}, Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    new-array v4, v6, [Ljava/lang/String;

    .line 503
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 502
    invoke-virtual {p1, v3, v4}, Lcom/liquable/nemo/message/model/ChannelUnsubscribeMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 504
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconForFriend(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string/jumbo v3, "COMFIRM_FRIEND_NOTIFICATION"

    .line 505
    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/NotifyManager;->getMainFriendListIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 513
    :goto_0
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 521
    :goto_1
    return-void

    .line 507
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v3, 0x7f0d0074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v4, 0x7f0d04ec

    .line 508
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    .line 509
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 508
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string/jumbo v3, "COMFIRM_FRIEND_NOTIFICATION"

    .line 510
    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/NotifyManager;->getMainFriendListIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 517
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 518
    .local v1, "notification":Landroid/app/Notification;
    iput v6, v1, Landroid/app/Notification;->number:I

    .line 519
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v3, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CONFIRM_CHANNEL_SUBSCRIPTION:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v3}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method

.method public notifyDownloadStickerComplete()V
    .locals 3

    .prologue
    .line 524
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDownloadStickerComplete: getNumberOfDownloadingStickers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    .line 525
    invoke-virtual {v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->getNumberOfDownloadingStickers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 527
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getNumberOfDownloadingStickers()I

    move-result v0

    if-nez v0, :cond_0

    .line 528
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_STICKER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    .line 531
    :cond_0
    return-void
.end method

.method public notifyDownloadStickerFailed(Lcom/liquable/nemo/model/sticker/StickerPackageDto;)V
    .locals 5
    .param p1, "packageDto"    # Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .prologue
    const v4, 0x7f0d0196

    .line 534
    sget-object v1, Lcom/liquable/nemo/android/NotifyManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyDownloadStickerFailed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 536
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/liquable/nemo/android/NotifyManager;->decorateDownloadFailedBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 537
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 538
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 540
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_STICKER_FAIL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 541
    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_STICKER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    .line 543
    return-void
.end method

.method public notifyDownloadStickerProgress(Lcom/liquable/nemo/model/sticker/StickerPackageDto;IILjava/lang/String;)V
    .locals 4
    .param p1, "packageDto"    # Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .param p2, "max"    # I
    .param p3, "progress"    # I
    .param p4, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    .line 549
    sget-object v1, Lcom/liquable/nemo/android/NotifyManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyDownloadStickerProgress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 550
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    if-nez v1, :cond_0

    .line 556
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/android/NotifyManager;->notifyDownloadStickerStart(Lcom/liquable/nemo/model/sticker/StickerPackageDto;IILjava/lang/String;)V

    .line 570
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 561
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 562
    invoke-virtual {v1, p2, p3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 564
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/NotifyManager;->setStickerDownloadInbox(Lcom/liquable/nemo/model/sticker/StickerPackageDto;)V

    .line 565
    invoke-direct {p0, p1, p4}, Lcom/liquable/nemo/android/NotifyManager;->setStickerDownloadLargeIcon(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 568
    .local v0, "notification":Landroid/app/Notification;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v1}, Lcom/liquable/nemo/sticker/model/StickerManager;->getNumberOfDownloadingStickers()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 569
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_STICKER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public notifyDownloadStickerStart(Lcom/liquable/nemo/model/sticker/StickerPackageDto;IILjava/lang/String;)V
    .locals 5
    .param p1, "packageDto"    # Lcom/liquable/nemo/model/sticker/StickerPackageDto;
    .param p2, "max"    # I
    .param p3, "progress"    # I
    .param p4, "thumbnailPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 576
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDownloadStickerStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 577
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    new-instance v1, Landroid/support/v4/app/NotificationWithProgressBarBuilder;

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationWithProgressBarBuilder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 586
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f0204b5

    .line 587
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 589
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 590
    invoke-virtual {v1, p2, p3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 591
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 592
    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;-><init>(Lcom/liquable/nemo/android/NotifyManager;Landroid/support/v4/app/NotificationCompat$Builder;)V

    iput-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    .line 593
    invoke-direct {p0, p1, p4}, Lcom/liquable/nemo/android/NotifyManager;->setStickerDownloadLargeIcon(Lcom/liquable/nemo/model/sticker/StickerPackageDto;Ljava/lang/String;)V

    .line 596
    :cond_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/NotifyManager;->setStickerDownloadInbox(Lcom/liquable/nemo/model/sticker/StickerPackageDto;)V

    .line 598
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_STICKER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadStickerBuilder:Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;

    .line 599
    invoke-virtual {v2}, Lcom/liquable/nemo/android/NotifyManager$DownloadStickerNotification;->getBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 598
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 600
    return-void
.end method

.method public notifyDownloadWallpaperComplete()V
    .locals 1

    .prologue
    .line 603
    sget-object v0, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_WALLPAPER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadWallerpaperBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 605
    return-void
.end method

.method public notifyDownloadWallpaperFailed()V
    .locals 4

    .prologue
    const v3, 0x7f0d0199

    .line 608
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v1}, Lcom/liquable/nemo/android/NotifyManager;->decorateDownloadFailedBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 609
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 610
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 612
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_WALLPAPER_FAIL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 613
    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_WALLPAPER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    .line 614
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadWallerpaperBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 615
    return-void
.end method

.method public notifyDownloadWallpaperProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .prologue
    const v5, 0x7f0d019a

    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 618
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadWallerpaperBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Landroid/support/v4/app/NotificationWithProgressBarBuilder;

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationWithProgressBarBuilder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0204b5

    .line 620
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationWithProgressBarBuilder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 621
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 622
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 623
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 624
    invoke-virtual {v0, v4, p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 625
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 626
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 627
    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadWallerpaperBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 632
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DOWNLOAD_WALLPAPER:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadWallerpaperBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 633
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 632
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 634
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/android/NotifyManager;->downloadWallerpaperBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v4, p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method public notifyForumReplyDigest(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 11
    .param p1, "replierNickname"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "board"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .param p4, "article"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1403
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->isForumReplyNotificationEnable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1432
    :goto_0
    return-void

    .line 1407
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v5, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->FORUM_REPLY_DIGEST:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v5}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1409
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v5, 0x7f0d02ab

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v9

    .line 1411
    invoke-virtual {p4}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleBody()Lcom/liquable/nemo/forum/model/article/IArticleBody;

    move-result-object v7

    invoke-interface {v7}, Lcom/liquable/nemo/forum/model/article/IArticleBody;->getTitle()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x14

    invoke-static {v7, v8}, Lorg/apache/commons/lang3/StringUtils;->abbreviate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 1409
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1413
    .local v3, "desc":Ljava/lang/String;
    new-instance v2, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;

    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 1415
    invoke-virtual {p3}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1416
    invoke-virtual {p4}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    .local v2, "createIntent":Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v9, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1423
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1424
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1425
    invoke-virtual {p3}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1426
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1427
    invoke-virtual {v4, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1428
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1430
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v5, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->FORUM_REPLY_DIGEST:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v5}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1431
    invoke-virtual {p0}, Lcom/liquable/nemo/android/NotifyManager;->playNotification()V

    goto :goto_0
.end method

.method public varargs notifyFriendConfirmOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;[Ljava/lang/Object;)V
    .locals 16
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/IDomainMessage;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 639
    .local p2, "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    array-length v11, v0

    add-int/lit8 v11, v11, 0x1

    new-array v10, v11, [Ljava/lang/String;

    .line 640
    .local v10, "paramResults":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v5, v11, :cond_1

    .line 641
    aget-object v9, p3, v5

    .line 642
    .local v9, "param":Ljava/lang/Object;
    instance-of v11, v9, Ljava/lang/Integer;

    if-eqz v11, :cond_0

    .line 643
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    check-cast v9, Ljava/lang/Integer;

    .end local v9    # "param":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 640
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 645
    .restart local v9    # "param":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    goto :goto_1

    .line 649
    .end local v9    # "param":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->newConfirmFriendIds:Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 650
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->newConfirmFriendIds:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v2

    .line 656
    .local v2, "countOfConfirmFriends":I
    move-object/from16 v0, p3

    array-length v11, v0

    add-int/lit8 v12, v2, -0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 658
    new-instance v11, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 659
    invoke-virtual {v11, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 660
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/android/NotifyManager;->showContent()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 661
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v10}, Lcom/liquable/nemo/message/model/IDomainMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 664
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/android/NotifyManager;->showContent()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 665
    const/4 v11, 0x1

    if-le v2, v11, :cond_4

    .line 666
    new-instance v4, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 667
    .local v4, "friendListInboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->newConfirmFriendIds:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 668
    .local v3, "friendId":Ljava/lang/String;
    sget-object v12, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v12, v13, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 669
    .local v7, "nickname":Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_2

    .line 672
    .end local v3    # "friendId":Ljava/lang/String;
    .end local v7    # "nickname":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v12, 0x7f0d011f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 673
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 672
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v13, 0x7f0d0120

    .line 674
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    check-cast v10, [Ljava/lang/Object;

    .end local v10    # "paramResults":[Ljava/lang/String;
    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 676
    invoke-virtual {v11, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    const-string/jumbo v12, "COMFIRM_FRIEND_NOTIFICATION"

    .line 678
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/liquable/nemo/android/NotifyManager;->getMainFriendListIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 695
    .end local v4    # "friendListInboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    :goto_3
    sget-object v11, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v11}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v11

    if-nez v11, :cond_6

    .line 702
    :goto_4
    return-void

    .line 680
    .restart local v10    # "paramResults":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->newConfirmFriendIds:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 681
    .local v6, "newConfirmFriendId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v12, 0x7f0d011f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 682
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 681
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v13, 0x7f0d0122

    .line 683
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    check-cast v10, [Ljava/lang/Object;

    .end local v10    # "paramResults":[Ljava/lang/String;
    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 685
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconForFriend(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 686
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/liquable/nemo/android/NotifyManager;->getViewNewFriendProfileIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_3

    .line 689
    .end local v6    # "newConfirmFriendId":Ljava/lang/String;
    .restart local v10    # "paramResults":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v12, 0x7f0d0074

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v13, 0x7f0d04ec

    .line 690
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 691
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 690
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    const-string/jumbo v12, "COMFIRM_FRIEND_NOTIFICATION"

    .line 692
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/liquable/nemo/android/NotifyManager;->getMainFriendListIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_3

    .line 699
    .end local v10    # "paramResults":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 700
    .local v8, "notification":Landroid/app/Notification;
    iput v2, v8, Landroid/app/Notification;->number:I

    .line 701
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v12, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CONFIRM_FRIEND:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v12}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v12

    invoke-virtual {v11, v12, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_4
.end method

.method public varargs notifyFriendInviteOnStatusBar(Lcom/liquable/nemo/message/model/IDomainMessage;Ljava/util/Set;[Ljava/lang/Object;)V
    .locals 16
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/message/model/IDomainMessage;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 710
    .local p2, "friendIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    array-length v11, v0

    add-int/lit8 v11, v11, 0x1

    new-array v10, v11, [Ljava/lang/String;

    .line 711
    .local v10, "paramResults":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v11, v0

    if-ge v5, v11, :cond_1

    .line 712
    aget-object v9, p3, v5

    .line 713
    .local v9, "param":Ljava/lang/Object;
    instance-of v11, v9, Ljava/lang/Integer;

    if-eqz v11, :cond_0

    .line 714
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    check-cast v9, Ljava/lang/Integer;

    .end local v9    # "param":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 711
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 716
    .restart local v9    # "param":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    goto :goto_1

    .line 720
    .end local v9    # "param":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->newInviteFriendIds:Ljava/util/Set;

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 721
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->newInviteFriendIds:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v2

    .line 722
    .local v2, "countOfInviteFriends":I
    move-object/from16 v0, p3

    array-length v11, v0

    add-int/lit8 v12, v2, -0x1

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 724
    new-instance v11, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 725
    invoke-virtual {v11, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 727
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/android/NotifyManager;->showContent()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 728
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v10}, Lcom/liquable/nemo/message/model/IDomainMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 729
    const/4 v11, 0x1

    if-le v2, v11, :cond_3

    .line 730
    new-instance v4, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 731
    .local v4, "friendListInboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->newInviteFriendIds:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 732
    .local v3, "friendId":Ljava/lang/String;
    sget-object v12, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v12, v13, v3}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 733
    .local v7, "nickname":Ljava/lang/String;
    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    goto :goto_2

    .line 736
    .end local v3    # "friendId":Ljava/lang/String;
    .end local v7    # "nickname":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v12, 0x7f0d041e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 737
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 736
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v13, 0x7f0d041f

    .line 738
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    check-cast v10, [Ljava/lang/Object;

    .end local v10    # "paramResults":[Ljava/lang/String;
    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 740
    invoke-virtual {v11, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 741
    invoke-direct/range {p0 .. p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    const-string/jumbo v12, "FRIEND_INVITATION_NOTIFICATION"

    .line 742
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/liquable/nemo/android/NotifyManager;->getMainFriendListIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 759
    .end local v4    # "friendListInboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    :goto_3
    sget-object v11, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v11}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v11

    if-nez v11, :cond_5

    .line 765
    :goto_4
    return-void

    .line 744
    .restart local v10    # "paramResults":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->newInviteFriendIds:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 745
    .local v6, "newInviteFriendId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v12, 0x7f0d041e

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 746
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 745
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v13, 0x7f0d0421

    .line 747
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    check-cast v10, [Ljava/lang/Object;

    .end local v10    # "paramResults":[Ljava/lang/String;
    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 749
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconForFriend(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 750
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/liquable/nemo/android/NotifyManager;->getViewNewWaitConfirmFriendProfileIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_3

    .line 753
    .end local v6    # "newInviteFriendId":Ljava/lang/String;
    .restart local v10    # "paramResults":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v12, 0x7f0d0074

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v13, 0x7f0d04ec

    .line 754
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 755
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    .line 754
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    const-string/jumbo v12, "FRIEND_INVITATION_NOTIFICATION"

    .line 756
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/liquable/nemo/android/NotifyManager;->getMainFriendListIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_3

    .line 762
    .end local v10    # "paramResults":[Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 763
    .local v8, "notification":Landroid/app/Notification;
    iput v2, v8, Landroid/app/Notification;->number:I

    .line 764
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v12, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->FRIEND_INVITE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v12}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v12

    invoke-virtual {v11, v12, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_4
.end method

.method public notifyGeneral(Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 768
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-class v4, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 769
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 774
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 776
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 777
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 778
    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 779
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 781
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v4, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->GENERAL:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v4}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 782
    return-void
.end method

.method public notifyMessageSendFailed()V
    .locals 11

    .prologue
    const v8, 0x7f0d035c

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 785
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v5}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 787
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 789
    .local v1, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 790
    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v7, 0x7f0d035b

    .line 791
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    .line 792
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 791
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x0

    .line 793
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    sget-object v8, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->MSG_SEND_FAILED:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    .line 796
    invoke-static {v7, v8}, Lcom/liquable/nemo/android/DeleteNotificationReceiver;->createIntent(Landroid/content/Context;Lcom/liquable/nemo/android/NotifyManager$NotificationType;)Landroid/content/Intent;

    move-result-object v7

    .line 794
    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 798
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 799
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v10}, Lcom/liquable/nemo/android/NotifyManager;->getChatGroupIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 810
    :cond_0
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 816
    :goto_0
    return-void

    .line 801
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getMainChatGroupListIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 802
    const/4 v2, 0x1

    .line 803
    .local v2, "requestCode":I
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 804
    .local v4, "topic":Ljava/lang/String;
    const v6, 0x7f0204b1

    sget-object v7, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    .line 805
    invoke-virtual {v7, v4}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v3, v2, 0x1

    .line 806
    .end local v2    # "requestCode":I
    .local v3, "requestCode":I
    invoke-direct {p0, v4, v2}, Lcom/liquable/nemo/android/NotifyManager;->getChatGroupIntent(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 804
    invoke-virtual {v1, v6, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move v2, v3

    .line 807
    .end local v3    # "requestCode":I
    .restart local v2    # "requestCode":I
    goto :goto_1

    .line 814
    .end local v2    # "requestCode":I
    .end local v4    # "topic":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 815
    .local v0, "notification":Landroid/app/Notification;
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v6, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->MSG_SEND_FAILED:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v6}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v6

    invoke-virtual {v5, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public notifyMessageSendFailed(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/liquable/nemo/message/model/AbstractMediaMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 819
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lcom/liquable/nemo/message/model/AbstractMediaMessage;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .line 820
    .local v0, "message":Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 821
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 823
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->sendFailedTopics:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 826
    .end local v0    # "message":Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/android/NotifyManager;->notifyMessageSendFailed()V

    .line 827
    return-void
.end method

.method public notifyNewFriendFromImportContactsOnStatusBar(Ljava/util/List;)V
    .locals 14
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
    .line 830
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 832
    .local v2, "countOfNewFriends":I
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v10, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v9}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 833
    invoke-virtual {v9, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 834
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->showContent()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 835
    iget-object v9, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v10, 0x7f0d011f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 836
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 835
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 839
    :cond_0
    new-instance v6, Landroid/content/Intent;

    iget-object v9, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-class v10, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 840
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v9, "FROM"

    const-string/jumbo v10, "COMFIRM_FRIEND_NOTIFICATION"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 841
    const/high16 v9, 0x14000000

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 842
    iget-object v9, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {v9, v10, v6, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 848
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->showContent()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 849
    const/4 v9, 0x1

    if-le v2, v9, :cond_4

    .line 850
    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    .line 851
    .local v8, "paramResults":[Ljava/lang/String;
    const/4 v10, 0x0

    add-int/lit8 v9, v2, -0x1

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v9}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 852
    const/4 v9, 0x1

    add-int/lit8 v10, v2, -0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 854
    new-instance v4, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 855
    .local v4, "friendListInboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    const/4 v5, 0x0

    .line 856
    .local v5, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/friend/model/Account;

    .line 857
    .local v3, "friend":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 858
    add-int/lit8 v5, v5, 0x1

    .line 859
    const/4 v10, 0x5

    if-ne v5, v10, :cond_1

    .line 863
    .end local v3    # "friend":Lcom/liquable/nemo/friend/model/Account;
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-le v9, v10, :cond_3

    .line 864
    iget-object v9, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v10, 0x7f0d03b0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 865
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 864
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 868
    :cond_3
    iget-object v9, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v10, 0x7f0d011f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 869
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 868
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v11, 0x7f0d0120

    .line 870
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    check-cast v8, [Ljava/lang/Object;

    .end local v8    # "paramResults":[Ljava/lang/String;
    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 872
    invoke-virtual {v9, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 873
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 889
    .end local v4    # "friendListInboxStyle":Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .end local v5    # "i":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 891
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v9}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v9

    if-nez v9, :cond_6

    .line 898
    :goto_1
    return-void

    .line 875
    :cond_4
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/lang/String;

    .line 876
    .restart local v8    # "paramResults":[Ljava/lang/String;
    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v9}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 878
    iget-object v9, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v10, 0x7f0d011f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 879
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 878
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v11, 0x7f0d0122

    .line 880
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    check-cast v8, [Ljava/lang/Object;

    .end local v8    # "paramResults":[Ljava/lang/String;
    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    const/4 v9, 0x0

    .line 882
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v9}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconForFriend(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 885
    :cond_5
    iget-object v9, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v10, 0x7f0d0074

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v11, 0x7f0d04ec

    .line 886
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    .line 887
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 886
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .line 895
    :cond_6
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    .line 896
    .local v7, "notification":Landroid/app/Notification;
    iput v2, v7, Landroid/app/Notification;->number:I

    .line 897
    iget-object v9, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v10, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->CONFIRM_FRIEND:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v10}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v10

    invoke-virtual {v9, v10, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1
.end method

.method public notifyNewMsgOnStatusBarWithBigPictureStyle(Lcom/liquable/nemo/message/model/IDomainMessage;)V
    .locals 8
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    const/4 v4, 0x1

    .line 901
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->showContent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->lastMessageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 906
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getNewMsgNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 907
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconForChatGroup(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    .line 908
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    .line 909
    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 912
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 910
    invoke-interface {p1, v2, v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 913
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/NotifyManager;->getLastChatGroupIntent(Lcom/liquable/nemo/message/model/IDomainMessage;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 915
    .local v0, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {p0, v0, p1}, Lcom/liquable/nemo/android/NotifyManager;->setBigPictureStyle(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/liquable/nemo/message/model/IDomainMessage;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    iget-object v1, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v2, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->NEW_MESSAGE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v2}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v2

    .line 917
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 916
    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public varargs notifyNewMsgOnStatusBarWithStyle(Lcom/liquable/nemo/message/model/IDomainMessage;I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;
    .param p2, "addCount"    # I
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    .line 930
    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->lastMessageId:Ljava/lang/String;

    .line 931
    invoke-direct {p0, p3}, Lcom/liquable/nemo/android/NotifyManager;->getParamResults([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    .line 933
    .local v3, "paramResults":[Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 934
    .local v0, "count":I
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgChatRoomTopics:Ljava/util/Set;

    invoke-interface {p1}, Lcom/liquable/nemo/message/model/IDomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 936
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getNewMsgNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 938
    .local v2, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->showContent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 939
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    if-nez v4, :cond_0

    .line 940
    new-instance v4, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v4, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    iput-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->inboxStyle:Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 942
    :cond_0
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgChatRoomTopics:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 943
    invoke-direct {p0, v2, v0, p1, v3}, Lcom/liquable/nemo/android/NotifyManager;->setMultiChatGroupsStyle(Landroid/support/v4/app/NotificationCompat$Builder;ILcom/liquable/nemo/message/model/IDomainMessage;[Ljava/lang/String;)V

    .line 956
    :goto_0
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 967
    :goto_1
    return-void

    .line 945
    :cond_1
    invoke-direct {p0, v2, v0, p1, v3}, Lcom/liquable/nemo/android/NotifyManager;->setSingleChatGroupStyle(Landroid/support/v4/app/NotificationCompat$Builder;ILcom/liquable/nemo/message/model/IDomainMessage;[Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v5, 0x7f0d0074

    .line 949
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v6, 0x7f0d04ec

    .line 950
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 951
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 950
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 952
    invoke-direct {p0, p1}, Lcom/liquable/nemo/android/NotifyManager;->getLastChatGroupIntent(Lcom/liquable/nemo/message/model/IDomainMessage;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x0

    .line 953
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 961
    :cond_3
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 962
    .local v1, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->newMsgCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iput v4, v1, Landroid/app/Notification;->number:I

    .line 964
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    iget v5, v1, Landroid/app/Notification;->number:I

    invoke-static {v4, p1, v5}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->newMessage(Landroid/content/Context;Lcom/liquable/nemo/message/model/IDomainMessage;I)V

    .line 966
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v5, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->NEW_MESSAGE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v5}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1
.end method

.method public notifyNotices(Lcom/liquable/nemo/notice/model/ImportNoticeResult;)V
    .locals 2
    .param p1, "result"    # Lcom/liquable/nemo/notice/model/ImportNoticeResult;

    .prologue
    .line 999
    invoke-virtual {p1}, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->getNewNotices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1000
    invoke-virtual {p1}, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->getNewNotices()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/android/NotifyManager;->notifyNewNotices(Ljava/util/List;)V

    .line 1001
    invoke-virtual {p0}, Lcom/liquable/nemo/android/NotifyManager;->playNotification()V

    .line 1004
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/notice/model/ImportNoticeResult;->findUpgrade()Lcom/liquable/nemo/notice/VersionNotice;

    move-result-object v0

    .line 1005
    .local v0, "versionNotice":Lcom/liquable/nemo/notice/VersionNotice;
    if-eqz v0, :cond_1

    .line 1006
    invoke-direct {p0, v0}, Lcom/liquable/nemo/android/NotifyManager;->notifyVersionUpgrade(Lcom/liquable/nemo/notice/VersionNotice;)V

    .line 1012
    :goto_0
    return-void

    .line 1010
    :cond_1
    sget-object v1, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->VERSION_UPGRADE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/android/NotifyManager;->cancelNotificationSafely(I)V

    goto :goto_0
.end method

.method public notifyPurchasedNoticeOnStatusBar(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/PurchasedNotice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1015
    .local p1, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/PurchasedNotice;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 1018
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/notice/PurchasedNotice;

    .line 1019
    .local v3, "lastNotice":Lcom/liquable/nemo/notice/PurchasedNotice;
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/notice/PurchasedNotice;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1021
    .local v4, "title":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-class v6, Lcom/liquable/nemo/ShowNoticeActivity;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1022
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x14000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1023
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1028
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v5}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 1030
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 1031
    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 1032
    invoke-virtual {v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 1033
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1035
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v6, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->PURCHASED_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v6}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v6

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public notifyReactivationStickerNotice(Ljava/lang/String;Lcom/liquable/nemo/notice/ReactivationStickerNotice;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "notice"    # Lcom/liquable/nemo/notice/ReactivationStickerNotice;

    .prologue
    .line 1040
    new-instance v2, Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;

    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    .line 1041
    invoke-virtual {p2}, Lcom/liquable/nemo/notice/ReactivationStickerNotice;->getPackageCode()Ljava/lang/String;

    move-result-object v5

    .line 1042
    invoke-virtual {p2}, Lcom/liquable/nemo/notice/ReactivationStickerNotice;->getProductId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1055
    .local v2, "createIntent":Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;
    const/high16 v4, 0x14000000

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;->addFlags(I)Landroid/content/Intent;

    .line 1062
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v3

    .line 1063
    .local v3, "taskBuilder":Landroid/support/v4/app/TaskStackBuilder;
    const-class v4, Lcom/liquable/nemo/MainActivity;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-class v7, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1064
    invoke-virtual {v4, v5}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v4

    .line 1065
    invoke-virtual {v4, v2}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    .line 1066
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1068
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1069
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1070
    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1071
    invoke-virtual {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1072
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1073
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1075
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v5, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->REACTIVATION_STICKER_NOTICE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v5}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v5

    .line 1076
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 1075
    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1077
    return-void
.end method

.method public notifyShareDetectedNewExternalImage(Landroid/graphics/Bitmap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 6
    .param p1, "newPicture"    # Landroid/graphics/Bitmap;
    .param p2, "contentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deleteIntent"    # Landroid/app/PendingIntent;
    .param p4, "pictureCount"    # I

    .prologue
    const/4 v5, 0x1

    .line 1086
    if-ne p4, v5, :cond_0

    .line 1087
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->notifyDetectedExternalImage()V

    .line 1090
    :cond_0
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v2}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1093
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1094
    invoke-virtual {v2, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1095
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconDefault()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v4, 0x7f0d0190

    .line 1096
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const v4, 0x7f0d018f

    .line 1097
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1098
    invoke-virtual {v2, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 1099
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1100
    invoke-virtual {v2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1102
    .local v0, "notificationBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v2, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1103
    invoke-virtual {v2, p1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v1

    .line 1104
    .local v1, "picStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1106
    iget-object v2, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v3, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->DETECTED_NEW_PICTURE:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v3}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v3

    .line 1107
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1106
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1108
    return-void
.end method

.method public notifyVoip(Lcom/liquable/nemo/friend/model/Account;Landroid/content/Intent;)V
    .locals 10
    .param p1, "peer"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "bringToFrontIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1132
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v8, p2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1137
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0528

    new-array v6, v9, [Ljava/lang/Object;

    .line 1138
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, "ticker":Ljava/lang/String;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0527

    .line 1141
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1142
    .local v2, "contentTitle":Ljava/lang/CharSequence;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v4}, Lcom/liquable/nemo/android/NotifyManager;->decorateDefaultNotifcation(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1144
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1145
    invoke-virtual {v4, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1146
    invoke-virtual {v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1147
    invoke-virtual {v4, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1148
    invoke-virtual {v4, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const/4 v5, 0x2

    .line 1149
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    .line 1150
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/liquable/nemo/android/NotifyManager;->getLargeIconForFriend(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1152
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v4, p0, Lcom/liquable/nemo/android/NotifyManager;->notificationManager:Landroid/app/NotificationManager;

    sget-object v5, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->VOIP:Lcom/liquable/nemo/android/NotifyManager$NotificationType;

    invoke-virtual {v5}, Lcom/liquable/nemo/android/NotifyManager$NotificationType;->ordinal()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1153
    return-void
.end method

.method public playNotification()V
    .locals 11

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->isCallStateIdle()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->isAllNotificationEnable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/liquable/nemo/android/NotifyManager;->lastNotifyTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x7d0

    cmp-long v7, v7, v9

    if-ltz v7, :cond_0

    .line 1187
    invoke-direct {p0}, Lcom/liquable/nemo/android/NotifyManager;->isWithinNotificationTime()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1191
    iget-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-string/jumbo v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1193
    .local v0, "audioMgr":Landroid/media/AudioManager;
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getRingtoneSetting()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1194
    iget-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/liquable/nemo/util/Sounds;->findNotificationSound(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    .line 1195
    .local v5, "ringtoneUri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 1197
    iget-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    invoke-static {v7, v5}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v7

    iput-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->ringtone:Landroid/media/Ringtone;

    .line 1199
    iget-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->ringtone:Landroid/media/Ringtone;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v7}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1201
    const/4 v7, 0x5

    :try_start_0
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1202
    .local v1, "currentVolume":I
    if-eqz v1, :cond_2

    .line 1203
    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x3

    invoke-virtual {v0, v7, v8, v9}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v4

    .line 1206
    .local v4, "result":I
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 1207
    .local v3, "maxVolume":I
    const/4 v7, 0x5

    add-int/lit8 v8, v1, 0x2

    .line 1208
    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    .line 1207
    invoke-virtual {v0, v7, v8, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1210
    iget-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->ringtone:Landroid/media/Ringtone;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1211
    iget-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->ringtone:Landroid/media/Ringtone;

    invoke-virtual {v7}, Landroid/media/Ringtone;->play()V

    .line 1212
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1213
    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 1214
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    .end local v1    # "currentVolume":I
    .end local v3    # "maxVolume":I
    .end local v4    # "result":I
    .end local v5    # "ringtoneUri":Landroid/net/Uri;
    :cond_2
    :goto_1
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v7}, Lcom/liquable/nemo/util/Pref;->getVibrationSetting()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1226
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-eqz v7, :cond_3

    .line 1227
    iget-object v7, p0, Lcom/liquable/nemo/android/NotifyManager;->context:Landroid/content/Context;

    const-string/jumbo v8, "vibrator"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    .line 1228
    .local v6, "vibrator":Landroid/os/Vibrator;
    const/4 v7, 0x4

    new-array v7, v7, [J

    fill-array-data v7, :array_0

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1230
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/liquable/nemo/android/NotifyManager;->lastNotifyTime:J

    goto/16 :goto_0

    .line 1217
    .restart local v5    # "ringtoneUri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1220
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1228
    :array_0
    .array-data 8
        0x0
        0x1f4
        0x12c
        0xc8
    .end array-data
.end method

.method public playNotification(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 1235
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/DomainMessage;->getChatGroupTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 1236
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isMute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1239
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/android/NotifyManager;->playNotification()V

    goto :goto_0
.end method
