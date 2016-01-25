.class public Lcom/liquable/nemo/group/ChatGroupListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;,
        Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;,
        Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
    }
.end annotation


# static fields
.field private static final MAX_NOTIFY_COUNT:I = 0xa

.field private static final PICTURE_COUNT:I = 0x4


# instance fields
.field private final chatGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private highlightKey:Ljava/lang/String;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final onIconClickListener:Landroid/view/View$OnClickListener;

.field private final recentPictureChatGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            "Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final recentPictureWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p4, "onIconClickListener"    # Landroid/view/View$OnClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/liquable/nemo/util/ImageLoader;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p3, "chatGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->recentPictureChatGroups:Ljava/util/Map;

    .line 210
    iput-object p1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 211
    iput-object p2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 212
    iput-object p4, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->onIconClickListener:Landroid/view/View$OnClickListener;

    .line 213
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 216
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x4

    invoke-static {p1, v2}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->recentPictureWidth:I

    .line 219
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 220
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->recentPictureChatGroups:Ljava/util/Map;

    new-instance v3, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    iget v4, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->recentPictureWidth:I

    .line 221
    invoke-static {p1, v4}, Lcom/liquable/nemo/util/NemoUIs;->getDp(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, p0, v0, v4}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;-><init>(Lcom/liquable/nemo/group/ChatGroupListAdapter;Lcom/liquable/nemo/group/model/ChatGroup;I)V

    .line 220
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 223
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_0
    iput-object p3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->chatGroupList:Ljava/util/List;

    .line 224
    return-void
.end method

.method private createStickerShopButton(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300d6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "newConvertView":Landroid/view/View;
    const v1, 0x7f08034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/group/ChatGroupListAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/group/ChatGroupListAdapter$1;-><init>(Lcom/liquable/nemo/group/ChatGroupListAdapter;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    return-object v0
.end method

.method private getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->chatGroupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 256
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .line 252
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 253
    goto :goto_0

    .line 256
    :cond_1
    invoke-direct {p0, p2}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->createStickerShopButton(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private getLastMsgText(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/lang/String;
    .locals 15
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 278
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual/range {p1 .. p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/liquable/nemo/chat/model/ChattingManager;->getLastMessage(Ljava/lang/String;)Lcom/liquable/nemo/message/model/IDomainMessage;

    move-result-object v3

    .line 280
    .local v3, "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    if-nez v3, :cond_1

    .line 281
    const-string/jumbo v0, ""

    .line 379
    .end local v3    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    :cond_0
    :goto_0
    return-object v0

    .line 283
    .restart local v3    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    :cond_1
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    .line 285
    .local v1, "friendManager":Lcom/liquable/nemo/friend/model/FriendManager;
    instance-of v9, v3, Lcom/liquable/nemo/message/model/TextMessage;

    if-eqz v9, :cond_2

    .line 286
    check-cast v3, Lcom/liquable/nemo/message/model/TextMessage;

    .end local v3    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/TextMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    .restart local v3    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    :cond_2
    instance-of v9, v3, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v9, :cond_3

    .line 288
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0324

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 289
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 288
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 290
    :cond_3
    instance-of v9, v3, Lcom/liquable/nemo/message/model/FileMessage;

    if-eqz v9, :cond_4

    .line 291
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d031e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 292
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 291
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    :cond_4
    instance-of v9, v3, Lcom/liquable/nemo/message/model/AudioMessage;

    if-eqz v9, :cond_5

    .line 294
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d031b

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 295
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 294
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_5
    instance-of v9, v3, Lcom/liquable/nemo/message/model/VideoMessage;

    if-eqz v9, :cond_6

    .line 297
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d032a

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 298
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 297
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 299
    :cond_6
    instance-of v9, v3, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v9, :cond_7

    .line 300
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0323

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 301
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 300
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 302
    :cond_7
    instance-of v9, v3, Lcom/liquable/nemo/message/model/SecretTextMessage;

    if-eqz v9, :cond_8

    .line 303
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0326

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 304
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 303
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 305
    :cond_8
    instance-of v9, v3, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    if-eqz v9, :cond_9

    .line 306
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0325

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 307
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 306
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 308
    :cond_9
    instance-of v9, v3, Lcom/liquable/nemo/message/model/MissedCallMessage;

    if-eqz v9, :cond_a

    .line 309
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0322

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 310
    :cond_a
    instance-of v9, v3, Lcom/liquable/nemo/message/model/CallLogMessage;

    if-eqz v9, :cond_b

    .line 311
    check-cast v3, Lcom/liquable/nemo/message/model/CallLogMessage;

    .end local v3    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3, v9}, Lcom/liquable/nemo/message/model/CallLogMessage;->getContent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 312
    .restart local v3    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    :cond_b
    instance-of v9, v3, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    if-eqz v9, :cond_c

    .line 313
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0369

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 314
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    check-cast v3, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    .line 315
    .end local v3    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;->getFriendUid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 313
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 316
    .restart local v3    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    :cond_c
    instance-of v9, v3, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    if-eqz v9, :cond_d

    move-object v6, v3

    .line 317
    check-cast v6, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    .line 318
    .local v6, "removeMessage":Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v10, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 319
    invoke-virtual {v6}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->getRemoverUid()Ljava/lang/String;

    move-result-object v11

    .line 318
    invoke-virtual {v9, v10, v11}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 320
    .local v7, "removerName":Ljava/lang/String;
    sget-object v9, Lcom/liquable/nemo/NemoManagers;->friendManager:Lcom/liquable/nemo/friend/model/FriendManager;

    iget-object v10, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 321
    invoke-virtual {v6}, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;->getToBeRemovedUid()Ljava/lang/String;

    move-result-object v11

    .line 320
    invoke-virtual {v9, v10, v11}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, "toBeRemovedName":Ljava/lang/String;
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0373

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 325
    .end local v6    # "removeMessage":Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;
    .end local v7    # "removerName":Ljava/lang/String;
    .end local v8    # "toBeRemovedName":Ljava/lang/String;
    :cond_d
    instance-of v9, v3, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;

    if-eqz v9, :cond_e

    .line 326
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d036f

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 327
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 326
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 328
    :cond_e
    instance-of v9, v3, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    if-eqz v9, :cond_f

    .line 329
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0376

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 330
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 329
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 331
    :cond_f
    instance-of v9, v3, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;

    if-eqz v9, :cond_10

    .line 332
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0377

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 333
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    check-cast v3, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;

    .line 334
    .end local v3    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    invoke-virtual {v3}, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 332
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 335
    .restart local v3    # "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    :cond_10
    instance-of v9, v3, Lcom/liquable/nemo/message/model/CreateChatGroupMessage;

    if-eqz v9, :cond_11

    .line 336
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d036c

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 337
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 336
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 338
    :cond_11
    instance-of v9, v3, Lcom/liquable/nemo/message/model/StickerMessage;

    if-eqz v9, :cond_12

    .line 339
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0327

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 340
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 339
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 341
    :cond_12
    instance-of v9, v3, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    if-eqz v9, :cond_13

    .line 342
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 343
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 342
    invoke-interface {v3, v9, v10}, Lcom/liquable/nemo/message/model/IDomainMessage;->getNotificationMsg(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 344
    :cond_13
    instance-of v9, v3, Lcom/liquable/nemo/message/model/LikePictureMessage;

    if-eqz v9, :cond_15

    move-object v2, v3

    .line 345
    check-cast v2, Lcom/liquable/nemo/message/model/LikePictureMessage;

    .line 346
    .local v2, "likePictureMessage":Lcom/liquable/nemo/message/model/LikePictureMessage;
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/LikePictureMessage;->getOwnerUid()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v10}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 347
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0320

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 348
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/LikePictureMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 347
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 350
    :cond_14
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d031f

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 351
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/LikePictureMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 352
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/LikePictureMessage;->getOwnerUid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 350
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 353
    .end local v2    # "likePictureMessage":Lcom/liquable/nemo/message/model/LikePictureMessage;
    :cond_15
    instance-of v9, v3, Lcom/liquable/nemo/message/model/LocationMessage;

    if-eqz v9, :cond_16

    move-object v9, v3

    .line 354
    check-cast v9, Lcom/liquable/nemo/message/model/LocationMessage;

    invoke-virtual {v9}, Lcom/liquable/nemo/message/model/LocationMessage;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0321

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 356
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 355
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 358
    .end local v0    # "address":Ljava/lang/String;
    :cond_16
    instance-of v9, v3, Lcom/liquable/nemo/message/model/AskPictureMessage;

    if-eqz v9, :cond_17

    .line 359
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d031a

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 360
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 359
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 361
    :cond_17
    instance-of v9, v3, Lcom/liquable/nemo/message/model/AskLocationMessage;

    if-eqz v9, :cond_18

    .line 362
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0319

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 363
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 362
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 364
    :cond_18
    instance-of v9, v3, Lcom/liquable/nemo/message/model/YoutubeMessage;

    if-eqz v9, :cond_19

    .line 365
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d032c

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 366
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 365
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 367
    :cond_19
    instance-of v9, v3, Lcom/liquable/nemo/message/model/OpenApiAppMessage;

    if-eqz v9, :cond_1a

    move-object v4, v3

    .line 368
    check-cast v4, Lcom/liquable/nemo/message/model/OpenApiAppMessage;

    .line 369
    .local v4, "openApiAppMessage":Lcom/liquable/nemo/message/model/OpenApiAppMessage;
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 370
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 369
    invoke-virtual {v4, v9, v10}, Lcom/liquable/nemo/message/model/OpenApiAppMessage;->getLastMsgText(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 371
    .end local v4    # "openApiAppMessage":Lcom/liquable/nemo/message/model/OpenApiAppMessage;
    :cond_1a
    instance-of v9, v3, Lcom/liquable/nemo/message/model/PubChannelMessage;

    if-eqz v9, :cond_1b

    move-object v5, v3

    .line 372
    check-cast v5, Lcom/liquable/nemo/message/model/PubChannelMessage;

    .line 373
    .local v5, "pubChannelMessage":Lcom/liquable/nemo/message/model/PubChannelMessage;
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 374
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 373
    invoke-virtual {v5, v9, v10}, Lcom/liquable/nemo/message/model/PubChannelMessage;->getLastMsgText(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 375
    .end local v5    # "pubChannelMessage":Lcom/liquable/nemo/message/model/PubChannelMessage;
    :cond_1b
    instance-of v9, v3, Lcom/liquable/nemo/message/model/UnknownMessage;

    if-eqz v9, :cond_1c

    .line 376
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0375

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 377
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 376
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 379
    :cond_1c
    iget-object v9, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    const v10, 0x7f0d0375

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    .line 380
    invoke-interface {v3}, Lcom/liquable/nemo/message/model/IDomainMessage;->getSenderId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/liquable/nemo/friend/model/FriendManager;->getNickname(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 379
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->chatGroupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->chatGroupList:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->getItem(I)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 269
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 274
    if-nez p1, :cond_0

    sget-object v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->HEADER:Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->ordinal()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->NORMAL:Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;

    invoke-virtual {v0}, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 387
    if-nez p1, :cond_0

    .line 388
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->getHeaderView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 465
    :goto_0
    return-object v17

    .line 392
    :cond_0
    if-nez p2, :cond_3

    .line 393
    new-instance v16, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;-><init>(Lcom/liquable/nemo/group/ChatGroupListAdapter$1;)V

    .line 394
    .local v16, "viewHolder":Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f0300d5

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 395
    const v17, 0x7f08023e

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->topicTextView:Landroid/widget/TextView;

    .line 396
    const v17, 0x7f08023f

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->lastMsgTextView:Landroid/widget/TextView;

    .line 397
    const v17, 0x7f08024b

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->memberIcon:Landroid/widget/ImageView;

    .line 398
    const v17, 0x7f080241

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->unreadCountTextView:Landroid/widget/TextView;

    .line 399
    const v17, 0x7f080240

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->unreadCountBg:Landroid/widget/ImageView;

    .line 400
    const v17, 0x7f08023d

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->lastUpdateTime:Landroid/widget/TextView;

    .line 401
    const v17, 0x7f080242

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->recentPictureGroup:Landroid/widget/LinearLayout;

    .line 402
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->recentPictureGroup:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 403
    .local v10, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->recentPictureWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 404
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->recentPictureGroup:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 406
    const v17, 0x7f080243

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 407
    .local v5, "chatGroupPictureView1":Landroid/widget/ImageView;
    const v17, 0x7f080245

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 408
    .local v6, "chatGroupPictureView2":Landroid/widget/ImageView;
    const v17, 0x7f080247

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 409
    .local v7, "chatGroupPictureView3":Landroid/widget/ImageView;
    const v17, 0x7f080249

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 410
    .local v8, "chatGroupPictureView4":Landroid/widget/ImageView;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v5, v17, v18

    const/16 v18, 0x1

    aput-object v6, v17, v18

    const/16 v18, 0x2

    aput-object v7, v17, v18

    const/16 v18, 0x3

    aput-object v8, v17, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->recentPictures:[Landroid/widget/ImageView;

    .line 413
    const v17, 0x7f08023c

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->itemChatGroupMemberIcon:Landroid/view/View;

    .line 414
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->itemChatGroupMemberIcon:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->onIconClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    const v17, 0x7f08031c

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 416
    const v17, 0x7f08031d

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 417
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 422
    .end local v5    # "chatGroupPictureView1":Landroid/widget/ImageView;
    .end local v6    # "chatGroupPictureView2":Landroid/widget/ImageView;
    .end local v7    # "chatGroupPictureView3":Landroid/widget/ImageView;
    .end local v8    # "chatGroupPictureView4":Landroid/widget/ImageView;
    .end local v10    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->getItem(I)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v4

    .line 424
    .local v4, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->recentPictureChatGroups:Ljava/util/Map;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    .line 425
    .local v11, "recentPictureChatGroup":Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
    invoke-virtual {v11}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->loadRecents()V

    .line 427
    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->hasRecentPicture()Z

    move-result v17

    if-eqz v17, :cond_1

    sget-object v17, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual/range {v17 .. v17}, Lcom/liquable/nemo/util/Pref;->isShowRecentPictureGroup()Z

    move-result v17

    if-nez v17, :cond_4

    .line 428
    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->recentPictureGroup:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    :cond_2
    new-instance v13, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->getLastMsgText(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 444
    .local v13, "spannable":Landroid/text/Spannable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->lastMsgTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getTextSize()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v13, v1}, Lcom/liquable/nemo/chat/EmojiUtil;->setEmojiSpan(Landroid/content/Context;Landroid/text/Spannable;F)V

    .line 445
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->lastMsgTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->topicTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->highlightKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/liquable/nemo/util/NemoUIs;->getHighlightedSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v18

    sget-object v19, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 448
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->itemChatGroupMemberIcon:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 450
    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getLastUpdateTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    .line 449
    invoke-static/range {v17 .. v20}, Lcom/liquable/nemo/util/NemoUIs;->formatShortDuration(JJ)Ljava/lang/String;

    move-result-object v12

    .line 451
    .local v12, "relativeLastUpdateTime":Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->lastUpdateTime:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {v4}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnreadCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v14, v0

    .line 454
    .local v14, "unreadCount":J
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-lez v17, :cond_7

    .line 455
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->unreadCountTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->unreadCountBg:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->unreadCountTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const-wide/16 v19, 0xa

    cmp-long v17, v14, v19

    if-lez v17, :cond_6

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, "+"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->memberIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-static {v4}, Lcom/liquable/nemo/group/ChatGroupIconFactory;->create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    move-object/from16 v17, p2

    .line 465
    goto/16 :goto_0

    .line 419
    .end local v4    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v11    # "recentPictureChatGroup":Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
    .end local v12    # "relativeLastUpdateTime":Ljava/lang/CharSequence;
    .end local v13    # "spannable":Landroid/text/Spannable;
    .end local v14    # "unreadCount":J
    .end local v16    # "viewHolder":Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;

    .restart local v16    # "viewHolder":Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;
    goto/16 :goto_1

    .line 430
    .restart local v4    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .restart local v11    # "recentPictureChatGroup":Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
    :cond_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->recentPictureGroup:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 432
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->recentPictures:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_2

    .line 433
    # getter for: Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->recents:Ljava/util/List;
    invoke-static {v11}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->access$000(Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v9, v0, :cond_5

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->recentPictures:[Landroid/widget/ImageView;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    .line 435
    invoke-virtual {v11, v9}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->getLoadableImage(I)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v19

    .line 434
    invoke-virtual/range {v17 .. v19}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 432
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 437
    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->recentPictures:[Landroid/widget/ImageView;

    move-object/from16 v17, v0

    aget-object v17, v17, v9

    const v18, 0x7f02040c

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->recentPictures:[Landroid/widget/ImageView;

    move-object/from16 v18, v0

    aget-object v18, v18, v9

    invoke-virtual/range {v17 .. v18}, Lcom/liquable/nemo/util/ImageLoader;->cancel(Landroid/widget/ImageView;)V

    goto :goto_5

    .line 457
    .end local v9    # "i":I
    .restart local v12    # "relativeLastUpdateTime":Ljava/lang/CharSequence;
    .restart local v13    # "spannable":Landroid/text/Spannable;
    .restart local v14    # "unreadCount":J
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_2

    .line 460
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->unreadCountTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 461
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$ViewHolder;->unreadCountBg:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x2

    return v0
.end method

.method public notifyDownloadComplete(Lcom/liquable/nemo/message/model/PictureMessage;)V
    .locals 3
    .param p1, "pictureMessage"    # Lcom/liquable/nemo/message/model/PictureMessage;

    .prologue
    .line 474
    iget-object v1, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->recentPictureChatGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    .line 475
    .local v0, "recent":Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
    invoke-virtual {v0, p1}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->loadPending(Lcom/liquable/nemo/message/model/PictureMessage;)V

    goto :goto_0

    .line 477
    .end local v0    # "recent":Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
    :cond_0
    return-void
.end method

.method public reset(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p2, "searchKeyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "chatGroups":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/group/model/ChatGroup;>;"
    if-eqz p1, :cond_2

    .line 481
    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->chatGroupList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 482
    iget-object v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->chatGroupList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 485
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->recentPictureChatGroups:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    .line 486
    .local v1, "exist":Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
    if-nez v1, :cond_0

    .line 487
    iget-object v3, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->recentPictureChatGroups:Ljava/util/Map;

    new-instance v4, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;

    iget-object v5, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->context:Landroid/content/Context;

    iget v6, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->recentPictureWidth:I

    .line 488
    invoke-static {v5, v6}, Lcom/liquable/nemo/util/NemoUIs;->getDp(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v4, p0, v0, v5}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;-><init>(Lcom/liquable/nemo/group/ChatGroupListAdapter;Lcom/liquable/nemo/group/model/ChatGroup;I)V

    .line 487
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;->mergeChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_0

    .line 495
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "exist":Lcom/liquable/nemo/group/ChatGroupListAdapter$RecentPictureChatGroup;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/group/ChatGroupListAdapter;->notifyDataSetChanged()V

    .line 497
    :cond_2
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 498
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->highlightKey:Ljava/lang/String;

    .line 502
    :goto_1
    return-void

    .line 500
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/liquable/nemo/group/ChatGroupListAdapter;->highlightKey:Ljava/lang/String;

    goto :goto_1
.end method
