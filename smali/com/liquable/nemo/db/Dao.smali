.class public Lcom/liquable/nemo/db/Dao;
.super Ljava/lang/Object;
.source "Dao.java"


# static fields
.field private static INSTANCE:Lcom/liquable/nemo/db/Dao;


# instance fields
.field public final accountDao:Lcom/liquable/nemo/db/AccountDao;

.field public final adsDao:Lcom/liquable/nemo/ads/model/AdsDao;

.field public final chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

.field public final chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

.field public final contactInfoDao:Lcom/liquable/nemo/db/ContactInfoDao;

.field public final customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

.field public final deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

.field public final existingSystemNoticeDao:Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;

.field public final favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

.field private final googlePlayPurchaseDao:Lcom/liquable/nemo/db/GooglePlayPurchaseDao;

.field public final likedForumItemDao:Lcom/liquable/nemo/db/LikedForumItemDao;

.field public final messageDao:Lcom/liquable/nemo/db/MessageDao;

.field public final mutualFriendRelationshipDao:Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

.field public final noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

.field public final preferenceDao:Lcom/liquable/nemo/db/PreferenceDao;

.field public final recommendFriendDao:Lcom/liquable/nemo/db/RecommendFriendDao;

.field public final reportAbuseForumArticleDao:Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;

.field public final reportAbuseForumBoardDao:Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;

.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field public final stickerDao:Lcom/liquable/nemo/db/StickerDao;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/message/model/MessageProcessor;Lcom/liquable/nemo/notice/NoticeMapper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageProcessor"    # Lcom/liquable/nemo/message/model/MessageProcessor;
    .param p3, "noticeMapper"    # Lcom/liquable/nemo/notice/NoticeMapper;

    .prologue
    .line 79
    new-instance v0, Lcom/liquable/nemo/db/NemoDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/NemoDatabaseHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/liquable/nemo/db/NemoDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 82
    invoke-static {p1}, Lcom/liquable/nemo/util/DeviceUtil;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-direct {p0, v0, p2, p3, v1}, Lcom/liquable/nemo/db/Dao;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/liquable/nemo/message/model/MessageProcessor;Lcom/liquable/nemo/notice/NoticeMapper;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/liquable/nemo/message/model/MessageProcessor;Lcom/liquable/nemo/notice/NoticeMapper;Ljava/lang/String;)V
    .locals 2
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "messageProcessor"    # Lcom/liquable/nemo/message/model/MessageProcessor;
    .param p3, "noticeMapper"    # Lcom/liquable/nemo/notice/NoticeMapper;
    .param p4, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    new-instance v0, Lcom/liquable/nemo/db/ChatGroupMemberDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/ChatGroupMemberDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    .line 91
    new-instance v0, Lcom/liquable/nemo/db/ChatGroupDao;

    iget-object v1, p0, Lcom/liquable/nemo/db/Dao;->chatGroupMemberDao:Lcom/liquable/nemo/db/ChatGroupMemberDao;

    invoke-direct {v0, p1, v1}, Lcom/liquable/nemo/db/ChatGroupDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/liquable/nemo/db/ChatGroupMemberDao;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->chatGroupDao:Lcom/liquable/nemo/db/ChatGroupDao;

    .line 92
    new-instance v0, Lcom/liquable/nemo/db/AccountDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/AccountDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->accountDao:Lcom/liquable/nemo/db/AccountDao;

    .line 93
    new-instance v0, Lcom/liquable/nemo/db/ContactInfoDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/ContactInfoDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->contactInfoDao:Lcom/liquable/nemo/db/ContactInfoDao;

    .line 94
    new-instance v0, Lcom/liquable/nemo/db/MessageDao;

    invoke-direct {v0, p1, p2}, Lcom/liquable/nemo/db/MessageDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/liquable/nemo/message/model/MessageProcessor;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->messageDao:Lcom/liquable/nemo/db/MessageDao;

    .line 95
    new-instance v0, Lcom/liquable/nemo/db/RecommendFriendDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/RecommendFriendDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->recommendFriendDao:Lcom/liquable/nemo/db/RecommendFriendDao;

    .line 96
    new-instance v0, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/MutualFriendRelationshipDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->mutualFriendRelationshipDao:Lcom/liquable/nemo/db/MutualFriendRelationshipDao;

    .line 97
    new-instance v0, Lcom/liquable/nemo/notice/NoticeDao;

    invoke-direct {v0, p1, p3}, Lcom/liquable/nemo/notice/NoticeDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/liquable/nemo/notice/NoticeMapper;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->noticeDao:Lcom/liquable/nemo/notice/NoticeDao;

    .line 98
    new-instance v0, Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->existingSystemNoticeDao:Lcom/liquable/nemo/notice/ExistingSystemNoticeDao;

    .line 99
    new-instance v0, Lcom/liquable/nemo/db/StickerDao;

    invoke-direct {v0, p1, p4}, Lcom/liquable/nemo/db/StickerDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->stickerDao:Lcom/liquable/nemo/db/StickerDao;

    .line 100
    new-instance v0, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->googlePlayPurchaseDao:Lcom/liquable/nemo/db/GooglePlayPurchaseDao;

    .line 101
    new-instance v0, Lcom/liquable/nemo/db/PreferenceDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/PreferenceDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->preferenceDao:Lcom/liquable/nemo/db/PreferenceDao;

    .line 102
    new-instance v0, Lcom/liquable/nemo/ads/model/AdsDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/ads/model/AdsDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->adsDao:Lcom/liquable/nemo/ads/model/AdsDao;

    .line 103
    new-instance v0, Lcom/liquable/nemo/db/DeletedMessageIdDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/DeletedMessageIdDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->deletedMessageIdDao:Lcom/liquable/nemo/db/DeletedMessageIdDao;

    .line 104
    new-instance v0, Lcom/liquable/nemo/db/CustomStickerDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/CustomStickerDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->customStickerDao:Lcom/liquable/nemo/db/CustomStickerDao;

    .line 105
    new-instance v0, Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    .line 106
    new-instance v0, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->reportAbuseForumBoardDao:Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;

    .line 107
    new-instance v0, Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->reportAbuseForumArticleDao:Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;

    .line 108
    new-instance v0, Lcom/liquable/nemo/db/LikedForumItemDao;

    invoke-direct {v0, p1}, Lcom/liquable/nemo/db/LikedForumItemDao;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/liquable/nemo/db/Dao;->likedForumItemDao:Lcom/liquable/nemo/db/LikedForumItemDao;

    .line 109
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/liquable/nemo/message/model/MessageProcessor;Lcom/liquable/nemo/notice/NoticeMapper;)Lcom/liquable/nemo/db/Dao;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageProcessor"    # Lcom/liquable/nemo/message/model/MessageProcessor;
    .param p2, "noticeMapper"    # Lcom/liquable/nemo/notice/NoticeMapper;

    .prologue
    .line 31
    const-class v1, Lcom/liquable/nemo/db/Dao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/db/Dao;->INSTANCE:Lcom/liquable/nemo/db/Dao;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/liquable/nemo/db/Dao;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2}, Lcom/liquable/nemo/db/Dao;-><init>(Landroid/content/Context;Lcom/liquable/nemo/message/model/MessageProcessor;Lcom/liquable/nemo/notice/NoticeMapper;)V

    sput-object v0, Lcom/liquable/nemo/db/Dao;->INSTANCE:Lcom/liquable/nemo/db/Dao;

    .line 34
    :cond_0
    sget-object v0, Lcom/liquable/nemo/db/Dao;->INSTANCE:Lcom/liquable/nemo/db/Dao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 113
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 117
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 121
    return-void
.end method

.method public truncate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "NEMO_PREFERENCE"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "MESSAGES"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "ACCOUNTS"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CHAT_GROUPS"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CHAT_GROUP_MEMBERS"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "READED_ACK"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "MUTUAL_FRIEND_RELATIONSHIP"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "RECOMMEND_FRIEND"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "NOTICE"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "EXISTING_SYSTEM_NOTICE"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "EXISTING_SYSTEM_NOTICE"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "ARTWORK_REPLY_RECORD"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "ARTWORK_RECORD"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "STICKER_ROOT"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "STICKER_PACKAGES"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "PURCHASE_STATE"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "DELETED_MESSAGE_ID"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "CUSTOM_STICKER"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "FAVORITE_FORUM_BOARD"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "REPORT_ABUSE_FORUM_BOARD"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "REPORT_ABUSE_FORUM_ARTICLE"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "LIKED_FORUM_ITEM"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/db/Dao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 149
    return-void
.end method
