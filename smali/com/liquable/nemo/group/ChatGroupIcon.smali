.class public Lcom/liquable/nemo/group/ChatGroupIcon;
.super Lcom/liquable/nemo/util/AbstractLoadableImage;
.source "ChatGroupIcon.java"


# static fields
.field public static final CHAT_GROUP_ICON_FILE_WIDTH:I = 0xfa


# instance fields
.field private final chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/liquable/nemo/util/AbstractLoadableImage;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupIcon;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 24
    return-void
.end method


# virtual methods
.method public imageMissingResourceId()I
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f0202a6

    return v0
.end method

.method public keyEquals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 40
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/liquable/nemo/group/ChatGroupIcon;

    .line 43
    .local v0, "other":Lcom/liquable/nemo/group/ChatGroupIcon;
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupIcon;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-nez v3, :cond_4

    .line 44
    iget-object v3, v0, Lcom/liquable/nemo/group/ChatGroupIcon;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v3, :cond_0

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupIcon;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/liquable/nemo/group/ChatGroupIcon;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 48
    goto :goto_0
.end method

.method public keyHashCode()I
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0x1f

    .line 56
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 57
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupIcon;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 58
    return v1

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupIcon;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupIcon;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getLocalKeyPathOfIcon()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/storage/NemoFileService;->getKeyPathFile(Lcom/liquable/nemo/storage/LocalKeyPath;)Ljava/io/File;

    move-result-object v0

    .line 64
    .local v0, "iconFile":Ljava/io/File;
    invoke-static {v0}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 69
    :goto_0
    return-object v1

    .line 67
    :cond_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupIcon;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->downloadChatGroupIcon(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 69
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public predictSize(FLandroid/view/View;)V
    .locals 0
    .param p1, "density"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 75
    return-void
.end method
