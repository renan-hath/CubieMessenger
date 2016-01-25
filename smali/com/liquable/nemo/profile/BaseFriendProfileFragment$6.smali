.class Lcom/liquable/nemo/profile/BaseFriendProfileFragment$6;
.super Ljava/lang/Object;
.source "BaseFriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$6;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    iput-object p2, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$6;->val$username:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 324
    iget-object v1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$6;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 325
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$6;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$6;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d0158

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 327
    return-void
.end method
