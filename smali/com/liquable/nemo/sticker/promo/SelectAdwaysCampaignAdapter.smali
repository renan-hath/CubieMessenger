.class public Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectAdwaysCampaignAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private adwaysCampaignDtos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;",
            ">;"
        }
    .end annotation
.end field

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;",
            ">;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "AdwaysCampaignDto":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->adwaysCampaignDtos:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->adwaysCampaignDtos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->adwaysCampaignDtos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->getItem(I)Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v6, 0x34

    .line 52
    if-nez p2, :cond_0

    .line 53
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300c7

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 55
    new-instance v1, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;)V

    .line 56
    .local v1, "viewHolder":Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;
    const v2, 0x7f08021c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;->campaignTitleTextView:Landroid/widget/TextView;

    .line 57
    const v2, 0x7f08021b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;->campaignThumbnail:Landroid/widget/ImageView;

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->getItem(I)Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;

    move-result-object v0

    .line 64
    .local v0, "campaignDto":Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;
    iget-object v2, v1, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;->campaignTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, v1, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;->campaignThumbnail:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v0}, Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;->getIcon()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/util/urlimage/UrlFileType;->AD_ITEM:Lcom/liquable/nemo/util/urlimage/UrlFileType;

    invoke-static {v4, v5, v6, v6}, Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;->createFixedSize(Ljava/lang/String;Lcom/liquable/nemo/util/urlimage/UrlFileType;II)Lcom/liquable/nemo/util/urlimage/UrlLoadableImage;

    move-result-object v4

    .line 66
    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 69
    return-object p2

    .line 60
    .end local v0    # "campaignDto":Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;
    .end local v1    # "viewHolder":Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter$ViewHolder;
    goto :goto_0
.end method

.method public update(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "updated":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/ads/AdwaysCampaignDto;>;"
    iput-object p1, p0, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->adwaysCampaignDtos:Ljava/util/List;

    .line 74
    invoke-virtual {p0}, Lcom/liquable/nemo/sticker/promo/SelectAdwaysCampaignAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method
