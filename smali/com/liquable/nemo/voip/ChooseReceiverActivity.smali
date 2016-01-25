.class public Lcom/liquable/nemo/voip/ChooseReceiverActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ChooseReceiverActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/voip/ChooseReceiverActivity$CreateIntent;
    }
.end annotation


# instance fields
.field private friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/ChooseReceiverActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0d051d

    invoke-virtual {v3, v4}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 38
    const v3, 0x7f030022

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/voip/ChooseReceiverActivity;->setContentView(I)V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/friend/model/Account;>;"
    invoke-virtual {p0}, Lcom/liquable/nemo/voip/ChooseReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/voip/ChooseReceiverActivity$CreateIntent;->getReceivers(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 45
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    .end local v0    # "account":Lcom/liquable/nemo/friend/model/Account;
    :cond_1
    const v3, 0x7f08008f

    invoke-virtual {p0, v3}, Lcom/liquable/nemo/voip/ChooseReceiverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 52
    .local v2, "memberListView":Landroid/widget/ListView;
    new-instance v3, Lcom/liquable/nemo/friend/FriendListAdapter;

    .line 53
    invoke-static {p0}, Lcom/liquable/nemo/util/ImageLoader;->createImageLoader(Lcom/liquable/nemo/BaseActivity;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v1, v5}, Lcom/liquable/nemo/friend/FriendListAdapter;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v3, p0, Lcom/liquable/nemo/voip/ChooseReceiverActivity;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    .line 57
    iget-object v3, p0, Lcom/liquable/nemo/voip/ChooseReceiverActivity;->friendListAdapter:Lcom/liquable/nemo/friend/FriendListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    new-instance v3, Lcom/liquable/nemo/voip/ChooseReceiverActivity$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/voip/ChooseReceiverActivity$1;-><init>(Lcom/liquable/nemo/voip/ChooseReceiverActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    return-void
.end method
