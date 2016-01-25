.class public Lcom/liquable/nemo/forum/CreateArticleFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "CreateArticleFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/CreateArticleFragment$ResultIntent;
    }
.end annotation


# static fields
.field private static final SELECT_PHOTO:I


# instance fields
.field private articlePictureImageView:Landroid/widget/ImageView;

.field private pictureUri:Landroid/net/Uri;

.field private selectArticleIconView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/forum/CreateArticleFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/forum/CreateArticleFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/forum/CreateArticleFragment;->pictureUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/forum/CreateArticleFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/CreateArticleFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/CreateArticleFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/forum/CreateArticleFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/CreateArticleFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/CreateArticleFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/forum/CreateArticleFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/forum/CreateArticleFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->openGallery()V

    return-void
.end method

.method private openGallery()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isUseNativeGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {p0, v1}, Lcom/liquable/nemo/util/ExternalIntents;->intentPickPhoto(Landroid/support/v4/app/Fragment;I)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/gallery/GalleryActivity;->createSingleSelectIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/forum/CreateArticleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public getPictureImageTargetWidthInDp(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/16 v0, 0x28

    .line 64
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64
    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->getDp(Landroid/content/Context;I)I

    move-result v1

    .line 66
    .local v1, "widthInDp":I
    add-int/lit8 v2, v1, -0x28

    return v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 71
    const/4 v5, -0x1

    if-eq p2, v5, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 78
    .local v4, "selectedPhoto":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 83
    .local v3, "picInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/liquable/nemo/android/provider/PictureInfo;->toImageSrc(Landroid/content/Context;)Lcom/liquable/nemo/util/imagesrc/ImageSrc;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/util/ImageUtils;->decodeDimension(Lcom/liquable/nemo/util/imagesrc/ImageSrc;)Lcom/liquable/nemo/util/Dimension;

    move-result-object v0

    .line 84
    .local v0, "dimension":Lcom/liquable/nemo/util/Dimension;
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getPictureImageTargetWidthInDp(Landroid/content/Context;)I

    move-result v2

    .line 85
    .local v2, "imageWidthInDp":I
    int-to-double v5, v2

    iget v7, v0, Lcom/liquable/nemo/util/Dimension;->height:I

    int-to-double v7, v7

    mul-double/2addr v5, v7

    iget v7, v0, Lcom/liquable/nemo/util/Dimension;->width:I

    int-to-double v7, v7

    div-double/2addr v5, v7

    double-to-int v1, v5

    .line 87
    .local v1, "imageHeightInDp":I
    int-to-double v5, v1

    int-to-double v7, v2

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0d014b

    invoke-static {v5, v6}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 92
    :cond_2
    iput-object v4, p0, Lcom/liquable/nemo/forum/CreateArticleFragment;->pictureUri:Landroid/net/Uri;

    .line 93
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v5

    new-instance v6, Lcom/liquable/nemo/util/UriLoadableImage;

    iget-object v7, p0, Lcom/liquable/nemo/forum/CreateArticleFragment;->pictureUri:Landroid/net/Uri;

    invoke-direct {v6, v7, v2, v1}, Lcom/liquable/nemo/util/UriLoadableImage;-><init>(Landroid/net/Uri;II)V

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 94
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/CreateArticleFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/liquable/nemo/forum/CreateArticleFragment;->articlePictureImageView:Landroid/widget/ImageView;

    new-instance v7, Lcom/liquable/nemo/util/UriLoadableImage;

    iget-object v8, p0, Lcom/liquable/nemo/forum/CreateArticleFragment;->pictureUri:Landroid/net/Uri;

    invoke-direct {v7, v8, v2, v1}, Lcom/liquable/nemo/util/UriLoadableImage;-><init>(Landroid/net/Uri;II)V

    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 96
    iget-object v5, p0, Lcom/liquable/nemo/forum/CreateArticleFragment;->selectArticleIconView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 108
    const v4, 0x7f0300af

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 110
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0801ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, "createArticleBtn":Landroid/view/View;
    const v4, 0x7f0801e6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/liquable/nemo/forum/CreateArticleFragment;->articlePictureImageView:Landroid/widget/ImageView;

    .line 113
    const v4, 0x7f0801e4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 114
    .local v0, "articleTitleEditText":Landroid/widget/EditText;
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/text/InputFilter;

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x1f4

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 116
    new-instance v4, Lcom/liquable/nemo/forum/CreateArticleFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/liquable/nemo/forum/CreateArticleFragment$1;-><init>(Lcom/liquable/nemo/forum/CreateArticleFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v4, 0x7f0801e5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/forum/CreateArticleFragment;->selectArticleIconView:Landroid/view/View;

    .line 178
    new-instance v1, Lcom/liquable/nemo/forum/CreateArticleFragment$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/forum/CreateArticleFragment$2;-><init>(Lcom/liquable/nemo/forum/CreateArticleFragment;)V

    .line 185
    .local v1, "clickListener":Landroid/view/View$OnClickListener;
    iget-object v4, p0, Lcom/liquable/nemo/forum/CreateArticleFragment;->selectArticleIconView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v4, p0, Lcom/liquable/nemo/forum/CreateArticleFragment;->articlePictureImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    return-object v3
.end method
