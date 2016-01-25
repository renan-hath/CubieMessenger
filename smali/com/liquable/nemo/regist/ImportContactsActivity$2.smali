.class Lcom/liquable/nemo/regist/ImportContactsActivity$2;
.super Ljava/lang/Object;
.source "ImportContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/ImportContactsActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

.field final synthetic val$okBtn:Landroid/view/View;

.field final synthetic val$skipBtn:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/ImportContactsActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/ImportContactsActivity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    iput-object p2, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->val$okBtn:Landroid/view/View;

    iput-object p3, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->val$skipBtn:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->val$okBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->val$skipBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 74
    new-instance v0, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;

    iget-object v1, p0, Lcom/liquable/nemo/regist/ImportContactsActivity$2;->this$0:Lcom/liquable/nemo/regist/ImportContactsActivity;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;-><init>(Lcom/liquable/nemo/regist/ImportContactsActivity$2;Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 120
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/ImportContactsActivity$2$1;->execute([Ljava/lang/Object;)V

    .line 121
    return-void
.end method
