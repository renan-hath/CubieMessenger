.class public Lcom/liquable/nemo/client/service/ForumService;
.super Ljava/lang/Object;
.source "ForumService.java"


# instance fields
.field private final nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/client/service/NemoRpcService;)V
    .locals 0
    .param p1, "nemoRpcService"    # Lcom/liquable/nemo/client/service/NemoRpcService;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    .line 29
    return-void
.end method


# virtual methods
.method public createArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumArticleDto;
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "boardId"    # Ljava/lang/String;
    .param p3, "articleJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.createArticle"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const-class v4, Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .line 37
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/forum/ForumArticleDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 42
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public createArticleReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;
    .locals 5
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .param p3, "creatorUid"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.createArticleReply"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const-class v4, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;

    .line 54
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 52
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 59
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public createBoard(Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "category"    # Lcom/liquable/nemo/model/forum/BoardCategory;
    .param p4, "iconUrl"    # Ljava/lang/String;
    .param p5, "iso3166Country"    # Ljava/lang/String;
    .param p6, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.createBoard"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    .line 71
    invoke-virtual {p3}, Lcom/liquable/nemo/model/forum/BoardCategory;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    const-class v4, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 72
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 70
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/forum/ForumBoardDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 77
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public deleteArticleByAuthor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "boardId"    # Ljava/lang/String;
    .param p3, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.deleteArticleByAuthor"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 106
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public deleteArticleByBoardCreator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "boardId"    # Ljava/lang/String;
    .param p3, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.deleteArticleByBoardCreator"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    if-eqz v1, :cond_0

    .line 90
    check-cast v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 92
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public editBoard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/BoardCategory;Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 6
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "category"    # Lcom/liquable/nemo/model/forum/BoardCategory;
    .param p5, "iconUrl"    # Ljava/lang/String;
    .param p6, "editorUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumDeauthorizedException;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.editBoard"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    .line 118
    invoke-virtual {p4}, Lcom/liquable/nemo/model/forum/BoardCategory;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    const-class v4, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 119
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 117
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/forum/ForumBoardDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Lcom/liquable/nemo/model/ForumDeauthorizedException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 124
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public favoriteBoard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "boardId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.favoriteBoard"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public findArticle(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/model/forum/ForumArticleDto;
    .locals 5
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumArticleNotFoundException;
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.findArticle"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-class v4, Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .line 160
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 158
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/model/forum/ForumArticleDto;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/ForumArticleNotFoundException;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Lcom/liquable/nemo/model/ForumArticleNotFoundException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 165
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public likeArticle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.likeArticle"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/BooleanMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/BooleanMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listArticleReplies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .param p3, "startReplyId"    # Ljava/lang/String;
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumArticleReplyDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/ForumArticleNotFoundException;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.listArticleReplies"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    .line 144
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/ForumService$1;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/ForumService$1;-><init>(Lcom/liquable/nemo/client/service/ForumService;)V

    .line 145
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 143
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    instance-of v1, v0, Lcom/liquable/nemo/model/ForumArticleNotFoundException;

    if-eqz v1, :cond_0

    .line 149
    check-cast v0, Lcom/liquable/nemo/model/ForumArticleNotFoundException;

    .end local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    throw v0

    .line 151
    .restart local v0    # "e":Lcom/liquable/nemo/model/DomainException;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listArticles(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "startArticleId"    # Ljava/lang/String;
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumArticleDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.listArticles"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    .line 174
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/ForumService$2;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/ForumService$2;-><init>(Lcom/liquable/nemo/client/service/ForumService;)V

    .line 175
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 173
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listBoardsByCategory(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "iso3166Country"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.listBoardsByCategory"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    .line 188
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/ForumService$3;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/ForumService$3;-><init>(Lcom/liquable/nemo/client/service/ForumService;)V

    .line 189
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 187
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listBoardsByIds(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "boardIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.listBoardsByIds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/ForumService$4;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/ForumService$4;-><init>(Lcom/liquable/nemo/client/service/ForumService;)V

    .line 200
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 198
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listLatestBoards(Ljava/lang/String;II)Ljava/util/List;
    .locals 6
    .param p1, "iso3166Country"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.listLatestBoards"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 287
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/ForumService$7;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/ForumService$7;-><init>(Lcom/liquable/nemo/client/service/ForumService;)V

    .line 288
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 286
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listRecommendBoards(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.listRecommendBoardsWithAndroidPackageNames"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "com.liquable.dummy"

    aput-object v7, v5, v6

    .line 214
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/ForumService$5;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/ForumService$5;-><init>(Lcom/liquable/nemo/client/service/ForumService;)V

    .line 215
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 212
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public listSupportedCountry()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.listSupportedCountry"

    const/4 v3, 0x0

    new-instance v4, Lcom/liquable/nemo/client/service/ForumService$8;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/ForumService$8;-><init>(Lcom/liquable/nemo/client/service/ForumService;)V

    .line 299
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 297
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public logBoardBannerClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "forumBoardId"    # Ljava/lang/String;
    .param p2, "forumBoardBannerId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.logBoardBannerClick"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public reportArticleAbuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "articleId"    # Ljava/lang/String;
    .param p3, "reporterUid"    # Ljava/lang/String;
    .param p4, "targetUid"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.reportArticleAbuse"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public reportBoardAbuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "reporterUid"    # Ljava/lang/String;
    .param p3, "targetUid"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.reportBoardAbuse"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public searchBoards(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/forum/ForumBoardDto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.searchBoards"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    .line 254
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Lcom/liquable/nemo/client/service/ForumService$6;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/client/service/ForumService$6;-><init>(Lcom/liquable/nemo/client/service/ForumService;)V

    .line 255
    invoke-static {v4}, Lcom/liquable/nemo/client/mapper/GenericDtoMapper;->getInstance(Lorg/codehaus/jackson/type/TypeReference;)Lcom/liquable/nemo/client/mapper/GenericDtoMapper;

    move-result-object v4

    .line 253
    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method

.method public unfavoriteBoard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "boardId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/client/service/ForumService;->nemoRpcService:Lcom/liquable/nemo/client/service/NemoRpcService;

    const-string/jumbo v2, "forumService.unfavoriteBoard"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    sget-object v4, Lcom/liquable/nemo/client/mapper/VoidMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/VoidMapper;

    invoke-virtual {v1, v2, v3, v4}, Lcom/liquable/nemo/client/service/NemoRpcService;->sendFrameWithResult(Ljava/lang/String;[Ljava/lang/Object;Lcom/liquable/nemo/client/mapper/ResultMapper;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/liquable/nemo/model/DomainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Lcom/liquable/nemo/model/DomainException;
    new-instance v1, Lcom/liquable/nemo/client/SyntaxErrorException;

    invoke-direct {v1}, Lcom/liquable/nemo/client/SyntaxErrorException;-><init>()V

    throw v1
.end method
