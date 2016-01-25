.class public Lcom/liquable/nemo/forum/ArticleListAdapter$NormalViewHolder;
.super Ljava/lang/Object;
.source "ArticleListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/ArticleListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NormalViewHolder"
.end annotation


# instance fields
.field articlePictureImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

.field articlePictureImageViewContainer:Landroid/view/View;

.field articleTitleTextView:Landroid/widget/TextView;

.field creatorIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

.field creatorNicknameTextView:Landroid/widget/TextView;

.field lastUpdateTimeTextView:Landroid/widget/TextView;

.field likeCountTextView:Landroid/widget/TextView;

.field replyCountTextView:Landroid/widget/TextView;

.field unreadImageView:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
