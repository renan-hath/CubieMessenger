.class Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$3;
.super Ljava/lang/Object;
.source "FindFriendsInContactsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$3;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v1

    .line 168
    .local v1, "itemViewType":I
    if-nez v1, :cond_0

    .line 169
    const/4 v3, -0x1

    .line 174
    .local v3, "typeId":I
    :goto_0
    sget-object v4, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$4;->$SwitchMap$com$liquable$nemo$friend$FriendListView$Type:[I

    invoke-static {}, Lcom/liquable/nemo/friend/FriendListView$Type;->values()[Lcom/liquable/nemo/friend/FriendListView$Type;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/liquable/nemo/friend/FriendListView$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 184
    :goto_1
    return-void

    .line 171
    .end local v3    # "typeId":I
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/widget/SeparatedListAdapter;

    check-cast v4, Lcom/liquable/nemo/widget/SeparatedListAdapter;

    invoke-virtual {v4, p3}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->getAdapterTag(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v2}, Lcom/liquable/nemo/friend/FriendListView$Type;->valueOf(Ljava/lang/String;)Lcom/liquable/nemo/friend/FriendListView$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/FriendListView$Type;->ordinal()I

    move-result v3

    .restart local v3    # "typeId":I
    goto :goto_0

    .line 176
    .end local v2    # "tag":Ljava/lang/String;
    :pswitch_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    .line 177
    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    .line 178
    .local v0, "contactInfo":Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    iget-object v4, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$3;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string/jumbo v5, "find_friends"

    invoke-static {v4, v0, v5}, Lcom/liquable/nemo/friend/view/InviteFriendDialogs;->show(Landroid/content/Context;Lcom/liquable/nemo/android/provider/StrequentContactInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
