.class public Lcom/liquable/nemo/forum/HotArticleListAdapter$HotArticleViewHolder;
.super Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
.source "HotArticleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/HotArticleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HotArticleViewHolder"
.end annotation


# instance fields
.field boardTitleTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;-><init>()V

    return-void
.end method
