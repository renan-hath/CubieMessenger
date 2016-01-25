.class Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "FindFriendsInContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;
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
    .line 77
    iput-object p1, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$1;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SMS_SENT_ACTION"

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$1;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$1;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d04ab

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment$1;->this$0:Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/FindFriendsInContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d04aa

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method
