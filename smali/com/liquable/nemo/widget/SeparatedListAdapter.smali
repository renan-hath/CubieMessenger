.class public Lcom/liquable/nemo/widget/SeparatedListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;,
        Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    }
.end annotation


# static fields
.field public static final TYPE_EMPTY_SECTION_HEADER:I = 0x1

.field public static final TYPE_SECTION_HEADER:I


# instance fields
.field protected final adapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSetObserver:Landroid/database/DataSetObserver;

.field protected final invisibleSections:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 89
    new-instance v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/widget/SeparatedListAdapter$1;-><init>(Lcom/liquable/nemo/widget/SeparatedListAdapter;)V

    iput-object v0, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    .line 96
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->invisibleSections:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public addAdapter(Ljava/lang/String;ILandroid/widget/Adapter;Ljava/lang/String;)V
    .locals 6
    .param p1, "sectionTitle"    # Ljava/lang/String;
    .param p2, "iconResource"    # I
    .param p3, "adapter"    # Landroid/widget/Adapter;
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->addAdapter(Ljava/lang/String;ILandroid/widget/Adapter;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 105
    return-void
.end method

.method public addAdapter(Ljava/lang/String;ILandroid/widget/Adapter;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "sectionTitle"    # Ljava/lang/String;
    .param p2, "iconResource"    # I
    .param p3, "adapter"    # Landroid/widget/Adapter;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "onCloseClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    new-instance v1, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    invoke-direct {v1, p1, p2, p4, p5}, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->dataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p3, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 114
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter(Ljava/lang/String;)Landroid/widget/Adapter;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 123
    .local v0, "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v1, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    .line 127
    .end local v0    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAdapterTag(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 131
    move v0, p1

    .line 132
    .local v0, "relativePos":I
    iget-object v3, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 133
    .local v1, "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    iget-object v4, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->invisibleSections:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    iget-object v4, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 138
    .local v2, "subAdapter":Landroid/widget/Adapter;
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    if-nez v0, :cond_1

    .line 141
    const/4 v3, 0x0

    .line 145
    :goto_1
    return-object v3

    .line 143
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 144
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 145
    invoke-virtual {v1}, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->getTag()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 147
    :cond_2
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    .line 150
    .end local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .end local v2    # "subAdapter":Landroid/widget/Adapter;
    :cond_3
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "count":I
    iget-object v3, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 158
    .local v1, "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    iget-object v4, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->invisibleSections:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 160
    .local v2, "subAdapter":Landroid/widget/Adapter;
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 161
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/2addr v0, v4

    .line 162
    invoke-virtual {v1}, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->getIconResource()I

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .end local v2    # "subAdapter":Landroid/widget/Adapter;
    :cond_1
    return v0
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 173
    .local v0, "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 177
    .end local v0    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 182
    move v0, p1

    .line 184
    .local v0, "relativePos":I
    iget-object v3, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 185
    .local v1, "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    iget-object v4, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->invisibleSections:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 190
    .local v2, "subAdapter":Landroid/widget/Adapter;
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    if-nez v0, :cond_1

    .line 192
    iget-object v3, v1, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->title:Ljava/lang/String;

    .line 201
    .end local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .end local v2    # "subAdapter":Landroid/widget/Adapter;
    :goto_1
    return-object v3

    .line 194
    .restart local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .restart local v2    # "subAdapter":Landroid/widget/Adapter;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 195
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 196
    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 198
    :cond_2
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    .line 201
    .end local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .end local v2    # "subAdapter":Landroid/widget/Adapter;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 211
    move v0, p1

    .line 212
    .local v0, "relativePos":I
    const/4 v3, 0x2

    .line 213
    .local v3, "type":I
    iget-object v4, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 214
    .local v1, "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    iget-object v5, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 215
    .local v2, "subAdapter":Landroid/widget/Adapter;
    iget-object v5, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->invisibleSections:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 216
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v3, v5

    .line 231
    :goto_1
    iget-object v5, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->invisibleSections:Ljava/util/LinkedHashSet;

    invoke-virtual {v5, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    sub-int/2addr v0, v5

    goto :goto_0

    .line 218
    :cond_1
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-eqz v5, :cond_3

    .line 219
    if-nez v0, :cond_2

    .line 221
    const/4 v4, 0x0

    .line 235
    .end local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .end local v2    # "subAdapter":Landroid/widget/Adapter;
    :goto_2
    return v4

    .line 223
    .restart local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .restart local v2    # "subAdapter":Landroid/widget/Adapter;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 224
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 225
    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_2

    .line 228
    :cond_3
    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_1

    .line 235
    .end local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .end local v2    # "subAdapter":Landroid/widget/Adapter;
    :cond_4
    const/4 v4, -0x1

    goto :goto_2
.end method

.method protected getSectionView(Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "section"    # Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 240
    if-nez p2, :cond_0

    .line 241
    new-instance v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;-><init>(Lcom/liquable/nemo/widget/SeparatedListAdapter$1;)V

    .line 242
    .local v0, "viewHolder":Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010f

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 245
    const v1, 0x7f0802a9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    .line 246
    const v1, 0x7f0802a8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;->sectionCloseBtn:Landroid/view/View;

    .line 247
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    :goto_0
    iget-object v1, v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;->sectionHeader:Landroid/widget/TextView;

    iget v2, p1, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->iconResource:I

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 254
    # getter for: Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->onCloseClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->access$100(Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_1

    .line 255
    iget-object v1, v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;->sectionCloseBtn:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :goto_1
    return-object p2

    .line 249
    .end local v0    # "viewHolder":Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;

    .restart local v0    # "viewHolder":Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;
    goto :goto_0

    .line 257
    :cond_1
    iget-object v1, v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;->sectionCloseBtn:Landroid/view/View;

    # getter for: Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->onCloseClickListener:Landroid/view/View$OnClickListener;
    invoke-static {p1}, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->access$100(Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v1, v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$SectionHeaderViewHolder;->sectionCloseBtn:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 266
    move v0, p1

    .line 268
    .local v0, "relativePos":I
    iget-object v3, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 269
    .local v1, "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    iget-object v4, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->invisibleSections:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 272
    iget-object v4, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    .line 273
    .local v2, "subAdapter":Landroid/widget/Adapter;
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 275
    if-nez v0, :cond_1

    .line 277
    invoke-virtual {p0, v1, p2, p3}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->getSectionView(Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 286
    .end local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .end local v2    # "subAdapter":Landroid/widget/Adapter;
    :goto_1
    return-object v3

    .line 279
    .restart local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .restart local v2    # "subAdapter":Landroid/widget/Adapter;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 280
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 281
    invoke-interface {v2, v0, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_1

    .line 283
    :cond_2
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    .line 286
    .end local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    .end local v2    # "subAdapter":Landroid/widget/Adapter;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 291
    const/4 v0, 0x2

    .line 292
    .local v0, "count":I
    iget-object v2, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 293
    .local v1, "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    iget-object v2, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 294
    goto :goto_0

    .line 295
    .end local v1    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    :cond_0
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public hideAdapter(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v1, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 305
    .local v0, "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    iget-object v1, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->invisibleSections:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 312
    .end local v0    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 321
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAdapter(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v1, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->adapters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;

    .line 326
    .local v0, "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v1, p0, Lcom/liquable/nemo/widget/SeparatedListAdapter;->invisibleSections:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {p0}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->notifyDataSetChanged()V

    .line 332
    .end local v0    # "section":Lcom/liquable/nemo/widget/SeparatedListAdapter$Section;
    :cond_1
    return-void
.end method
