.class Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$2;
.super Ljava/lang/Object;
.source "FacebookFriendsFragment.java"

# interfaces
.implements Lcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->initFacebookView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$2;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$2;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showFacebookErrorToast()V
    invoke-static {v0}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$900(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;)V

    .line 211
    return-void
.end method

.method public onFacebookAlreadyInUse(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$2;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->showToast(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$1000(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onOpened(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    .locals 1
    .param p1, "facebookRequest"    # Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment$2;->this$0:Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;

    # invokes: Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->onFacebookLogined(Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;->access$1100(Lcom/liquable/nemo/friend/facebook/FacebookFriendsFragment;Lcom/liquable/nemo/facebook/FacebookSession$FacebookReadRequest;)V

    .line 221
    return-void
.end method
