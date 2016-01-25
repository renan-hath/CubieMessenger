.class public Lcom/liquable/nemo/chat/YoutubePickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "YoutubePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final loadableImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;",
            ">;"
        }
    .end annotation
.end field

.field private final videos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeVideo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->videos:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->loadableImageMap:Ljava/util/Map;

    .line 39
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->activity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 41
    return-void
.end method

.method private getUrlLoadableImage(Landroid/widget/ImageView;Ljava/lang/String;)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;
    .locals 5
    .param p1, "thumbnailView"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    .line 72
    :goto_0
    return-object v1

    .line 67
    :cond_0
    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileType;->YOUTUBE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->activity:Landroid/app/Activity;

    .line 69
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->getDp(Landroid/content/Context;I)I

    move-result v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->activity:Landroid/app/Activity;

    .line 70
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->getDp(Landroid/content/Context;I)I

    move-result v3

    .line 67
    invoke-static {p2, v1, v2, v3}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->createFixedSize(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;II)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v0

    .line 71
    .local v0, "loadableImage":Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;
    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 72
    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/youtube/YoutubeVideo;>;"
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->notifyDataSetChanged()V

    .line 46
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/youtube/YoutubeVideo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->videos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/youtube/YoutubeVideo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->getItem(I)Lcom/liquable/nemo/youtube/YoutubeVideo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 79
    if-nez p2, :cond_0

    .line 80
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030121

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    new-instance v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;

    invoke-direct {v1, p0, v4}, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/chat/YoutubePickerAdapter;Lcom/liquable/nemo/chat/YoutubePickerAdapter$1;)V

    .line 83
    .local v1, "viewHolder":Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;
    const v2, 0x7f08012f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    .line 84
    const v2, 0x7f0802b9

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;->viewCountTextView:Landroid/widget/TextView;

    .line 85
    const v2, 0x7f08011d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;->durationTextView:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f0802b8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;->youtubeThumbnailView:Landroid/widget/ImageView;

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->getItem(I)Lcom/liquable/nemo/youtube/YoutubeVideo;

    move-result-object v0

    .line 93
    .local v0, "video":Lcom/liquable/nemo/youtube/YoutubeVideo;
    iget-object v2, v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/liquable/nemo/youtube/YoutubeVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;->viewCountTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Lcom/liquable/nemo/youtube/YoutubeVideo;->getViewCountString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/liquable/nemo/youtube/YoutubeVideo;->getDurationString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;->youtubeThumbnailView:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;->youtubeThumbnailView:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {v0}, Lcom/liquable/nemo/youtube/YoutubeVideo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->getUrlLoadableImage(Landroid/widget/ImageView;Ljava/lang/String;)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v4

    .line 96
    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 98
    return-object p2

    .line 89
    .end local v0    # "video":Lcom/liquable/nemo/youtube/YoutubeVideo;
    .end local v1    # "viewHolder":Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/chat/YoutubePickerAdapter$ViewHolder;
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->videos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/YoutubePickerAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method
