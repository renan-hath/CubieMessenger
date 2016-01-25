.class public Lcom/liquable/nemo/model/forum/HotArticleDto;
.super Ljava/lang/Object;
.source "HotArticleDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# static fields
.field private static final serialVersionUID:J = 0x1cc07d294dL


# instance fields
.field private final boardCategory:Ljava/lang/String;

.field private final boardId:Ljava/lang/String;

.field private final boardTitle:Ljava/lang/String;

.field private final forumArticleDto:Lcom/liquable/nemo/model/forum/ForumArticleDto;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/model/forum/ForumArticleDto;)V
    .locals 0
    .param p1, "boardId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "boardId"
        .end annotation
    .end param
    .param p2, "boardTitle"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "boardTitle"
        .end annotation
    .end param
    .param p3, "boardCategory"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "boardCategory"
        .end annotation
    .end param
    .param p4, "forumArticleDto"    # Lcom/liquable/nemo/model/forum/ForumArticleDto;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "forumArticleDto"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardId:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardTitle:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardCategory:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->forumArticleDto:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    if-ne p0, p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 46
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 49
    check-cast v0, Lcom/liquable/nemo/model/forum/HotArticleDto;

    .line 51
    .local v0, "that":Lcom/liquable/nemo/model/forum/HotArticleDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardCategory:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardCategory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 52
    goto :goto_0

    .line 54
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->forumArticleDto:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/HotArticleDto;->forumArticleDto:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 61
    goto :goto_0
.end method

.method public getBoardCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getBoardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardId:Ljava/lang/String;

    return-object v0
.end method

.method public getBoardTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getForumArticleDto()Lcom/liquable/nemo/model/forum/ForumArticleDto;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->forumArticleDto:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 70
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardTitle:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 71
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardCategory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 72
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->forumArticleDto:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/forum/ForumArticleDto;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 73
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HotArticleDto{boardId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", boardTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", boardCategory=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->boardCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", forumArticleDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/HotArticleDto;->forumArticleDto:Lcom/liquable/nemo/model/forum/ForumArticleDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
