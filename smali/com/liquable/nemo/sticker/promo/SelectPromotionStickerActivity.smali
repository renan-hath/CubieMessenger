.class public Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "SelectPromotionStickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$CreateIntent;
    }
.end annotation


# instance fields
.field private isRegistered:Z

.field private promotionStickerAdapter:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$1;-><init>(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->isRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;)Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->promotionStickerAdapter:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;

    return-object v0
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 65
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d0063

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 66
    const v3, 0x7f030040

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->setContentView(I)V

    .line 68
    const v3, 0x7f0800ff

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 69
    .local v1, "promotionStickerListView":Landroid/widget/ListView;
    new-instance v3, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;

    new-array v4, v6, [Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 70
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 71
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v3, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->promotionStickerAdapter:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;

    .line 73
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c8

    const/4 v5, 0x0

    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "headerView":Landroid/view/View;
    const v3, 0x7f08021e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 76
    .local v2, "promotionTextView":Landroid/widget/TextView;
    const v3, 0x7f0d0062

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 79
    iget-object v3, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->promotionStickerAdapter:Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    new-instance v3, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$2;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$2;-><init>(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    new-instance v3, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;

    invoke-direct {v3, p0, p0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;-><init>(Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;Landroid/content/Context;)V

    new-array v4, v6, [Ljava/lang/Void;

    .line 127
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity$3;->execute([Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method protected onLoggedInStart()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onLoggedInStart()V

    .line 135
    iget-boolean v1, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->isRegistered:Z

    if-nez v1, :cond_0

    .line 136
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->isRegistered:Z

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->isRegistered:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/promo/SelectPromotionStickerActivity;->isRegistered:Z

    .line 149
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onStop()V

    .line 150
    return-void
.end method
