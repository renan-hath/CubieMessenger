.class public Lcom/liquable/nemo/forum/BoardCategoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "BoardCategoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private categories:[Lcom/liquable/nemo/model/forum/BoardCategory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/liquable/nemo/model/forum/BoardCategory;

    const/4 v1, 0x0

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->GAME:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->ANIME_MANGA:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->PICTURES_IMAGES:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->NEWS:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->MOVIE_DRAMA:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->SPORTS:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->ENTERTAINMENT:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->LIFE:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->OTHERS:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/liquable/nemo/model/forum/BoardCategory;->LATEST:Lcom/liquable/nemo/model/forum/BoardCategory;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListAdapter;->categories:[Lcom/liquable/nemo/model/forum/BoardCategory;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListAdapter;->categories:[Lcom/liquable/nemo/model/forum/BoardCategory;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/model/forum/BoardCategory;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/forum/BoardCategoryListAdapter;->categories:[Lcom/liquable/nemo/model/forum/BoardCategory;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/BoardCategoryListAdapter;->getItem(I)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    .line 55
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 56
    .local v2, "context":Landroid/content/Context;
    if-nez p2, :cond_0

    .line 57
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300d2

    const/4 v7, 0x0

    .line 58
    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v4, Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;

    invoke-direct {v4, p0, v8}, Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/forum/BoardCategoryListAdapter;Lcom/liquable/nemo/forum/BoardCategoryListAdapter$1;)V

    .line 60
    .local v4, "viewHolder":Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;
    const v5, 0x7f0801ed

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;->categoryTextView:Landroid/widget/TextView;

    .line 61
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/forum/BoardCategoryListAdapter;->getItem(I)Lcom/liquable/nemo/model/forum/BoardCategory;

    move-result-object v1

    .line 67
    .local v1, "category":Lcom/liquable/nemo/model/forum/BoardCategory;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/forum/BoardCategory;->i18NKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/liquable/nemo/util/Contexts;->getStringResourceId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 68
    .local v3, "resId":I
    iget-object v5, v4, Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;->categoryTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->forumDaemon:Lcom/liquable/nemo/forum/ForumDaemon;

    invoke-virtual {v5, v1}, Lcom/liquable/nemo/forum/ForumDaemon;->getBoardCategoryDrawableResId(Lcom/liquable/nemo/model/forum/BoardCategory;)I

    move-result v0

    .line 72
    .local v0, "boardCategoryDrawableResId":I
    iget-object v5, v4, Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;->categoryTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 73
    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 72
    invoke-virtual {v5, v6, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-object p2

    .line 63
    .end local v0    # "boardCategoryDrawableResId":I
    .end local v1    # "category":Lcom/liquable/nemo/model/forum/BoardCategory;
    .end local v3    # "resId":I
    .end local v4    # "viewHolder":Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;

    .restart local v4    # "viewHolder":Lcom/liquable/nemo/forum/BoardCategoryListAdapter$ViewHolder;
    goto :goto_0
.end method
