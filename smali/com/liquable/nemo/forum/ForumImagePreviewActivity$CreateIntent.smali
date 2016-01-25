.class public Lcom/liquable/nemo/forum/ForumImagePreviewActivity$CreateIntent;
.super Landroid/content/Intent;
.source "ForumImagePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/ForumImagePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .param p4, "article"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 32
    const-class v0, Lcom/liquable/nemo/forum/ForumImagePreviewActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/forum/ForumImagePreviewActivity$CreateIntent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    const-string/jumbo v0, "ForumBoardDto"

    invoke-virtual {p0, v0, p3}, Lcom/liquable/nemo/forum/ForumImagePreviewActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 35
    const-string/jumbo v0, "Article"

    invoke-virtual {p0, v0, p4}, Lcom/liquable/nemo/forum/ForumImagePreviewActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 36
    return-void
.end method

.method public static getArticle(Landroid/content/Intent;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    const-string/jumbo v0, "Article"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/Article;

    return-object v0
.end method

.method public static getForumBoardDto(Landroid/content/Intent;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    const-string/jumbo v0, "ForumBoardDto"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    return-object v0
.end method

.method public static getUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
