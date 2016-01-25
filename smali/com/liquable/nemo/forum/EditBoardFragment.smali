.class public Lcom/liquable/nemo/forum/EditBoardFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "EditBoardFragment.java"


# static fields
.field private static final SELECT_ICON:I


# instance fields
.field private boardIconImageView:Landroid/widget/ImageView;

.field private boardIconNetworkImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

.field private iconUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/forum/EditBoardFragment;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/EditBoardFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/forum/EditBoardFragment;->getTempBoardIcon()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/forum/EditBoardFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/EditBoardFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->iconUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/forum/EditBoardFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/EditBoardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/EditBoardFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/forum/EditBoardFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/EditBoardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/EditBoardFragment;->removeDialog(I)V

    return-void
.end method

.method private getTempBoardIcon()Ljava/io/File;
    .locals 3

    .prologue
    .line 47
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v2, "temp_board_icon.jpg"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 48
    .local v0, "tempFile":Ljava/io/File;
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 53
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 57
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/forum/EditBoardFragment;->getTempBoardIcon()Ljava/io/File;

    move-result-object v0

    .line 60
    .local v0, "tempBoardIcon":Ljava/io/File;
    iget-object v1, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->boardIconImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->iconUri:Landroid/net/Uri;

    .line 62
    iget-object v1, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->boardIconImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->iconUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 63
    iget-object v1, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->boardIconImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object v1, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->boardIconNetworkImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    invoke-virtual {v1}, Lcom/liquable/volley/toolbox/NetworkImageView;->cancelLoading()V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 76
    const v9, 0x7f0300b1

    invoke-virtual {p1, v9, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 78
    .local v8, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/EditBoardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Lcom/liquable/nemo/forum/EditBoardActivity$CreateIntent;->getBoardDto(Landroid/os/Bundle;)Lcom/liquable/nemo/model/forum/ForumBoardDto;

    move-result-object v4

    .line 79
    .local v4, "editBoardDto":Lcom/liquable/nemo/model/forum/ForumBoardDto;
    if-nez v4, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/EditBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const v10, 0x7f0d01c6

    invoke-static {v9, v10}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 81
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/EditBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 190
    :goto_0
    return-object v8

    .line 85
    :cond_0
    const v9, 0x7f0801e8

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 86
    .local v2, "boardTitleEditText":Landroid/widget/EditText;
    const v9, 0x7f0801e9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 87
    .local v1, "boardDescriptionEditText":Landroid/widget/EditText;
    const v9, 0x7f0801ed

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    .local v0, "boardCategorySpinner":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/EditBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    .line 90
    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getCategory()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/liquable/nemo/model/forum/BoardCategory;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/liquable/nemo/model/forum/BoardCategory;->i18NKey()Ljava/lang/String;

    move-result-object v10

    .line 89
    invoke-static {v9, v10}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 92
    const v9, 0x7f0801eb

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 93
    .local v6, "selectBoardIconView":Landroid/view/View;
    const v9, 0x7f0801d9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->boardIconImageView:Landroid/widget/ImageView;

    .line 94
    const v9, 0x7f0801ee

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/liquable/volley/toolbox/NetworkImageView;

    iput-object v9, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->boardIconNetworkImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    .line 95
    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const v9, 0x7f0801ec

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 99
    .local v5, "selectBoardIconBtn":Landroid/widget/Button;
    new-instance v7, Lcom/liquable/nemo/forum/EditBoardFragment$1;

    invoke-direct {v7, p0}, Lcom/liquable/nemo/forum/EditBoardFragment$1;-><init>(Lcom/liquable/nemo/forum/EditBoardFragment;)V

    .line 114
    .local v7, "selectIconClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIcon()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 116
    iget-object v9, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->boardIconNetworkImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/forum/ForumBoardDto;->getIcon()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v9, v10, v11}, Lcom/liquable/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 121
    :goto_1
    const v9, 0x7f0801e7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 122
    .local v3, "confirmEditBoardBtn":Landroid/widget/Button;
    new-instance v9, Lcom/liquable/nemo/forum/EditBoardFragment$2;

    invoke-direct {v9, p0, v2, v1, v4}, Lcom/liquable/nemo/forum/EditBoardFragment$2;-><init>(Lcom/liquable/nemo/forum/EditBoardFragment;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/liquable/nemo/model/forum/ForumBoardDto;)V

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 118
    .end local v3    # "confirmEditBoardBtn":Landroid/widget/Button;
    :cond_1
    invoke-virtual {v5, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    iget-object v9, p0, Lcom/liquable/nemo/forum/EditBoardFragment;->boardIconNetworkImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/liquable/volley/toolbox/NetworkImageView;->setVisibility(I)V

    goto :goto_1
.end method
