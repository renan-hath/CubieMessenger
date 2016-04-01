.class Lcom/liquable/nemo/chat/ChattingActivity$12$1;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity$12;->onActionClick(Lcom/liquable/nemo/chat/widget/MediaWidget$Action;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/ChattingActivity$12;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity$12;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$12$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 869
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$12$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$12;

    iget-object v1, v1, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendAskPictureMessage(Lcom/liquable/nemo/group/model/ChatGroup;)V

    .line 870
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$12$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$12;

    iget-object v1, v1, Lcom/liquable/nemo/chat/ChattingActivity$12;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendAskPictureMessage(I)V

    .line 872
    return-void
.end method
