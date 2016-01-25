.class public abstract Lcom/liquable/nemo/forum/view/ArticleReplyView;
.super Landroid/widget/RelativeLayout;
.source "ArticleReplyView.java"


# instance fields
.field private final creatorIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

.field private final creatorLayout:Landroid/view/View;

.field private final creatorNicknameTextView:Landroid/widget/TextView;

.field private final replyCreateTimeTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bodyLayoutId"    # I

    .prologue
    const/4 v4, 0x2

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300cd

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    const v1, 0x7f08022e

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/view/ArticleReplyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->creatorLayout:Landroid/view/View;

    .line 35
    const v1, 0x7f080221

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/view/ArticleReplyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/liquable/volley/toolbox/NetworkImageView;

    iput-object v1, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->creatorIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 36
    iget-object v1, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->creatorIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    const v2, 0x7f0203f8

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2, v3}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 38
    const v1, 0x7f0801dd

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/view/ArticleReplyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->creatorNicknameTextView:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->creatorNicknameTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 40
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    .line 39
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 41
    const v1, 0x7f08022f

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/view/ArticleReplyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->replyCreateTimeTextView:Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->replyCreateTimeTextView:Landroid/widget/TextView;

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 43
    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    int-to-float v2, v2

    .line 42
    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 44
    const v1, 0x7f080230

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/forum/view/ArticleReplyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/forum/view/ArticleReplyView;Lcom/liquable/nemo/forum/model/article/ArticleReply;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/forum/view/ArticleReplyView;->lambda$update$36(Lcom/liquable/nemo/forum/model/article/ArticleReply;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$update$36(Lcom/liquable/nemo/forum/model/article/ArticleReply;Landroid/view/View;)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/view/ArticleReplyView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyInfo()Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->getCreatorUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileSettingActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyInfo()Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->getCreatorUid()Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyInfo()Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->getCreatorNickname()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-static {v0, v1, v2}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract doUpdate(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V
.end method

.method public final update(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V
    .locals 9
    .param p1, "articleReply"    # Lcom/liquable/nemo/forum/model/article/ArticleReply;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->creatorNicknameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyInfo()Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->getCreatorNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyInfo()Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->getCreateTime()Ljava/util/Date;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 53
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v6

    .line 56
    .local v6, "createTimeText":Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->replyCreateTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p1}, Lcom/liquable/nemo/forum/model/article/ArticleReply;->getArticleReplyInfo()Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/forum/model/article/ArticleReplyInfo;->getCreatorUid()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, "creatorUid":Ljava/lang/String;
    invoke-static {v7}, Lcom/liquable/nemo/friend/model/Account;->createIconRemoteKeyPath(Ljava/lang/String;)Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    move-result-object v8

    .line 60
    .local v8, "remoteKeyPath":Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->creatorIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    invoke-virtual {v8}, Lcom/liquable/nemo/storage/aws/RemoteKeyPath;->toPublicUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/view/ArticleReplyView;->doUpdate(Lcom/liquable/nemo/forum/model/article/ArticleReply;)V

    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/forum/view/ArticleReplyView;->creatorLayout:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/liquable/nemo/forum/view/ArticleReplyView$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/forum/view/ArticleReplyView;Lcom/liquable/nemo/forum/model/article/ArticleReply;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
