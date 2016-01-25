.class Lcom/aviary/android/feather/widget/IAPDialog$1$1;
.super Ljava/lang/Object;
.source "IAPDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/IAPDialog$1;->onFutureDone(Ljava/util/concurrent/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/widget/IAPDialog$1;

.field final synthetic val$allplugins:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/IAPDialog$1;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aviary/android/feather/widget/IAPDialog$1;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$1$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$1;

    iput-object p2, p0, Lcom/aviary/android/feather/widget/IAPDialog$1$1;->val$allplugins:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$1$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$1;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/IAPDialog$1;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    iget-object v1, p0, Lcom/aviary/android/feather/widget/IAPDialog$1$1;->val$allplugins:Ljava/util/List;

    iget-object v2, p0, Lcom/aviary/android/feather/widget/IAPDialog$1$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$1;

    iget-object v2, v2, Lcom/aviary/android/feather/widget/IAPDialog$1;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog$1$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$1;

    iget v3, v3, Lcom/aviary/android/feather/widget/IAPDialog$1;->val$type:I

    # invokes: Lcom/aviary/android/feather/widget/IAPDialog;->processPlugins(Ljava/util/List;Ljava/lang/String;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/aviary/android/feather/widget/IAPDialog;->access$400(Lcom/aviary/android/feather/widget/IAPDialog;Ljava/util/List;Ljava/lang/String;I)V

    .line 393
    return-void
.end method
