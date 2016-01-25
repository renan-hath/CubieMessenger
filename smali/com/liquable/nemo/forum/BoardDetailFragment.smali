.class public Lcom/liquable/nemo/forum/BoardDetailFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "BoardDetailFragment.java"


# instance fields
.field private boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const v9, 0x7f0300ac

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 29
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f0801d9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 30
    .local v2, "boardIconImageView":Lcom/liquable/volley/toolbox/NetworkImageView;
    const v9, 0x7f0801dc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 31
    .local v4, "createTimeTextView":Landroid/widget/TextView;
    const v9, 0x7f0801dd

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 32
    .local v5, "creatorNicknameTextView":Landroid/widget/TextView;
    const v9, 0x7f0801de

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 33
    .local v3, "boardTitleTextView":Landroid/widget/TextView;
    const v9, 0x7f0801df

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    .local v1, "boarDescriptionTextView":Landroid/widget/TextView;
    const v9, 0x7f0801e0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    .local v0, "boarCategoryTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Lcom/liquable/nemo/forum/ArticleListActivity$CreateIntent;->getBoardDto(Landroid/os/Bundle;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v9

    iput-object v9, p0, Lcom/liquable/nemo/forum/BoardDetailFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 38
    iget-object v9, p0, Lcom/liquable/nemo/forum/BoardDetailFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->isCertified()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 39
    const v9, 0x7f0801da

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 40
    const v9, 0x7f0801db

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :cond_0
    const v6, 0x10010

    .line 44
    .local v6, "flags":I
    const v9, 0x7f0203b4

    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v9, v10}, Lcom/liquable/volley/toolbox/NetworkImageView;->setDefaultImageResId(ILandroid/widget/ImageView$ScaleType;)V

    .line 46
    iget-object v9, p0, Lcom/liquable/nemo/forum/BoardDetailFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIcon()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v2, v9, v10}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 48
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/liquable/nemo/forum/BoardDetailFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 49
    invoke-virtual {v10}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreateTime()J

    move-result-wide v10

    const v12, 0x10010

    .line 48
    invoke-static {v9, v10, v11, v12}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v9, p0, Lcom/liquable/nemo/forum/BoardDetailFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCreatorNickname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v9, p0, Lcom/liquable/nemo/forum/BoardDetailFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v9, p0, Lcom/liquable/nemo/forum/BoardDetailFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    invoke-virtual {v9}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/BoardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/liquable/nemo/forum/BoardDetailFragment;->boardDto:Lcom/liquable/nemo/model/forum/ForumBoardDto;

    .line 55
    invoke-virtual {v10}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCategory()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/liquable/nemo/model/forum/BoardCategory;->parse(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/liquable/nemo/model/forum/BoardCategory;->i18NKey()Ljava/lang/String;

    move-result-object v10

    .line 54
    invoke-static {v9, v10}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 56
    .local v7, "resId":I
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 58
    return-object v8
.end method
