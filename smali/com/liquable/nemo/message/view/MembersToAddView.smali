.class public Lcom/liquable/nemo/message/view/MembersToAddView;
.super Landroid/widget/LinearLayout;
.source "MembersToAddView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;
    }
.end annotation


# static fields
.field private static final MAX_MEMBER_TO_SHOW:I = 0x3


# instance fields
.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

.field private final moreButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-array v3, v8, [Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    iput-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    .line 48
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/message/view/MembersToAddView;->setOrientation(I)V

    .line 49
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x12c

    invoke-static {p1, v3}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v2, "rowLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_0

    .line 52
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    new-instance v4, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    invoke-direct {v4, p0, v9}, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;-><init>(Lcom/liquable/nemo/message/view/MembersToAddView;Lcom/liquable/nemo/message/view/MembersToAddView$1;)V

    aput-object v4, v3, v1

    .line 53
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v3, v3, v1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03014f

    invoke-virtual {v4, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    .line 54
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    new-instance v4, Lcom/liquable/nemo/message/view/MembersToAddView$1;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/message/view/MembersToAddView$1;-><init>(Lcom/liquable/nemo/message/view/MembersToAddView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v4, v3, v1

    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    const v5, 0x7f080320

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->name:Landroid/widget/TextView;

    .line 83
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v4, v3, v1

    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    const v5, 0x7f08024b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->iconImage:Landroid/widget/ImageView;

    .line 84
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    const v5, 0x7f08031e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->icon:Landroid/view/View;

    .line 85
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->icon:Landroid/view/View;

    new-instance v4, Lcom/liquable/nemo/message/view/MembersToAddView$2;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/message/view/MembersToAddView$2;-><init>(Lcom/liquable/nemo/message/view/MembersToAddView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    const v4, 0x7f08031c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    const v4, 0x7f08031d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    invoke-virtual {p0, v3, v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 101
    :cond_0
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->moreButton:Landroid/widget/Button;

    .line 102
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v0, "buttonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->moreButton:Landroid/widget/Button;

    const v4, 0x7f0d0053

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 105
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->moreButton:Landroid/widget/Button;

    new-instance v4, Lcom/liquable/nemo/message/view/MembersToAddView$3;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/message/view/MembersToAddView$3;-><init>(Lcom/liquable/nemo/message/view/MembersToAddView;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->moreButton:Landroid/widget/Button;

    invoke-virtual {p0, v3, v0}, Lcom/liquable/nemo/message/view/MembersToAddView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    return-void
.end method

.method private updateRowWithMember(Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 3
    .param p1, "row"    # Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;
    .param p2, "member"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 162
    iget-object v0, p1, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p1, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 164
    iget-object v0, p1, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p1, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->icon:Landroid/view/View;

    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p1, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->iconImage:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/liquable/nemo/friend/model/AccountIconFactory;->create(Lcom/liquable/nemo/friend/model/Account;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 167
    return-void
.end method

.method private updateRowWithoutMember(Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;)V
    .locals 3
    .param p1, "row"    # Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p1, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p1, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->row:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 172
    iget-object v0, p1, Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;->icon:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/message/view/MembersToAddView;->setVisibility(I)V

    .line 119
    return-void
.end method

.method public setImageLoader(Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p1, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 123
    return-void
.end method

.method public update(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 10
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 126
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v3

    .line 127
    .local v3, "members":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liquable/nemo/friend/model/Account;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/friend/model/Account;

    .line 131
    .local v2, "member":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/model/Account;->isBlocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 136
    .end local v2    # "member":Lcom/liquable/nemo/friend/model/Account;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 137
    invoke-virtual {p0, v9}, Lcom/liquable/nemo/message/view/MembersToAddView;->setVisibility(I)V

    .line 159
    :goto_1
    return-void

    .line 139
    :cond_3
    invoke-virtual {p0, v7}, Lcom/liquable/nemo/message/view/MembersToAddView;->setVisibility(I)V

    .line 140
    new-instance v5, Lcom/liquable/nemo/friend/model/FriendStateComparator;

    invoke-direct {v5}, Lcom/liquable/nemo/friend/model/FriendStateComparator;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 141
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 142
    .local v4, "totalNonFriendMembers":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v3, v7, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v8, :cond_5

    .line 144
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v0, :cond_4

    .line 145
    iget-object v5, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v6, v5, v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liquable/nemo/friend/model/Account;

    invoke-direct {p0, v6, v5}, Lcom/liquable/nemo/message/view/MembersToAddView;->updateRowWithMember(Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;Lcom/liquable/nemo/friend/model/Account;)V

    .line 143
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 147
    :cond_4
    iget-object v5, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v5, v5, v0

    invoke-direct {p0, v5}, Lcom/liquable/nemo/message/view/MembersToAddView;->updateRowWithoutMember(Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;)V

    goto :goto_3

    .line 151
    :cond_5
    if-le v4, v8, :cond_6

    .line 152
    iget-object v5, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->moreButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v5, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->moreButton:Landroid/widget/Button;

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    :cond_6
    iget-object v5, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->moreButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v5, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->moreButton:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public updateWithInvitedUser(Lcom/liquable/nemo/friend/model/Account;)V
    .locals 3
    .param p1, "member"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v1, v1, v2

    invoke-direct {p0, v1, p1}, Lcom/liquable/nemo/message/view/MembersToAddView;->updateRowWithMember(Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;Lcom/liquable/nemo/friend/model/Account;)V

    .line 180
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->memberViews:[Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/liquable/nemo/message/view/MembersToAddView;->updateRowWithoutMember(Lcom/liquable/nemo/message/view/MembersToAddView$ViewHolder;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/message/view/MembersToAddView;->moreButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 185
    return-void
.end method
