.class public Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;
.super Landroid/content/Intent;
.source "ArticleReplyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/ArticleReplyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .param p3, "article"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 48
    const-class v0, Lcom/liquable/nemo/forum/ArticleReplyListActivity;

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v0, "BOARD_DTO"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v0, "ARTICLE"

    invoke-virtual {p0, v0, p3}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "boardId"    # Ljava/lang/String;
    .param p3, "articleId"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 60
    const-class v0, Lcom/liquable/nemo/forum/ArticleReplyListActivity;

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v0, "boardId"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string/jumbo v0, "articleId"

    invoke-virtual {p0, v0, p3}, Lcom/liquable/nemo/forum/ArticleReplyListActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public static getArticle(Landroid/os/Bundle;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const-string/jumbo v0, "ARTICLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/Article;

    return-object v0
.end method

.method public static getArticleId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 39
    const-string/jumbo v0, "articleId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBoardDto(Landroid/os/Bundle;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 31
    const-string/jumbo v0, "BOARD_DTO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    return-object v0
.end method

.method public static getBoardId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const-string/jumbo v0, "boardId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
