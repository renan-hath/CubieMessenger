.class public Lcom/liquable/nemo/forum/model/ForumManager;
.super Ljava/lang/Object;
.source "ForumManager.java"


# static fields
.field public static final MAX_FAVORITE_COUNT:I = 0xc8


# instance fields
.field private final favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

.field private final likedForumItemDao:Lcom/liquable/nemo/db/LikedForumItemDao;

.field private final reportAbuseForumArticleDao:Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;

.field private final reportAbuseForumBoardDao:Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/db/FavoriteForumBoardDao;Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;Lcom/liquable/nemo/db/LikedForumItemDao;)V
    .locals 0
    .param p1, "favoriteForumBoardDao"    # Lcom/liquable/nemo/db/FavoriteForumBoardDao;
    .param p2, "reportAbuseForumBoardDao"    # Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;
    .param p3, "reportAbuseForumArticleDao"    # Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;
    .param p4, "likedForumItemDao"    # Lcom/liquable/nemo/db/LikedForumItemDao;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    .line 30
    iput-object p2, p0, Lcom/liquable/nemo/forum/model/ForumManager;->reportAbuseForumBoardDao:Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;

    .line 31
    iput-object p3, p0, Lcom/liquable/nemo/forum/model/ForumManager;->reportAbuseForumArticleDao:Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;

    .line 32
    iput-object p4, p0, Lcom/liquable/nemo/forum/model/ForumManager;->likedForumItemDao:Lcom/liquable/nemo/db/LikedForumItemDao;

    .line 33
    return-void
.end method


# virtual methods
.method public addFavorite(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 1
    .param p1, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->create(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    .line 37
    return-void
.end method

.method public clearFavorites()V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->deleteAll()V

    .line 41
    return-void
.end method

.method public deleteReportAbuse()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->reportAbuseForumArticleDao:Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;->deleteAll()V

    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->reportAbuseForumBoardDao:Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->deleteAll()V

    .line 46
    return-void
.end method

.method public isFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Z
    .locals 2
    .param p1, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->findById(Ljava/lang/String;)Lcom/liquable/nemo/forum/model/board/ForumBoard;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLiked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->likedForumItemDao:Lcom/liquable/nemo/db/LikedForumItemDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/LikedForumItemDao;->find(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isReachMaxFavoriteBoardCount()Z
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->favoriteBoardCount()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public likeArticle(Ljava/lang/String;)V
    .locals 1
    .param p1, "articleId"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->likedForumItemDao:Lcom/liquable/nemo/db/LikedForumItemDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/LikedForumItemDao;->create(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public listFavoriteIds()Ljava/util/List;
    .locals 1
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
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->listIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listFavorites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->list(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listFavoritesByIds(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/forum/model/board/ForumBoard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "resultIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->list(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listReportAbuseArticleIds()Ljava/util/List;
    .locals 1
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
    .line 69
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->reportAbuseForumArticleDao:Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;->listAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listReportAbuseBoardIds()Ljava/util/List;
    .locals 1
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
    .line 73
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->reportAbuseForumBoardDao:Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;

    invoke-virtual {v0}, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->listAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFavorite(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 1
    .param p1, "boardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->delete(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    .line 78
    return-void
.end method

.method public reportAbuseArticle(Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 4
    .param p1, "article"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->reportAbuseForumArticleDao:Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/Article;->getArticleInfo()Lcom/liquable/nemo/forum/model/article/ArticleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleInfo;->getArticleId()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/db/ReportAbuseForumArticleDao;->create(Ljava/lang/String;J)V

    .line 83
    return-void
.end method

.method public reportAbuseBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 4
    .param p1, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->reportAbuseForumBoardDao:Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/db/ReportAbuseForumBoardDao;->create(Ljava/lang/String;J)V

    .line 87
    return-void
.end method

.method public updateFavoriteBoardLastArticleByLocalArticle(Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDto;)V
    .locals 3
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleDto"    # Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->updateLastArticle(Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDto;)V

    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {p2}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->getLastUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->updateLocalLastUpdateTime(Ljava/lang/String;J)V

    .line 93
    return-void
.end method

.method public updateFavoriteBoardLastUpdateTimeByLocalReply(Ljava/lang/String;J)V
    .locals 1
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "lastUpdateTime"    # J

    .prologue
    .line 97
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->updateLastUpdateTime(Ljava/lang/String;J)V

    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->updateLocalLastUpdateTime(Ljava/lang/String;J)V

    .line 99
    return-void
.end method

.method public updateFavoriteBoardLocalLastUpdateTime(Ljava/lang/String;J)V
    .locals 1
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "lastUpdateTime"    # J

    .prologue
    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->updateLocalLastUpdateTime(Ljava/lang/String;J)V

    .line 103
    return-void
.end method

.method public updateFavorites(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "boardDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/forum/ForumBoardDto;>;"
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/ForumManager;->favoriteForumBoardDao:Lcom/liquable/nemo/db/FavoriteForumBoardDao;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/db/FavoriteForumBoardDao;->updateAll(Ljava/util/List;)V

    .line 107
    return-void
.end method
