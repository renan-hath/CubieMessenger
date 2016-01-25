.class public Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectSharingChatGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;,
        Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;
    }
.end annotation


# instance fields
.field private final allChatGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation
.end field

.field private highlightKey:Ljava/lang/String;

.field imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private onSelectedCountChangeListener:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;

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

.field private final visibleChatGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/Set;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "selectedChatGroup":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->allChatGroupList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->visibleChatGroupList:Ljava/util/List;

    .line 57
    iput-object p2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    iput-object p3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->selectedChatGroup:Ljava/util/Set;

    .line 60
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)V
    .locals 3
    .param p1, "searchKeyword"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->visibleChatGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 64
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->highlightKey:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->visibleChatGroupList:Ljava/util/List;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->allChatGroupList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->notifyDataSetChanged()V

    .line 76
    return-void

    .line 68
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->highlightKey:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->allChatGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 70
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/commons/lang3/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->visibleChatGroupList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->visibleChatGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->visibleChatGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->getItem(I)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 90
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 96
    if-nez p2, :cond_0

    .line 97
    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030112

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 98
    new-instance v2, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$1;)V

    .line 99
    .local v2, "viewHolder":Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;
    const v3, 0x7f0802aa

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->selectedBg:Landroid/widget/ImageView;

    .line 100
    const v3, 0x7f08023e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->topicTextView:Landroid/widget/TextView;

    .line 101
    const v3, 0x7f08024b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->memberIcon:Landroid/widget/ImageView;

    .line 102
    const v3, 0x7f0802ab

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 103
    iget-object v3, v2, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$1;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$1;-><init>(Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->getItem(I)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 115
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->highlightKey:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/liquable/nemo/util/NemoUIs;->getHighlightedSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    .line 116
    .local v1, "title":Landroid/text/Spannable;
    iget-object v3, v2, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->topicTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 117
    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->selectedChatGroup:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p0, v2, p1, v3}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->updateSelectedItemView(Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;IZ)V

    .line 119
    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, v2, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->memberIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/liquable/nemo/group/ChatGroupIconFactory;->create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 120
    return-object p2

    .line 112
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "title":Landroid/text/Spannable;
    .end local v2    # "viewHolder":Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;
    goto :goto_0
.end method

.method public reset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->visibleChatGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->visibleChatGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->allChatGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->allChatGroupList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->notifyDataSetChanged()V

    .line 131
    :cond_0
    return-void
.end method

.method public final setOnSelectedCountChangeListener(Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;)V
    .locals 0
    .param p1, "onSelectedCountChangeListener"    # Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->onSelectedCountChangeListener:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;

    .line 135
    return-void
.end method

.method public toggleChecked(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->getItem(I)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 139
    .local v0, "item":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->selectedChatGroup:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->selectedChatGroup:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->onSelectedCountChangeListener:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->onSelectedCountChangeListener:Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;

    iget-object v2, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->selectedChatGroup:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$OnSelectedCountChangeListener;->onSelectedCountChange(I)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->notifyDataSetChanged()V

    .line 148
    return-void

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter;->selectedChatGroup:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected updateSelectedItemView(Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;IZ)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "selected"    # Z

    .prologue
    .line 153
    iget-object v0, p1, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->topicTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 154
    iget-object v0, p1, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->selectedBg:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 155
    iget-object v0, p1, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 156
    iget-object v0, p1, Lcom/liquable/nemo/share/SelectSharingChatGroupAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 157
    return-void
.end method
