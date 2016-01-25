.class Lcom/liquable/nemo/chat/CreateChatGroupActivity$2;
.super Ljava/lang/Object;
.source "CreateChatGroupActivity.java"

# interfaces
.implements Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/CreateChatGroupActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFriendChecked()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/chat/CreateChatGroupActivity$2;->this$0:Lcom/liquable/nemo/chat/CreateChatGroupActivity;

    # invokes: Lcom/liquable/nemo/chat/CreateChatGroupActivity;->updateTitle()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/CreateChatGroupActivity;->access$100(Lcom/liquable/nemo/chat/CreateChatGroupActivity;)V

    .line 138
    return-void
.end method
