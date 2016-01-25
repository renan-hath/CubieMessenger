.class public Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "RemoveChatGroupMemberActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$RemoveChatGroupMemberAdapter;,
        Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$CreateIntent;
    }
.end annotation


# instance fields
.field private chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field private imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private memberListAdapter:Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;

.field private membersListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "x2"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->show(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;)V

    return-void
.end method

.method private show(Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;)V
    .locals 6
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "removedAccount"    # Lcom/liquable/nemo/friend/model/Account;

    .prologue
    .line 115
    const v2, 0x7f0d043a

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p2}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 115
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "message":Ljava/lang/String;
    move-object v0, p0

    .line 119
    .local v0, "context":Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;
    invoke-static {p0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0439

    .line 120
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0115

    new-instance v4, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$2;-><init>(Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;Lcom/liquable/nemo/group/model/ChatGroup;Lcom/liquable/nemo/friend/model/Account;)V

    .line 122
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d00c5

    const/4 v4, 0x0

    .line 163
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 164
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 165
    return-void
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    const v2, 0x7f03003d

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->setContentView(I)V

    .line 78
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 80
    invoke-virtual {p0}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$CreateIntent;->getChatGroupTopic(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "chatGroupTopic":Ljava/lang/String;
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v2, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 83
    iget-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-nez v2, :cond_0

    .line 84
    const v2, 0x7f0d01c6

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 85
    invoke-virtual {p0}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->finish()V

    .line 112
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    const v2, 0x7f08007a

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->membersListView:Landroid/widget/ListView;

    .line 92
    iget-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    new-instance v2, Lcom/liquable/nemo/friend/model/FriendStateComparator;

    invoke-direct {v2}, Lcom/liquable/nemo/friend/model/FriendStateComparator;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 94
    new-instance v2, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$RemoveChatGroupMemberAdapter;

    iget-object v3, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    const v4, 0x7f0300d7

    invoke-direct {v2, p0, v3, v1, v4}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$RemoveChatGroupMemberAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;I)V

    iput-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->memberListAdapter:Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;

    .line 98
    iget-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->membersListView:Landroid/widget/ListView;

    new-instance v3, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$1;-><init>(Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    iget-object v2, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->membersListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity;->memberListAdapter:Lcom/liquable/nemo/friend/ChatGroupMemberListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
