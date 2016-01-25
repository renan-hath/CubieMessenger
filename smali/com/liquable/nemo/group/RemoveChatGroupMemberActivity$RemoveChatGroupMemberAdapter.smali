.class Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$RemoveChatGroupMemberAdapter;
.super Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;
.source "RemoveChatGroupMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoveChatGroupMemberAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p4, "itemLayoutId"    # I
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
    .line 53
    .local p3, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;I)V

    .line 54
    return-void
.end method


# virtual methods
.method protected updateView(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;Landroid/view/View;)V
    .locals 2
    .param p1, "friend"    # Lcom/liquable/nemo/friend/model/Account;
    .param p2, "viewHolder"    # Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;->updateView(Lcom/liquable/nemo/friend/model/Account;Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;Landroid/view/View;)V

    .line 62
    iget-object v0, p2, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter$BaseViewHolder;->friendState:Landroid/widget/TextView;

    .line 63
    .local v0, "friendState":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    const v1, 0x7f0d0439

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 65
    return-void
.end method
