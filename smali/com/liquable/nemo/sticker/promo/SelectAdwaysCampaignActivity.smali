.class public Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "SelectAdwaysCampaignActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CreateIntent;,
        Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;
    }
.end annotation


# instance fields
.field private campaignAdapter:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;

.field private isBroadcastReceiverRegistered:Z

.field needFinishOnResume:Z

.field private receiver:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->needFinishOnResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;)Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->campaignAdapter:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;

    return-object v0
.end method

.method private registBroadcastReceiver()V
    .locals 3

    .prologue
    .line 168
    iget-boolean v1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->isBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v1, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;-><init>(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;)V

    iput-object v1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->receiver:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;

    .line 172
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->isBroadcastReceiverRegistered:Z

    .line 173
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->receiver:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregistBroadcastReceiver()V
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->isBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->isBroadcastReceiverRegistered:Z

    .line 183
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->receiver:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CampaignDownloadFileReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0d0061

    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 70
    const v4, 0x7f03003e

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$CreateIntent;->getAdwaysCampaignRecord(Landroid/content/Intent;)Lcom/liquable/nemo/model/sticker/StickerItemDto;

    move-result-object v3

    .line 74
    .local v3, "stickerItemDto":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    const v4, 0x7f0800fb

    invoke-virtual {p0, v4}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 75
    .local v0, "campaignListView":Landroid/widget/ListView;
    new-instance v4, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;

    new-array v5, v7, [Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 76
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;-><init>(Ljava/util/List;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v4, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->campaignAdapter:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;

    .line 78
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300c8

    const/4 v6, 0x0

    .line 79
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "headerView":Landroid/view/View;
    const v4, 0x7f08021e

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, "promotionTextView":Landroid/widget/TextView;
    const v4, 0x7f0d0060

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 85
    iget-object v4, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->campaignAdapter:Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    new-instance v4, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;

    invoke-direct {v4, p0, v3}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$1;-><init>(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    new-instance v4, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;

    invoke-direct {v4, p0, p0, v3}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;-><init>(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    new-array v5, v7, [Ljava/lang/Void;

    .line 145
    invoke-virtual {v4, v5}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity$2;->execute([Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method protected onLoggedInResume()V
    .locals 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onLoggedInResume()V

    .line 152
    iget-boolean v1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->needFinishOnResume:Z

    if-eqz v1, :cond_0

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->registBroadcastReceiver()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignActivity;->unregistBroadcastReceiver()V

    .line 164
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onPause()V

    .line 165
    return-void
.end method
