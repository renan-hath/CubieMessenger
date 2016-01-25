.class public Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ManageCustomStickerActivity.java"


# instance fields
.field private customStickerAdapter:Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private loadCustomStickerTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/custom/model/CustomSticker;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;)Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->customStickerAdapter:Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->loadCustomStickers()V

    return-void
.end method

.method private loadCustomStickers()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->loadCustomStickerTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->loadCustomStickerTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 40
    :cond_0
    new-instance v0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$1;-><init>(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 58
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->loadCustomStickerTask:Landroid/os/AsyncTask;

    .line 59
    return-void
.end method


# virtual methods
.method protected onDestroy()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->loadCustomStickerTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->loadCustomStickerTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 67
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    const v6, 0x7f0d0350

    invoke-virtual {v4, v6}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 72
    const v4, 0x7f030038

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->setContentView(I)V

    .line 74
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v4

    iput-object v4, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 76
    const v4, 0x7f0800bb

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 78
    .local v1, "gridView":Landroid/widget/GridView;
    const v4, 0x7f08034d

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 79
    .local v3, "tipsView":Landroid/view/View;
    const v4, 0x7f08034e

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, "textView":Landroid/widget/TextView;
    const v4, 0x7f0d017d

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 81
    const v4, 0x7f08034f

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 82
    .local v0, "closeTipButton":Landroid/widget/ImageButton;
    new-instance v4, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$2;

    invoke-direct {v4, p0, v3}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$2;-><init>(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->isShowCustomStickerTips()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 92
    new-instance v4, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

    iget-object v6, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v4, p0, v6, v5}, Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    iput-object v4, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->customStickerAdapter:Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

    .line 93
    iget-object v4, p0, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->customStickerAdapter:Lcom/liquable/nemo/sticker/custom/CustomStickerAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    new-instance v4, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity$3;-><init>(Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 118
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/custom/ManageCustomStickerActivity;->loadCustomStickers()V

    .line 119
    return-void

    .line 90
    :cond_0
    const/16 v4, 0x8

    goto :goto_0
.end method
