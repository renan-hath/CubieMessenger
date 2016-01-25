.class public Lcom/liquable/nemo/sticker/ManageStickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageStickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;,
        Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final categoryItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final loadableImageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/model/sticker/StickerCategoryDto;",
            "Lcom/liquable/nemo/util/LoadableImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;",
            ">;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "categoryItems":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->loadableImageMap:Ljava/util/Map;

    .line 108
    iput-object p1, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->activity:Landroid/app/Activity;

    .line 109
    iput-object p2, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->categoryItems:Ljava/util/List;

    .line 110
    iput-object p3, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/sticker/ManageStickerAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->getSelectedCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/sticker/ManageStickerAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/sticker/ManageStickerAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->updated()V

    return-void
.end method

.method private getSelectedCount()I
    .locals 4

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->categoryItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    .line 131
    .local v0, "item":Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "item":Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    :cond_1
    return v1
.end method

.method private updated()V
    .locals 5

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->notifyDataSetChanged()V

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v2, "sortedCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "disabledCategories":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->categoryItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    .line 198
    .local v1, "item":Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    iget-object v4, v1, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v1}, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->isSelected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 200
    iget-object v4, v1, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerCategoryDto;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v1    # "item":Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    :cond_1
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v2}, Lcom/liquable/nemo/util/Pref;->setSortedStickerCategories(Ljava/util/List;)V

    .line 204
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3, v0}, Lcom/liquable/nemo/util/Pref;->setDisabledStickerCategories(Ljava/util/List;)V

    .line 205
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->categoryItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->categoryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->getItem(I)Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 142
    if-nez p2, :cond_0

    .line 143
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03011a

    const/4 v5, 0x0

    .line 144
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 145
    new-instance v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/sticker/ManageStickerAdapter;)V

    .line 146
    .local v2, "viewHolder":Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;
    const v3, 0x7f080207

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;->stickerTitleTextView:Landroid/widget/TextView;

    .line 147
    const v3, 0x7f0802b1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;->stickerCategoryLayout:Landroid/widget/RelativeLayout;

    .line 148
    const v3, 0x7f0802b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;->stickerThumbnail:Landroid/widget/ImageView;

    .line 149
    const v3, 0x7f0802b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 150
    iget-object v3, v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;->stickerCategoryLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/liquable/nemo/sticker/ManageStickerAdapter$1;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/sticker/ManageStickerAdapter$1;-><init>(Lcom/liquable/nemo/sticker/ManageStickerAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 171
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->getItem(I)Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;

    move-result-object v0

    .line 172
    .local v0, "categoryItem":Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    iget-object v3, v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;->stickerTitleTextView:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->packageDto:Lcom/liquable/nemo/model/sticker/StickerPackageDto;

    invoke-virtual {v4}, Lcom/liquable/nemo/model/sticker/StickerPackageDto;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v3, v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    # getter for: Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->isSelected:Z
    invoke-static {v0}, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->access$100(Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    iget-object v3, v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;->stickerCategoryLayout:Landroid/widget/RelativeLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "loadableImage":Lcom/liquable/nemo/util/LoadableImage;
    iget-object v3, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->loadableImageMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->loadableImageMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "loadableImage":Lcom/liquable/nemo/util/LoadableImage;
    check-cast v1, Lcom/liquable/nemo/util/LoadableImage;

    .line 183
    .restart local v1    # "loadableImage":Lcom/liquable/nemo/util/LoadableImage;
    :goto_1
    iget-object v3, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;->stickerThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v1}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 184
    return-object p2

    .line 168
    .end local v0    # "categoryItem":Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    .end local v1    # "loadableImage":Lcom/liquable/nemo/util/LoadableImage;
    .end local v2    # "viewHolder":Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/liquable/nemo/sticker/ManageStickerAdapter$ViewHolder;
    goto :goto_0

    .line 180
    .restart local v0    # "categoryItem":Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    .restart local v1    # "loadableImage":Lcom/liquable/nemo/util/LoadableImage;
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->createThumbnail()Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v1

    .line 181
    iget-object v3, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->loadableImageMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;->categoryDto:Lcom/liquable/nemo/model/sticker/StickerCategoryDto;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public move(Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;I)V
    .locals 1
    .param p1, "item"    # Lcom/liquable/nemo/sticker/ManageStickerAdapter$CategoryItem;
    .param p2, "to"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->categoryItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->categoryItems:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 190
    invoke-direct {p0}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->updated()V

    .line 191
    return-void
.end method
