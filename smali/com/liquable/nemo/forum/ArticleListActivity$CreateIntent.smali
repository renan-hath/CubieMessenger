.class public Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;
.super Landroid/content/Intent;
.source "ArticleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/ArticleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateIntent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/model/forum/ForumBoardDto;Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forumBoardDto"    # Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .param p3, "from"    # Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 28
    const-class v0, Lcom/liquable/nemo/forum/ArticleListActivity;

    invoke-virtual {p0, p1, v0}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 29
    const-string/jumbo v0, "BOARD_DTO"

    invoke-virtual {p0, v0, p2}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v0, "from"

    invoke-virtual {p0, v0, p3}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 31
    return-void
.end method

.method public static getBoardDto(Landroid/os/Bundle;)Lcom/liquable/nemo/model/forum/ForumBoardDto;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 18
    const-string/jumbo v0, "BOARD_DTO"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/ForumBoardDto;

    return-object v0
.end method

.method public static getFrom(Landroid/os/Bundle;)Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 22
    const-string/jumbo v0, "from"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/analytics/IAnalyticsService$ForumBoardFrom;

    return-object v0
.end method
