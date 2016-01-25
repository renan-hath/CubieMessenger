.class Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "SelectSharingChatGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

.field final synthetic val$selectedChatGroups:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iput-object p3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->val$selectedChatGroups:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isShareFromExternal(Lcom/liquable/nemo/share/Sharable;)Z
    .locals 1
    .param p1, "shareType"    # Lcom/liquable/nemo/share/Sharable;

    .prologue
    .line 556
    instance-of v0, p1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$ExternalMedia;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$Stream;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/liquable/nemo/share/SharablePhoto;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/liquable/nemo/share/SharablePhoto;

    .line 558
    .end local p1    # "shareType":Lcom/liquable/nemo/share/Sharable;
    invoke-virtual {p1}, Lcom/liquable/nemo/share/SharablePhoto;->isFromExternal()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 545
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->val$selectedChatGroups:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 547
    .local v2, "topic":Ljava/lang/String;
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/liquable/nemo/group/model/ChatGroupManager;->recoverChatGroup(Ljava/lang/String;Z)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 549
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v2    # "topic":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v3, v3, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->val$shareType:Lcom/liquable/nemo/share/Sharable;

    iget-object v4, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v4, v4, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-interface {v3, v4, v1}, Lcom/liquable/nemo/share/Sharable;->share(Landroid/content/Context;Ljava/util/List;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 541
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->showDialog(I)V

    .line 564
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->removeDialog(I)V

    .line 569
    return-void
.end method

.method protected postExecuteFail(Lcom/liquable/nemo/client/AsyncException;)V
    .locals 1
    .param p1, "exception"    # Lcom/liquable/nemo/client/AsyncException;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->finish()V

    .line 574
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 578
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    const v2, 0x7f0d0498

    .line 580
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 579
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 582
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->setResult(I)V

    .line 584
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->val$shareType:Lcom/liquable/nemo/share/Sharable;

    invoke-direct {p0, v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->isShareFromExternal(Lcom/liquable/nemo/share/Sharable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->val$selectedChatGroups:Ljava/util/List;

    # invokes: Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->gotoChattingActivityOrMainGroupList(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->access$300(Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;Ljava/util/List;)V

    .line 592
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    invoke-virtual {v0}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->finish()V

    .line 593
    return-void

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    iget-object v1, p0, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->this$1:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;

    iget-object v1, v1, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2;->this$0:Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;

    const v2, 0x7f0d0497

    .line 589
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 588
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 541
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/share/SelectSharingChatGroupActivity$2$1;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
