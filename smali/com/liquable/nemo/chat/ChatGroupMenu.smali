.class public Lcom/liquable/nemo/chat/ChatGroupMenu;
.super Ljava/lang/Object;
.source "ChatGroupMenu.java"


# instance fields
.field private final activity:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/ChatGroupMenu;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    return-object v0
.end method


# virtual methods
.method aboutChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/liquable/nemo/group/ChatGroupInfoActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->SHOW_GROUP_INFO:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 46
    return-void
.end method

.method addMemeber(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 6
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isOneToOne()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    const-class v2, Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "KEY_FROM_TOPIC"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->ADD_MEMBER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 66
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isFull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    const v3, 0x7f0d01ce

    .line 57
    invoke-virtual {v2, v3}, Lcom/liquable/nemo/chat/ChattingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xc8

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 57
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    const-class v2, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "MEMBERS"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string/jumbo v1, "TOPIC"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->ADD_MEMBER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method changeBackground(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    const-class v2, Lcom/liquable/nemo/setting/wallpaper/WallpaperSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v2, Lcom/liquable/nemo/chat/ChattingRequestCode;->CHANGE_WALLPAPER:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v2}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 72
    return-void
.end method

.method clearMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-static {v1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00ec

    .line 76
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00eb

    .line 77
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d03b3

    new-instance v3, Lcom/liquable/nemo/chat/ChatGroupMenu$2;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/chat/ChatGroupMenu$2;-><init>(Lcom/liquable/nemo/chat/ChatGroupMenu;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 78
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0068

    new-instance v3, Lcom/liquable/nemo/chat/ChatGroupMenu$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/ChatGroupMenu$1;-><init>(Lcom/liquable/nemo/chat/ChatGroupMenu;)V

    .line 104
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    .local v0, "confirmDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 111
    return-void
.end method

.method exportMessages(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 2
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 114
    new-instance v0, Lcom/liquable/nemo/chat/ChatGroupMenu$3;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/chat/ChatGroupMenu$3;-><init>(Lcom/liquable/nemo/chat/ChatGroupMenu;Lcom/liquable/nemo/group/model/ChatGroup;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 147
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChatGroupMenu$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    return-void
.end method

.method leaveAndDelete(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 4
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-static {v1}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d011b

    .line 152
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d011a

    .line 153
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0119

    new-instance v3, Lcom/liquable/nemo/chat/ChatGroupMenu$5;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/chat/ChatGroupMenu$5;-><init>(Lcom/liquable/nemo/chat/ChatGroupMenu;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d0068

    new-instance v3, Lcom/liquable/nemo/chat/ChatGroupMenu$4;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/chat/ChatGroupMenu$4;-><init>(Lcom/liquable/nemo/chat/ChatGroupMenu;)V

    .line 183
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 189
    .local v0, "confirmDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 190
    return-void
.end method

.method modifyChatGroupIcon(Lcom/liquable/nemo/group/model/ChatGroup;Ljava/io/File;)V
    .locals 9
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;
    .param p2, "targetTempFile"    # Ljava/io/File;

    .prologue
    const/16 v3, 0xfa

    const/4 v1, 0x1

    .line 193
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 198
    invoke-virtual {v2}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move v4, v3

    move v6, v1

    move-object v7, p2

    .line 193
    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/util/crop/CropImageActivity;->createStartActivityIntent(Landroid/app/Activity;IIIILjava/lang/String;ZLjava/io/File;)Landroid/content/Intent;

    move-result-object v8

    .line 201
    .local v8, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->UPDATE_CHAT_GROUP_ICON:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    return-void
.end method

.method modifyChatGroupTitle(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    const-class v2, Lcom/liquable/nemo/chat/ModifyChatGroupNameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "CHAT_GROUP_TOPIC"

    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method

.method muteChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 7
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 211
    iget-object v4, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 212
    .local v0, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f0300a0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, "muteChatGroupView":Landroid/view/View;
    const v4, 0x7f0801bd

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 215
    .local v2, "muteCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->isMute()Z

    move-result v3

    .line 216
    .local v3, "originalMute":Z
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    iget-object v4, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-static {v4}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d00d7

    .line 219
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 220
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0d03b3

    new-instance v6, Lcom/liquable/nemo/chat/ChatGroupMenu$6;

    invoke-direct {v6, p0, v3, v2, p1}, Lcom/liquable/nemo/chat/ChatGroupMenu$6;-><init>(Lcom/liquable/nemo/chat/ChatGroupMenu;ZLandroid/widget/CheckBox;Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 221
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 232
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 233
    return-void
.end method

.method removeMemeber(Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 3
    .param p1, "chatGroup"    # Lcom/liquable/nemo/group/model/ChatGroup;

    .prologue
    .line 236
    new-instance v0, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$CreateIntent;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 237
    invoke-virtual {p1}, Lcom/liquable/nemo/group/model/ChatGroup;->getTopic()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$CreateIntent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 238
    .local v0, "intent":Lcom/liquable/nemo/group/RemoveChatGroupMemberActivity$CreateIntent;
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivity(Landroid/content/Intent;)V

    .line 239
    return-void
.end method
