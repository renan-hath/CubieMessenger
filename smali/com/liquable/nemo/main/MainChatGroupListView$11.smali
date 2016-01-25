.class Lcom/liquable/nemo/main/MainChatGroupListView$11;
.super Landroid/os/AsyncTask;
.source "MainChatGroupListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/main/MainChatGroupListView;->updateHasRecentPictureField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/main/MainChatGroupListView;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/main/MainChatGroupListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/main/MainChatGroupListView;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/liquable/nemo/main/MainChatGroupListView$11;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 478
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainChatGroupListView$11;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x0

    .line 481
    iget-object v2, p0, Lcom/liquable/nemo/main/MainChatGroupListView$11;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v2}, Lcom/liquable/nemo/main/MainChatGroupListView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 489
    :cond_0
    return-object v5

    .line 485
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    const-class v3, Lcom/liquable/nemo/message/model/PictureMessage;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->listChatGroupTopicsWithMessageType(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 486
    .local v1, "topicsWithMessageType":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    .local v0, "topic":Ljava/lang/String;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/liquable/nemo/group/model/ChatGroupManager;->updateHasRecentPicture(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 478
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/main/MainChatGroupListView$11;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v1, 0x1

    .line 494
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setHasRecentPictureFlag(Z)V

    .line 495
    iget-object v0, p0, Lcom/liquable/nemo/main/MainChatGroupListView$11;->this$0:Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/main/MainChatGroupListView;->update(Z)V

    .line 496
    return-void
.end method
