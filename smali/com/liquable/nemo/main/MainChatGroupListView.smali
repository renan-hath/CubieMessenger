.class public Lcom/liquable/nemo/main/MainChatGroupListView;
.super Lcom/liquable/nemo/main/MainFragment;
.source "MainChatGroupListView.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# static fields
.field private static final MIN_UPDATE_INTERVAL_FOR_EVENTS:I = 0x1f4

.field private static final MIN_VISIBLE_CHATGROUPS:I = 0x5


# instance fields
.field private addFriendButton:Landroid/view/View;

.field private backgroundFlower:Landroid/view/View;

.field private chatGroupListAdapter:Lcom/liquable/nemo/group/ChatGroupListAdapter;

.field private chatGroupListView:Landroid/widget/ListView;

.field private chatGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation
.end field

.field isSearchChatGroupsViewExpanded:Z

.field private mainSearchChatGroupsItem:Lcom/actionbarsherlock/view/MenuItem;

.field private pendingUpdate:Z

.field private final receiver:Landroid/content/BroadcastReceiver;

.field private searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

.field private searchChatGroupsView:Lcom/actionbarsherlock/widget/SearchView;

.field private searchKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->isSearchChatGroupsViewExpanded:Z

    .line 79
    new-instance v0, Lcom/liquable/nemo/main/MainChatGroupListView$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/main/MainChatGroupListView$1;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V

    iput-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/main/MainChatGroupListView;)Lcom/liquable/nemo/util/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/main/MainChatGroupListView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/liquable/nemo/main/MainChatGroupListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->filterChatGroups()V

    return-void
.end method

.method static synthetic access$300(Lcom/liquable/nemo/main/MainChatGroupListView;)Lcom/liquable/nemo/group/ChatGroupListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListAdapter:Lcom/liquable/nemo/group/ChatGroupListAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/liquable/nemo/main/MainChatGroupListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainChatGroupListView;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->pendingUpdate:Z

    return p1
.end method

.method static synthetic access$500(Lcom/liquable/nemo/main/MainChatGroupListView;)Lcom/actionbarsherlock/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchChatGroupsView:Lcom/actionbarsherlock/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/liquable/nemo/main/MainChatGroupListView;)Lcom/liquable/nemo/widget/SearchBarWidget;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/main/MainChatGroupListView;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainChatGroupListView;
    .param p1, "x1"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainChatGroupListView;->popupDeleteChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    return-void
.end method

.method static synthetic access$800(Lcom/liquable/nemo/main/MainChatGroupListView;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/main/MainChatGroupListView;
    .param p1, "x1"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainChatGroupListView;->popupCreateChatGroupShortcut(Lcom/liquable/nemo/group/model/ChatGroup;)V

    return-void
.end method

.method private filterChatGroups()V
    .locals 5

    .prologue
    .line 196
    iget-object v2, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchKeyword:Ljava/lang/String;

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v2, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListAdapter:Lcom/liquable/nemo/group/ChatGroupListAdapter;

    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;

    iget-object v4, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->reset(Ljava/util/List;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v1, "filteredChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v2, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 201
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-virtual {v0}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchKeyword:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/apache/commons/lang3/StringUtils;->containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListAdapter:Lcom/liquable/nemo/group/ChatGroupListAdapter;

    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchKeyword:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->reset(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSearchBarWidget(Landroid/view/View;)V
    .locals 2
    .param p1, "mainChatGroupView"    # Landroid/view/View;

    .prologue
    .line 220
    const v0, 0x7f0802da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/widget/SearchBarWidget;

    iput-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    .line 221
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    const v1, 0x7f0d00da

    invoke-virtual {v0, v1, p0}, Lcom/liquable/nemo/widget/SearchBarWidget;->init(ILcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 222
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->setVisibility(I)V

    .line 223
    return-void
.end method

.method private initSearchChatGroupsItem(Lcom/actionbarsherlock/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 226
    const v0, 0x7f08038d

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->mainSearchChatGroupsItem:Lcom/actionbarsherlock/view/MenuItem;

    .line 227
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->mainSearchChatGroupsItem:Lcom/actionbarsherlock/view/MenuItem;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->mainSearchChatGroupsItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/SearchView;

    iput-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchChatGroupsView:Lcom/actionbarsherlock/widget/SearchView;

    .line 231
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchChatGroupsView:Lcom/actionbarsherlock/widget/SearchView;

    const v1, 0x7f0d00d9

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/main/MainChatGroupListView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchChatGroupsView:Lcom/actionbarsherlock/widget/SearchView;

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/widget/SearchView;->setOnQueryTextListener(Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;)V

    .line 233
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->mainSearchChatGroupsItem:Lcom/actionbarsherlock/view/MenuItem;

    new-instance v1, Lcom/liquable/nemo/main/MainChatGroupListView$3;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/main/MainChatGroupListView$3;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;Lcom/actionbarsherlock/view/Menu;)V

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setOnActionExpandListener(Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method private popupCreateChatGroupShortcut(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 5
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 415
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/liquable/nemo/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 416
    .local v2, "shortcutIntent":Landroid/content/Intent;
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 417
    const-string/jumbo v3, "CHAT_GROUP_TOPIC"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 420
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 421
    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f020422

    invoke-static {v3, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v0

    .line 424
    .local v0, "iconResource":Landroid/os/Parcelable;
    const-string/jumbo v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 425
    const-string/jumbo v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 427
    return-void
.end method

.method private popupDeleteChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 431
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0d00ec

    :goto_0
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 433
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d00eb

    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 435
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0d00ea

    :goto_2
    new-instance v3, Lcom/liquable/nemo/main/MainChatGroupListView$10;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/main/MainChatGroupListView$10;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;Lcom/liquable/nemo/group/model/ChatGroup;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0068

    new-instance v3, Lcom/liquable/nemo/main/MainChatGroupListView$9;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/main/MainChatGroupListView$9;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V

    .line 459
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 465
    .local v0, "confirmDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 466
    return-void

    .line 431
    .end local v0    # "confirmDialog":Landroid/app/AlertDialog;
    :cond_0
    const v1, 0x7f0d011b

    goto :goto_0

    .line 433
    :cond_1
    const v1, 0x7f0d011a

    goto :goto_1

    .line 435
    :cond_2
    const v1, 0x7f0d0119

    goto :goto_2
.end method

.method private updateHasRecentPictureField()V
    .locals 2

    .prologue
    .line 474
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isHasRecentPictureFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 478
    :cond_0
    new-instance v0, Lcom/liquable/nemo/main/MainChatGroupListView$11;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/main/MainChatGroupListView$11;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 497
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/MainChatGroupListView$11;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected batchedUpdate()V
    .locals 4

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->pendingUpdate:Z

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->pendingUpdate:Z

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/main/MainChatGroupListView$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/main/MainChatGroupListView$2;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->mainSearchChatGroupsItem:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->isSearchChatGroupsViewExpanded:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->mainSearchChatGroupsItem:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->collapseActionView()Z

    .line 158
    :cond_0
    return-void
.end method

.method public doOnResume()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListAdapter:Lcom/liquable/nemo/group/ChatGroupListAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->notifyDataSetChanged()V

    .line 163
    return-void
.end method

.method protected doUpdate()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 167
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->updateHasRecentPictureField()V

    .line 169
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->listVisibleChatGroups()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;

    .line 170
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v3}, Lcom/liquable/nemo/util/Pref;->hasDeletedChatGroup()Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->listShareableChatGroups()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "sharableChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 173
    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 174
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;

    .line 175
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 174
    invoke-interface {v2, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 176
    .local v1, "chatGroupsToSetVisible":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 179
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v4, v0}, Lcom/liquable/nemo/group/model/ChatGroupManager;->setVisible(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0

    .line 184
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "chatGroupsToSetVisible":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    .end local v2    # "sharableChatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    :cond_0
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->filterChatGroups()V

    .line 185
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->addFriendButton:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->backgroundFlower:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :goto_1
    return-void

    .line 189
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->addFriendButton:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v3, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->backgroundFlower:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method protected getIntentFilterActions()Ljava/util/List;
    .locals 3
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
    .line 216
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "com.liquable.nemo.group.model.CHAT_GROUP_EVENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "com.liquable.nemo.chat.model.MESSAGE_EVENT"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->onCreate(Landroid/os/Bundle;)V

    .line 254
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/main/MainChatGroupListView;->setHasOptionsMenu(Z)V

    .line 255
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;
    .param p2, "inflater"    # Lcom/actionbarsherlock/view/MenuInflater;

    .prologue
    .line 260
    const v0, 0x7f08038c

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 263
    :cond_0
    const v0, 0x7f0f0019

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/liquable/nemo/main/MainChatGroupListView;->initSearchChatGroupsItem(Lcom/actionbarsherlock/view/Menu;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 274
    const v1, 0x7f03012d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 275
    .local v0, "mainChatGroupView":Landroid/view/View;
    const v1, 0x7f0802dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->addFriendButton:Landroid/view/View;

    .line 276
    const v1, 0x7f0802d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->backgroundFlower:Landroid/view/View;

    .line 278
    const v1, 0x7f0802dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/main/MainChatGroupListView$4;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/main/MainChatGroupListView$4;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v1, 0x7f0802db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListView:Landroid/widget/ListView;

    .line 285
    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListView:Landroid/widget/ListView;

    new-instance v2, Lcom/liquable/nemo/main/MainChatGroupListView$5;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/main/MainChatGroupListView$5;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 305
    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListView:Landroid/widget/ListView;

    new-instance v2, Lcom/liquable/nemo/main/MainChatGroupListView$6;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/main/MainChatGroupListView$6;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 342
    invoke-direct {p0, v0}, Lcom/liquable/nemo/main/MainChatGroupListView;->initSearchBarWidget(Landroid/view/View;)V

    .line 343
    new-instance v1, Lcom/liquable/nemo/group/ChatGroupListAdapter;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 344
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/liquable/nemo/main/MainChatGroupListView$7;

    invoke-direct {v5, p0}, Lcom/liquable/nemo/main/MainChatGroupListView$7;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/liquable/nemo/group/ChatGroupListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListAdapter:Lcom/liquable/nemo/group/ChatGroupListAdapter;

    .line 364
    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListAdapter:Lcom/liquable/nemo/group/ChatGroupListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    iget-object v1, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->chatGroupListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 367
    return-object v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 372
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 394
    invoke-super {p0, p1}, Lcom/liquable/nemo/main/MainFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    .line 396
    :goto_0
    return v0

    .line 374
    :pswitch_0
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/FriendManager;->listSelectableFriends()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0041

    .line 376
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0040

    .line 377
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 378
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    new-instance v2, Lcom/liquable/nemo/main/MainChatGroupListView$8;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/main/MainChatGroupListView$8;-><init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V

    .line 379
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 396
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/main/MainChatGroupListView;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 391
    :pswitch_1
    invoke-virtual {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->showSearchBarWidget()V

    goto :goto_1

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x7f08038b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchKeyword:Ljava/lang/String;

    .line 402
    invoke-direct {p0}, Lcom/liquable/nemo/main/MainChatGroupListView;->filterChatGroups()V

    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->hideKeyboard()V

    .line 411
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showSearchBarWidget()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/SearchBarWidget;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView;->searchBarWidget:Lcom/liquable/nemo/widget/SearchBarWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/SearchBarWidget;->requestEditTextFocus()V

    .line 471
    return-void
.end method
