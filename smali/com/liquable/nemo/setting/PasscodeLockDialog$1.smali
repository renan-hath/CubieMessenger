.class Lcom/liquable/nemo/setting/PasscodeLockDialog$1;
.super Ljava/lang/Object;
.source "PasscodeLockDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/PasscodeLockDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/PasscodeLockDialog;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog$1;->this$0:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 89
    if-eqz p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog$1;->this$0:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    # getter for: Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->access$000(Lcom/liquable/nemo/setting/PasscodeLockDialog;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 93
    :cond_0
    return-void
.end method
