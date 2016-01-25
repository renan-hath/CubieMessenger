.class Lcom/liquable/nemo/subaccount/SubAccountActivity$2;
.super Ljava/lang/Object;
.source "SubAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/subaccount/SubAccountActivity;->initCreateSubAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/subaccount/SubAccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/subaccount/SubAccountActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$2;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    new-instance v0, Lcom/liquable/nemo/subaccount/SubAccountActivity$2$1;

    iget-object v1, p0, Lcom/liquable/nemo/subaccount/SubAccountActivity$2;->this$0:Lcom/liquable/nemo/subaccount/SubAccountActivity;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity$2$1;-><init>(Lcom/liquable/nemo/subaccount/SubAccountActivity$2;Landroid/content/Context;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 106
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/subaccount/SubAccountActivity$2$1;->execute([Ljava/lang/Object;)V

    .line 107
    return-void
.end method
