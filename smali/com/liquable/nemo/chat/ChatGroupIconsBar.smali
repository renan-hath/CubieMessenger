.class public Lcom/liquable/nemo/chat/ChatGroupIconsBar;
.super Ljava/lang/Object;
.source "ChatGroupIconsBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;
    }
.end annotation


# static fields
.field private static final MAX_QUEUED_EVENTS:I = 0xa


# instance fields
.field private final chatGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

.field private final containerView:Landroid/widget/LinearLayout;

.field private currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field private currentChatGroupIconCount:I

.field private final eventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private loadChatGroupsAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/group/model/ChatGroup;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;Lcom/liquable/nemo/util/ImageLoader;Landroid/widget/LinearLayout;)V
    .locals 2
    .param p1, "chattingActivity"    # Lcom/liquable/nemo/chat/ChattingActivity;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "containerView"    # Landroid/widget/LinearLayout;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->eventQueue:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 58
    iput-object p2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 59
    iput-object p3, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->containerView:Landroid/widget/LinearLayout;

    .line 61
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->getChatGroupIconCountCurrent()I

    move-result v1

    iput v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroupIconCount:I

    .line 63
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->getChatGroupIconCountMax()I

    move-result v0

    .line 64
    .local v0, "maxChatGroupIconsCount":I
    new-array v1, v0, [Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    iput-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    .line 66
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->initChatGroupIcons()V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/ChatGroupIconsBar;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar;
    .param p1, "x1"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->onChatGroupClicked(Lcom/liquable/nemo/group/model/ChatGroup;)V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    .prologue
    .line 26
    iget v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroupIconCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/ChatGroupIconsBar;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar;
    .param p1, "x1"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->addChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->eventQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/ChatGroupIconsBar;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChatGroupIconsBar;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->processChatGroupEvent(Landroid/content/Intent;)V

    return-void
.end method

.method private addChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 71
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 73
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroupIconCount:I

    if-ne v1, v2, :cond_0

    .line 74
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 77
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    invoke-interface {v1, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->isCurrentChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-virtual {p1, v3}, Lcom/liquable/nemo/group/model/ChatGroup;->setUnreadCount(I)V

    .line 92
    :cond_1
    return-void

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getChatGroupIconCountByLength(I)I
    .locals 6
    .param p1, "lengthDp"    # I

    .prologue
    .line 95
    const/16 v1, 0x34

    .line 96
    .local v1, "iconWidthDp":I
    const/16 v0, 0x3e

    .line 97
    .local v0, "homeWidthDp":I
    const/16 v2, 0x38

    .line 98
    .local v2, "overflowWidthDp":I
    const/16 v3, 0xc

    .line 99
    .local v3, "unknownHorizontalPaddingDp":I
    const/4 v4, 0x1

    add-int/lit8 v5, p1, -0x3e

    add-int/lit8 v5, v5, -0x38

    add-int/lit8 v5, v5, -0x18

    div-int/lit8 v5, v5, 0x34

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method private getChatGroupIconCountCurrent()I
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isAutoRotateInChattingActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidthInDp(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->getChatGroupIconCountByLength(I)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 105
    invoke-static {v0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidthInDp(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 106
    invoke-static {v1}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeightInDp(Landroid/content/Context;)I

    move-result v1

    .line 105
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private getChatGroupIconCountMax()I
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-static {v0}, Lcom/liquable/nemo/util/NemoUIs;->getScreenWidthInDp(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 111
    invoke-static {v1}, Lcom/liquable/nemo/util/NemoUIs;->getScreenHeightInDp(Landroid/content/Context;)I

    move-result v1

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->getChatGroupIconCountByLength(I)I

    move-result v0

    return v0
.end method

.method private getCurrentChatGroupIndex()I
    .locals 4

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "i":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/group/model/ChatGroup;

    .line 117
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->isCurrentChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 120
    .restart local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 121
    goto :goto_0

    .line 122
    .end local v0    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private initChatGroupIcons()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 126
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    const/16 v6, 0x34

    invoke-static {v5, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v4

    .line 127
    .local v4, "side":I
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v3

    .line 128
    .local v3, "marginV":I
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/liquable/nemo/util/NemoUIs;->toPixel(Landroid/content/Context;I)I

    move-result v2

    .line 129
    .local v2, "marginH":I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 132
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    new-instance v6, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    invoke-direct {v6, p0, v9}, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;-><init>(Lcom/liquable/nemo/chat/ChatGroupIconsBar;Lcom/liquable/nemo/chat/ChatGroupIconsBar$1;)V

    aput-object v6, v5, v0

    .line 133
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v5, v5, v0

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030131

    const/4 v8, 0x0

    .line 134
    invoke-virtual {v6, v7, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    .line 135
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v6, v5, v0

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    const v7, 0x7f080073

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->icon:Landroid/widget/ImageView;

    .line 136
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v6, v5, v0

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    const v7, 0x7f0802ec

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->title:Landroid/widget/TextView;

    .line 137
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v6, v5, v0

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    const v7, 0x7f0802ed

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->unread:Landroid/widget/TextView;

    .line 138
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    new-instance v6, Lcom/liquable/nemo/chat/ChatGroupIconsBar$1;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar$1;-><init>(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v5, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->containerView:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v6, v6, v0

    iget-object v6, v6, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    invoke-virtual {v5, v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 150
    :cond_0
    return-void
.end method

.method private isCurrentChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z
    .locals 1
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v0, p1}, Lcom/liquable/nemo/group/model/ChatGroup;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onChatGroupClicked(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 5
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v4, 0x0

    .line 203
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingActivity;->updateUnfinishedMessage()V

    .line 204
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chattingActivity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->updateChatGroup(Ljava/lang/String;)V

    .line 206
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->getCurrentChatGroupIndex()I

    move-result v1

    .line 207
    .local v1, "oldIndex":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 210
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 211
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v4}, Lcom/liquable/nemo/group/model/ChatGroup;->setUnreadCount(I)V

    .line 213
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->getCurrentChatGroupIndex()I

    move-result v0

    .line 214
    .local v0, "newIndex":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 216
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->unread:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    return-void
.end method

.method private processChatGroupEvent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 236
    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/group/model/ChatGroupEvent;

    .line 237
    .local v2, "event":Lcom/liquable/nemo/group/model/ChatGroupEvent;
    sget-object v3, Lcom/liquable/nemo/group/model/ChatGroupEvent;->NEW_MESSAGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/liquable/nemo/group/model/ChatGroupEvent;->READ_COUNT_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    if-eq v2, v3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-static {p1}, Lcom/liquable/nemo/group/model/ChatGroupEvent;->getTopic(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "chatGroupTopic":Ljava/lang/String;
    sget-object v3, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    invoke-virtual {v3, v1}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v0

    .line 245
    .local v0, "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->addChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 246
    sget-object v3, Lcom/liquable/nemo/group/model/ChatGroupEvent;->ICON_CHANGE:Lcom/liquable/nemo/group/model/ChatGroupEvent;

    if-ne v2, v3, :cond_0

    .line 247
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-static {v0}, Lcom/liquable/nemo/group/ChatGroupIconFactory;->create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0
.end method

.method private updateChatGroupIcon(ILcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 252
    if-nez p2, :cond_0

    .line 253
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    .end local p2    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :goto_0
    return-void

    .line 257
    .restart local p2    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_0
    invoke-direct {p0, p2}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->isCurrentChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v0

    .line 258
    .local v0, "isCurrentChatGroup":Z
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/liquable/nemo/group/ChatGroupIconFactory;->create(Lcom/liquable/nemo/group/model/ChatGroup;)Lcom/liquable/nemo/util/LoadableImage;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 259
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->unread:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnreadCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v3, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->unread:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/liquable/nemo/group/model/ChatGroup;->getUnreadCount()I

    move-result v4

    if-lez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    .end local p2    # "chatGroup":Lcom/liquable/nemo/group/model/ChatGroup;
    :cond_2
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 265
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method


# virtual methods
.method loadChatGroups(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 2
    .param p1, "newChatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->isCurrentChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 164
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->getChatGroupIconCountCurrent()I

    move-result v0

    iput v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->currentChatGroupIconCount:I

    .line 169
    new-instance v0, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar$2;-><init>(Lcom/liquable/nemo/chat/ChatGroupIconsBar;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    .line 199
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 200
    return-void
.end method

.method onReceiveChatGroupEvent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->loadChatGroupsAsyncTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->eventQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->eventQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_2
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->processChatGroupEvent(Landroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->updateChatGroupIcons()V

    goto :goto_0
.end method

.method protected updateChatGroupIcons()V
    .locals 2

    .prologue
    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->groupIcons:[Lcom/liquable/nemo/chat/ChatGroupIconsBar$GroupIconViewHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->chatGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->updateChatGroupIcon(ILcom/liquable/nemo/group/model/ChatGroup;)V

    .line 269
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/chat/ChatGroupIconsBar;->updateChatGroupIcon(ILcom/liquable/nemo/group/model/ChatGroup;)V

    goto :goto_1

    .line 276
    :cond_1
    return-void
.end method
