.class public Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultipleSelectFriendListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;,
        Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;
    }
.end annotation


# instance fields
.field protected final context:Landroid/content/Context;

.field private friendCheckedListener:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;

.field protected final friendList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;"
        }
    .end annotation
.end field

.field private highlightKey:Ljava/lang/String;

.field protected final iconLoader:Lcom/liquable/nemo/util/ImageLoader;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field private final memberLimit:I

.field private final selectedMember:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p3, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->context:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    iput-object p3, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->friendList:Ljava/util/List;

    .line 74
    iput p4, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->memberLimit:I

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->selectedMember:Ljava/util/Map;

    .line 76
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/friend/model/Account;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->getItem(I)Lcom/liquable/nemo/friend/model/Account;

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

.method public getSelectedCount()I
    .locals 4

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "count":I
    iget-object v2, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->selectedMember:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    return v0
.end method

.method public getSelectedMemberIds()Ljava/util/List;
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
    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "members":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->selectedMember:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v1, 0x0

    .line 117
    if-nez p2, :cond_1

    .line 118
    iget-object v4, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030113

    invoke-virtual {v4, v5, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    new-instance v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;-><init>(Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$1;)V

    .line 120
    .local v3, "viewHolder":Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;
    const v4, 0x7f08024d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->name:Landroid/widget/TextView;

    .line 121
    const v4, 0x7f080252

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->nameFromContact:Landroid/widget/TextView;

    .line 122
    const v4, 0x7f08024c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    .line 123
    const v4, 0x7f08024b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->icon:Landroid/widget/ImageView;

    .line 124
    const v4, 0x7f08031b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->isNewFriendImageView:Landroid/widget/ImageView;

    .line 125
    const v4, 0x7f080250

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->itemFriendMemberIcon:Landroid/view/View;

    .line 126
    const v4, 0x7f0802aa

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->selectedBg:Landroid/widget/ImageView;

    .line 127
    const v4, 0x7f0802ac

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 128
    iget-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v5, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$1;-><init>(Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->getItem(I)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 141
    .local v0, "friend":Lcom/liquable/nemo/friend/model/Account;
    iget-object v4, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->selectedMember:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 142
    .local v2, "isSelectedObj":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 143
    .local v1, "isSelected":Z
    :cond_0
    iget-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->selectedBg:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 144
    iget-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 145
    iget-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 146
    iget-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 147
    iget-object v4, v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->nameFromContact:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 148
    invoke-virtual {p0, v0, v3}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->updateView(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;)V

    .line 149
    return-object p2

    .line 137
    .end local v0    # "friend":Lcom/liquable/nemo/friend/model/Account;
    .end local v1    # "isSelected":Z
    .end local v2    # "isSelectedObj":Ljava/lang/Boolean;
    .end local v3    # "viewHolder":Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;

    .restart local v3    # "viewHolder":Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public reset(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 159
    iget-object v0, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->friendList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->notifyDataSetChanged()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->highlightKey:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public resetWithSearchKey(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "searchKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/friend/model/Account;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->reset(Ljava/util/List;)V

    .line 166
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->highlightKey:Ljava/lang/String;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->highlightKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFriendCheckedListener(Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;)V
    .locals 0
    .param p1, "friendCheckedListener"    # Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->friendCheckedListener:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;

    .line 175
    return-void
.end method

.method public setItemChecked(Lcom/liquable/nemo/friend/model/Account;Z)V
    .locals 3
    .param p1, "account"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "value"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->selectedMember:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public toggleChecked(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 182
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->getItem(I)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 183
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    iget-object v2, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->selectedMember:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 184
    .local v1, "selected":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->selectedMember:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->friendCheckedListener:Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;

    invoke-interface {v2}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;->onFriendChecked()V

    .line 198
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->notifyDataSetChanged()V

    .line 199
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->getSelectedCount()I

    move-result v2

    iget v3, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->memberLimit:I

    if-lt v2, v3, :cond_1

    .line 188
    iget-object v2, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->context:Landroid/content/Context;

    const v4, 0x7f0d01ce

    .line 189
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->memberLimit:I

    .line 190
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 189
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 192
    iget-object v2, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->selectedMember:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->selectedMember:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected updateView(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;)V
    .locals 6
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 202
    sget-object v2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$2;->$SwitchMap$com$liquable$nemo$friend$model$Account$FriendState:[I

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getFriendState()Lcom/liquable/nemo/friend/model/Account$FriendState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/model/Account$FriendState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 219
    :goto_0
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->isNewFriendImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->isNewFriend()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->isNewFriendImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 228
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    :goto_2
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getNicknameFromContact()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/util/StringLean;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getNicknameFromContact()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 237
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getNicknameFromContact()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->highlightKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->getHighlightedSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    .line 239
    .local v1, "nameFromContact":Landroid/text/Spannable;
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->nameFromContact:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 240
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->nameFromContact:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    .end local v1    # "nameFromContact":Landroid/text/Spannable;
    :goto_3
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->highlightKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->getHighlightedSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    .line 246
    .local v0, "name":Landroid/text/Spannable;
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->name:Landroid/widget/TextView;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 248
    iget-object v2, p0, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter;->iconLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 249
    return-void

    .line 204
    .end local v0    # "name":Landroid/text/Spannable;
    :pswitch_0
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    const v3, 0x7f0d02c6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    const v3, 0x7f0d02c7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    const v3, 0x7f0d02c8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 213
    :pswitch_3
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    const v3, 0x7f0d02c5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 224
    :cond_1
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->isNewFriendImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 231
    :cond_2
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 242
    :cond_3
    iget-object v2, p2, Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$BaseViewHolder;->nameFromContact:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
