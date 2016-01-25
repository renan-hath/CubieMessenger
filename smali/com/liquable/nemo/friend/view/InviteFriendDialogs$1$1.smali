.class Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1$1;
.super Ljava/lang/Object;
.source "InviteFriendDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1$1;->this$0:Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1$1;->this$0:Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;

    iget-object v1, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1$1;->this$0:Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;

    iget-object v1, v1, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$contactInfo:Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    # invokes: Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->sendSms(Lcom/liquable/nemo/android/provider/StrequentContactInfo;I)V
    invoke-static {v0, v1, p2}, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->access$000(Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;Lcom/liquable/nemo/android/provider/StrequentContactInfo;I)V

    .line 35
    return-void
.end method
