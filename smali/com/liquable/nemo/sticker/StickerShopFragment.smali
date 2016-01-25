.class public Lcom/liquable/nemo/sticker/StickerShopFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "StickerShopFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/StickerShopFragment$TabManager;,
        Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;,
        Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;,
        Lcom/liquable/nemo/sticker/StickerShopFragment$DummyTabFactory;,
        Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopCallback;
    }
.end annotation


# static fields
.field private static final ITEM_PAGE_SIZE:I = 0x14

.field public static final debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentView:Landroid/view/View;

.field itemsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;>;"
        }
    .end annotation
.end field

.field private final limitedOfferSuccessItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loadMoreRpc:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private loadShopRpc:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/liquable/nemo/model/sticker/StickerShopDto;",
            ">;"
        }
    .end annotation
.end field

.field private loading:Z

.field private progressBar:Landroid/widget/ProgressBar;

.field private final purchaseSuccessItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field receiver:Landroid/content/BroadcastReceiver;

.field shopDto:Lcom/liquable/nemo/model/sticker/StickerShopDto;

.field private stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

.field private stickerItemListView:Landroid/widget/ListView;

.field tabHasMoreItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private tabHost:Landroid/widget/TabHost;

.field private upgradeNoticeLayout:Landroid/view/View;

.field private upgradeNoticeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/liquable/nemo/sticker/StickerShopFragment;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/sticker/StickerShopFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->purchaseSuccessItems:Ljava/util/Set;

    .line 279
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->limitedOfferSuccessItems:Ljava/util/Set;

    .line 281
    new-instance v0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopReceiver;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHasMoreItems:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/sticker/StickerShopFragment;Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/sticker/StickerShopFragment;->addItem(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/sticker/StickerShopFragment;Landroid/widget/TabHost;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;
    .param p1, "x1"    # Landroid/widget/TabHost;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->initTabs(Landroid/widget/TabHost;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->upgradeNoticeLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->upgradeNoticeText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/sticker/StickerShopFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->close()V

    return-void
.end method

.method static synthetic access$1600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->createAdwaysCampaignButton()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/liquable/nemo/sticker/StickerShopFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/sticker/StickerShopFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->limitedOfferSuccessItems:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/sticker/StickerShopFragment;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->purchaseSuccessItems:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/sticker/StickerShopFragment;)Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$702(Lcom/liquable/nemo/sticker/StickerShopFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loading:Z

    return p1
.end method

.method static synthetic access$800(Lcom/liquable/nemo/sticker/StickerShopFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/liquable/nemo/sticker/StickerShopFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/StickerShopFragment;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadShop()V

    return-void
.end method

.method private addItem(Ljava/lang/String;Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 2
    .param p1, "tabCode"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 311
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 318
    .local v0, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_0
    return-void

    .line 314
    .end local v0    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .restart local v0    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerItemDto;>;"
    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->itemsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createAdwaysCampaignButton()Landroid/view/View;
    .locals 5

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03011e

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 325
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 326
    .local v0, "newConvertView":Landroid/view/View;
    new-instance v1, Lcom/liquable/nemo/sticker/StickerShopFragment$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$1;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 336
    return-object v0
.end method

.method public static displayItemPrice(Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerItemDto;Landroid/widget/TextView;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "itemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .param p2, "priceView"    # Landroid/widget/TextView;

    .prologue
    const v6, 0x7f02045e

    const v5, -0x280f0

    const/4 v4, 0x0

    .line 92
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getPriceCurrency()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getPrice()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d04bd

    .line 94
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 92
    invoke-static {v0, v1, v2, v3}, Lcom/liquable/nemo/sticker/model/StickerManager;->getPriceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isCanFree()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const v0, -0x717172

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 100
    const v0, 0x7f02045c

    invoke-virtual {p2, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 110
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isCanLimitedTimeOffer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 104
    invoke-virtual {p2, v6, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 108
    invoke-virtual {p2, v6, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private initTabs(Landroid/widget/TabHost;)V
    .locals 13
    .param p1, "tabHost"    # Landroid/widget/TabHost;

    .prologue
    const v12, 0x1020013

    const v11, 0x1020011

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 355
    invoke-virtual {p1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 356
    iget-object v5, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->shopDto:Lcom/liquable/nemo/model/sticker/StickerShopDto;

    invoke-virtual {v5}, Lcom/liquable/nemo/model/sticker/StickerShopDto;->getTabs()Ljava/util/List;

    move-result-object v3

    .line 357
    .local v3, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/sticker/StickerTabDto;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerTabDto;

    .line 359
    .local v0, "tab":Lcom/liquable/nemo/model/sticker/StickerTabDto;
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030173

    const/4 v8, 0x0

    .line 360
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 362
    .local v2, "tabView":Landroid/view/View;
    const v6, 0x7f08034c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 364
    .local v4, "text":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerTabDto;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {v0}, Lcom/liquable/nemo/model/sticker/StickerTabDto;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 367
    invoke-virtual {v6, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    new-instance v7, Lcom/liquable/nemo/sticker/StickerShopFragment$DummyTabFactory;

    .line 368
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/liquable/nemo/sticker/StickerShopFragment$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 366
    invoke-virtual {p1, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    .line 371
    .end local v0    # "tab":Lcom/liquable/nemo/model/sticker/StickerTabDto;
    .end local v2    # "tabView":Landroid/view/View;
    .end local v4    # "text":Landroid/widget/TextView;
    :cond_0
    new-instance v1, Lcom/liquable/nemo/sticker/StickerShopFragment$TabManager;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$TabManager;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V

    .line 372
    .local v1, "tabManager":Lcom/liquable/nemo/sticker/StickerShopFragment$TabManager;
    invoke-virtual {p1, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 374
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 375
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/model/sticker/StickerTabDto;

    invoke-virtual {v5}, Lcom/liquable/nemo/model/sticker/StickerTabDto;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 376
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/model/sticker/StickerTabDto;

    invoke-virtual {v5}, Lcom/liquable/nemo/model/sticker/StickerTabDto;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/liquable/nemo/sticker/StickerShopFragment$TabManager;->onTabChanged(Ljava/lang/String;)V

    .line 379
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 380
    iget-object v5, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 381
    iget-object v5, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 386
    :goto_1
    return-void

    .line 383
    :cond_2
    iget-object v5, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v5, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private loadMore()V
    .locals 3

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loading:Z

    if-eqz v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 392
    :cond_0
    new-instance v0, Lcom/liquable/nemo/sticker/StickerShopFragment$2;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/sticker/StickerShopFragment$2;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadMoreRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 455
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadMoreRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private loadShop()V
    .locals 3

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loading:Z

    if-eqz v0, :cond_0

    .line 559
    :goto_0
    return-void

    .line 462
    :cond_0
    new-instance v0, Lcom/liquable/nemo/sticker/StickerShopFragment$3;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/sticker/StickerShopFragment$3;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadShopRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 558
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadShopRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected getIntentFilterActions()Ljava/util/List;
    .locals 3
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
    .line 346
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.liquable.nemo.sticker.StickerEvent"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getMustImplementedCallback()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/liquable/nemo/BaseFragmentCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 351
    const-class v0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerShopCallback;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 563
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 564
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->setHasOptionsMenu(Z)V

    .line 566
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/background/FinishAdwaysCampaignTask;

    invoke-direct {v1}, Lcom/liquable/nemo/background/FinishAdwaysCampaignTask;-><init>()V

    invoke-static {v0, v1}, Lcom/liquable/nemo/background/BackgroundIntentService;->run(Landroid/content/Context;Lcom/liquable/nemo/background/BackgroundRunnable;)V

    .line 567
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 571
    const v0, 0x7f08037c

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    :goto_0
    return-void

    .line 574
    :cond_0
    const v0, 0x7f0f0010

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 581
    const v0, 0x7f0300c1

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    .line 583
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f080213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 584
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    const v1, 0x1020012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHost:Landroid/widget/TabHost;

    .line 585
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 587
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f080214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->upgradeNoticeLayout:Landroid/view/View;

    .line 588
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f080216

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->upgradeNoticeText:Landroid/widget/TextView;

    .line 589
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->upgradeNoticeLayout:Landroid/view/View;

    new-instance v1, Lcom/liquable/nemo/sticker/StickerShopFragment$4;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$4;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    const v1, 0x7f080212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemListView:Landroid/widget/ListView;

    .line 599
    new-instance v0, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;Lcom/liquable/nemo/sticker/StickerShopFragment$1;)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    .line 600
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 602
    new-instance v0, Lcom/liquable/nemo/sticker/StickerShopFragment$5;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment$5;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 628
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    .line 630
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemListView:Landroid/widget/ListView;

    new-instance v1, Lcom/liquable/nemo/sticker/StickerShopFragment$6;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$6;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 652
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemListView:Landroid/widget/ListView;

    new-instance v1, Lcom/liquable/nemo/sticker/StickerShopFragment$7;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sticker/StickerShopFragment$7;-><init>(Lcom/liquable/nemo/sticker/StickerShopFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 671
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadShop()V

    .line 672
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/util/Pref;->setStickerShopUpdated(Z)V

    .line 673
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 682
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadMoreRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadMoreRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadMoreRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 684
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadMoreRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadShopRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadShopRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadShopRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 689
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->loadShopRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 693
    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 694
    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 695
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->checkAdwaysCampaignTask:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 697
    :cond_2
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onDestroy()V

    .line 698
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 702
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 709
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    .line 711
    :goto_0
    return v1

    .line 704
    :pswitch_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v1

    const-string/jumbo v2, "shop"

    invoke-interface {v1, v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->goToStickerManage(Ljava/lang/String;)V

    .line 705
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/sticker/ManageStickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/StickerShopFragment;->startActivity(Landroid/content/Intent;)V

    .line 711
    const/4 v1, 0x1

    goto :goto_0

    .line 702
    :pswitch_data_0
    .packed-switch 0x7f08037c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 716
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onResume()V

    .line 717
    iget-object v0, p0, Lcom/liquable/nemo/sticker/StickerShopFragment;->stickerItemAdapter:Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;

    # invokes: Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->resetPurchaseState()V
    invoke-static {v0}, Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;->access$500(Lcom/liquable/nemo/sticker/StickerShopFragment$StickerItemAdapter;)V

    .line 718
    return-void
.end method
