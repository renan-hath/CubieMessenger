.class public Lcom/liquable/nemo/sticker/ManageStickerActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ManageStickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/ManageStickerActivity$ManageStickerReceiver;
    }
.end annotation


# instance fields
.field adapter:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

.field private dragHandleTips:Landroid/view/View;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private isBroadcastReceiverRegistered:Z

.field private mController:Lcom/mobeta/android/dslv/DragSortController;

.field private mDslv:Lcom/mobeta/android/dslv/DragSortListView;

.field private final onDrop:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private receiver:Lcom/liquable/nemo/sticker/ManageStickerActivity$ManageStickerReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/liquable/nemo/sticker/ManageStickerActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/sticker/ManageStickerActivity$1;-><init>(Lcom/liquable/nemo/sticker/ManageStickerActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->onDrop:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sticker/ManageStickerActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/ManageStickerActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->dragHandleTips:Landroid/view/View;

    return-object v0
.end method

.method private registBroadcastReceiver()V
    .locals 2

    .prologue
    .line 115
    iget-boolean v1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->isBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v1, Lcom/liquable/nemo/sticker/ManageStickerActivity$ManageStickerReceiver;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sticker/ManageStickerActivity$ManageStickerReceiver;-><init>(Lcom/liquable/nemo/sticker/ManageStickerActivity;)V

    iput-object v1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->receiver:Lcom/liquable/nemo/sticker/ManageStickerActivity$ManageStickerReceiver;

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->isBroadcastReceiverRegistered:Z

    .line 120
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->receiver:Lcom/liquable/nemo/sticker/ManageStickerActivity$ManageStickerReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private unregistBroadcastReceiver()V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->isBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->isBroadcastReceiverRegistered:Z

    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->receiver:Lcom/liquable/nemo/sticker/ManageStickerActivity$ManageStickerReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method public buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortController;
    .locals 3
    .param p1, "dslv"    # Lcom/mobeta/android/dslv/DragSortListView;

    .prologue
    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/mobeta/android/dslv/DragSortController;

    invoke-direct {v0, p1}, Lcom/mobeta/android/dslv/DragSortController;-><init>(Lcom/mobeta/android/dslv/DragSortListView;)V

    .line 71
    .local v0, "controller":Lcom/mobeta/android/dslv/DragSortController;
    const v1, 0x7f0802b0

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortController;->setDragHandleId(I)V

    .line 72
    invoke-virtual {v0, v2}, Lcom/mobeta/android/dslv/DragSortController;->setRemoveEnabled(Z)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortController;->setSortEnabled(Z)V

    .line 74
    invoke-virtual {v0, v2}, Lcom/mobeta/android/dslv/DragSortController;->setBackgroundColor(I)V

    .line 75
    return-object v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->unregistBroadcastReceiver()V

    .line 81
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 82
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d04b6

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 87
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->setContentView(I)V

    .line 89
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 91
    const v0, 0x7f0800e9

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView;

    iput-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->buildController(Lcom/mobeta/android/dslv/DragSortListView;)Lcom/mobeta/android/dslv/DragSortController;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->mController:Lcom/mobeta/android/dslv/DragSortController;

    .line 93
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->mController:Lcom/mobeta/android/dslv/DragSortController;

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setFloatViewManager(Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;)V

    .line 94
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->mController:Lcom/mobeta/android/dslv/DragSortController;

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 95
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->onDrop:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->setListAdapter()V

    .line 99
    const v0, 0x7f0800ea

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->dragHandleTips:Landroid/view/View;

    .line 100
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/sticker/ManageStickerActivity$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sticker/ManageStickerActivity$2;-><init>(Lcom/liquable/nemo/sticker/ManageStickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->dragHandleTips:Landroid/view/View;

    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isShowDragHandleTips()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/ManageStickerActivity;->registBroadcastReceiver()V

    .line 112
    return-void

    .line 108
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setListAdapter()V
    .locals 10

    .prologue
    .line 129
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v5}, Lcom/liquable/nemo/sticker/model/StickerManager;->listCategoriesByOrder()Ljava/util/List;

    move-result-object v3

    .line 130
    .local v3, "sortedCategoryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getDisabledStickerCategories()Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "disabledCategoryCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v1, "categoryItems":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    .local v0, "category":Ljava/lang/String;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v5, v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getRepresentativePackage(Ljava/lang/String;)Lcom/liquable/nemo/util/Optional;

    move-result-object v4

    .line 134
    .local v4, "stickerPackage":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    new-instance v8, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    invoke-virtual {v5, v0}, Lcom/liquable/nemo/sticker/model/StickerManager;->getCategory(Ljava/lang/String;)Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    move-result-object v9

    .line 136
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    .line 137
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-direct {v8, v9, v5, v6}, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;-><init>(Lcom/liquable/nemo/model/sticker/StickerCategoryDto;Lcom/liquable/nemo/model/sticker/StickerPackageDto;Z)V

    .line 135
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 141
    .end local v0    # "category":Ljava/lang/String;
    .end local v4    # "stickerPackage":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Lcom/liquable/nemo/model/sticker/StickerPackageDto;>;"
    :cond_2
    new-instance v5, Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    iget-object v6, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v5, p0, v1, v6}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v5, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->adapter:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    .line 142
    iget-object v5, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->mDslv:Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v6, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->adapter:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    invoke-virtual {v5, v6}, Lcom/mobeta/android/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 143
    return-void
.end method
