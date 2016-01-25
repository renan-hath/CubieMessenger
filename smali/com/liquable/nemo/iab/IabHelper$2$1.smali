.class Lcom/liquable/nemo/iab/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/iab/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/iab/IabHelper$2;

.field final synthetic val$inv_f:Lcom/liquable/nemo/iab/Inventory;

.field final synthetic val$result_f:Lcom/liquable/nemo/iab/IabResult;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/iab/IabHelper$2;Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Inventory;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/iab/IabHelper$2;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/liquable/nemo/iab/IabHelper$2$1;->this$1:Lcom/liquable/nemo/iab/IabHelper$2;

    iput-object p2, p0, Lcom/liquable/nemo/iab/IabHelper$2$1;->val$result_f:Lcom/liquable/nemo/iab/IabResult;

    iput-object p3, p0, Lcom/liquable/nemo/iab/IabHelper$2$1;->val$inv_f:Lcom/liquable/nemo/iab/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 767
    iget-object v0, p0, Lcom/liquable/nemo/iab/IabHelper$2$1;->this$1:Lcom/liquable/nemo/iab/IabHelper$2;

    iget-object v0, v0, Lcom/liquable/nemo/iab/IabHelper$2;->val$listener:Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/liquable/nemo/iab/IabHelper$2$1;->val$result_f:Lcom/liquable/nemo/iab/IabResult;

    iget-object v2, p0, Lcom/liquable/nemo/iab/IabHelper$2$1;->val$inv_f:Lcom/liquable/nemo/iab/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/liquable/nemo/iab/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/liquable/nemo/iab/IabResult;Lcom/liquable/nemo/iab/Inventory;)V

    .line 768
    return-void
.end method
