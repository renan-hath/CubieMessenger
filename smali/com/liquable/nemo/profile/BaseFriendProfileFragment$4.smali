.class Lcom/liquable/nemo/profile/BaseFriendProfileFragment$4;
.super Ljava/lang/Object;
.source "BaseFriendProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->initLargeIconLayout()V
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
    .line 250
    iput-object p1, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$4;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/liquable/nemo/profile/BaseFriendProfileFragment$4;->this$0:Lcom/liquable/nemo/profile/BaseFriendProfileFragment;

    # getter for: Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->largeIconLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/liquable/nemo/profile/BaseFriendProfileFragment;->access$800(Lcom/liquable/nemo/profile/BaseFriendProfileFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    return-void
.end method
