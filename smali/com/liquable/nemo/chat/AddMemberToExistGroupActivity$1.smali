.class Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$1;
.super Ljava/lang/Object;
.source "AddMemberToExistGroupActivity.java"

# interfaces
.implements Lcom/liquable/nemo/friend/MultipleSelectFriendListAdapter$OnFriendCheckedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFriendChecked()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity$1;->this$0:Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;

    # invokes: Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->updateTitle()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;->access$000(Lcom/liquable/nemo/chat/AddMemberToExistGroupActivity;)V

    .line 97
    return-void
.end method
