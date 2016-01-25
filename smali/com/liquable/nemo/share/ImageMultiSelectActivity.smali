.class public Lcom/liquable/nemo/share/ImageMultiSelectActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ImageMultiSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;,
        Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;,
        Lcom/liquable/nemo/share/ImageMultiSelectActivity$CreateIntent;
    }
.end annotation


# instance fields
.field adapter:Lcom/liquable/nemo/share/ImageMultiSelectActivity$ImageThumbnailAdapter;

.field private nextBtn:Landroid/widget/Button;

.field private final selectedPictureInfos:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/liquable/nemo/share/ImageMultiSelectActivity$PictureInfoImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 193
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->selectedPictureInfos:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->selectedPictureInfos:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/share/ImageMultiSelectActivity;Landroid/widget/ImageView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/share/ImageMultiSelectActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->updateSelectImageView(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/ImageMultiSelectActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->nextBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private updateSelectImageView(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "imageSelectView"    # Landroid/widget/ImageView;
    .param p2, "on"    # Z

    .prologue
    .line 260
    if-eqz p2, :cond_0

    .line 261
    const v0, 0x7f020490

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    const v0, 0x7f02048f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    const v3, 0x7f03002e

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->setContentView(I)V

    .line 199
    const v3, 0x7f0d02df

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->setTitle(I)V

    .line 200
    const v3, 0x7f0800be

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/staggerd/StaggeredGridView;

    .line 202
    .local v0, "imageGridView":Lcom/liquable/nemo/staggerd/StaggeredGridView;
    invoke-virtual {p0}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$CreateIntent;->getPictureInfos(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 203
    .local v2, "pictureInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v1

    .line 205
    .local v1, "imageLoader":Lcom/liquable/nemo/util/ImageLoader;
    new-instance v3, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;-><init>(Lcom/liquable/nemo/share/ImageMultiSelectActivity;Ljava/util/List;Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/staggerd/StaggeredGridView;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    .line 232
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    const v3, 0x7f08006f

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->nextBtn:Landroid/widget/Button;

    .line 235
    iget-object v3, p0, Lcom/liquable/nemo/share/ImageMultiSelectActivity;->nextBtn:Landroid/widget/Button;

    new-instance v4, Lcom/liquable/nemo/share/ImageMultiSelectActivity$2;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/share/ImageMultiSelectActivity$2;-><init>(Lcom/liquable/nemo/share/ImageMultiSelectActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    return-void
.end method
