.class Lcom/liquable/nemo/chat/ChatGroupMenu$6;
.super Ljava/lang/Object;
.source "ChatGroupMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChatGroupMenu;->muteChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

.field final synthetic val$muteCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$originalMute:Z


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChatGroupMenu;ZLandroid/widget/CheckBox;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChatGroupMenu;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$6;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iput-boolean p2, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$6;->val$originalMute:Z

    iput-object p3, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$6;->val$muteCheckBox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$6;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$6;->val$originalMute:Z

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$6;->val$muteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 226
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$6;->val$muteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->muteChatGroup(Z)V

    .line 227
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$6;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$6;->val$muteCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/group/model/ChatGroupManager;->muteChatGroup(Lcom/liquable/nemo/group/model/ChatGroup;Z)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$6;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChatGroupMenu;->access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;

    move-result-object v0

    const v1, 0x7f0d0484

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 230
    return-void
.end method
