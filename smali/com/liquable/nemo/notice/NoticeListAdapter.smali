.class public Lcom/liquable/nemo/notice/NoticeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NoticeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;,
        Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;
    }
.end annotation


# static fields
.field private static final DEFAULT_VIEW_TYPE:I = 0x0

.field private static final FRIEND_VIEW_TYPE:I = 0x1

.field public static final NOTICE_STICKER_THUMBNAIL_WIDTH_IN_DP:I = 0x34

.field private static final STICKER_VIEW_TYPE:I = 0x2


# instance fields
.field private final context:Landroid/content/Context;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

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

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final noticeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;"
        }
    .end annotation
.end field

.field private final timeFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p3, "noticeList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd"

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->loadableImageMap:Ljava/util/Map;

    .line 97
    iput-object p1, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->context:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 100
    iput-object p3, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->noticeList:Ljava/util/List;

    .line 101
    return-void
.end method

.method private createView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/notice/NoticeListAdapter;->getItemViewType(I)I

    move-result v1

    .line 106
    .local v1, "itemType":I
    const/4 v0, 0x0

    .line 108
    .local v0, "convertView":Landroid/view/View;
    packed-switch v1, :pswitch_data_0

    .line 133
    :goto_0
    return-object v3

    .line 110
    :pswitch_0
    iget-object v4, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030108

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 111
    new-instance v2, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;

    invoke-direct {v2, v3}, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/notice/NoticeListAdapter$1;)V

    .line 112
    .local v2, "viewHolder":Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;
    invoke-virtual {v2, v0}, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->initViewHolder(Landroid/view/View;)V

    .line 113
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v0

    .line 115
    goto :goto_0

    .line 118
    .end local v2    # "viewHolder":Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;
    :pswitch_1
    iget-object v4, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300dc

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 119
    new-instance v2, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;

    invoke-direct {v2, v3}, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/notice/NoticeListAdapter$1;)V

    .line 120
    .restart local v2    # "viewHolder":Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;
    invoke-virtual {v2, v0}, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->initViewHolder(Landroid/view/View;)V

    .line 121
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v0

    .line 122
    goto :goto_0

    .line 125
    .end local v2    # "viewHolder":Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;
    :pswitch_2
    iget-object v4, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03011c

    invoke-virtual {v4, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 126
    new-instance v2, Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;

    invoke-direct {v2, v3}, Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;-><init>(Lcom/liquable/nemo/notice/NoticeListAdapter$1;)V

    .line 127
    .restart local v2    # "viewHolder":Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;
    invoke-virtual {v2, v0}, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->initViewHolder(Landroid/view/View;)V

    .line 128
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, v0

    .line 129
    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getUrlLoadableImage(Ljava/lang/String;)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x34

    .line 164
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    .line 172
    :goto_0
    return-object v1

    .line 167
    :cond_0
    sget-object v1, Lcom/liquable/nemo/util/urlimage/UrlFileType;->STICKER_NOTICE_THUMBNAIL:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    invoke-static {p1, v1, v2, v2}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->createFixedSize(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;II)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v0

    .line 171
    .local v0, "loadableImage":Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;
    iget-object v1, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->loadableImageMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 172
    goto :goto_0
.end method

.method private updateView(Landroid/view/View;ILcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;)V
    .locals 12
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "viewHolder"    # Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;

    .prologue
    .line 224
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/notice/NoticeListAdapter;->getItemViewType(I)I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 226
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/notice/NoticeListAdapter;->getItem(I)Lcom/liquable/nemo/notice/BaseNotice;

    move-result-object v6

    check-cast v6, Lcom/liquable/nemo/notice/StickerThumbnailNotice;

    .line 227
    .local v6, "stickerThumbnailNotice":Lcom/liquable/nemo/notice/StickerThumbnailNotice;
    invoke-virtual {v6}, Lcom/liquable/nemo/notice/StickerThumbnailNotice;->getThumbnailUrls()Ljava/util/List;

    move-result-object v9

    .local v9, "thumbnailUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, p3

    .line 228
    check-cast v8, Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;

    .line 229
    .local v8, "stickerViewHolder":Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;
    iget-object v5, v8, Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;->stickerThumbnailLayout:Landroid/widget/LinearLayout;

    .line 230
    .local v5, "stickerThumbnailLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 231
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 232
    .local v7, "stickerThumbnailView":Landroid/widget/ImageView;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 233
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v11, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/liquable/nemo/notice/NoticeListAdapter;->getUrlLoadableImage(Ljava/lang/String;)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v10

    invoke-virtual {v11, v7, v10}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 230
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 236
    :cond_1
    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 242
    .end local v4    # "i":I
    .end local v5    # "stickerThumbnailLayout":Landroid/widget/LinearLayout;
    .end local v6    # "stickerThumbnailNotice":Lcom/liquable/nemo/notice/StickerThumbnailNotice;
    .end local v7    # "stickerThumbnailView":Landroid/widget/ImageView;
    .end local v8    # "stickerViewHolder":Lcom/liquable/nemo/notice/NoticeListAdapter$StickerThumbnailViewHolder;
    .end local v9    # "thumbnailUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/liquable/nemo/notice/NoticeListAdapter;->getItem(I)Lcom/liquable/nemo/notice/BaseNotice;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/notice/BaseFriendNotice;

    .line 243
    .local v3, "friendNotice":Lcom/liquable/nemo/notice/BaseFriendNotice;
    invoke-virtual {v3}, Lcom/liquable/nemo/notice/BaseFriendNotice;->getFriendId()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "friendId":Ljava/lang/String;
    const v10, 0x7f080255

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 245
    .local v1, "friendIconImageView":Landroid/widget/ImageView;
    sget-object v10, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v10, v2}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 246
    .local v0, "friend":Lcom/liquable/nemo/friend/model/Account;
    iget-object v10, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-static {v0}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->noticeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/notice/BaseNotice;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->noticeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/notice/BaseNotice;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/notice/NoticeListAdapter;->getItem(I)Lcom/liquable/nemo/notice/BaseNotice;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 149
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/notice/NoticeListAdapter;->getItem(I)Lcom/liquable/nemo/notice/BaseNotice;

    move-result-object v0

    .line 155
    .local v0, "baseNotice":Lcom/liquable/nemo/notice/BaseNotice;
    instance-of v1, v0, Lcom/liquable/nemo/notice/BaseFriendNotice;

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x1

    .line 160
    :goto_0
    return v1

    .line 157
    :cond_0
    instance-of v1, v0, Lcom/liquable/nemo/notice/StickerThumbnailNotice;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/liquable/nemo/notice/ReactivationStickerNotice;

    if-eqz v1, :cond_2

    .line 158
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 160
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 179
    if-nez p2, :cond_0

    .line 180
    invoke-direct {p0, p1, p3}, Lcom/liquable/nemo/notice/NoticeListAdapter;->createView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 183
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;

    .line 185
    .local v4, "viewHolder":Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/notice/NoticeListAdapter;->getItem(I)Lcom/liquable/nemo/notice/BaseNotice;

    move-result-object v1

    .line 186
    .local v1, "notice":Lcom/liquable/nemo/notice/BaseNotice;
    new-instance v3, Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/liquable/nemo/notice/BaseNotice;->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 187
    .local v3, "spannable":Landroid/text/Spannable;
    iget-object v5, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->context:Landroid/content/Context;

    iget-object v6, v4, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    const/high16 v7, 0x41000000    # 8.0f

    add-float/2addr v6, v7

    invoke-static {v5, v3, v6}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;F)V

    .line 188
    iget-object v5, v4, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {v1}, Lcom/liquable/nemo/notice/BaseNotice;->getNoticeTime()Ljava/util/Date;

    move-result-object v2

    .line 191
    .local v2, "noticeTime":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    iget-object v5, v4, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeNoticeTime:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_0
    invoke-virtual {v1}, Lcom/liquable/nemo/notice/BaseNotice;->isRead()Z

    move-result v0

    .line 198
    .local v0, "isRead":Z
    if-eqz v0, :cond_2

    .line 199
    iget-object v5, v4, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f020142

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 200
    iget-object v5, v4, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeIcon:Landroid/widget/ImageView;

    const v6, 0x7f020440

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    :goto_1
    invoke-direct {p0, p2, p1, v4}, Lcom/liquable/nemo/notice/NoticeListAdapter;->updateView(Landroid/view/View;ILcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;)V

    .line 208
    return-object p2

    .line 194
    .end local v0    # "isRead":Z
    :cond_1
    iget-object v5, v4, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeNoticeTime:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 202
    .restart local v0    # "isRead":Z
    :cond_2
    iget-object v5, v4, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeLayout:Landroid/widget/RelativeLayout;

    const v6, 0x7f020144

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 203
    iget-object v5, v4, Lcom/liquable/nemo/notice/NoticeListAdapter$ViewHolder;->noticeIcon:Landroid/widget/ImageView;

    const v6, 0x7f02043f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x4

    return v0
.end method

.method public reset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/notice/BaseNotice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "notices":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/notice/BaseNotice;>;"
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->noticeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    iget-object v0, p0, Lcom/liquable/nemo/notice/NoticeListAdapter;->noticeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    invoke-virtual {p0}, Lcom/liquable/nemo/notice/NoticeListAdapter;->notifyDataSetChanged()V

    .line 221
    return-void
.end method
