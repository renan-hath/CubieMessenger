.class Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$2;
.super Landroid/os/AsyncTask;
.source "FindFriendsInContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/android/provider/StrequentContactInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$2;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$2;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/StrequentContactInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/StrequentContactInfo;>;"
    iget-object v4, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$2;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 140
    :cond_0
    return-object v3

    .line 133
    :cond_1
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/model/FriendManager;->listNotInvitableFriendsLookupKeys()Ljava/util/List;

    move-result-object v2

    .line 134
    .local v2, "lookupKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$2;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/liquable/nemo/android/provider/Contacts;->listStrequentContactInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 135
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/StrequentContactInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    .line 136
    .local v0, "info":Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    invoke-virtual {v0}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->getLookupKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 137
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 126
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$2;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/android/provider/StrequentContactInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/android/provider/StrequentContactInfo;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$2;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    # getter for: Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;
    invoke-static {v0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->access$100(Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;)Lcom/liquable/nemo/friend/ContactListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/ContactListAdapter;->reset(Ljava/util/List;)V

    .line 146
    return-void
.end method
