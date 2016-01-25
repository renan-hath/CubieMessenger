.class public Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;
.super Lcom/liquable/nemo/BaseActivity;
.source "ModifyChatGroupNameActivity.java"


# instance fields
.field private chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field dateformat:Ljava/text/SimpleDateFormat;

.field private groupNameEditText:Landroid/widget/EditText;

.field private topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/BaseActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss E"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->dateformat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->groupNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;)Lcom/liquable/nemo/group/model/ChatGroup;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    return-object v0
.end method


# virtual methods
.method protected onLoggedInCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0d0363

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 36
    const v1, 0x7f03003b

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "CHAT_GROUP_TOPIC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->topic:Ljava/lang/String;

    .line 39
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->findChatGroupByTopic(Ljava/lang/String;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    .line 40
    const v1, 0x7f0800a2

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->groupNameEditText:Landroid/widget/EditText;

    .line 41
    iget-object v1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->groupNameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->groupNameEditText:Landroid/widget/EditText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v3}, Lcom/liquable/nemo/group/model/ChatGroup;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    .line 43
    const v1, 0x7f0800f7

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 44
    .local v0, "modifyTitleBtn":Landroid/widget/Button;
    new-instance v1, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$1;-><init>(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v1, p0, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;->groupNameEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity$2;-><init>(Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    return-void
.end method

.method protected onLoggedInResume()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method
