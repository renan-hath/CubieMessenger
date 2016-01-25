.class public Lcom/liquable/nemo/forum/CreateBoardFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "CreateBoardFragment.java"


# static fields
.field private static final SELECT_ICON:I


# instance fields
.field private boardIconImageView:Landroid/widget/ImageView;

.field private iconUri:Landroid/net/Uri;

.field private selectBoardIconBtn:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/forum/CreateBoardFragment;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/CreateBoardFragment;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getTempBoardIcon()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/forum/CreateBoardFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/CreateBoardFragment;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateBoardFragment;->iconUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/forum/CreateBoardFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/CreateBoardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/CreateBoardFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/forum/CreateBoardFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/CreateBoardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/CreateBoardFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/liquable/nemo/forum/CreateBoardFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/forum/CreateBoardFragment;->lambda$onCreateView$35(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;)V

    return-void
.end method

.method private createCategoryOptions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v1, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/liquable/nemo/model/forum/BoardCategory;->availableValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    .line 54
    .local v0, "cat":Lcom/liquable/nemo/model/forum/BoardCategory;
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/BoardCategory;->i18NKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v0    # "cat":Lcom/liquable/nemo/model/forum/BoardCategory;
    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 57
    return-object v1
.end method

.method private getTempBoardIcon()Ljava/io/File;
    .locals 3

    .prologue
    .line 61
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    const-string/jumbo v2, "temp_board_icon.jpg"

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/NemoFileService;->getTempFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 62
    .local v0, "tempFile":Ljava/io/File;
    return-object v0
.end method

.method private synthetic lambda$onCreateView$35(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/view/View;)V
    .locals 9
    .param p4, "v"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x32

    const/4 v8, 0x0

    .line 127
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "boardTitle":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "boardDescription":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 131
    .local v6, "categoryIndex":I
    if-nez v6, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d029d

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 190
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/model/forum/BoardCategory;->availableValues()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v6, -0x1

    .line 137
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/forum/BoardCategory;

    .line 138
    invoke-virtual {v0}, Lcom/liquable/nemo/model/forum/BoardCategory;->name()Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "selectedCategory":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d02a4

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p2}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    if-le v0, v7, :cond_2

    .line 146
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d00b7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 148
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v8

    .line 147
    invoke-virtual {p0, v1, v2}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    new-instance v0, Lcom/liquable/nemo/forum/CreateBoardFragment$2;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/forum/CreateBoardFragment$2;-><init>(Lcom/liquable/nemo/forum/CreateBoardFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v8, [Ljava/lang/Void;

    .line 188
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/forum/CreateBoardFragment$2;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0xa0

    .line 67
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 73
    :pswitch_0
    invoke-direct {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getTempBoardIcon()Ljava/io/File;

    move-result-object v0

    .line 74
    .local v0, "tempBoardIcon":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/forum/CreateBoardFragment;->iconUri:Landroid/net/Uri;

    .line 75
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/util/UriLoadableImage;

    iget-object v3, p0, Lcom/liquable/nemo/forum/CreateBoardFragment;->iconUri:Landroid/net/Uri;

    invoke-direct {v2, v3, v5, v5}, Lcom/liquable/nemo/util/UriLoadableImage;-><init>(Landroid/net/Uri;II)V

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 76
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/forum/CreateBoardFragment;->boardIconImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/liquable/nemo/util/UriLoadableImage;

    iget-object v4, p0, Lcom/liquable/nemo/forum/CreateBoardFragment;->iconUri:Landroid/net/Uri;

    invoke-direct {v3, v4, v5, v5}, Lcom/liquable/nemo/util/UriLoadableImage;-><init>(Landroid/net/Uri;II)V

    invoke-virtual {v1, v2, v3}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 77
    iget-object v1, p0, Lcom/liquable/nemo/forum/CreateBoardFragment;->selectBoardIconBtn:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const v7, 0x7f0300b0

    const/4 v8, 0x0

    invoke-virtual {p1, v7, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 90
    .local v6, "view":Landroid/view/View;
    const v7, 0x7f0801e8

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 91
    .local v2, "boardTitleEditText":Landroid/widget/EditText;
    const v7, 0x7f0801e9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 93
    .local v1, "boardDescriptionEditText":Landroid/widget/EditText;
    const v7, 0x7f0801ea

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 95
    .local v0, "boardCategorySpinner":Landroid/widget/Spinner;
    const v7, 0x7f0801d9

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/liquable/nemo/forum/CreateBoardFragment;->boardIconImageView:Landroid/widget/ImageView;

    .line 97
    invoke-direct {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->createCategoryOptions()Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "categories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateBoardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const v9, 0x7f0300a7

    invoke-direct {v7, v8, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 102
    const v7, 0x7f0801ec

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/liquable/nemo/forum/CreateBoardFragment;->selectBoardIconBtn:Landroid/view/View;

    .line 104
    const v7, 0x7f0801eb

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 105
    .local v5, "selectBoardIconView":Landroid/view/View;
    new-instance v7, Lcom/liquable/nemo/forum/CreateBoardFragment$1;

    invoke-direct {v7, p0}, Lcom/liquable/nemo/forum/CreateBoardFragment$1;-><init>(Lcom/liquable/nemo/forum/CreateBoardFragment;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v7, 0x7f0801e7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 125
    .local v4, "confirmCreateBoardBtn":Landroid/widget/Button;
    invoke-static {p0, v2, v1, v0}, Lcom/liquable/nemo/forum/CreateBoardFragment$$Lambda$1;->lambdaFactory$(Lcom/liquable/nemo/forum/CreateBoardFragment;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-object v6
.end method
