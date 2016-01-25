.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;
.super Ljava/lang/Object;
.source "TwitterFriendListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private popupAddTwitterFriendDialog(Lcom/liquable/nemo/friend/twitter/TwitterFriend;)V
    .locals 7
    .param p1, "friend"    # Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 487
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v0

    .line 489
    .local v0, "account":Lcom/liquable/nemo/model/account/AccountDto;
    iget-object v1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const v3, 0x7f0d03b3

    .line 490
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;

    invoke-direct {v3, p0, v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$2;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;Lcom/liquable/nemo/model/account/AccountDto;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .line 544
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d00c5

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .line 551
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d030b

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 552
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 551
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    .line 553
    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d030a

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 554
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 553
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 555
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 556
    return-void
.end method

.method private sendDirectMessageToTwitterFriend(Lcom/liquable/nemo/friend/twitter/TwitterFriend;)V
    .locals 7
    .param p1, "friend"    # Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 559
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300a4

    const/4 v4, 0x0

    .line 560
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 562
    .local v0, "dialogView":Landroid/view/View;
    const v2, 0x7f0801c3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 563
    .local v1, "dmOnTwitterEditText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const v3, 0x7f0d0476

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 564
    invoke-virtual {v4}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 563
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 566
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0478

    .line 567
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const v4, 0x7f0d0477

    .line 568
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 569
    invoke-virtual {p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->getScreenName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    .line 568
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d03b3

    new-instance v4, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;

    invoke-direct {v4, p0, v1, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$4;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;Landroid/widget/EditText;Lcom/liquable/nemo/friend/twitter/TwitterFriend;)V

    .line 570
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d00c5

    new-instance v4, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$3;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3$3;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;)V

    .line 616
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 621
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 623
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 472
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_0

    .line 484
    :goto_0
    return-void

    .line 476
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/twitter/TwitterFriend;

    .line 478
    .local v0, "friend":Lcom/liquable/nemo/friend/twitter/TwitterFriend;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriend;->isConnectedToTwitter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->popupAddTwitterFriendDialog(Lcom/liquable/nemo/friend/twitter/TwitterFriend;)V

    goto :goto_0

    .line 481
    :cond_1
    invoke-direct {p0, v0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$3;->sendDirectMessageToTwitterFriend(Lcom/liquable/nemo/friend/twitter/TwitterFriend;)V

    goto :goto_0
.end method
