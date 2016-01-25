.class public final enum Lcom/liquable/nemo/forum/model/ForumEvent;
.super Ljava/lang/Enum;
.source "ForumEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/forum/model/ForumEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/forum/model/ForumEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.forum.model.FORUM_EVENT"

.field public static final enum ARTICLE_REPLY_COUNT_CHANGE:Lcom/liquable/nemo/forum/model/ForumEvent;

.field public static final enum BOARD_UPDATE:Lcom/liquable/nemo/forum/model/ForumEvent;

.field public static final enum FORUM_TAB_UNREAD:Lcom/liquable/nemo/forum/model/ForumEvent;

.field public static final KEY_ARTICLE_ID:Ljava/lang/String; = "com.liquable.nemo.forum.model.KEY_ARTICLE_ID"

.field public static final KEY_BOARD_ID:Ljava/lang/String; = "com.liquable.nemo.forum.model.KEY_BOARD_ID"

.field public static final KEY_ENTER_TIME:Ljava/lang/String; = "com.liquable.nemo.forum.model.KEY_ENTER_TIME"

.field public static final KEY_HAS_UNREAD_COUNT:Ljava/lang/String; = "com.liquable.nemo.forum.model.KEY_UNREAD_COUNT"

.field public static final KEY_LIKE_COUNT:Ljava/lang/String; = "com.liquable.nemo.forum.model.KEY_LIKE_COUNT"

.field public static final KEY_REPLY_COUNT:Ljava/lang/String; = "com.liquable.nemo.forum.model.KEY_REPLY_COUNT"

.field public static final enum LIKE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

.field public static final enum RELOAD_AFTER_DELETE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

.field public static final enum RELOAD_AFTER_ENTER_FORUM_BOARD:Lcom/liquable/nemo/forum/model/ForumEvent;

.field public static final enum RELOAD_AFTER_REPORT_ABUSE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

.field public static final enum RELOAD_AFTER_REPORT_ABUSE_BAORD:Lcom/liquable/nemo/forum/model/ForumEvent;

.field public static final enum RELOAD_ARTICLE_LIST:Lcom/liquable/nemo/forum/model/ForumEvent;

.field public static final enum RELOAD_FAVORITE_BOARD:Lcom/liquable/nemo/forum/model/ForumEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v1, "RELOAD_FAVORITE_BOARD"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/forum/model/ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_FAVORITE_BOARD:Lcom/liquable/nemo/forum/model/ForumEvent;

    .line 11
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v1, "BOARD_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/forum/model/ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->BOARD_UPDATE:Lcom/liquable/nemo/forum/model/ForumEvent;

    .line 12
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v1, "RELOAD_AFTER_REPORT_ABUSE_BAORD"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/forum/model/ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_REPORT_ABUSE_BAORD:Lcom/liquable/nemo/forum/model/ForumEvent;

    .line 13
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v1, "RELOAD_AFTER_REPORT_ABUSE_ARTICLE"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/forum/model/ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_REPORT_ABUSE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    .line 14
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v1, "RELOAD_AFTER_DELETE_ARTICLE"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/forum/model/ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_DELETE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    .line 15
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v1, "RELOAD_ARTICLE_LIST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/forum/model/ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_ARTICLE_LIST:Lcom/liquable/nemo/forum/model/ForumEvent;

    .line 16
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v1, "FORUM_TAB_UNREAD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/forum/model/ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->FORUM_TAB_UNREAD:Lcom/liquable/nemo/forum/model/ForumEvent;

    .line 17
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v1, "ARTICLE_REPLY_COUNT_CHANGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/forum/model/ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->ARTICLE_REPLY_COUNT_CHANGE:Lcom/liquable/nemo/forum/model/ForumEvent;

    .line 18
    new-instance v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v1, "RELOAD_AFTER_ENTER_FORUM_BOARD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/forum/model/ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_ENTER_FORUM_BOARD:Lcom/liquable/nemo/forum/model/ForumEvent;

    new-instance v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v1, "LIKE_ARTICLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/forum/model/ForumEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->LIKE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/liquable/nemo/forum/model/ForumEvent;

    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_FAVORITE_BOARD:Lcom/liquable/nemo/forum/model/ForumEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->BOARD_UPDATE:Lcom/liquable/nemo/forum/model/ForumEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_REPORT_ABUSE_BAORD:Lcom/liquable/nemo/forum/model/ForumEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_REPORT_ABUSE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_DELETE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_ARTICLE_LIST:Lcom/liquable/nemo/forum/model/ForumEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->FORUM_TAB_UNREAD:Lcom/liquable/nemo/forum/model/ForumEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->ARTICLE_REPLY_COUNT_CHANGE:Lcom/liquable/nemo/forum/model/ForumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_ENTER_FORUM_BOARD:Lcom/liquable/nemo/forum/model/ForumEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->LIKE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->$VALUES:[Lcom/liquable/nemo/forum/model/ForumEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static canHandle(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isForumTabHasUnreadCount(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const-string/jumbo v0, "com.liquable.nemo.forum.model.KEY_UNREAD_COUNT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static matchArticleReplyCountChange(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 119
    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->ARTICLE_REPLY_COUNT_CHANGE:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static matchBoardUpdate(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "currentBoardId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string/jumbo v2, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 41
    :cond_1
    const-string/jumbo v2, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "boardId":Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->BOARD_UPDATE:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static matchEnterBoard(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 49
    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_ENTER_FORUM_BOARD:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static matchForumTabUnreadCountChange(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 57
    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->FORUM_TAB_UNREAD:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static matchLikeArticle(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 127
    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->LIKE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static matchReloadAfterDeleteArticle(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "currentBoardId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 65
    const-string/jumbo v2, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    const-string/jumbo v2, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "boardId":Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_DELETE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static matchReloadAfterReportAbuseArticle(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "currentBoardId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 78
    const-string/jumbo v2, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    const-string/jumbo v2, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "boardId":Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_REPORT_ABUSE_ARTICLE:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    .line 87
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static matchReloadAfterReportAbuseBoard(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 91
    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_AFTER_REPORT_ABUSE_BAORD:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static matchReloadArticleList(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "currentBoardId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 99
    const-string/jumbo v2, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    const-string/jumbo v2, "com.liquable.nemo.forum.model.KEY_BOARD_ID"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "boardId":Ljava/lang/String;
    invoke-static {p1, v0}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    sget-object v2, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_ARTICLE_LIST:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static matchReloadFavoriteBoards(Landroid/content/Intent;)Z
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 111
    const-string/jumbo v1, "com.liquable.nemo.forum.model.FORUM_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/liquable/nemo/forum/model/ForumEvent;->RELOAD_FAVORITE_BOARD:Lcom/liquable/nemo/forum/model/ForumEvent;

    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/forum/model/ForumEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/ForumEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/forum/model/ForumEvent;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/liquable/nemo/forum/model/ForumEvent;->$VALUES:[Lcom/liquable/nemo/forum/model/ForumEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/forum/model/ForumEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/forum/model/ForumEvent;

    return-object v0
.end method
