.class Lcom/aviary/android/feather/FeatherActivity$ListAdapter;
.super Lit/sephiroth/android/library/widget/BaseAdapterExtended;
.source "FeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/FeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lit/sephiroth/android/library/widget/BaseAdapterExtended",
        "<",
        "Lcom/aviary/android/feather/library/content/ToolEntry;",
        ">;"
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field mLock:Ljava/lang/Object;

.field mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/library/content/ToolEntry;",
            ">;"
        }
    .end annotation
.end field

.field mToolViewWidth:I

.field mViewWidth:I

.field mWhiteLabel:Z

.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "whiteLabel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aviary/android/feather/library/content/ToolEntry;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1711
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/library/content/ToolEntry;>;"
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    .line 1712
    invoke-direct {p0}, Lit/sephiroth/android/library/widget/BaseAdapterExtended;-><init>()V

    .line 1704
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mLock:Ljava/lang/Object;

    .line 1713
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mViewWidth:I

    .line 1714
    const/4 v0, -0x1

    iput v0, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mToolViewWidth:I

    .line 1716
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1717
    iput-object p3, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mObjects:Ljava/util/List;

    .line 1718
    iput-boolean p4, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mWhiteLabel:Z

    .line 1719
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1789
    iget-boolean v0, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mWhiteLabel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1790
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Lcom/aviary/android/feather/library/content/ToolEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1784
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/content/ToolEntry;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1694
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->getItem(I)Lcom/aviary/android/feather/library/content/ToolEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1795
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 1729
    iget-boolean v1, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mWhiteLabel:Z

    if-eqz v1, :cond_1

    .line 1730
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1737
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 1739
    .local v6, "type":I
    if-nez p2, :cond_4

    .line 1740
    if-nez v6, :cond_3

    .line 1742
    iget-object v7, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/aviary/android/feather/R$layout;->aviary_tool_layout:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1743
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 1745
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v7, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mToolViewWidth:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 1746
    iget-object v7, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    # getter for: Lcom/aviary/android/feather/FeatherActivity;->mToolsList:Lit/sephiroth/android/library/widget/HorizontalVariableListView;
    invoke-static {v7}, Lcom/aviary/android/feather/FeatherActivity;->access$200(Lcom/aviary/android/feather/FeatherActivity;)Lit/sephiroth/android/library/widget/HorizontalVariableListView;

    move-result-object v7

    invoke-virtual {v7, p2}, Lit/sephiroth/android/library/widget/HorizontalVariableListView;->measureChild(Landroid/view/View;)[I

    move-result-object v5

    .line 1748
    .local v5, "sizes":[I
    iget v7, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mViewWidth:I

    int-to-double v7, v7

    const/4 v9, 0x0

    aget v9, v5, v9

    int-to-double v9, v9

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double v2, v7, v9

    .line 1749
    .local v2, "numberOfItems":D
    sget-object v7, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "new number of items: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 1751
    iget v7, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mViewWidth:I

    int-to-double v7, v7

    div-double/2addr v7, v2

    double-to-int v7, v7

    iput v7, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mToolViewWidth:I

    .line 1752
    sget-object v7, Lcom/aviary/android/feather/FeatherActivity;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "new size will be: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mToolViewWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->log([Ljava/lang/Object;)V

    .line 1755
    .end local v2    # "numberOfItems":D
    .end local v5    # "sizes":[I
    :cond_0
    if-eqz v4, :cond_1

    .line 1756
    iget v7, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mToolViewWidth:I

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1757
    invoke-virtual {p2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1764
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_0
    new-instance v0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;-><init>(Lcom/aviary/android/feather/FeatherActivity$ListAdapter;)V

    .line 1765
    .local v0, "holder":Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;
    sget v7, Lcom/aviary/android/feather/R$id;->image:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 1766
    sget v7, Lcom/aviary/android/feather/R$id;->text:I

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 1768
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1769
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Landroid/view/View;->setClickable(Z)V

    .line 1774
    :goto_1
    if-nez v6, :cond_2

    .line 1775
    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->getItem(I)Lcom/aviary/android/feather/library/content/ToolEntry;

    move-result-object v1

    .line 1776
    .local v1, "item":Lcom/aviary/android/feather/library/content/ToolEntry;
    iget-object v7, v0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget v8, v1, Lcom/aviary/android/feather/library/content/ToolEntry;->iconResourceId:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1777
    iget-object v7, v0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iget v9, v1, Lcom/aviary/android/feather/library/content/ToolEntry;->labelResourceId:I

    invoke-virtual {v8, v9}, Lcom/aviary/android/feather/FeatherActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1779
    .end local v1    # "item":Lcom/aviary/android/feather/library/content/ToolEntry;
    :cond_2
    return-object p2

    .line 1761
    .end local v0    # "holder":Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;
    :cond_3
    iget-object v7, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/aviary/android/feather/R$layout;->aviary_tool_feedback_layout:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 1771
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/aviary/android/feather/FeatherActivity$ListAdapter$ViewHolder;
    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1723
    iget-boolean v0, p0, Lcom/aviary/android/feather/FeatherActivity$ListAdapter;->mWhiteLabel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1724
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
