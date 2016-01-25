.class public Lcom/liquable/nemo/friend/FriendListView;
.super Landroid/widget/ListView;
.source "FriendListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/friend/FriendListView$Type;
    }
.end annotation


# static fields
.field public static final ITEM_UNKNOWN:I = -0x1

.field private static final NUMBER_OF_FRIENDS_TO_SHOW_CONTACTS:I = 0x6


# instance fields
.field private adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

.field private contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;

.field private final context:Landroid/content/Context;

.field private friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

.field private groupListAdapter:Lcom/liquable/nemo/friend/GroupListAdapter;

.field private onFriendIconClickListener:Landroid/view/View$OnClickListener;

.field private onGroupIconClickListener:Landroid/view/View$OnClickListener;

.field private recommendFriendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

.field private userAdapter:Lcom/liquable/nemo/friend/UserAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/friend/FriendListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/FriendListView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/friend/FriendListView;)Lcom/liquable/nemo/friend/ContactListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/friend/FriendListView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;

    return-object v0
.end method

.method private loadContactList()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/liquable/nemo/friend/FriendListView$3;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/FriendListView$3;-><init>(Lcom/liquable/nemo/friend/FriendListView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 136
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/FriendListView$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void
.end method


# virtual methods
.method public build(Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 7
    .param p1, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    const v6, 0x7f0203fb

    .line 58
    new-instance v0, Lcom/liquable/nemo/widget/SeparatedListAdapter;

    invoke-direct {v0}, Lcom/liquable/nemo/widget/SeparatedListAdapter;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    .line 60
    new-instance v0, Lcom/liquable/nemo/friend/UserAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/liquable/nemo/friend/UserAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->userAdapter:Lcom/liquable/nemo/friend/UserAdapter;

    .line 62
    new-instance v0, Lcom/liquable/nemo/friend/GroupListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListView;->onGroupIconClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/liquable/nemo/friend/GroupListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->groupListAdapter:Lcom/liquable/nemo/friend/GroupListAdapter;

    .line 64
    new-instance v0, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->recommendFriendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    .line 68
    new-instance v0, Lcom/liquable/nemo/friend/FriendListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/liquable/nemo/friend/FriendListView;->onFriendIconClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/liquable/nemo/friend/FriendListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    .line 73
    new-instance v0, Lcom/liquable/nemo/friend/ContactListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Lcom/liquable/nemo/friend/ContactListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;)V

    iput-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;

    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    const v2, 0x7f0d037b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListView;->userAdapter:Lcom/liquable/nemo/friend/UserAdapter;

    sget-object v3, Lcom/liquable/nemo/friend/FriendListView$Type;->USER:Lcom/liquable/nemo/friend/FriendListView$Type;

    .line 80
    invoke-virtual {v3}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->addAdapter(Ljava/lang/String;ILandroid/widget/Adapter;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    const v2, 0x7f0d0426

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02051d

    iget-object v3, p0, Lcom/liquable/nemo/friend/FriendListView;->recommendFriendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    sget-object v4, Lcom/liquable/nemo/friend/FriendListView$Type;->RECOMMEND:Lcom/liquable/nemo/friend/FriendListView$Type;

    .line 84
    invoke-virtual {v4}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/liquable/nemo/friend/FriendListView$1;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/friend/FriendListView$1;-><init>(Lcom/liquable/nemo/friend/FriendListView;)V

    .line 81
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->addAdapter(Ljava/lang/String;ILandroid/widget/Adapter;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    const v2, 0x7f0d02d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListView;->groupListAdapter:Lcom/liquable/nemo/friend/GroupListAdapter;

    sget-object v3, Lcom/liquable/nemo/friend/FriendListView$Type;->GROUP:Lcom/liquable/nemo/friend/FriendListView$Type;

    .line 95
    invoke-virtual {v3}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v3

    .line 92
    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->addAdapter(Ljava/lang/String;ILandroid/widget/Adapter;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    const v2, 0x7f0d02c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListView;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    sget-object v3, Lcom/liquable/nemo/friend/FriendListView$Type;->FRIEND:Lcom/liquable/nemo/friend/FriendListView$Type;

    .line 99
    invoke-virtual {v3}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->addAdapter(Ljava/lang/String;ILandroid/widget/Adapter;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    iget-object v1, p0, Lcom/liquable/nemo/friend/FriendListView;->context:Landroid/content/Context;

    const v2, 0x7f0d02c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/liquable/nemo/friend/FriendListView;->contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;

    sget-object v2, Lcom/liquable/nemo/friend/FriendListView$Type;->CONTACT:Lcom/liquable/nemo/friend/FriendListView$Type;

    .line 103
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/liquable/nemo/friend/FriendListView$2;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/friend/FriendListView$2;-><init>(Lcom/liquable/nemo/friend/FriendListView;)V

    move v2, v6

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->addAdapter(Ljava/lang/String;ILandroid/widget/Adapter;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/friend/FriendListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    invoke-direct {p0}, Lcom/liquable/nemo/friend/FriendListView;->loadContactList()V

    .line 115
    return-void
.end method

.method public notifyFriendsUpdated()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/FriendListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public notifyRecommendFriendsUpdated()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->recommendFriendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->recommendFriendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public notifyUserUpdated()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->userAdapter:Lcom/liquable/nemo/friend/UserAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/UserAdapter;->reset()V

    .line 155
    return-void
.end method

.method public removeRecommendFriendById(Ljava/lang/String;)V
    .locals 1
    .param p1, "accountUid"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->recommendFriendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->removeFriendById(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public resetFriends(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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
    .line 162
    .local p1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/FriendListAdapter;->reset(Ljava/util/List;)V

    .line 168
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/friend/ContactListAdapter;->reset(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/liquable/nemo/friend/FriendListAdapter;->resetWithSearchKey(Ljava/util/List;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->contactListAdapter:Lcom/liquable/nemo/friend/ContactListAdapter;

    invoke-virtual {v0, p2}, Lcom/liquable/nemo/friend/ContactListAdapter;->reset(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetGroups(Ljava/util/List;)V
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
    .line 176
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->groupListAdapter:Lcom/liquable/nemo/friend/GroupListAdapter;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->groupListAdapter:Lcom/liquable/nemo/friend/GroupListAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/GroupListAdapter;->reset(Ljava/util/List;)V

    goto :goto_0
.end method

.method public resetRecommendFriends(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/model/account/RecommendFriendDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "accountDtos":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/model/account/RecommendFriendDto;>;"
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->recommendFriendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->recommendFriendListAdapter:Lcom/liquable/nemo/friend/RecommendFriendListAdapter;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/friend/RecommendFriendListAdapter;->reset(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setOnGroupIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/liquable/nemo/friend/FriendListView;->onGroupIconClickListener:Landroid/view/View$OnClickListener;

    .line 191
    return-void
.end method

.method public setViewProfileBtn(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/liquable/nemo/friend/FriendListView;->onFriendIconClickListener:Landroid/view/View$OnClickListener;

    .line 195
    return-void
.end method

.method public showContactList(Z)Z
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 198
    if-eqz p1, :cond_3

    .line 199
    const/4 v0, 0x6

    .line 200
    .local v0, "numberOfFriendsToShowContacts":I
    sget-object v2, Lcom/liquable/nemo/Constants;->SERVER_TYPE:Lcom/liquable/nemo/client/ServerType;

    invoke-virtual {v2}, Lcom/liquable/nemo/client/ServerType;->isTestOnProduction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    const/16 v0, 0x2710

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListView;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/FriendListAdapter;->getCount()I

    move-result v2

    if-le v2, v0, :cond_2

    .line 205
    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v3, Lcom/liquable/nemo/friend/FriendListView$Type;->CONTACT:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->hideAdapter(Ljava/lang/String;)V

    .line 215
    .end local v0    # "numberOfFriendsToShowContacts":I
    :cond_1
    :goto_0
    return v1

    .line 208
    .restart local v0    # "numberOfFriendsToShowContacts":I
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v3, Lcom/liquable/nemo/friend/FriendListView$Type;->CONTACT:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->showAdapter(Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v3, Lcom/liquable/nemo/friend/FriendListView$Type;->CONTACT:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->getCount(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 210
    const/4 v1, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "numberOfFriendsToShowContacts":I
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v3, Lcom/liquable/nemo/friend/FriendListView$Type;->CONTACT:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v3}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->hideAdapter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showGroupList(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->GROUP:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->showAdapter(Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->GROUP:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->hideAdapter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showRecommendFriendList(Z)Z
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->RECOMMEND:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->showAdapter(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->RECOMMEND:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->getCount(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 230
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->RECOMMEND:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->hideAdapter(Ljava/lang/String;)V

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showUserProfile(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->USER:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->showAdapter(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/FriendListView;->adapter:Lcom/liquable/nemo/widget/SeparatedListAdapter;

    sget-object v1, Lcom/liquable/nemo/friend/FriendListView$Type;->USER:Lcom/liquable/nemo/friend/FriendListView$Type;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/FriendListView$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SeparatedListAdapter;->hideAdapter(Ljava/lang/String;)V

    goto :goto_0
.end method
