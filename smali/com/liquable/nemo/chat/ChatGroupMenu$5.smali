.class Lcom/liquable/nemo/chat/ChatGroupMenu$5;
.super Ljava/lang/Object;
.source "ChatGroupMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChatGroupMenu;->leaveAndDelete(Lcom/liquable/nemo/group/model/ChatGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChatGroupMenu;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChatGroupMenu;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$5;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    iput-object p2, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$5;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 158
    new-instance v0, Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChatGroupMenu$5;->this$0:Lcom/liquable/nemo/chat/ChatGroupMenu;

    # getter for: Lcom/liquable/nemo/chat/ChatGroupMenu;->activity:Lcom/liquable/nemo/chat/ChattingActivity;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChatGroupMenu;->access$000(Lcom/liquable/nemo/chat/ChatGroupMenu;)Lcom/liquable/nemo/chat/ChattingActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;-><init>(Lcom/liquable/nemo/chat/ChatGroupMenu$5;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 180
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChatGroupMenu$5$1;->execute([Ljava/lang/Object;)V

    .line 181
    return-void
.end method
