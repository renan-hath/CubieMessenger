.class public Lcom/liquable/nemo/share/SelectSharingAppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectSharingAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final shareImageTargetActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/liquable/nemo/targetedintent/ShareAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/targetedintent/TargetIntent$Type;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "type"    # Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    sget-object v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->VIDEO:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    if-ne p3, v0, :cond_0

    .line 43
    invoke-static {p1}, Lcom/liquable/nemo/targetedintent/TargetedIntentMatcher;->getShareVideoActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->shareImageTargetActions:Ljava/util/List;

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/liquable/nemo/targetedintent/TargetIntent$Type;->IMAGE:Lcom/liquable/nemo/targetedintent/TargetIntent$Type;

    if-ne p3, v0, :cond_1

    .line 45
    invoke-static {p1}, Lcom/liquable/nemo/targetedintent/TargetedIntentMatcher;->getShareImageActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->shareImageTargetActions:Ljava/util/List;

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->shareImageTargetActions:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->shareImageTargetActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/targetedintent/ShareAction;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->shareImageTargetActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/targetedintent/ShareAction;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->getItem(I)Lcom/liquable/nemo/targetedintent/ShareAction;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    if-nez p2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030111

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 71
    new-instance v1, Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/share/SelectSharingAppsAdapter$1;)V

    .line 72
    .local v1, "viewHolder":Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;
    const v2, 0x7f08023e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f08024b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->getItem(I)Lcom/liquable/nemo/targetedintent/ShareAction;

    move-result-object v0

    .line 80
    .local v0, "inviteAction":Lcom/liquable/nemo/targetedintent/TargetedAction;
    iget-object v2, v1, Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/liquable/nemo/targetedintent/TargetedAction;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, v1, Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/liquable/nemo/targetedintent/TargetedAction;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-object p2

    .line 76
    .end local v0    # "inviteAction":Lcom/liquable/nemo/targetedintent/TargetedAction;
    .end local v1    # "viewHolder":Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/liquable/nemo/share/SelectSharingAppsAdapter$ViewHolder;
    goto :goto_0
.end method

.method public open(ILandroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->getItem(I)Lcom/liquable/nemo/targetedintent/ShareAction;

    move-result-object v0

    .line 87
    .local v0, "shareAction":Lcom/liquable/nemo/targetedintent/ShareAction;
    invoke-virtual {v0, p3}, Lcom/liquable/nemo/targetedintent/ShareAction;->setText(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p2}, Lcom/liquable/nemo/targetedintent/ShareAction;->setMediaUri(Landroid/net/Uri;)V

    .line 89
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingAppsAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/targetedintent/ShareAction;->startActivity(Landroid/content/Context;)V

    .line 90
    return-void
.end method
