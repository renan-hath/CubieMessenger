.class public Lcom/liquable/nemo/forum/CreateArticleFragment$ResultIntent;
.super Landroid/content/Intent;
.source "CreateArticleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/CreateArticleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultIntent"
.end annotation


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/forum/model/article/Article;)V
    .locals 1
    .param p1, "article"    # Lcom/liquable/nemo/forum/model/article/Article;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 48
    const-string/jumbo v0, "ARTICLE"

    invoke-virtual {p0, v0, p1}, Lcom/liquable/nemo/forum/CreateArticleFragment$ResultIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 49
    return-void
.end method

.method public static getArticle(Landroid/os/Bundle;)Lcom/liquable/nemo/forum/model/article/Article;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 44
    const-string/jumbo v0, "ARTICLE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/forum/model/article/Article;

    return-object v0
.end method
