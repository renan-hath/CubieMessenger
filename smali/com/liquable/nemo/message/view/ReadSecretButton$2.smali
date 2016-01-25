.class Lcom/liquable/nemo/message/view/ReadSecretButton$2;
.super Ljava/lang/Object;
.source "ReadSecretButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/message/view/ReadSecretButton;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/message/view/ReadSecretButton;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/message/view/ReadSecretButton;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/message/view/ReadSecretButton;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/liquable/nemo/message/view/ReadSecretButton$2;->this$0:Lcom/liquable/nemo/message/view/ReadSecretButton;

    iput-object p2, p0, Lcom/liquable/nemo/message/view/ReadSecretButton$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton$2;->this$0:Lcom/liquable/nemo/message/view/ReadSecretButton;

    # getter for: Lcom/liquable/nemo/message/view/ReadSecretButton;->message:Lcom/liquable/nemo/message/model/ISecret;
    invoke-static {v0}, Lcom/liquable/nemo/message/view/ReadSecretButton;->access$000(Lcom/liquable/nemo/message/view/ReadSecretButton;)Lcom/liquable/nemo/message/model/ISecret;

    move-result-object v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton$2;->this$0:Lcom/liquable/nemo/message/view/ReadSecretButton;

    # getter for: Lcom/liquable/nemo/message/view/ReadSecretButton;->message:Lcom/liquable/nemo/message/model/ISecret;
    invoke-static {v0}, Lcom/liquable/nemo/message/view/ReadSecretButton;->access$000(Lcom/liquable/nemo/message/view/ReadSecretButton;)Lcom/liquable/nemo/message/model/ISecret;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/message/model/ISecret$State;->SEALED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/message/model/ISecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->isShowSecretMessageUnlockTips()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/liquable/nemo/util/NemoUIs;->isChattingActivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Pref;->setShowSecretMessageUnlockTips(Z)V

    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d03b3

    new-instance v2, Lcom/liquable/nemo/message/view/ReadSecretButton$2$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/message/view/ReadSecretButton$2$1;-><init>(Lcom/liquable/nemo/message/view/ReadSecretButton$2;)V

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/message/view/ReadSecretButton$2;->val$context:Landroid/content/Context;

    const v2, 0x7f0d0463

    .line 73
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/message/view/ReadSecretButton$2;->this$0:Lcom/liquable/nemo/message/view/ReadSecretButton;

    # invokes: Lcom/liquable/nemo/message/view/ReadSecretButton;->openSecret()V
    invoke-static {v0}, Lcom/liquable/nemo/message/view/ReadSecretButton;->access$100(Lcom/liquable/nemo/message/view/ReadSecretButton;)V

    goto :goto_0
.end method
