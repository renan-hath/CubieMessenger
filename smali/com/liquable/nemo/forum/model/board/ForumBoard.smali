.class public Lcom/liquable/nemo/forum/model/board/ForumBoard;
.super Ljava/lang/Object;
.source "ForumBoard.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final INVALID_LOCAL_LAST_UPDATE_TIME:J = -0x1L

.field private static final serialVersionUID:J = 0x564b6e406a093c95L


# instance fields
.field private final forumBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

.field private localLastUpdateTime:J

.field private reported:Z


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V
    .locals 2
    .param p1, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 29
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/forum/model/board/ForumBoard;-><init>(Lcom/liquable/nemo/model/forum/ForumBoardDto;J)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/liquable/nemo/model/forum/ForumBoardDto;J)V
    .locals 0
    .param p1, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .param p2, "localLastUpdateTime"    # J

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->forumBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 34
    iput-wide p2, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->localLastUpdateTime:J

    .line 35
    return-void
.end method

.method public static createBoardFromRemote(Lcom/liquable/nemo/model/forum/ForumBoardDto;)Lcom/liquable/nemo/forum/model/board/ForumBoard;
    .locals 1
    .param p0, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .prologue
    .line 17
    new-instance v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/forum/model/board/ForumBoard;-><init>(Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    return-object v0
.end method

.method public static createFavoriteBoard(Lcom/liquable/nemo/model/forum/ForumBoardDto;J)Lcom/liquable/nemo/forum/model/board/ForumBoard;
    .locals 1
    .param p0, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .param p1, "localLastUpdateTime"    # J

    .prologue
    .line 13
    new-instance v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    invoke-direct {v0, p0, p1, p2}, Lcom/liquable/nemo/forum/model/board/ForumBoard;-><init>(Lcom/liquable/nemo/model/forum/ForumBoardDto;J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p0, p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 68
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 71
    check-cast v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;

    .line 73
    .local v0, "that":Lcom/liquable/nemo/forum/model/board/ForumBoard;
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->forumBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v3}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->forumBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 74
    goto :goto_0
.end method

.method public getForumBoardDto()Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->forumBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    return-object v0
.end method

.method public getLocalLastUpdateTime()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->localLastUpdateTime:J

    return-wide v0
.end method

.method public hasNewContent()Z
    .locals 4

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->localLastUpdateTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->forumBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 59
    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getLastUpdateTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->localLastUpdateTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->forumBoardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isReported()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->reported:Z

    return v0
.end method

.method public setLocalLastUpdateTime(J)V
    .locals 0
    .param p1, "localLastUpdateTime"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->localLastUpdateTime:J

    .line 43
    return-void
.end method

.method public setReported(Z)V
    .locals 0
    .param p1, "reported"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/liquable/nemo/forum/model/board/ForumBoard;->reported:Z

    .line 55
    return-void
.end method
