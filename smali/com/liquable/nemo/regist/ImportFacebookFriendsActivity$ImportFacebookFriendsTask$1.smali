.class Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask$1;
.super Ljava/lang/Object;
.source "ImportFacebookFriendsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->postExecuteSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask$1;->this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask$1;->this$1:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity$ImportFacebookFriendsTask;->this$0:Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->finishAndGoToSelectMyAccountIcon()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;->access$000(Lcom/liquable/nemo/regist/ImportFacebookFriendsActivity;)V

    .line 82
    return-void
.end method
