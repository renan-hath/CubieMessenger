.class public Lcom/liquable/nemo/group/model/ChatGroup;
.super Ljava/lang/Object;
.source "ChatGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;,
        Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    }
.end annotation


# static fields
.field public static final COLUMN_NAME_CHAT_GROUP_BACKGROUND:Ljava/lang/String; = "CG_CHAT_GROUP_BACKGROUND"

.field public static final COLUMN_NAME_CHAT_GROUP_MUTE:Ljava/lang/String; = "CG_CHAT_GROUP_MUTE"

.field public static final COLUMN_NAME_CHAT_GROUP_TYPE:Ljava/lang/String; = "CG_CHAT_GROUP_TYPE"

.field public static final COLUMN_NAME_CHAT_GROUP_UNREAD_COUNT:Ljava/lang/String; = "CG_CHAT_GROUP_UNREAD_COUNT"

.field public static final COLUMN_NAME_CHAT_GROUP_VISIBLE:Ljava/lang/String; = "CG_CHAT_GROUP_VISIBLE"

.field public static final COLUMN_NAME_CREATE_TIME:Ljava/lang/String; = "CG_CREATE_TIME"

.field public static final COLUMN_NAME_CREATOR:Ljava/lang/String; = "CG_CREATOR"

.field public static final COLUMN_NAME_HAS_RECENT_PICTURE:Ljava/lang/String; = "CG_HAS_RECENT_PICTURE"

.field public static final COLUMN_NAME_LAST_ACTION:Ljava/lang/String; = "CG_LAST_ACTION"

.field public static final COLUMN_NAME_LAST_UPDATE_TIME:Ljava/lang/String; = "CG_LAST_UPDATE_TIME"

.field public static final COLUMN_NAME_NAME:Ljava/lang/String; = "CG_NAME"

.field public static final COLUMN_NAME_OWNER:Ljava/lang/String; = "CG_OWNER"

.field public static final COLUMN_NAME_REMOVED_BY_OWNER:Ljava/lang/String; = "CG_REMOVED_BY_OWNER"

.field public static final COLUMN_NAME_UNFINISHED_MESSAGE:Ljava/lang/String; = "CG_UNFINISHED_MESSAGE"

.field public static final PROJECTION:[Ljava/lang/String;

.field static final ROBOT_TOPIC:Ljava/lang/String; = "ROBOT"

.field public static final TABLE_NAME:Ljava/lang/String; = "CHAT_GROUPS"

.field public static final _TOPIC:Ljava/lang/String; = "CG_TOPIC"

.field private static final serialVersionUID:J = 0x2879343a651fd9feL


# instance fields
.field backgroundFileName:Ljava/lang/String;

.field final chatGroupType:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

.field final createTime:Ljava/util/Date;

.field final creatorId:Ljava/lang/String;

.field private hasRecentPicture:Z

.field private lastActionState:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

.field lastMsg:Lcom/liquable/nemo/message/model/MessageInfo;

.field lastUpdateTime:Ljava/util/Date;

.field private final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation
.end field

.field mute:Z

.field name:Ljava/lang/String;

.field private final ownerUid:Ljava/lang/String;

.field private removedByOwner:Z

.field final topic:Ljava/lang/String;

.field unfinishedMessage:Ljava/lang/String;

.field unreadCount:I

.field visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CG_TOPIC"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "CG_NAME"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "CG_CREATOR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "CG_OWNER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "CG_CREATE_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "CG_LAST_UPDATE_TIME"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "CG_CHAT_GROUP_TYPE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "CG_CHAT_GROUP_VISIBLE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "CG_CHAT_GROUP_UNREAD_COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "CG_CHAT_GROUP_BACKGROUND"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "CG_CHAT_GROUP_MUTE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "CG_UNFINISHED_MESSAGE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "CG_LAST_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "CG_REMOVED_BY_OWNER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "CG_HAS_RECENT_PICTURE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/group/model/ChatGroup;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;ZILjava/lang/String;ZLcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;Z)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "creatorId"    # Ljava/lang/String;
    .param p4, "ownerUid"    # Ljava/lang/String;
    .param p5, "createTime"    # Ljava/util/Date;
    .param p6, "lastUpdateTime"    # Ljava/util/Date;
    .param p7, "chatGroupType"    # Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;
    .param p8, "visible"    # Z
    .param p9, "unreadCount"    # I
    .param p10, "unfinishedMessage"    # Ljava/lang/String;
    .param p11, "hasRecentPicture"    # Z
    .param p12, "lastActionState"    # Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    .param p13, "removedByOwner"    # Z

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/liquable/nemo/group/model/ChatGroup;->name:Ljava/lang/String;

    .line 183
    iput-object p3, p0, Lcom/liquable/nemo/group/model/ChatGroup;->creatorId:Ljava/lang/String;

    .line 184
    iput-object p4, p0, Lcom/liquable/nemo/group/model/ChatGroup;->ownerUid:Ljava/lang/String;

    .line 185
    iput-object p5, p0, Lcom/liquable/nemo/group/model/ChatGroup;->createTime:Ljava/util/Date;

    .line 186
    iput-object p6, p0, Lcom/liquable/nemo/group/model/ChatGroup;->lastUpdateTime:Ljava/util/Date;

    .line 187
    iput-object p7, p0, Lcom/liquable/nemo/group/model/ChatGroup;->chatGroupType:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    .line 188
    iput-boolean p8, p0, Lcom/liquable/nemo/group/model/ChatGroup;->visible:Z

    .line 189
    iput p9, p0, Lcom/liquable/nemo/group/model/ChatGroup;->unreadCount:I

    .line 190
    iput-object p10, p0, Lcom/liquable/nemo/group/model/ChatGroup;->unfinishedMessage:Ljava/lang/String;

    .line 191
    iput-boolean p11, p0, Lcom/liquable/nemo/group/model/ChatGroup;->hasRecentPicture:Z

    .line 192
    iput-object p12, p0, Lcom/liquable/nemo/group/model/ChatGroup;->lastActionState:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    .line 193
    iput-boolean p13, p0, Lcom/liquable/nemo/group/model/ChatGroup;->removedByOwner:Z

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->mute:Z

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    .line 196
    return-void
.end method

.method private findCreator()Lcom/liquable/nemo/friend/model/Account;
    .locals 4

    .prologue
    .line 258
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 259
    .local v0, "member":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroup;->creatorId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    .end local v0    # "member":Lcom/liquable/nemo/friend/model/Account;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 21
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 31
    const-string/jumbo v3, "CG_CHAT_GROUP_BACKGROUND"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 33
    .local v16, "bgFileName":Ljava/lang/String;
    const-string/jumbo v3, "CG_LAST_ACTION"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 36
    .local v18, "lastActionTypeString":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v14, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .local v14, "lastActionType":Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    :goto_0
    const-string/jumbo v3, "CG_OWNER"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 43
    .local v19, "ownerUidColumnIndex":I
    const/4 v6, 0x0

    .line 44
    .local v6, "ownerUid":Ljava/lang/String;
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_0

    .line 45
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 48
    :cond_0
    const-string/jumbo v3, "CG_REMOVED_BY_OWNER"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 49
    .local v20, "removedByOwnerColumnIndex":I
    const/4 v15, 0x0

    .line 50
    .local v15, "removedByOwner":Z
    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_1

    .line 51
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v15, 0x1

    .line 54
    :cond_1
    :goto_1
    new-instance v2, Lcom/liquable/nemo/group/model/ChatGroup;

    const-string/jumbo v3, "CG_TOPIC"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "CG_NAME"

    .line 55
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CG_CREATOR"

    .line 56
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/Date;

    const-string/jumbo v8, "CG_CREATE_TIME"

    .line 58
    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    new-instance v8, Ljava/util/Date;

    const-string/jumbo v9, "CG_LAST_UPDATE_TIME"

    .line 59
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    const-string/jumbo v9, "CG_CHAT_GROUP_TYPE"

    .line 60
    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    move-result-object v9

    const-string/jumbo v10, "CG_CHAT_GROUP_VISIBLE"

    .line 61
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-lez v10, :cond_5

    const/4 v10, 0x1

    :goto_2
    const-string/jumbo v11, "CG_CHAT_GROUP_UNREAD_COUNT"

    .line 62
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string/jumbo v12, "CG_UNFINISHED_MESSAGE"

    .line 63
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "CG_HAS_RECENT_PICTURE"

    .line 64
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-lez v13, :cond_6

    const/4 v13, 0x1

    :goto_3
    invoke-direct/range {v2 .. v15}, Lcom/liquable/nemo/group/model/ChatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;ZILjava/lang/String;ZLcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;Z)V

    .line 68
    .local v2, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    const-string/jumbo v3, "CG_CHAT_GROUP_MUTE"

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_7

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/group/model/ChatGroup;->setMute(Z)V

    .line 70
    invoke-static/range {v16 .. v16}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 71
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/group/model/ChatGroup;->setBackgroundFileName(Ljava/lang/String;)V

    .line 73
    :cond_2
    return-object v2

    .line 37
    .end local v2    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v6    # "ownerUid":Ljava/lang/String;
    .end local v14    # "lastActionType":Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    .end local v15    # "removedByOwner":Z
    .end local v19    # "ownerUidColumnIndex":I
    .end local v20    # "removedByOwnerColumnIndex":I
    :cond_3
    :try_start_1
    invoke-static/range {v18 .. v18}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto/16 :goto_0

    .line 38
    :catch_0
    move-exception v17

    .line 39
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    sget-object v14, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->TEXT:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    .restart local v14    # "lastActionType":Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    goto/16 :goto_0

    .line 51
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "ownerUid":Ljava/lang/String;
    .restart local v15    # "removedByOwner":Z
    .restart local v19    # "ownerUidColumnIndex":I
    .restart local v20    # "removedByOwnerColumnIndex":I
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 61
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 64
    :cond_6
    const/4 v13, 0x0

    goto :goto_3

    .line 68
    .restart local v2    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_7
    const/4 v3, 0x0

    goto :goto_4
.end method

.method public static isRobot(Ljava/lang/String;)Z
    .locals 1
    .param p0, "topic"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string/jumbo v0, "ROBOT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static remoteKeyPathOfIconForTopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "topic"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string/jumbo v0, "cubie/chatgroup/%s/icon.png"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMember(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 1
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-void
.end method

.method public amIOwner(Ljava/lang/String;)Z
    .locals 1
    .param p1, "myUid"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->resolveOwnerUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsMember(Ljava/lang/String;)Z
    .locals 1
    .param p1, "memberUid"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/model/ChatGroup;->findMember(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 218
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "CG_TOPIC"

    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, "CG_NAME"

    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v1, "CG_CREATOR"

    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getCreatorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string/jumbo v1, "CG_CREATE_TIME"

    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getCreateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 223
    const-string/jumbo v1, "CG_LAST_UPDATE_TIME"

    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getLastUpdateTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string/jumbo v1, "CG_CHAT_GROUP_TYPE"

    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getChatGroupType()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v1, "CG_CHAT_GROUP_VISIBLE"

    iget-boolean v2, p0, Lcom/liquable/nemo/group/model/ChatGroup;->visible:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 226
    const-string/jumbo v1, "CG_CHAT_GROUP_UNREAD_COUNT"

    iget v2, p0, Lcom/liquable/nemo/group/model/ChatGroup;->unreadCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string/jumbo v1, "CG_CHAT_GROUP_BACKGROUND"

    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroup;->backgroundFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v1, "CG_CHAT_GROUP_MUTE"

    iget-boolean v2, p0, Lcom/liquable/nemo/group/model/ChatGroup;->mute:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 229
    const-string/jumbo v1, "CG_UNFINISHED_MESSAGE"

    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnfinishedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v1, "CG_HAS_RECENT_PICTURE"

    iget-boolean v2, p0, Lcom/liquable/nemo/group/model/ChatGroup;->hasRecentPicture:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 231
    const-string/jumbo v1, "CG_LAST_ACTION"

    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getLastActionState()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    if-ne p0, p1, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 241
    goto :goto_0

    .line 243
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/group/model/ChatGroup;

    if-nez v3, :cond_3

    move v1, v2

    .line 244
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 246
    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 247
    .local v0, "other":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 248
    iget-object v3, v0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 249
    goto :goto_0

    .line 251
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 252
    goto :goto_0
.end method

.method public findMember(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;
    .locals 3
    .param p1, "memberUid"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 268
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBackgroundFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->backgroundFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getChatGroupType()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->chatGroupType:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    return-object v0
.end method

.method public getCreateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->createTime:Ljava/util/Date;

    return-object v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->creatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActionState()Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->lastActionState:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    return-object v0
.end method

.method public getLastMsg()Lcom/liquable/nemo/message/model/MessageInfo;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->lastMsg:Lcom/liquable/nemo/message/model/MessageInfo;

    return-object v0
.end method

.method public getLastUpdateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->lastUpdateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;
    .locals 5

    .prologue
    .line 304
    new-instance v0, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;

    const-string/jumbo v1, "cubie/chatgroup/%s/icon.png"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/storage/ExternalLocalKeyPath;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteKeyPathOfIcon()Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->remoteKeyPathOfIconForTopic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->createDefaultRegionKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->ONE_TO_ONE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->chatGroupType:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    if-ne v0, v1, :cond_1

    .line 321
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const-string/jumbo v0, "?"

    .line 326
    :goto_0
    return-object v0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public final getUnfinishedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->unfinishedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->unreadCount:I

    return v0
.end method

.method public hasRecentPicture()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->hasRecentPicture:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 343
    const/16 v0, 0x1f

    .line 344
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 345
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 346
    return v1

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isBroadcastChannel()Z
    .locals 3

    .prologue
    .line 354
    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 355
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBroadcaster()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const/4 v1, 0x1

    .line 359
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->mute:Z

    return v0
.end method

.method public isOneToOne()Z
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->chatGroupType:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    sget-object v1, Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;->ONE_TO_ONE:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemovedByOwner()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->removedByOwner:Z

    return v0
.end method

.method public isRobot()Z
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    invoke-static {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->visible:Z

    return v0
.end method

.method listMemberUids()Ljava/util/List;
    .locals 4
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
    .line 392
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 394
    .local v0, "member":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    .end local v0    # "member":Lcom/liquable/nemo/friend/model/Account;
    :cond_0
    return-object v1
.end method

.method public resolveOwnerUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->ownerUid:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/liquable/nemo/group/model/ChatGroup;->ownerUid:Ljava/lang/String;

    .line 404
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/group/model/ChatGroup;->getCreatorId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setBackgroundFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundFileName"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->backgroundFileName:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public setHasRecentPicture(Z)V
    .locals 0
    .param p1, "hasRecentPicture"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->hasRecentPicture:Z

    .line 413
    return-void
.end method

.method public setLastActionState(Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;)V
    .locals 0
    .param p1, "lastActionState"    # Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->lastActionState:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    .line 417
    return-void
.end method

.method public setLastUpdateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "receiveTime"    # Ljava/util/Date;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->lastUpdateTime:Ljava/util/Date;

    .line 421
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "mute"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->mute:Z

    .line 425
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->name:Ljava/lang/String;

    .line 429
    return-void
.end method

.method setRemovedByOwner(Z)V
    .locals 0
    .param p1, "removedByOwner"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->removedByOwner:Z

    .line 433
    return-void
.end method

.method public final setUnfinishedMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "unfinishedMessage"    # Ljava/lang/String;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->unfinishedMessage:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0
    .param p1, "unreadCount"    # I

    .prologue
    .line 440
    iput p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->unreadCount:I

    .line 441
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->visible:Z

    .line 445
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ChatGroup [topic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", creatorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->creatorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ownerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->ownerUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", backgroundFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->backgroundFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->createTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->lastUpdateTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", chatGroupType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->chatGroupType:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->unreadCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasRecentPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->hasRecentPicture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", removedByOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->removedByOwner:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->mute:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->lastMsg:Lcom/liquable/nemo/message/model/MessageInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lastActionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->lastActionState:Lcom/liquable/nemo/group/model/ChatGroup$ChatGroupLastActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unfinishedMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->unfinishedMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", members="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/model/ChatGroup;->members:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
