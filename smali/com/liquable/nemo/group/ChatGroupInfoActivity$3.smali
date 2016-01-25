.class Lcom/liquable/nemo/group/ChatGroupInfoActivity$3;
.super Ljava/lang/Object;
.source "ChatGroupInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/ChatGroupInfoActivity;->initChatGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/ChatGroupInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$3;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 177
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/friend/model/Account;

    .line 178
    .local v0, "account":Lcom/liquable/nemo/friend/model/Account;
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isFriend()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->isBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupInfoActivity$3;->this$0:Lcom/liquable/nemo/group/ChatGroupInfoActivity;

    .line 182
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getId()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v0}, Lcom/liquable/nemo/friend/model/Account;->getScreenName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;->dialog_group_info:Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;

    .line 181
    invoke-static {v1, v2, v3, v4}, Lcom/liquable/nemo/group/AddFriendDialog;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/liquable/nemo/analytics/IAnalyticsService$AddFriendFrom;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
