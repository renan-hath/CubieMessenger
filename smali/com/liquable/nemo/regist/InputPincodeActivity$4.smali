.class Lcom/liquable/nemo/regist/InputPincodeActivity$4;
.super Ljava/lang/Object;
.source "InputPincodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPincodeActivity;->onNotLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPincodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$4;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$4;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->pincodeEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$000(Lcom/liquable/nemo/regist/InputPincodeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$4;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    const v1, 0x7f0d03d1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$4;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # invokes: Lcom/liquable/nemo/regist/InputPincodeActivity;->applyAccount()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$100(Lcom/liquable/nemo/regist/InputPincodeActivity;)V

    goto :goto_0
.end method
