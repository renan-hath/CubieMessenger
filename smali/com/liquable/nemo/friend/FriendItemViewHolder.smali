.class public Lcom/liquable/nemo/friend/FriendItemViewHolder;
.super Ljava/lang/Object;
.source "FriendItemViewHolder.java"


# instance fields
.field private final background:Landroid/view/View;

.field private final friendState:Landroid/widget/TextView;

.field private final icon:Landroid/widget/ImageView;

.field private final isNewFriendImageView:Landroid/view/View;

.field private final itemFriendMemberIcon:Landroid/view/View;

.field private final itemFriendPressedMask:Landroid/view/View;

.field private final itemFriendTriangle:Landroid/view/View;

.field private final name:Landroid/widget/TextView;

.field private final nameFromContact:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const v0, 0x7f08024f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->background:Landroid/view/View;

    .line 31
    const v0, 0x7f08024d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->name:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f080252

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->nameFromContact:Landroid/widget/TextView;

    .line 33
    const v0, 0x7f08024c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->friendState:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f08024b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->icon:Landroid/widget/ImageView;

    .line 35
    const v0, 0x7f08031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->isNewFriendImageView:Landroid/view/View;

    .line 36
    const v0, 0x7f080250

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->itemFriendMemberIcon:Landroid/view/View;

    .line 37
    const v0, 0x7f08031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->itemFriendTriangle:Landroid/view/View;

    .line 38
    const v0, 0x7f08031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->itemFriendPressedMask:Landroid/view/View;

    .line 39
    return-void
.end method


# virtual methods
.method public setBackground(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->background:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    return-void
.end method

.method public setFriendState(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/CharSequence;

    .prologue
    .line 46
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->friendState:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->friendState:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->friendState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setIcon(Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/util/LoadableImage;)V
    .locals 1
    .param p1, "iconLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p2, "image"    # Lcom/liquable/nemo/util/LoadableImage;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, p2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 56
    return-void
.end method

.method public setIconClickable(Z)V
    .locals 4
    .param p1, "clickable"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 59
    iget-object v3, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->itemFriendTriangle:Landroid/view/View;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->itemFriendPressedMask:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    return-void

    :cond_0
    move v0, v2

    .line 59
    goto :goto_0

    :cond_1
    move v1, v2

    .line 60
    goto :goto_1
.end method

.method public setIconTag(Ljava/lang/Object;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->itemFriendMemberIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public setIsNew(Z)V
    .locals 2
    .param p1, "isNew"    # Z

    .prologue
    .line 68
    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->isNewFriendImageView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setName(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/CharSequence;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->name:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 73
    return-void
.end method

.method public setName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "t1"    # Ljava/lang/CharSequence;
    .param p2, "t2"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/FriendItemViewHolder;->setName(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->nameFromContact:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->nameFromContact:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->nameFromContact:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    goto :goto_0
.end method

.method public setOnIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onIconClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendItemViewHolder;->itemFriendMemberIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method
