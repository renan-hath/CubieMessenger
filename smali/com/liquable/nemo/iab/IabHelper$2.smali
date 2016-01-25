.class Lcom/liquable/nemo/iab/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/iab/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/iab/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/liquable/nemo/iab/IabHelper;ZLjava/util/List;Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/iab/IabHelper;

    .prologue
    .line 749
    iput-object p1, p0, Lcom/liquable/nemo/iab/IabHelper$2;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    iput-boolean p2, p0, Lcom/liquable/nemo/iab/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/liquable/nemo/iab/IabHelper$2;->val$moreSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/liquable/nemo/iab/IabHelper$2;->val$listener:Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;

    iput-object p5, p0, Lcom/liquable/nemo/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 751
    new-instance v3, Lcom/liquable/nemo/iab/IabResult;

    const/4 v5, 0x0

    const-string/jumbo v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/liquable/nemo/iab/IabResult;-><init>(ILjava/lang/String;)V

    .line 753
    .local v3, "result":Lcom/liquable/nemo/iab/IabResult;
    const/4 v1, 0x0

    .line 755
    .local v1, "inv":Lcom/liquable/nemo/iab/Inventory;
    :try_start_0
    iget-object v5, p0, Lcom/liquable/nemo/iab/IabHelper$2;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    iget-boolean v6, p0, Lcom/liquable/nemo/iab/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/liquable/nemo/iab/IabHelper$2;->val$moreSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7}, Lcom/liquable/nemo/iab/IabHelper;->queryInventory(ZLjava/util/List;)Lcom/liquable/nemo/iab/Inventory;
    :try_end_0
    .catch Lcom/liquable/nemo/iab/IabException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 760
    :goto_0
    iget-object v5, p0, Lcom/liquable/nemo/iab/IabHelper$2;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    invoke-virtual {v5}, Lcom/liquable/nemo/iab/IabHelper;->flagEndAsync()V

    .line 762
    move-object v4, v3

    .line 763
    .local v4, "result_f":Lcom/liquable/nemo/iab/IabResult;
    move-object v2, v1

    .line 764
    .local v2, "inv_f":Lcom/liquable/nemo/iab/Inventory;
    iget-object v5, p0, Lcom/liquable/nemo/iab/IabHelper$2;->this$0:Lcom/liquable/nemo/iab/IabHelper;

    iget-boolean v5, v5, Lcom/liquable/nemo/iab/IabHelper;->mDisposed:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/liquable/nemo/iab/IabHelper$2;->val$listener:Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_0

    .line 765
    iget-object v5, p0, Lcom/liquable/nemo/iab/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/liquable/nemo/iab/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/liquable/nemo/iab/IabHelper$2$1;-><init>(Lcom/liquable/nemo/iab/IabHelper$2;Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 771
    :cond_0
    return-void

    .line 756
    .end local v2    # "inv_f":Lcom/liquable/nemo/iab/Inventory;
    .end local v4    # "result_f":Lcom/liquable/nemo/iab/IabResult;
    :catch_0
    move-exception v0

    .line 757
    .local v0, "ex":Lcom/liquable/nemo/iab/IabException;
    invoke-virtual {v0}, Lcom/liquable/nemo/iab/IabException;->getResult()Lcom/liquable/nemo/iab/IabResult;

    move-result-object v3

    goto :goto_0
.end method
