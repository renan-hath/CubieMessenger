.class Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;
.super Ljava/lang/Object;
.source "ImportFacebookFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

.field final synthetic val$okBtn:Landroid/view/View;

.field final synthetic val$skipBtn:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    iput-object p2, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->val$okBtn:Landroid/view/View;

    iput-object p3, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->val$skipBtn:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->val$okBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->val$skipBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    # getter for: Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->facebookSession:Lcom/liquable/nemo/facebook/FacebookSession;
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->access$300(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)Lcom/liquable/nemo/facebook/FacebookSession;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2$1;-><init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$2;)V

    invoke-virtual {v0, v1, v3, v2}, Lcom/liquable/nemo/facebook/FacebookSession;->asyncOpenForRead(ZILcom/liquable/nemo/facebook/FacebookSession$IFacebookReadSessionCallback;)V

    .line 174
    return-void
.end method
