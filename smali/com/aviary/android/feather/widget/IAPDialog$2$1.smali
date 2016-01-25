.class Lcom/aviary/android/feather/widget/IAPDialog$2$1;
.super Ljava/lang/Object;
.source "IAPDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/IAPDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/widget/IAPDialog$2;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/IAPDialog$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aviary/android/feather/widget/IAPDialog$2;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$2$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$2$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$2;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/IAPDialog$2;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mCloseListener:Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/IAPDialog;->access$800(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$2$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$2;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/IAPDialog$2;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mCloseListener:Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;
    invoke-static {v0}, Lcom/aviary/android/feather/widget/IAPDialog;->access$800(Lcom/aviary/android/feather/widget/IAPDialog;)Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aviary/android/feather/widget/IAPDialog$OnCloseListener;->onClose()V

    .line 487
    :cond_0
    return-void
.end method
