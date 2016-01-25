.class public Lcom/liquable/nemo/sticker/BaseStickerItemFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "BaseStickerItemFragment.java"


# static fields
.field private static final SAMPLE_ANIMATION_FRAME_DURATION:I = 0x1f4

.field public static final debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field protected buyButton:Landroid/widget/Button;

.field protected downloadButton:Landroid/widget/Button;

.field private fragmentView:Landroid/view/View;

.field private fromReactivation:Z

.field isSampleAnimationInitialized:Z

.field protected itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

.field protected limitedFreeButton:Landroid/widget/Button;

.field private loadItemRpc:Lcom/liquable/nemo/util/RpcAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/liquable/nemo/util/RpcAsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerItemDto;",
            ">;>;"
        }
    .end annotation
.end field

.field protected loadableImage:Lcom/liquable/nemo/sticker/StickerItemThumbnail;

.field private progressBar:Landroid/view/View;

.field protected purchasedTextView:Landroid/widget/TextView;

.field private receiver:Landroid/content/BroadcastReceiver;

.field protected sampleImage:Landroid/widget/ImageView;

.field private shareItem:Lcom/actionbarsherlock/view/MenuItem;

.field protected stickerItemNote:Landroid/widget/TextView;

.field protected stickerItemOwner:Landroid/widget/TextView;

.field protected stickerItemPrice:Landroid/widget/TextView;

.field protected stickerItemSummary:Landroid/widget/TextView;

.field protected stickerItemThumbnail:Landroid/widget/ImageView;

.field protected stickerItemTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->close()V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/BaseStickerItemFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private resetSampleAnimation()V
    .locals 5

    .prologue
    .line 374
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->createSampleAnimation()Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    .line 376
    :goto_0
    iput-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 378
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 379
    .local v0, "numberOfFrames":I
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    new-instance v2, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$4;-><init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    if-nez v0, :cond_1

    .line 387
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->progressBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 391
    :goto_1
    return-void

    .line 375
    .end local v0    # "numberOfFrames":I
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    .line 376
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0

    .line 389
    .restart local v0    # "numberOfFrames":I
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->progressBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateShareItem()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0
.end method


# virtual methods
.method protected createSampleAnimation()Landroid/graphics/drawable/AnimationDrawable;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    .line 95
    .local v4, "width":I
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v5, v6, v4}, Lcom/liquable/nemo/sticker/model/StickerManager;->getStickerItemSampleBitmaps(Lcom/liquable/nemo/model/sticker/StickerItemDto;I)Ljava/util/List;

    move-result-object v3

    .line 98
    .local v3, "sampleBitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 99
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 100
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v7, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 103
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 105
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v5

    if-lez v5, :cond_1

    .line 106
    invoke-virtual {v0, v8}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 107
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 108
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 110
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v0
.end method

.method protected downloadStickerPackage()V
    .locals 3

    .prologue
    .line 114
    new-instance v0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;-><init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;Landroid/content/Context;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 152
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$1;->execute([Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/sticker/BaseStickerItemReceiver;-><init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->receiver:Landroid/content/BroadcastReceiver;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->receiver:Landroid/content/BroadcastReceiver;

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
    .line 165
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

.method protected init(Lcom/liquable/nemo/model/sticker/StickerItemDto;Ljava/lang/String;)V
    .locals 0
    .param p1, "item"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;
    .param p2, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->resetItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadItem(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final isFromReactivation()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fromReactivation:Z

    return v0
.end method

.method protected loadItem(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 183
    new-instance v0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$2;-><init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadItemRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 237
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadItemRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/liquable/nemo/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->setHasOptionsMenu(Z)V

    .line 244
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 11
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    const v7, 0x7f08036f

    .line 248
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 249
    iget-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v6, :cond_0

    .line 250
    const v6, 0x7f0f001c

    invoke-virtual {p2, v6, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 251
    invoke-interface {p1, v7}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 253
    :cond_0
    iget-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 255
    iget-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    if-nez v6, :cond_2

    .line 276
    :cond_1
    :goto_0
    return-void

    .line 259
    :cond_2
    iget-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v6}, Lcom/actionbarsherlock/view/MenuItem;->getActionProvider()Lcom/actionbarsherlock/view/ActionProvider;

    move-result-object v4

    check-cast v4, Lcom/actionbarsherlock/widget/ShareActionProvider;

    .line 260
    .local v4, "shareActionProvider":Lcom/actionbarsherlock/widget/ShareActionProvider;
    const-string/jumbo v6, "cubie_share_history.xml"

    invoke-virtual {v4, v6}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 262
    iget-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v6}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getSampleImagePaths()Ljava/util/List;

    move-result-object v2

    .line 263
    .local v2, "keyPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    .local v1, "keyPath":Ljava/lang/String;
    sget-object v7, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v7, v1}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 265
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 266
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 267
    .local v3, "phototUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v5, "shareIntent":Landroid/content/Intent;
    invoke-virtual {v5, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 269
    const-string/jumbo v6, "image/*"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 271
    invoke-virtual {v4, v5}, Lcom/actionbarsherlock/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 272
    iget-object v6, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->shareItem:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "ITEM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 284
    .local v0, "item":Lcom/liquable/nemo/model/sticker/StickerItemDto;
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "ITEM_CODE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "itemCode":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->close()V

    .line 288
    const/4 v2, 0x0

    .line 323
    :goto_0
    return-object v2

    .line 291
    :cond_0
    iput-boolean v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fromReactivation:Z

    .line 292
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/sticker/BaseStickerItemActivity$CreateIntent;->isFromReactivation(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fromReactivation:Z

    .line 294
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v2

    invoke-interface {v2}, Lcom/liquable/nemo/analytics/IAnalyticsService;->clickReactivationStickerNotification()V

    .line 297
    :cond_1
    const v2, 0x7f0300c0

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    .line 298
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f08020f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->progressBar:Landroid/view/View;

    .line 299
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f080207

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemTitle:Landroid/widget/TextView;

    .line 300
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f08020d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemNote:Landroid/widget/TextView;

    .line 301
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f08020e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemSummary:Landroid/widget/TextView;

    .line 302
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f080211

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemOwner:Landroid/widget/TextView;

    .line 303
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f080208

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemPrice:Landroid/widget/TextView;

    .line 304
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f080205

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemThumbnail:Landroid/widget/ImageView;

    .line 306
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f08020a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->buyButton:Landroid/widget/Button;

    .line 307
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f08020c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->limitedFreeButton:Landroid/widget/Button;

    .line 308
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f08020b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->downloadButton:Landroid/widget/Button;

    .line 309
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->downloadButton:Landroid/widget/Button;

    new-instance v3, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$3;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment$3;-><init>(Lcom/liquable/nemo/sticker/BaseStickerItemFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f080209

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->purchasedTextView:Landroid/widget/TextView;

    .line 319
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->purchasedTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    const v3, 0x7f080210

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    .line 322
    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->init(Lcom/liquable/nemo/model/sticker/StickerItemDto;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->fragmentView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadItemRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadItemRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadItemRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/RpcAsyncTask;->getStatus()Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 334
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadItemRpc:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->cancel(Z)Z

    .line 337
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onDestroy()V

    .line 338
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Lcom/liquable/nemo/BaseFragment;->onResume()V

    .line 343
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->updateView()V

    .line 346
    :cond_0
    return-void
.end method

.method public purchaseRpcStarted()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method protected resetItem(Lcom/liquable/nemo/model/sticker/StickerItemDto;)V
    .locals 3
    .param p1, "itemDto"    # Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 350
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getShopNote()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemNote:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemSummary:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemOwner:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemPrice:Landroid/widget/TextView;

    invoke-static {v0, p1, v1}, Lcom/liquable/nemo/sticker/StickerShopFragment;->displayItemPrice(Landroid/content/Context;Lcom/liquable/nemo/model/sticker/StickerItemDto;Landroid/widget/TextView;)V

    .line 361
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadableImage:Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemThumbnail:Landroid/widget/ImageView;

    .line 363
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemThumbnail:Landroid/widget/ImageView;

    .line 364
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, p1, v1, v2}, Lcom/liquable/nemo/sticker/StickerItemThumbnail;-><init>(Lcom/liquable/nemo/model/sticker/StickerItemDto;II)V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadableImage:Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemThumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->loadableImage:Lcom/liquable/nemo/sticker/StickerItemThumbnail;

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 368
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->resetSampleAnimation()V

    .line 369
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->updateView()V

    .line 370
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->updateShareItem()V

    .line 371
    return-void

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemNote:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->stickerItemNote:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getShopNote()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected sampleAnimationAddFrame(Ljava/lang/String;)V
    .locals 10
    .param p1, "keyPath"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x1f4

    const/4 v8, 0x0

    .line 394
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v5, p1}, Lcom/liquable/nemo/storage/NemoFileService;->getExternalKeyPathFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 395
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 396
    sget-object v5, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sampleAnimationAddFrame:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 399
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    const/4 v7, -0x1

    .line 397
    invoke-static {v5, v8, v6, v7}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v0

    .line 401
    .local v0, "bitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 402
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 403
    .local v4, "newAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 404
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 403
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 407
    :cond_0
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v6, v9}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 409
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    iput-object v4, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 411
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 412
    sget-object v5, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sampleAnimationAddFrame:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 414
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v5

    if-lez v5, :cond_1

    .line 415
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 416
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 417
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 419
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->sampleImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->invalidate()V

    .line 420
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 422
    iget-object v5, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->progressBar:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 424
    .end local v3    # "i":I
    .end local v4    # "newAnimationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->updateShareItem()V

    .line 426
    .end local v0    # "bitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    :cond_3
    return-void
.end method

.method protected updatePurchaseStateAndButtons()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method protected updateView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 440
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->isStickerPackageDownloading(Ljava/lang/String;)Z

    move-result v0

    .line 441
    .local v0, "downloading":Z
    sget-object v1, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 442
    if-eqz v0, :cond_1

    .line 443
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->downloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 448
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isCanFree()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    invoke-virtual {v1}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->isOwned()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->stickerManager:Lcom/liquable/nemo/sticker/model/StickerManager;

    iget-object v2, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->itemDto:Lcom/liquable/nemo/model/sticker/StickerItemDto;

    .line 449
    invoke-virtual {v2}, Lcom/liquable/nemo/model/sticker/StickerItemDto;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/sticker/model/StickerManager;->isStickerPackageDownloaded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->downloadButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 455
    :goto_1
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->updatePurchaseStateAndButtons()V

    .line 456
    return-void

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->downloadButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/sticker/BaseStickerItemFragment;->downloadButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
