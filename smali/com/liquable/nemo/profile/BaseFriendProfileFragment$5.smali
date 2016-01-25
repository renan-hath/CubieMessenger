.class Lcom/liquable/nemo/profile/BaseFriendProfileFragment$5;
.super Ljava/lang/Object;
.source "BaseFriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->initProfileView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->access$800(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    # invokes: Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->initLargeIconLayout()V
    invoke-static {v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->access$900(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->access$800(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$5;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->access$800(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 305
    return-void

    .line 302
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
