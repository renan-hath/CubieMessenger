.class Lcom/aviary/android/feather/widget/IAPDialog$1;
.super Ljava/lang/Object;
.source "IAPDialog.java"

# interfaces
.implements Lcom/aviary/android/feather/library/services/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/IAPDialog;->downloadPlugin(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aviary/android/feather/library/services/FutureListener",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/IAPDialog;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/IAPDialog;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$1;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    iput-object p2, p0, Lcom/aviary/android/feather/widget/IAPDialog$1;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/aviary/android/feather/widget/IAPDialog$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Ljava/util/concurrent/Future;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/os/Bundle;>;"
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog$1;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v3}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const/4 v2, 0x0

    .line 377
    .local v2, "result":Landroid/os/Bundle;
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .restart local v2    # "result":Landroid/os/Bundle;
    :goto_1
    if-eqz v2, :cond_2

    .line 384
    const-string/jumbo v3, "list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    const-string/jumbo v3, "list"

    .line 386
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 388
    .local v0, "allplugins":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog$1;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/aviary/android/feather/widget/IAPDialog;->access$500(Lcom/aviary/android/feather/widget/IAPDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lcom/aviary/android/feather/widget/IAPDialog$1$1;

    invoke-direct {v4, p0, v0}, Lcom/aviary/android/feather/widget/IAPDialog$1$1;-><init>(Lcom/aviary/android/feather/widget/IAPDialog$1;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 378
    .end local v0    # "allplugins":Ljava/util/List;, "Ljava/util/List<Lcom/aviary/android/feather/library/plugins/ExternalType;>;"
    .end local v2    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 380
    .restart local v2    # "result":Landroid/os/Bundle;
    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->logger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    invoke-static {}, Lcom/aviary/android/feather/widget/IAPDialog;->access$300()Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->error([Ljava/lang/Object;)V

    goto :goto_1

    .line 397
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/aviary/android/feather/widget/IAPDialog$1;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/aviary/android/feather/widget/IAPDialog;->access$500(Lcom/aviary/android/feather/widget/IAPDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    new-instance v4, Lcom/aviary/android/feather/widget/IAPDialog$1$2;

    invoke-direct {v4, p0}, Lcom/aviary/android/feather/widget/IAPDialog$1$2;-><init>(Lcom/aviary/android/feather/widget/IAPDialog$1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
