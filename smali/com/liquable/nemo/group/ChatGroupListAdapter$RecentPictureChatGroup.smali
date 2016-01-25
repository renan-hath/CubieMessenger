.class Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
.super Ljava/lang/Object;
.source "ChatGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/group/ChatGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentPictureChatGroup"
.end annotation


# instance fields
.field private chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field private completed:Z

.field private loading:Z

.field private final pendingPictureMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/PictureMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final recentPictureWidthInDp:I

.field private final recents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/liquable/nemo/group/ChatGroupListAdapter;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/group/ChatGroupListAdapter;Lcom/liquable/nemo/group/model/ChatGroup;I)V
    .locals 2
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p3, "recentPictureWidthInDp"    # I

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->this$0:Lcom/liquable/nemo/group/ChatGroupListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recents:Ljava/util/List;

    .line 74
    iput-boolean v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->loading:Z

    .line 75
    iput-boolean v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->completed:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->pendingPictureMessages:Ljava/util/List;

    .line 80
    iput-object p2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 81
    iput p3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recentPictureWidthInDp:I

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recents:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->pendingPictureMessages:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->loading:Z

    return p1
.end method

.method static synthetic access$302(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->completed:Z

    return p1
.end method


# virtual methods
.method public getLoadableImage(I)Lcom/liquable/nemo/util/LoadableImage;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 85
    new-instance v1, Lcom/liquable/nemo/util/CenterCropLoadableImage;

    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recentPictureWidthInDp:I

    invoke-direct {v1, v0, v2}, Lcom/liquable/nemo/util/CenterCropLoadableImage;-><init>(Ljava/io/File;I)V

    return-object v1
.end method

.method public loadPending(Lcom/liquable/nemo/message/model/PictureMessage;)V
    .locals 5
    .param p1, "updatedPictureMessage"    # Lcom/liquable/nemo/message/model/PictureMessage;

    .prologue
    .line 89
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->pendingPictureMessages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liquable/nemo/message/model/PictureMessage;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 91
    .local v2, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/PictureMessage;->getMessageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/liquable/nemo/message/model/PictureMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/PictureMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v3

    sget-object v4, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    .line 93
    invoke-virtual {v3, v4}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v0

    .line 94
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/ImageUtils;->isBitmapExist(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 96
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 97
    :goto_1
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    .line 98
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recents:Ljava/util/List;

    iget-object v4, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->this$0:Lcom/liquable/nemo/group/ChatGroupListAdapter;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 104
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    :cond_2
    return-void
.end method

.method public loadRecents()V
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->hasRecentPicture()Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v1}, Lcom/liquable/nemo/util/Pref;->isShowRecentPictureGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-boolean v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->completed:Z

    if-nez v1, :cond_0

    .line 118
    iget-boolean v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->loading:Z

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->loading:Z

    .line 126
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 127
    .local v0, "current":Lcom/liquable/nemo/group/model/ChatGroup;
    new-instance v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;

    invoke-direct {v1, p0, v0}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;-><init>(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;Lcom/liquable/nemo/group/model/ChatGroup;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 157
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public mergeChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 2
    .param p1, "newChatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 161
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getLastUpdateTime()Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getLastUpdateTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->completed:Z

    .line 163
    invoke-virtual {p0}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->loadRecents()V

    .line 165
    :cond_0
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 166
    return-void
.end method
