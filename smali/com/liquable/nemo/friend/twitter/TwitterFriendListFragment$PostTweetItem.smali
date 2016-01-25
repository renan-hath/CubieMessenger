.class Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;
.super Lnet/londatiga/android/ActionItem;
.source "TwitterFriendListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostTweetItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-direct {p0}, Lnet/londatiga/android/ActionItem;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;
    .param p2, "x1"    # Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 179
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300a4

    const/4 v4, 0x0

    .line 180
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 182
    .local v0, "dialogView":Landroid/view/View;
    const v2, 0x7f0801c3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 183
    .local v1, "shareOnTwitterEditText":Landroid/widget/EditText;
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const v3, 0x7f0d0493

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 186
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const v4, 0x7f0d03b3

    .line 187
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;

    invoke-direct {v4, p0, v1}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$2;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;->this$0:Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;

    const v4, 0x7f0d00c5

    .line 228
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$1;

    invoke-direct {v4, p0}, Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem$1;-><init>(Lcom/liquable/nemo/friend/twitter/TwitterFriendListFragment$PostTweetItem;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0492

    .line 232
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0494

    .line 233
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 235
    return-void
.end method
