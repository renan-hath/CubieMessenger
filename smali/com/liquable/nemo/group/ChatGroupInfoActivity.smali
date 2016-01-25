.class public Lcom/liquable/nemo/group/ChatGroupInfoActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ChatGroupInfoActivity.java"


# static fields
.field private static final CHAT_GROUP_INFO_ADD_FRIEND:Ljava/lang/String; = "CHAT_GROUP_INFO_ADD_FRIEND"


# instance fields
.field private chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field private final dateformat:Ljava/text/SimpleDateFormat;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private memberListAdapter:Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;

.field private membersListView:Landroid/widget/ListView;

.field receiver:Landroid/content/BroadcastReceiver;

.field private receiverRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy-MM-dd, E"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->dateformat:Ljava/text/SimpleDateFormat;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->receiverRegistered:Z

    .line 72
    new-instance v0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$1;-><init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method static synthetic access$002(Lcom/liquable/nemo/group/ChatGroupInfoActivity;Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    return-object p1
.end method

.method static synthetic access$100(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->memberListAdapter:Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->isAddFriend(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/group/ChatGroupInfoActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->addFriends(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->initChatGroup()V

    return-void
.end method

.method private addFriends(Ljava/util/List;)V
    .locals 4
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
    .line 90
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v1, "memberIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 92
    .local v0, "member":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v0    # "member":Lcom/liquable/nemo/friend/model/Account;
    :cond_0
    new-instance v2, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;

    invoke-direct {v2, p0, p0, v1, p1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;-><init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 139
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$2;->execute([Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method public static createIntentForAddFriend(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chatGroupTopic"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v1, "CHAT_GROUP_INFO_ADD_FRIEND"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    return-object v0
.end method

.method private initChatGroup()V
    .locals 11

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v8

    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v9}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    const v8, 0x7f080073

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 145
    .local v3, "iconView":Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-static {v9}, Lcom/liquable/nemo/group/ChatGroupIconFactory;->create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 147
    const v8, 0x7f080075

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    .local v0, "createTimeTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->dateformat:Ljava/text/SimpleDateFormat;

    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v9}, Lcom/liquable/nemo/group/model/ChatGroup;->getCreateTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v8, 0x7f080077

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 151
    .local v6, "ownerTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v8}, Lcom/liquable/nemo/group/model/ChatGroup;->resolveOwnerUid()Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "ownerUid":Ljava/lang/String;
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 153
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v8}, Lcom/liquable/nemo/util/Pref;->getNickname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    const v8, 0x7f08007a

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->membersListView:Landroid/widget/ListView;

    .line 164
    iget-object v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v8}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v4

    .line 165
    .local v4, "members":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v8, Lcom/liquable/nemo/friend/model/FriendStateComparator;

    invoke-direct {v8}, Lcom/liquable/nemo/friend/model/FriendStateComparator;-><init>()V

    invoke-static {v4, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 166
    new-instance v8, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;

    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    const v10, 0x7f0300d7

    invoke-direct {v8, p0, v9, v4, v10}, Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;I)V

    iput-object v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->memberListAdapter:Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;

    .line 170
    iget-object v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->membersListView:Landroid/widget/ListView;

    new-instance v9, Lcom/liquable/nemo/group/ChatGroupInfoActivity$3;

    invoke-direct {v9, p0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$3;-><init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    iget-object v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->membersListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->memberListAdapter:Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    const v8, 0x7f080079

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 190
    .local v2, "goToChattingBtn":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-static {v8}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->isAddFriend(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f0d003f

    :goto_1
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 192
    new-instance v8, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;

    invoke-direct {v8, p0, v4}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$4;-><init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity;Ljava/util/List;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v8, 0x7f080078

    invoke-virtual {p0, v8}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0d00d6

    invoke-virtual {p0, v10}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 216
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 214
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-boolean v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->receiverRegistered:Z

    if-nez v8, :cond_0

    .line 220
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v8, "com.liquable.nemo.friend.model.FRIEND_EVENT"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->receiverRegistered:Z

    .line 225
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 155
    .end local v2    # "goToChattingBtn":Landroid/widget/Button;
    .end local v4    # "members":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    :cond_1
    sget-object v8, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v8, v7}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v5

    .line 156
    .local v5, "owner":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v5, :cond_2

    .line 157
    invoke-virtual {v5}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 159
    :cond_2
    const-string/jumbo v8, "?"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 190
    .end local v5    # "owner":Lcom/liquable/nemo/friend/model/Account;
    .restart local v2    # "goToChattingBtn":Landroid/widget/Button;
    .restart local v4    # "members":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    :cond_3
    const v8, 0x7f0d00d0

    goto :goto_1
.end method

.method private static isAddFriend(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    const-string/jumbo v0, "CHAT_GROUP_INFO_ADD_FRIEND"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDestroy()V
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->receiverRegistered:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/liquable/nemo/BaseActivity;->onDestroy()V

    .line 234
    return-void
.end method

.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    const v1, 0x7f030020

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->setContentView(I)V

    .line 239
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 241
    invoke-virtual {p0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "CHAT_GROUP_TOPIC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "topic":Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->isRobot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->finish()V

    .line 279
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v1, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;

    invoke-direct {v1, p0, p0, v0}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;-><init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 278
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/ChatGroupInfoActivity$5;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method
