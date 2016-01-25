.class public Lcom/liquable/nemo/friend/model/Account;
.super Ljava/lang/Object;
.source "Account.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/model/Account$FriendState;,
        Lcom/liquable/nemo/friend/model/Account$Builder;
    }
.end annotation


# static fields
.field public static final COLUMN_NAME_BECOME_FRIEND_TIME:Ljava/lang/String; = "AC_BECOME_FRIEND_TIME"

.field public static final COLUMN_NAME_BEFORE_BLOCK_FRIEND_STATE:Ljava/lang/String; = "AC_BEFORE_BLOCK_FRIEND_STATE"

.field public static final COLUMN_NAME_BLOCKED:Ljava/lang/String; = "AC_COLUMN_NAME_BLOCKED"

.field public static final COLUMN_NAME_CONTACT_LOOKUP_KEY:Ljava/lang/String; = "AC_CONTACT_LOOKUP_KEY"

.field public static final COLUMN_NAME_DESCRIPTION:Ljava/lang/String; = "AC_DESCRIPTION"

.field public static final COLUMN_NAME_DISPLAY_NAME:Ljava/lang/String; = "AC_DISPLAY_NAME"

.field private static final COLUMN_NAME_EMAIL:Ljava/lang/String; = "AC_EMAIL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_NAME_FBUID:Ljava/lang/String; = "AC_FBUID"

.field public static final COLUMN_NAME_FRIEND_STATE:Ljava/lang/String; = "AC_FRIEND_STATE"

.field public static final COLUMN_NAME_ICON_EXISTS:Ljava/lang/String; = "AC_ICON_EXISTS"

.field public static final COLUMN_NAME_IS_BROADCASTER:Ljava/lang/String; = "AC_IS_BROADCASTER"

.field public static final COLUMN_NAME_LAST_SYNC_TIME:Ljava/lang/String; = "AC_LAST_SYNC_TIME"

.field public static final COLUMN_NAME_LAST_UPDATE_TIME:Ljava/lang/String; = "AC_LAST_UPDATE_TIME"

.field public static final COLUMN_NAME_NAME:Ljava/lang/String; = "AC_NAME"

.field public static final COLUMN_NAME_NICKNAME_FROM_CONTACT:Ljava/lang/String; = "AC_NICKNAME_FROM_CONTACT"

.field public static final COLUMN_NAME_PHONE_NUMBER:Ljava/lang/String; = "AC_PHONE_NUMBER"

.field public static final COLUMN_NAME_PHOTO_ID:Ljava/lang/String; = "AC_PHOTO_ID"

.field public static final COLUMN_NAME_USER_NAME:Ljava/lang/String; = "AC_USER_NAME"

.field public static final KEEP_EMAIL_AS_BLANK_FOR_ALL_ACCOUNTS:Ljava/lang/String; = ""

.field public static final KEEP_PHONE_NUMBER_AS_BLANK_FOR_ALL_ACCOUNTS:Ljava/lang/String; = ""

.field public static final MIN_PASSWORD_LENGTH:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final ROBOT_UID:Ljava/lang/String; = "18e1df3b-d427-4ed2-885c-7f4510e853b2"

.field public static final TABLE_NAME:Ljava/lang/String; = "ACCOUNTS"

.field public static final _ID:Ljava/lang/String; = "AC_UID"

.field private static final serialVersionUID:J = 0x78c1ad43ea6023d3L


# instance fields
.field private becomeFriendTime:J

.field private beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

.field private final blocked:Z

.field private final description:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private final fbuid:Ljava/lang/String;

.field private friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

.field private iconExists:Z

.field private isBroadcaster:Z

.field private lastSyncTime:J

.field private lastUpdateTime:J

.field private final lookupKey:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private final nicknameFromContact:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private final photoId:Ljava/lang/Long;

.field private final uid:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 270
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "AC_UID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "AC_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "AC_PHOTO_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "AC_PHONE_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "AC_FRIEND_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "AC_DESCRIPTION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "AC_ICON_EXISTS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "AC_IS_BROADCASTER"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "AC_USER_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "AC_LAST_UPDATE_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "AC_COLUMN_NAME_BLOCKED"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "AC_NICKNAME_FROM_CONTACT"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "AC_BEFORE_BLOCK_FRIEND_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "AC_LAST_SYNC_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "AC_BECOME_FRIEND_TIME"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "AC_FBUID"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "AC_DISPLAY_NAME"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/friend/model/Account;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/friend/model/Account$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/liquable/nemo/friend/model/Account$Builder;

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->uid:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$000(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    .line 366
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$100(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->name:Ljava/lang/String;

    .line 367
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->photoId:Ljava/lang/Long;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$200(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->photoId:Ljava/lang/Long;

    .line 368
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->email:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$300(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->email:Ljava/lang/String;

    .line 369
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->description:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$400(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->description:Ljava/lang/String;

    .line 370
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->phoneNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$500(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->phoneNumber:Ljava/lang/String;

    .line 371
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->username:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$600(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->username:Ljava/lang/String;

    .line 372
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->lastUpdateTime:J
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$700(Lcom/liquable/nemo/friend/model/Account$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/friend/model/Account;->lastUpdateTime:J

    .line 373
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->iconExists:Z
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$800(Lcom/liquable/nemo/friend/model/Account$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/model/Account;->iconExists:Z

    .line 374
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->isBroadcaster:Z
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$900(Lcom/liquable/nemo/friend/model/Account$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster:Z

    .line 375
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->blocked:Z
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$1000(Lcom/liquable/nemo/friend/model/Account$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/model/Account;->blocked:Z

    .line 376
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->nicknameFromContact:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$1100(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->nicknameFromContact:Ljava/lang/String;

    .line 377
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$1200(Lcom/liquable/nemo/friend/model/Account$Builder;)Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 378
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$1300(Lcom/liquable/nemo/friend/model/Account$Builder;)Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 379
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->lastSyncTime:J
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$1400(Lcom/liquable/nemo/friend/model/Account$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/friend/model/Account;->lastSyncTime:J

    .line 380
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->becomeFriendTime:J
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$1500(Lcom/liquable/nemo/friend/model/Account$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/friend/model/Account;->becomeFriendTime:J

    .line 381
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->fbuid:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$1600(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->fbuid:Ljava/lang/String;

    .line 382
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->lookupKey:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$1700(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->lookupKey:Ljava/lang/String;

    .line 383
    # getter for: Lcom/liquable/nemo/friend/model/Account$Builder;->displayName:Ljava/lang/String;
    invoke-static {p1}, Lcom/liquable/nemo/friend/model/Account$Builder;->access$1800(Lcom/liquable/nemo/friend/model/Account$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->displayName:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public static createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/temp/profile/cubie/%s/profile/cover.jpg"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createCoverRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 3
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string/jumbo v0, "cubie/%s/profile/cover.jpg"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 8
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 166
    .local v1, "s":Ljava/lang/Character;
    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x12

    add-int/lit8 v0, v2, 0x1

    .line 168
    .local v0, "digit":I
    new-instance v2, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "cubie/temp/profile/cubie/default/profile/cover_%02d.jpg"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 168
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static createDefaultCoverRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 7
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 176
    .local v1, "s":Ljava/lang/Character;
    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x12

    add-int/lit8 v0, v2, 0x1

    .line 177
    .local v0, "digit":I
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "cubie/default/profile/cover_%02d.jpg"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 177
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v2

    return-object v2
.end method

.method public static createIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Lcom/liquable/nemo/storage/InternalLocalKeyPath;

    const-string/jumbo v1, "icon/%s.jpg"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/InternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createIconRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 3
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string/jumbo v0, "cubie/%s/icon/%s.png"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public static createSmallIconLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 4
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Lcom/liquable/nemo/storage/InternalLocalKeyPath;

    const-string/jumbo v1, "icon/%s_s.jpg"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/InternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/friend/model/Account;
    .locals 11
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 201
    new-instance v0, Lcom/liquable/nemo/friend/model/Account$Builder;

    const-string/jumbo v1, "AC_UID"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AC_NAME"

    .line 202
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "AC_LAST_UPDATE_TIME"

    .line 203
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string/jumbo v5, "AC_FRIEND_STATE"

    .line 204
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/friend/model/Account$FriendState;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v5

    const-string/jumbo v6, "AC_USER_NAME"

    .line 205
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/liquable/nemo/friend/model/Account$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/liquable/nemo/friend/model/Account$FriendState;Ljava/lang/String;)V

    .line 207
    .local v0, "builder":Lcom/liquable/nemo/friend/model/Account$Builder;
    const-string/jumbo v1, "AC_ICON_EXISTS"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    move v1, v9

    :goto_0
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->iconExists(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v2

    const-string/jumbo v1, "AC_IS_BROADCASTER"

    .line 208
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_3

    move v1, v9

    :goto_1
    invoke-virtual {v2, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->isBroadcaster(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 209
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->phoneNumber(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    const-string/jumbo v2, "AC_DESCRIPTION"

    .line 210
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->description(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    const-string/jumbo v2, "AC_PHOTO_ID"

    .line 211
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->photoId(Ljava/lang/Long;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    const-string/jumbo v2, "AC_COLUMN_NAME_BLOCKED"

    .line 212
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_4

    :goto_2
    invoke-virtual {v1, v9}, Lcom/liquable/nemo/friend/model/Account$Builder;->blocked(Z)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    const-string/jumbo v2, "AC_NICKNAME_FROM_CONTACT"

    .line 213
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->nicknameFromContact(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    const-string/jumbo v2, "AC_LAST_SYNC_TIME"

    .line 214
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/friend/model/Account$Builder;->lastSyncTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    const-string/jumbo v2, "AC_BECOME_FRIEND_TIME"

    .line 215
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/friend/model/Account$Builder;->becomeFriendTime(J)Lcom/liquable/nemo/friend/model/Account$Builder;

    move-result-object v1

    const-string/jumbo v2, "AC_DISPLAY_NAME"

    .line 216
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/friend/model/Account$Builder;->displayName(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    .line 218
    const-string/jumbo v1, "AC_BEFORE_BLOCK_FRIEND_STATE"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "beforeBlockFriendState":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 220
    invoke-static {v7}, Lcom/liquable/nemo/friend/model/Account$FriendState;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/model/Account$Builder;->beforeBlockFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Lcom/liquable/nemo/friend/model/Account$Builder;

    .line 223
    :cond_0
    const-string/jumbo v1, "AC_FBUID"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "fbuid":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 225
    invoke-virtual {v0, v8}, Lcom/liquable/nemo/friend/model/Account$Builder;->fbuid(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account$Builder;

    .line 228
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account$Builder;->build()Lcom/liquable/nemo/friend/model/Account;

    move-result-object v1

    return-object v1

    .end local v7    # "beforeBlockFriendState":Ljava/lang/String;
    .end local v8    # "fbuid":Ljava/lang/String;
    :cond_2
    move v1, v10

    .line 207
    goto/16 :goto_0

    :cond_3
    move v1, v10

    .line 208
    goto/16 :goto_1

    :cond_4
    move v9, v10

    .line 212
    goto :goto_2
.end method

.method public static isRobot(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aUid"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string/jumbo v0, "18e1df3b-d427-4ed2-885c-7f4510e853b2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static unambiguousCubieId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "rawUsername"    # Ljava/lang/String;

    .prologue
    .line 244
    if-nez p0, :cond_1

    .line 245
    const/4 v0, 0x0

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "lowerCaseUsername":Ljava/lang/String;
    const-string/jumbo v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createContentValuesWithoutPhoneAndContacts(Lcom/liquable/nemo/friend/model/Account;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "account"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 396
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 397
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "AC_NAME"

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string/jumbo v1, "AC_UID"

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string/jumbo v1, "AC_USER_NAME"

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string/jumbo v1, "AC_LAST_UPDATE_TIME"

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getLastUpdateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 401
    const-string/jumbo v1, "AC_ICON_EXISTS"

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->isIconExists()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 402
    const-string/jumbo v1, "AC_IS_BROADCASTER"

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 403
    const-string/jumbo v1, "AC_FRIEND_STATE"

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account$FriendState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string/jumbo v1, "AC_BEFORE_BLOCK_FRIEND_STATE"

    .line 405
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getBeforeBlockFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account$FriendState;->name()Ljava/lang/String;

    move-result-object v2

    .line 404
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string/jumbo v1, "AC_LAST_SYNC_TIME"

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getLastSyncTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 407
    const-string/jumbo v1, "AC_BECOME_FRIEND_TIME"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 409
    return-object v0
.end method

.method public createContentValuesWithoutPhoneNumber()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 415
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 416
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "AC_NAME"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string/jumbo v1, "AC_PHOTO_ID"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->photoId:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 418
    const-string/jumbo v1, "AC_UID"

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v1, "AC_USER_NAME"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string/jumbo v1, "AC_LAST_UPDATE_TIME"

    iget-wide v2, p0, Lcom/liquable/nemo/friend/model/Account;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 421
    const-string/jumbo v1, "AC_ICON_EXISTS"

    iget-boolean v2, p0, Lcom/liquable/nemo/friend/model/Account;->iconExists:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 422
    const-string/jumbo v1, "AC_IS_BROADCASTER"

    iget-boolean v2, p0, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 423
    const-string/jumbo v1, "AC_COLUMN_NAME_BLOCKED"

    iget-boolean v2, p0, Lcom/liquable/nemo/friend/model/Account;->blocked:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 424
    const-string/jumbo v1, "AC_FRIEND_STATE"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account$FriendState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string/jumbo v1, "AC_NICKNAME_FROM_CONTACT"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->nicknameFromContact:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string/jumbo v1, "AC_LAST_SYNC_TIME"

    iget-wide v2, p0, Lcom/liquable/nemo/friend/model/Account;->lastSyncTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    const-string/jumbo v1, "AC_BECOME_FRIEND_TIME"

    iget-wide v2, p0, Lcom/liquable/nemo/friend/model/Account;->becomeFriendTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 428
    const-string/jumbo v1, "AC_CONTACT_LOOKUP_KEY"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->lookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string/jumbo v1, "AC_DISPLAY_NAME"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-eqz v1, :cond_0

    .line 432
    const-string/jumbo v1, "AC_BEFORE_BLOCK_FRIEND_STATE"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account$FriendState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->fbuid:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 435
    const-string/jumbo v1, "AC_FBUID"

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->fbuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 442
    if-ne p0, p1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 445
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 446
    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 449
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 451
    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 452
    .local v0, "other":Lcom/liquable/nemo/friend/model/Account;
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 453
    iget-object v3, v0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 454
    goto :goto_0

    .line 456
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 457
    goto :goto_0
.end method

.method public getBecomeFriendTime()J
    .locals 2

    .prologue
    .line 463
    iget-wide v0, p0, Lcom/liquable/nemo/friend/model/Account;->becomeFriendTime:J

    return-wide v0
.end method

.method public getBeforeBlockFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    return-object v0
.end method

.method public getCoverLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/friend/model/Account;->createCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getCoverRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/friend/model/Account;->createCoverRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCoverLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/friend/model/Account;->createDefaultCoverLocalKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCoverRemoteKeyPath()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/friend/model/Account;->createDefaultCoverRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFbuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->fbuid:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSyncTime()J
    .locals 2

    .prologue
    .line 517
    iget-wide v0, p0, Lcom/liquable/nemo/friend/model/Account;->lastSyncTime:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 521
    iget-wide v0, p0, Lcom/liquable/nemo/friend/model/Account;->lastUpdateTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNicknameFromContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->nicknameFromContact:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 539
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->photoId:Ljava/lang/Long;

    return-object v0
.end method

.method public getScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->displayName:Ljava/lang/String;

    .line 551
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->username:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 560
    const/16 v0, 0x1f

    .line 561
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 562
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 563
    return v1

    .line 562
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isBlocked()Z
    .locals 2

    .prologue
    .line 567
    sget-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBroadcaster()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster:Z

    return v0
.end method

.method public isFriend()Z
    .locals 2

    .prologue
    .line 575
    sget-object v0, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconExists()Z
    .locals 1

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/liquable/nemo/friend/model/Account;->iconExists:Z

    return v0
.end method

.method public isNewFriend()Z
    .locals 4

    .prologue
    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->getBecomeFriendTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBecomeFriendTime(J)V
    .locals 0
    .param p1, "becomeFriendTime"    # J

    .prologue
    .line 587
    iput-wide p1, p0, Lcom/liquable/nemo/friend/model/Account;->becomeFriendTime:J

    .line 588
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account;->displayName:Ljava/lang/String;

    .line 592
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account;->email:Ljava/lang/String;

    .line 596
    return-void
.end method

.method public setLastSyncTime(J)V
    .locals 0
    .param p1, "lastSyncTime"    # J

    .prologue
    .line 599
    iput-wide p1, p0, Lcom/liquable/nemo/friend/model/Account;->lastSyncTime:J

    .line 600
    return-void
.end method

.method public sync(Lcom/liquable/nemo/model/account/AccountDto;)V
    .locals 2
    .param p1, "account"    # Lcom/liquable/nemo/model/account/AccountDto;

    .prologue
    .line 603
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->email:Ljava/lang/String;

    .line 604
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->username:Ljava/lang/String;

    .line 605
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->name:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->name:Ljava/lang/String;

    .line 606
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getLastUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/friend/model/Account;->lastUpdateTime:J

    .line 607
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getPhone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/model/Account;->phoneNumber:Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->isIconExists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/model/Account;->iconExists:Z

    .line 609
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->isBroadcaster()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster:Z

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liquable/nemo/friend/model/Account;->lastSyncTime:J

    .line 611
    return-void

    .line 605
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Account [displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/friend/model/Account;->lastUpdateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconExists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/friend/model/Account;->iconExists:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isBroadcaster="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", blocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/friend/model/Account;->blocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", photoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->photoId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", friendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nicknameFromContact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->nicknameFromContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", beforeBlockFriendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastSyncTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/friend/model/Account;->lastSyncTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", becomeFriendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/friend/model/Account;->becomeFriendTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fbuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->fbuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lookupKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->lookupKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFriendState(Lcom/liquable/nemo/friend/model/Account$FriendState;)Z
    .locals 3
    .param p1, "targetFriendState"    # Lcom/liquable/nemo/friend/model/Account$FriendState;

    .prologue
    const/4 v0, 0x1

    .line 656
    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne v1, p1, :cond_1

    .line 657
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 681
    :cond_0
    :goto_0
    return v0

    .line 660
    :cond_1
    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne v1, p1, :cond_2

    .line 662
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    goto :goto_0

    .line 665
    :cond_2
    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne v1, p1, :cond_4

    .line 666
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-eq v1, v2, :cond_3

    .line 667
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->beforeBlockFriendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    .line 669
    :cond_3
    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->BLOCK:Lcom/liquable/nemo/friend/model/Account$FriendState;

    iput-object v1, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    goto :goto_0

    .line 671
    :cond_4
    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_CONFIRM:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->WAIT_ACCEPT:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-ne p1, v1, :cond_6

    .line 672
    :cond_5
    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->FRIEND:Lcom/liquable/nemo/friend/model/Account$FriendState;

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-eq v1, v2, :cond_7

    .line 673
    iput-object p1, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    goto :goto_0

    .line 677
    :cond_6
    sget-object v1, Lcom/liquable/nemo/friend/model/Account$FriendState;->NONE:Lcom/liquable/nemo/friend/model/Account$FriendState;

    iget-object v2, p0, Lcom/liquable/nemo/friend/model/Account;->friendState:Lcom/liquable/nemo/friend/model/Account$FriendState;

    if-eq v1, v2, :cond_0

    .line 681
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method
