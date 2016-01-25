.class public Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "SelectSharingChatGroupActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;,
        Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;,
        Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;,
        Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;,
        Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;
    }
.end annotation


# static fields
.field public static final DETECT_EXTERNAL_IMAGE:Ljava/lang/String; = "DETECT_EXTERNAL_IMAGE"

.field public static final SELECT_MEDIA_SET:Ljava/lang/String; = "SELECT_PICTURE_ID"

.field private static final TEXT_MESSAGE_MAX_LIMIT:I = 0x1388


# instance fields
.field private allChatGroupsListView:Landroid/widget/ListView;

.field private appsAdapter:Lcom/liquable/nemo/share/SelectSharingAppsAdapter;

.field private appsBtn:Landroid/view/View;

.field private chatsBtn:Landroid/view/View;

.field private friendsBtn:Landroid/view/View;

.field private groupChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

.field private groupsBtn:Landroid/view/View;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

.field private final onSelectedCountChangeListener:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;

.field private oneToOneChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

.field private recentChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

.field private searchKeyword:Ljava/lang/String;

.field private searchView:Lcom/actionbarsherlock/widget/SearchView;

.field private final selectedChatGroup:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shareBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 337
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->selectedChatGroup:Ljava/util/Set;

    .line 344
    new-instance v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$1;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->onSelectedCountChangeListener:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->shareBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->selectedChatGroup:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->friendsBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->groupsBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->appsBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Lcom/liquable/nemo/share/SelectSharingAppsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->appsAdapter:Lcom/liquable/nemo/share/SelectSharingAppsAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->extractTextFromSharable(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getSelectedChatGroupTopics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->gotoChattingActivityOrMainGroupList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->recentChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->oneToOneChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->groupChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->chatsBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->selectBtn(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->allChatGroupsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public static createExternalMediaFromDetectExternalImage(Landroid/content/Context;Ljava/util/Collection;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/liquable/nemo/android/provider/PictureInfo;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p1, "pictureInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/liquable/nemo/android/provider/PictureInfo;>;"
    const/4 v5, 0x1

    .line 283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 285
    .local v1, "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    invoke-virtual {v1}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    .end local v1    # "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 289
    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string/jumbo v4, "android.intent.extra.STREAM"

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 295
    :goto_1
    const-string/jumbo v3, "DETECT_EXTERNAL_IMAGE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    return-object v0

    .line 292
    :cond_1
    const-string/jumbo v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static createSharePhotoFromMainIntent(Landroid/content/Context;Lcom/liquable/nemo/share/SharablePhoto;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photo"    # Lcom/liquable/nemo/share/SharablePhoto;

    .prologue
    .line 302
    invoke-virtual {p1}, Lcom/liquable/nemo/share/SharablePhoto;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 304
    return-object v0
.end method

.method public static createShareVideoFromMainIntent(Landroid/content/Context;Lcom/liquable/nemo/share/SharableVideo;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "video"    # Lcom/liquable/nemo/share/SharableVideo;

    .prologue
    .line 309
    invoke-virtual {p1}, Lcom/liquable/nemo/share/SharableVideo;->createIntent()Landroid/content/Intent;

    move-result-object v0

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 311
    return-object v0
.end method

.method private extractTextFromSharable(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 356
    invoke-static {p1}, Lcom/liquable/nemo/share/SharablePhoto;->exists(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-static {p1}, Lcom/liquable/nemo/share/SharablePhoto;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharablePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/share/SharablePhoto;->getText()Ljava/lang/String;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private extractUriFromSharable(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 363
    invoke-static {p1}, Lcom/liquable/nemo/share/SharableVideo;->exists(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-static {p1}, Lcom/liquable/nemo/share/SharableVideo;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharableVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/share/SharableVideo;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    .line 367
    :cond_0
    invoke-static {p1}, Lcom/liquable/nemo/share/SharablePhoto;->exists(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    invoke-static {p1}, Lcom/liquable/nemo/share/SharablePhoto;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharablePhoto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/share/SharablePhoto;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private filterChatGroups()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->recentChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->filter(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->oneToOneChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->filter(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->groupChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->filter(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private getMediaInfosFromSendAction()[Lcom/liquable/nemo/android/provider/MediaInfo;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 381
    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-object v2

    .line 385
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->retrivedUriFromIntentExtra()Landroid/net/Uri;

    move-result-object v1

    .line 386
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 387
    invoke-static {p0, v1}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v0

    .line 388
    .local v0, "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    if-eqz v0, :cond_0

    .line 391
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/liquable/nemo/android/provider/MediaInfo;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    goto :goto_0
.end method

.method private getMediaInfosFromSendMultipleAction()[Lcom/liquable/nemo/android/provider/MediaInfo;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 398
    const-string/jumbo v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 399
    const/4 v4, 0x0

    .line 410
    :goto_0
    return-object v4

    .line 402
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v1, "mediaInfos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/MediaInfo;>;"
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->retrivedUriArrayFromIntentExtra()[Landroid/net/Uri;

    move-result-object v3

    .line 404
    .local v3, "uris":[Landroid/net/Uri;
    array-length v6, v3

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v2, v3, v4

    .line 405
    .local v2, "uri":Landroid/net/Uri;
    invoke-static {p0, v2}, Lcom/liquable/nemo/android/provider/Medias;->findMediaFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v0

    .line 406
    .local v0, "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    if-eqz v0, :cond_1

    .line 407
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 410
    .end local v0    # "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    new-array v4, v5, [Lcom/liquable/nemo/android/provider/MediaInfo;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/liquable/nemo/android/provider/MediaInfo;

    goto :goto_0
.end method

.method private getSelectedChatGroupTopics()Ljava/util/List;
    .locals 4
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
    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, "chatGroupTopics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->selectedChatGroup:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->selectedChatGroup:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 422
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private getShareItem(Landroid/content/Intent;)Lcom/liquable/nemo/share/Sharable;
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v13, 0x1388

    const/4 v12, 0x0

    .line 426
    invoke-static {p1}, Lcom/liquable/nemo/share/SharableVideo;->exists(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 427
    invoke-static {p1}, Lcom/liquable/nemo/share/SharableVideo;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharableVideo;

    move-result-object v9

    .line 488
    :cond_0
    :goto_0
    return-object v9

    .line 430
    :cond_1
    invoke-static {p1}, Lcom/liquable/nemo/share/SharablePhoto;->exists(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 431
    invoke-static {p1}, Lcom/liquable/nemo/share/SharablePhoto;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SharablePhoto;

    move-result-object v9

    goto :goto_0

    .line 434
    :cond_2
    invoke-static {p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;->exists(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 435
    invoke-static {p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;->fromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Forward;

    move-result-object v9

    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "SELECT_PICTURE_ID"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 442
    .local v4, "parcelableArrayExtra":[Landroid/os/Parcelable;
    const/4 v3, 0x0

    .line 443
    .local v3, "medias":[Lcom/liquable/nemo/android/provider/MediaInfo;
    if-eqz v4, :cond_4

    .line 444
    array-length v10, v4

    new-array v3, v10, [Lcom/liquable/nemo/android/provider/MediaInfo;

    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v10, v4

    if-ge v1, v10, :cond_4

    .line 446
    aget-object v10, v4, v1

    check-cast v10, Lcom/liquable/nemo/android/provider/MediaInfo;

    aput-object v10, v3, v1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 450
    .end local v1    # "i":I
    :cond_4
    if-eqz v3, :cond_5

    .line 451
    new-instance v9, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;

    sget-object v10, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->share_board:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    invoke-direct {v9, v3, v10}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;-><init>([Lcom/liquable/nemo/android/provider/MediaInfo;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;)V

    goto :goto_0

    .line 453
    :cond_5
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string/jumbo v11, "DETECT_EXTERNAL_IMAGE"

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 455
    .local v0, "detectExternalImage":Z
    if-eqz v0, :cond_7

    sget-object v8, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->detected_external_image:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 458
    .local v8, "shareMediaVia":Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    :goto_2
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getMediaInfosFromSendAction()[Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v2

    .line 459
    .local v2, "mediaInfosFromExternalActivity":[Lcom/liquable/nemo/android/provider/MediaInfo;
    if-nez v2, :cond_6

    .line 460
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getMediaInfosFromSendMultipleAction()[Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v2

    .line 462
    :cond_6
    if-eqz v2, :cond_8

    .line 463
    new-instance v9, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;

    invoke-direct {v9, v2, v8}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;-><init>([Lcom/liquable/nemo/android/provider/MediaInfo;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;)V

    goto :goto_0

    .line 455
    .end local v2    # "mediaInfosFromExternalActivity":[Lcom/liquable/nemo/android/provider/MediaInfo;
    .end local v8    # "shareMediaVia":Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    :cond_7
    sget-object v8, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->external_intent:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    goto :goto_2

    .line 468
    .restart local v2    # "mediaInfosFromExternalActivity":[Lcom/liquable/nemo/android/provider/MediaInfo;
    .restart local v8    # "shareMediaVia":Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    :cond_8
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->retrivedUriFromIntentExtra()Landroid/net/Uri;

    move-result-object v7

    .line 469
    .local v7, "retrivedUri":Landroid/net/Uri;
    if-eqz v7, :cond_9

    .line 470
    new-instance v9, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "android.intent.extra.TEXT"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v7, v10, v11}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_9
    const/4 v9, 0x0

    .line 474
    .local v9, "youtubeVideo":Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-static {v10}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;->createFromIntent(Landroid/content/Intent;)Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;

    move-result-object v9

    if-nez v9, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "android.intent.extra.TEXT"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 479
    .local v5, "retrivedText":Ljava/lang/String;
    invoke-static {v5}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 480
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v11, "android.intent.extra.SUBJECT"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, "retrivedTitle":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v13, :cond_a

    .line 482
    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 483
    const v10, 0x7f0d0545

    invoke-static {p0, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 485
    :cond_a
    new-instance v9, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;

    .end local v9    # "youtubeVideo":Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;
    invoke-direct {v9, v5, v6}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$TextData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    .end local v6    # "retrivedTitle":Ljava/lang/String;
    .restart local v9    # "youtubeVideo":Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$SharableYoutubeVideo;
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private getUriType()Lcom/liquable/nemo/targetedintent/TargetIntent$Type;
    .locals 1

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/share/SharableVideo;->exists(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    sget-object v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    .line 497
    :goto_0
    return-object v0

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/share/SharablePhoto;->exists(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    sget-object v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    goto :goto_0

    .line 497
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private gotoChattingActivityOrMainGroupList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "selectedChatGroups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/high16 v4, 0x14000000

    .line 501
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 505
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    .local v0, "chatGroupTopic":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    const-string/jumbo v2, "CHAT_GROUP_TOPIC"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 511
    .end local v0    # "chatGroupTopic":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initShareItem()V
    .locals 3

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getShareItem(Landroid/content/Intent;)Lcom/liquable/nemo/share/Sharable;

    move-result-object v0

    .line 519
    .local v0, "shareType":Lcom/liquable/nemo/share/Sharable;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->shouldOpenImagePreview(Lcom/liquable/nemo/share/Sharable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 597
    :goto_0
    return-void

    .line 523
    :cond_0
    if-nez v0, :cond_1

    .line 524
    const v1, 0x7f0d049c

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 527
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->finish()V

    goto :goto_0

    .line 531
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->shareBtn:Landroid/widget/Button;

    new-instance v2, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;Lcom/liquable/nemo/share/Sharable;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private loadChatsList()V
    .locals 3

    .prologue
    .line 600
    new-instance v0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->selectedChatGroup:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->recentChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    .line 601
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->recentChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->onSelectedCountChangeListener:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->setOnSelectedCountChangeListener(Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;)V

    .line 603
    new-instance v0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->selectedChatGroup:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->oneToOneChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    .line 604
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->oneToOneChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->onSelectedCountChangeListener:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->setOnSelectedCountChangeListener(Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;)V

    .line 606
    new-instance v0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->selectedChatGroup:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->groupChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    .line 607
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->groupChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->onSelectedCountChangeListener:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->setOnSelectedCountChangeListener(Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;)V

    .line 609
    new-instance v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$3;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 627
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 628
    return-void
.end method

.method private retrivedUriArrayFromIntentExtra()[Landroid/net/Uri;
    .locals 6

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 746
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v3, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 748
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 749
    .local v2, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 750
    .local v1, "parcelable":Landroid/os/Parcelable;
    check-cast v1, Landroid/net/Uri;

    .end local v1    # "parcelable":Landroid/os/Parcelable;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 753
    .end local v2    # "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [Landroid/net/Uri;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/net/Uri;

    return-object v4
.end method

.method private retrivedUriFromIntentExtra()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 758
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 761
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private selectBtn(Landroid/view/View;)V
    .locals 4
    .param p1, "btn"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 765
    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->chatsBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->chatsBtn:Landroid/view/View;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 766
    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->friendsBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->friendsBtn:Landroid/view/View;

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 767
    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->groupsBtn:Landroid/view/View;

    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->groupsBtn:Landroid/view/View;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 768
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->appsBtn:Landroid/view/View;

    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->appsBtn:Landroid/view/View;

    if-ne p1, v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 769
    return-void

    :cond_0
    move v0, v2

    .line 765
    goto :goto_0

    :cond_1
    move v0, v2

    .line 766
    goto :goto_1

    :cond_2
    move v0, v2

    .line 767
    goto :goto_2

    :cond_3
    move v1, v2

    .line 768
    goto :goto_3
.end method

.method private shouldOpenImagePreview(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;)Z
    .locals 6
    .param p1, "externalMedia"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 772
    invoke-virtual {p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->size()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 792
    :cond_0
    :goto_0
    return v3

    .line 776
    :cond_1
    invoke-virtual {p1, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->get(I)Lcom/liquable/nemo/android/provider/MediaInfo;

    move-result-object v1

    .line 777
    .local v1, "mediaInfo":Lcom/liquable/nemo/android/provider/MediaInfo;
    instance-of v5, v1, Lcom/liquable/nemo/android/provider/PictureInfo;

    if-eqz v5, :cond_0

    move-object v2, v1

    .line 781
    check-cast v2, Lcom/liquable/nemo/android/provider/PictureInfo;

    .line 783
    .local v2, "pictureInfo":Lcom/liquable/nemo/android/provider/PictureInfo;
    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->shareMediaVia:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;
    invoke-static {p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;->access$1600(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;)Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    move-result-object v3

    sget-object v5, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->external_intent:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    if-ne v3, v5, :cond_2

    .line 784
    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->fromExternalPicture(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 789
    .local v0, "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 790
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->finish()V

    move v3, v4

    .line 792
    goto :goto_0

    .line 787
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {v2}, Lcom/liquable/nemo/android/provider/PictureInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 786
    invoke-static {p0, v3}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->fromDetectedExternalImage(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method private shouldOpenImagePreview(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;)Z
    .locals 2
    .param p1, "stream"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;

    .prologue
    .line 808
    invoke-virtual {p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->isImage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 809
    const/4 v1, 0x0

    .line 816
    :goto_0
    return v1

    .line 812
    :cond_0
    # getter for: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->uri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;->access$1700(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/liquable/nemo/chat/ImagePreviewActivity$CreateIntent;->fromExternalPicture(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 813
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 814
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->finish()V

    .line 816
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private shouldOpenImagePreview(Lcom/liquable/nemo/share/Sharable;)Z
    .locals 1
    .param p1, "shareType"    # Lcom/liquable/nemo/share/Sharable;

    .prologue
    .line 796
    instance-of v0, p1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;

    if-eqz v0, :cond_0

    .line 797
    check-cast p1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;

    .end local p1    # "shareType":Lcom/liquable/nemo/share/Sharable;
    invoke-direct {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->shouldOpenImagePreview(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;)Z

    move-result v0

    .line 804
    :goto_0
    return v0

    .line 800
    .restart local p1    # "shareType":Lcom/liquable/nemo/share/Sharable;
    :cond_0
    instance-of v0, p1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;

    if-eqz v0, :cond_1

    .line 801
    check-cast p1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;

    .end local p1    # "shareType":Lcom/liquable/nemo/share/Sharable;
    invoke-direct {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->shouldOpenImagePreview(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;)Z

    move-result v0

    goto :goto_0

    .line 804
    .restart local p1    # "shareType":Lcom/liquable/nemo/share/Sharable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d046a

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 633
    const v1, 0x7f030042

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->setContentView(I)V

    .line 635
    const v1, 0x7f080107

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->allChatGroupsListView:Landroid/widget/ListView;

    .line 636
    const v1, 0x7f080103

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->chatsBtn:Landroid/view/View;

    .line 637
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->chatsBtn:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 638
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->chatsBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$4;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    const v1, 0x7f080104

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->friendsBtn:Landroid/view/View;

    .line 646
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->friendsBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$5;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    const v1, 0x7f080105

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->groupsBtn:Landroid/view/View;

    .line 654
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->groupsBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$6;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$6;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    const v1, 0x7f080106

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->appsBtn:Landroid/view/View;

    .line 663
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->appsBtn:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 664
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->extractUriFromSharable(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    .line 665
    .local v0, "sharableUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 666
    new-instance v1, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getUriType()Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->appsAdapter:Lcom/liquable/nemo/share/SelectSharingAppsAdapter;

    .line 667
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->appsAdapter:Lcom/liquable/nemo/share/SelectSharingAppsAdapter;

    invoke-virtual {v1}, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->appsBtn:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->appsBtn:Landroid/view/View;

    new-instance v2, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$7;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$7;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    :cond_0
    const v1, 0x7f080108

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->shareBtn:Landroid/widget/Button;

    .line 681
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->initShareItem()V

    .line 682
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->allChatGroupsListView:Landroid/widget/ListView;

    new-instance v2, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$8;

    invoke-direct {v2, p0, v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$8;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 697
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 698
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->loadChatsList()V

    .line 699
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->allChatGroupsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->recentChatsAdapter:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 700
    return-void
.end method

.method public onLoggedInCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 705
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0f000d

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 706
    const v1, 0x7f080359

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 707
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    new-instance v2, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$9;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$9;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;)V

    invoke-interface {v1, v2}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    .line 719
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->mainSearchItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    .line 720
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    const v2, 0x7f0d00d9

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v1, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 722
    const/4 v1, 0x1

    return v1
.end method

.method protected onLoggedInResume()V
    .locals 0

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->filterChatGroups()V

    .line 729
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->searchKeyword:Ljava/lang/String;

    .line 734
    invoke-direct {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->filterChatGroups()V

    .line 735
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->searchView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0}, Lcom/actionbarsherlock/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/liquable/nemo/util/NemoUIs;->hideKeyboard(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 741
    const/4 v0, 0x0

    return v0
.end method
