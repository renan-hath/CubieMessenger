.class public Lcom/liquable/nemo/forum/model/HotArticle;
.super Ljava/lang/Object;
.source "HotArticle.java"


# instance fields
.field private final article:Lcom/liquable/nemo/forum/model/article/Article;

.field private final boardCategory:Ljava/lang/String;

.field private final boardId:Ljava/lang/String;

.field private final boardTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 0
    .param p1, "boardId"    # Ljava/lang/String;
    .param p2, "boardTitle"    # Ljava/lang/String;
    .param p3, "boardCategory"    # Ljava/lang/String;
    .param p4, "article"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardTitle:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardCategory:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/liquable/nemo/forum/model/HotArticle;->article:Lcom/liquable/nemo/forum/model/article/Article;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 51
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 52
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 55
    check-cast v0, Lcom/liquable/nemo/forum/model/HotArticle;

    .line 57
    .local v0, "that":Lcom/liquable/nemo/forum/model/HotArticle;
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/HotArticle;->article:Lcom/liquable/nemo/forum/model/article/Article;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/HotArticle;->article:Lcom/liquable/nemo/forum/model/article/Article;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/HotArticle;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 58
    goto :goto_0

    .line 57
    :cond_5
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/HotArticle;->article:Lcom/liquable/nemo/forum/model/article/Article;

    if-nez v3, :cond_4

    .line 60
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardCategory:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardCategory:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/HotArticle;->boardCategory:Ljava/lang/String;

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    .line 63
    goto :goto_0

    .line 61
    :cond_8
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/HotArticle;->boardCategory:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 65
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardId:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/HotArticle;->boardId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    .line 66
    goto :goto_0

    .line 65
    :cond_b
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/HotArticle;->boardId:Ljava/lang/String;

    if-nez v3, :cond_a

    .line 68
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardTitle:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardTitle:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/HotArticle;->boardTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 69
    goto :goto_0

    .line 68
    :cond_d
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/HotArticle;->boardTitle:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getArticle()Lcom/liquable/nemo/forum/model/article/Article;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/HotArticle;->article:Lcom/liquable/nemo/forum/model/article/Article;

    return-object v0
.end method

.method public getBoardCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getBoardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardId:Ljava/lang/String;

    return-object v0
.end method

.method public getBoardTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardTitle:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HotArticle{boardId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", boardTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", boardCategory=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/HotArticle;->boardCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", article="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/HotArticle;->article:Lcom/liquable/nemo/forum/model/article/Article;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withArticle(Lcom/liquable/nemo/forum/model/article/Article;)Lcom/liquable/nemo/forum/model/HotArticle;
    .locals 4
    .param p1, "article"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 76
    new-instance v0, Lcom/liquable/nemo/forum/model/HotArticle;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/model/HotArticle;->getBoardId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/model/HotArticle;->getBoardTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/model/HotArticle;->getBoardCategory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/liquable/nemo/forum/model/HotArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/forum/model/article/Article;)V

    return-object v0
.end method
