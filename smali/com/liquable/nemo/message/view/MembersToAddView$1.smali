.class Lcom/liquable/nemo/message/view/MembersToAddView$1;
.super Ljava/lang/Object;
.source "MembersToAddView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/MembersToAddView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/MembersToAddView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/MembersToAddView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/MembersToAddView;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/liquable/nemo/message/view/MembersToAddView$1;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 58
    .local v1, "memberUid":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/friend/model/FriendManager;->findFriendByFriendId(Ljava/lang/String;)Lcom/liquable/nemo/friend/model/Account;

    move-result-object v0

    .line 62
    .local v0, "member":Lcom/liquable/nemo/friend/model/Account;
    if-eqz v0, :cond_0

    .line 65
    iget-object v2, p0, Lcom/liquable/nemo/message/view/MembersToAddView$1;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lcom/liquable/nemo/BaseActivity;

    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/liquable/nemo/message/view/MembersToAddView$1;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/BaseActivity;

    .line 67
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->dialog_system_message:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    new-instance v6, Lcom/liquable/nemo/message/view/MembersToAddView$1$1;

    invoke-direct {v6, p0, p1}, Lcom/liquable/nemo/message/view/MembersToAddView$1$1;-><init>(Lcom/liquable/nemo/message/view/MembersToAddView$1;Landroid/view/View;)V

    .line 66
    invoke-static {v2, v3, v4, v5, v6}, Lcom/liquable/nemo/group/AddFriendDialog;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;Ljava/lang/Runnable;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/message/view/MembersToAddView$1;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/view/MembersToAddView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/message/view/MembersToAddView$1;->this$0:Lcom/liquable/nemo/message/view/MembersToAddView;

    invoke-virtual {v3}, Lcom/liquable/nemo/message/view/MembersToAddView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/liquable/nemo/profile/ViewAddFriendProfileActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
