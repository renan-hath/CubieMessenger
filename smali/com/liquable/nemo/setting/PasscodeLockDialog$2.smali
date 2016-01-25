.class Lcom/liquable/nemo/setting/PasscodeLockDialog$2;
.super Ljava/lang/Object;
.source "PasscodeLockDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/PasscodeLockDialog;-><init>(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/PasscodeLockDialog;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/PasscodeLockDialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/PasscodeLockDialog;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog$2;->this$0:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    iput-object p2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog$2;->this$0:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    # getter for: Lcom/liquable/nemo/setting/PasscodeLockDialog;->mode:I
    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->access$100(Lcom/liquable/nemo/setting/PasscodeLockDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog$2;->this$0:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->reset()V

    goto :goto_0
.end method
