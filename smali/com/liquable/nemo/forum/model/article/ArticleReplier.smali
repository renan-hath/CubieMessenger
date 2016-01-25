.class public Lcom/liquable/nemo/forum/model/article/ArticleReplier;
.super Ljava/lang/Object;
.source "ArticleReplier.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INTENT_KEY:Ljava/lang/String; = "ArticleReplier"


# instance fields
.field private final articleId:Ljava/lang/String;

.field private final boardId:Ljava/lang/String;

.field private final replierNickname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "replierNickname"    # Ljava/lang/String;
    .param p2, "boardId"    # Ljava/lang/String;
    .param p3, "articleId"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->replierNickname:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->boardId:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->articleId:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    instance-of v3, p1, Lcom/liquable/nemo/forum/model/article/ArticleReplier;

    if-nez v3, :cond_2

    move v1, v2

    .line 37
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 40
    check-cast v0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;

    .line 42
    .local v0, "that":Lcom/liquable/nemo/forum/model/article/ArticleReplier;
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->articleId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->articleId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->articleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 43
    goto :goto_0

    .line 42
    :cond_4
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->articleId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 45
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->boardId:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->boardId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->boardId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 46
    goto :goto_0

    .line 45
    :cond_7
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->boardId:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 48
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->replierNickname:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->replierNickname:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->replierNickname:Ljava/lang/String;

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 51
    goto :goto_0

    .line 49
    :cond_9
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->replierNickname:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getArticleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->articleId:Ljava/lang/String;

    return-object v0
.end method

.method public getBoardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->boardId:Ljava/lang/String;

    return-object v0
.end method

.method public getReplierNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->replierNickname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->replierNickname:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->replierNickname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 69
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->boardId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->boardId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 70
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->articleId:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->articleId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 71
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 68
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 69
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ArticleReplier{replierNickname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->replierNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", boardId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->boardId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", articleId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/ArticleReplier;->articleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
