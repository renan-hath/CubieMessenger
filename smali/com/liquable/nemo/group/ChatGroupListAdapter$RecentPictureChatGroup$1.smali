.class Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;
.super Landroid/os/AsyncTask;
.source "ChatGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->loadRecents()V
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
        "Ljava/util/List",
        "<",
        "Lcom/liquable/nemo/message/model/PictureMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

.field final synthetic val$current:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->this$1:Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    iput-object p2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->val$current:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/PictureMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->val$current:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 132
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 131
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/chat/model/ChattingManager;->listAllMessagesByChatGroupAndType(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 127
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/PictureMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/PictureMessage;>;"
    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->this$1:Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    # getter for: Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recents:Ljava/util/List;
    invoke-static {v2}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->access$000(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 140
    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->this$1:Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    # getter for: Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->pendingPictureMessages:Ljava/util/List;
    invoke-static {v2}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->access$100(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 143
    .local v1, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/PictureMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 144
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 145
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->isBitmapExist(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->this$1:Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    # getter for: Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recents:Ljava/util/List;
    invoke-static {v3}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->access$000(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->this$1:Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    # getter for: Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->pendingPictureMessages:Ljava/util/List;
    invoke-static {v3}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->access$100(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->this$1:Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    const/4 v3, 0x0

    # setter for: Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->loading:Z
    invoke-static {v2, v3}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->access$202(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;Z)Z

    .line 153
    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->this$1:Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    const/4 v3, 0x1

    # setter for: Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->completed:Z
    invoke-static {v2, v3}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->access$302(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;Z)Z

    .line 154
    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->this$1:Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    iget-object v2, v2, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->this$0:Lcom/liquable/nemo/group/ChatGroupListAdapter;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->notifyDataSetChanged()V

    .line 155
    return-void
.end method
