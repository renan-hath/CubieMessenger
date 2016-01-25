.class Lcom/liquable/nemo/regist/ImportContactsActivity$2$1$1;
.super Ljava/lang/Object;
.source "ImportContactsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->postExecuteSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1$1;->this$2:Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1$1;->this$2:Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->this$1:Lcom/liquable/nemo/regist/ImportContactsActivity$2;

    iget-object v0, v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    # invokes: Lcom/liquable/nemo/regist/ImportContactsActivity;->finishAndGoToImportFacebookFriends()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/ImportContactsActivity;->access$000(Lcom/liquable/nemo/regist/ImportContactsActivity;)V

    .line 109
    return-void
.end method
